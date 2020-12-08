#include "strategy/attacker/head_strategy.h"

void HeadStrategy::initialHeadParameter(int head_vertical_max_value, int head_vertical_mid_value, int head_vertical_min_value, int head_horizontal_max_value, int head_horizontal_min_value)
{
	head_vertical_max = head_vertical_max_value;
	head_vertical_mid = head_vertical_mid_value;
	head_vertical_min = head_vertical_min_value;
	head_horizontal_max = head_horizontal_max_value;
	head_horizontal_min = head_horizontal_min_value;

	//to protect value do not over the limit
	if (head_vertical_max_value > 2300 || head_vertical_mid_value > 2300 || head_vertical_min_value > 2300)
	{
		if (!error_flag)
		{
			ROS_ERROR("Head vertical value over limit!");
			error_flag = true;
		}

		while (1)
		{
			break;
		}
	}
	else if (head_vertical_max_value < 1100 || head_vertical_mid_value < 1100 || head_vertical_min_value < 1100)
	{
		if (!error_flag)
		{
			ROS_ERROR("Head vertical value below limit!");
			error_flag = true;
		}
		while (1)
		{
			break;
		}
	}
	else if (head_horizontal_max > 3100 || head_horizontal_min > 3100)
	{
		if (!error_flag)
		{
			ROS_ERROR("Head horizontal value over limit!");
			error_flag = true;
		}
		while (1)
		{
			break;
		}
	}
	else if (head_horizontal_max < 1000 || head_horizontal_min < 1000)
	{
		if (!error_flag)
		{
			ROS_ERROR("Head horizontal value below limit!");
			error_flag = true;
		}
		while (1)
		{
			break;
		}
	}

	head_vertical_pos = head_vertical_max;
	head_horizontal_pos = (head_horizontal_max + head_horizontal_min) / 2;

	get_head_info = true;
	//timer_head.initialize();
	head_horizontal_side = 0;
	head_vertical_side = 0;
}

void HeadStrategy::initialHeadStrategy()
{
	head_vertical_max = 1850;
	head_vertical_mid = 1450;
	head_vertical_min = 1200;
	head_horizontal_max = 3087;
	head_horizontal_min = 1000;
}

void HeadStrategy::headStrategy(bool &soccer_flag, bool &goal_flag, int &soccer_info_x, int &soccer_info_y,  int *goal_info_x, int *goal_info_y,int &goal_cnt, bool able_move_head)
{
	find_soccer_flag = soccer_flag;
	find_goal_flag = goal_flag;
	soccer_x = soccer_info_x;
	soccer_y = soccer_info_y;
	goal_x[0] = goal_info_x[0];
	goal_y[0] = goal_info_y[0];
	goal_x[1] = goal_info_x[1];
	goal_y[1] = goal_info_y[1];
	goalcnt = goal_cnt;
	//ROS_INFO("cnt = %d",goalcnt);

	//able_head_classify = able_move_head;

	/*if(!get_head_info) //user have not set initialHeadParameter()
	{
	initialHeadStrategy();
	ROS_ERROR("Did not set head ini_info!");
	}

	if(able_head_classify)
	{
	headStrategyClassify();
	}*/

	if (able_angle_detect)
	{
		traceGoal();
	}


	if (timer_head.checkTimePass())
	{
		moveHead();
		timer_head.initialize();
	}
}

void HeadStrategy::headStrategyClassify()
{
	if (find_soccer_flag || !timer_check_find_soccer.checkTimePass()) //when image have find soccer, or in the time we set (to make sure in one time image get lose ,we still consider it is soccer)
	{
		if (find_soccer_flag)
		{
			timer_check_find_soccer.initialize(); //restart time count
		}

		head_mode_cnt = 0;
		stop_walk_flag = false;

		/*if(once_flag)
		{
		ROS_INFO("put up hand");
		ros_com->sendBodySector(5);
		tool->Delay(700);
		//ros_com->sendSingleMotor(3,1500,300);
		//tool->Delay(200);
		//ros_com->sendSingleMotor(7,-1500,300);
		//tool->Delay(700);
		once_flag = false;
		}*/

		strategy_head_mode = (int)HeadModeStates::trace_soccer; //have find soccer, then trace soccer
		find_soccer_side_flag = true;
	}
	else
	{
		strategy_head_mode = (int)HeadModeStates::find_soccer; //didn't find soccer, so find soccer

		/*if(!find_soccer_flag && timer_put_down_hand.checkTimePass() && !once_flag)
		{
		//put down hand
		ROS_INFO("put down hand");
		ros_com->sendBodySector(4);
		tool->Delay(700);
		//ros_com->sendSingleMotor(3,-1500,300);
		//tool->Delay(200);
		//ros_com->sendSingleMotor(7,1500,300);
		//tool->Delay(700);

		timer_put_down_hand.setTimerPass(3000);
		once_flag = true;
		}*/
		if (head_mode_cnt == 4)
		{
			//ROS_INFO("head complite one loop");
			head_mode_cnt = 0;
			stop_walk_flag = true;
		}
		else
		{
			stop_walk_flag = false;
		}
	}

	switch (strategy_head_mode)
	{
	case (int)HeadModeStates::head_stay:

		break;

	case (int)HeadModeStates::find_soccer: //find all ground soccer

		findSoccer();

		break;

	case (int)HeadModeStates::trace_soccer:

		traceSoccer();

		break;

	}
}

void HeadStrategy::moveHead()
{
	switch (head_vertical_state)
	{
	case (int)HeadStates::move:

		head_vertical_pos += vertical_move_range;

		if (abs(vertical_move_range) < 100)
		{
			ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_pos, 100);
		}
		else
		{
			ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_pos, abs(vertical_move_range));
		}

		head_vertical_state = (int)HeadStates::null;

		break;

	case (int)HeadStates::lockheadpos:

		ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_pos, 100);
		head_vertical_state = (int)HeadStates::null;

		break;

	case (int)HeadStates::null:

		break;
	}

	switch (head_horizontal_state)
	{
	case (int)HeadStates::move:

		head_horizontal_pos += horizontal_move_range;
		//ROS_INFO("horizontal_move_range = %d",horizontal_move_range);

		if (abs(horizontal_move_range) <= 20)
		{
			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 70);//40
		}
		else if (abs(horizontal_move_range) > 20 && abs(horizontal_move_range) < 50)
		{
			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 150); //50
		}
		else
		{
			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, abs(horizontal_move_range) + 150);
		}

		//ROS_INFO("head_horizontal_pos = %d",head_horizontal_pos);

		head_horizontal_state = (int)HeadStates::null;
		break;

	case (int)HeadStates::lockheadpos:

		ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 300); //100
		head_horizontal_state = (int)HeadStates::null;

		break;

	case (int)HeadStates::null:

		break;
	}
	if (timer_cnt_soccer_side_info.checkTimePass())
	{
		cnt_soccer_side_x = soccer_x;
		cnt_soccer_side_y = soccer_y;
		record_flag = true;
		timer_cnt_soccer_side_info.initialize();
	}
	else
	{
		record_flag = false;
	}

}

void HeadStrategy::findSoccer()
{
	//ROS_INFO("into find");
	vertical_move_range = 0;

	if (find_soccer_side_flag)
	{
		//if(record_flag)slpoe = (soccer_y - pre_soccer_y) / (soccer_x - pre_soccer_x);

		switch (soccer_side)
		{
		case (int)SoccerStates::left:
			ROS_INFO("left");
			head_horizontal_side = (int)HorizontalStates::turn_left;
			break;

		case (int)SoccerStates::right:
			ROS_INFO("right");
			head_horizontal_side = (int)HorizontalStates::turn_right;
			break;

		case (int)SoccerStates::up:
			ROS_INFO("up");
			head_vertical_side = (int)VerticalStates::turn_far;

			break;

		case (int)SoccerStates::down:
			ROS_INFO("down");
			head_vertical_side = (int)VerticalStates::turn_close;
			break;

		case (int)SoccerStates::null:

			break;
		}
	}

	if (head_horizontal_pos <= head_horizontal_min && head_horizontal_side == (int)HorizontalStates::turn_right)
	{
		switch (head_vertical_side)
		{
		case (int)VerticalStates::turn_close:
			head_vertical_pos = head_vertical_min;
			head_mode_cnt += 1;
			//ROS_INFO("vc");
			break;
		case (int)VerticalStates::turn_middle:
			head_vertical_pos = head_vertical_mid;
			head_mode_cnt += 1;
			//ROS_INFO("vm");
			break;
		case (int)VerticalStates::turn_far:
			head_vertical_pos = head_vertical_max;
			head_mode_cnt += 1;
			//ROS_INFO("vf");
			break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_left;
		head_vertical_state = (int)HeadStates::move;
	}
	else if (head_horizontal_pos >= head_horizontal_max && head_horizontal_side == (int)HorizontalStates::turn_left)
	{
		switch (head_vertical_side)
		{
		case (int)VerticalStates::turn_close:
			head_vertical_pos = head_vertical_min;
			head_mode_cnt += 1;
			//ROS_INFO("vcb");
			break;
		case (int)VerticalStates::turn_middle:
			head_vertical_pos = head_vertical_mid;
			head_mode_cnt += 1;
			//ROS_INFO("vmb");
			break;
		case (int)VerticalStates::turn_far:
			head_vertical_pos = head_vertical_max;
			head_mode_cnt += 1;
			//ROS_INFO("vfb");
			break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_right;
		head_vertical_state = (int)HeadStates::move;
	}

	switch (head_horizontal_side)
	{
	case (int)HorizontalStates::turn_right:
		horizontal_move_range = -40;
		break;
	case (int)HorizontalStates::turn_left:
		horizontal_move_range = 40;
		break;
	default:
		horizontal_move_range = 0;
		break;
	}

	head_horizontal_state = (int)HeadStates::move;
	find_soccer_side_flag = false;
}

void HeadStrategy::traceSoccer()
{
	//--- for store value
	oFile.open("/home/iclab/Desktop/RoboCup/Soccer_Race/src/strategy/Parameter/soccer_data.ods", ios::out | ios::app);// | ios::app
	//oFile << "soccer data" << endl;
	oFile << soccer_x << "," << soccer_y << endl;
	oFile.close();
	//---
	//ROS_INFO("soccer_x = %d",soccer_x);
	find_soccer_move_headX = (soccer_x - middle_hortional_baseline);
	find_soccer_move_headY = (soccer_y - middle_vertical_baseline);

	//---
	/*if(store_size.size() < 5)
	{
	store_size.push_back(soccer_x * soccer_y);
	printf("store_size = %d , vector size = %d\n",store_size.back(), store_size.size());
	}
	else
	{
	store_size.clear();
	store_size.push_back(soccer_x * soccer_y);
	printf("store_size = %d , vector size = %d\n",store_size.back(), store_size.size());
	}*/

	//ROS_INFO("now error = %d",(find_soccer_move_headX * find_soccer_move_headY));
	//ROS_INFO("pre error = %d",(tmp_pre_x_error * tmp_pre_y_error));
	if (abs((find_soccer_move_headX * find_soccer_move_headY) - (tmp_pre_x_error*tmp_pre_y_error)) < 500 /*&& (soccer_x * soccer_y) - (pre_soccer_x * pre_soccer_y) > 0*/)
	{
		//do nothing
	}
	else //catch something else not target
	{
		soccer_x = pre_soccer_x;
		soccer_y = pre_soccer_y;
	}

	//---

	soccer_vertical_range = 50;
	soccer_horizontal_range = 40;//40

	if ((soccer_x - pre_soccer_x) > 10)
	{
		cnt_soccer_right_side++;
		cnt_soccer_left_side = 0;
		if (cnt_soccer_right_side > 6)
		{
			ROS_INFO("soccer go to right side");
			soccer_side = (int)SoccerStates::right;
			cnt_soccer_right_side = 0;
		}
	}
	else if ((soccer_x - pre_soccer_x) < -10)
	{
		cnt_soccer_right_side = 0;
		cnt_soccer_left_side++;
		if (cnt_soccer_left_side > 6)
		{
			ROS_INFO("soccer go to left side");
			soccer_side = (int)SoccerStates::left;
			cnt_soccer_left_side = 0;
		}
	}
	else
	{
		soccer_side = (int)SoccerStates::null;
	}
	//ROS_INFO("soccer_y = %d",soccer_y);
	//ROS_INFO("pre_soccer_y = %d",pre_soccer_y);
	if ((soccer_y - pre_soccer_y) < -5)
	{
		cnt_up_side++;
		cnt_down_side = 0;
		if (cnt_up_side > 4)
		{
			ROS_INFO("soccer go away");
			soccer_side = (int)SoccerStates::up;
			cnt_up_side = 0;
		}
	}
	else if ((soccer_y - pre_soccer_y) > 5)
	{
		cnt_down_side++;
		cnt_up_side = 0;
		if (cnt_down_side > 4)
		{
			ROS_INFO("soccer come close");
			soccer_side = (int)SoccerStates::down;
			cnt_down_side = 0;
		}
	}
	else
	{
		soccer_side = (int)SoccerStates::null;
	}
	//---
	//ROS_INFO("find_soccer_move_headX = %d",find_soccer_move_headX);
	//ROS_INFO("find_soccer_move_headY = %d",find_soccer_move_headY);
	if (abs(find_soccer_move_headX) <= soccer_horizontal_range && abs(find_soccer_move_headY) <= soccer_vertical_range) //soccer is in middle
	{
		//ROS_INFO("\nsoccer is in limit\n");
	}
	else if (!(abs(find_soccer_move_headX) <= soccer_horizontal_range) && abs(find_soccer_move_headY) <= soccer_vertical_range) //x move over limit ,but y is in limitt
	{
		horizontal_move_range = -find_soccer_move_headX / DivHeadSpeed; //make sure not correct too frequently

		if (abs(horizontal_move_range) < 10)
		{
			horizontal_move_range = 0;
		}
		if (head_horizontal_pos + horizontal_move_range <= head_horizontal_min)
		{
			horizontal_move_range = head_horizontal_min - head_horizontal_pos;
		}
		else if (head_horizontal_pos + horizontal_move_range >= head_horizontal_max)
		{
			horizontal_move_range = head_horizontal_max - head_horizontal_pos;
		}

		head_horizontal_state = (int)HeadStates::move;
	}
	else if (abs(find_soccer_move_headX) <= soccer_horizontal_range && !(abs(find_soccer_move_headY) <= soccer_vertical_range)) //x is limit ,but y move is over limitt
	{
		vertical_move_range = -find_soccer_move_headY / DivHeadSpeed;

		if (abs(vertical_move_range) < 10)
		{
			vertical_move_range = 0;
		}
		if (head_vertical_pos + vertical_move_range <= head_vertical_min)
		{
			vertical_move_range = head_vertical_min - head_vertical_pos;
		}
		else if (head_vertical_pos + vertical_move_range >= head_vertical_max)
		{
			vertical_move_range = head_vertical_max - head_vertical_pos;
		}

		head_vertical_state = (int)HeadStates::move;
	}
	else
	{
		vertical_move_range = -find_soccer_move_headY / DivHeadSpeed;
		horizontal_move_range = -find_soccer_move_headX / DivHeadSpeed;

		if (abs(vertical_move_range) < 10)
		{
			vertical_move_range = 0;
		}
		if (head_vertical_pos + vertical_move_range <= head_vertical_min)
		{
			vertical_move_range = head_vertical_min - head_vertical_pos;
		}
		else if (head_vertical_pos + vertical_move_range >= head_vertical_max)
		{
			vertical_move_range = head_vertical_max - head_vertical_pos;
		}

		if (abs(horizontal_move_range) < 10)
		{
			horizontal_move_range = 0;
		}
		if (head_horizontal_pos + horizontal_move_range <= head_horizontal_min)
		{
			horizontal_move_range = head_horizontal_min - head_horizontal_pos;
		}
		else if (head_horizontal_pos + horizontal_move_range >= head_horizontal_max)
		{
			horizontal_move_range = head_horizontal_max - head_horizontal_pos;
		}

		head_vertical_state = (int)HeadStates::move;
		head_horizontal_state = (int)HeadStates::move;
	}

	tmp_pre_x_error = find_soccer_move_headX;
	tmp_pre_y_error = find_soccer_move_headY;
	pre_soccer_x = soccer_x;
	pre_soccer_y = soccer_y;
}

void HeadStrategy::traceGoal()
{
	//ROS_INFO("into find");
	vertical_move_range = 0;

	if (head_horizontal_pos <= head_horizontal_min && head_horizontal_side == (int)HorizontalStates::turn_right)
	{
		switch (head_vertical_side)
		{
		case (int)VerticalStates::turn_close:
			head_vertical_pos = head_vertical_min;
			head_mode_cnt += 1;
			//ROS_INFO("vc");
			break;
		case (int)VerticalStates::turn_middle:
			head_vertical_pos = head_vertical_mid;
			head_mode_cnt += 1;
			//ROS_INFO("vm");
			break;
		case (int)VerticalStates::turn_far:
			head_vertical_pos = head_vertical_max;
			head_mode_cnt += 1;
			//ROS_INFO("vf");
			break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_left;
		head_vertical_state = (int)HeadStates::move;
	}
	else if (head_horizontal_pos >= head_horizontal_max && head_horizontal_side == (int)HorizontalStates::turn_left)
	{
		switch (head_vertical_side)
		{
		case (int)VerticalStates::turn_close:
			head_vertical_pos = head_vertical_min;
			head_mode_cnt += 1;
			//ROS_INFO("vcb");
			break;
		case (int)VerticalStates::turn_middle:
			head_vertical_pos = head_vertical_mid;
			head_mode_cnt += 1;
			//ROS_INFO("vmb");
			break;
		case (int)VerticalStates::turn_far:
			head_vertical_pos = head_vertical_max;
			head_mode_cnt += 1;
			//ROS_INFO("vfb");
			break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_right;
		head_vertical_state = (int)HeadStates::move;
	}

	switch (head_horizontal_side)
	{
	case (int)HorizontalStates::turn_right:
		horizontal_move_range = -40;
		break;
	case (int)HorizontalStates::turn_left:
		horizontal_move_range = 40;
		break;
	default:
		horizontal_move_range = 0;
		break;
	}

	head_horizontal_state = (int)HeadStates::move;
	find_soccer_side_flag = false;
	////////////////////////////////////find goal position///////////////////////////////////////	
	if (find_goal_flag)
	{
		if(goalcnt == 1)
		{
			ROS_INFO("head_horizontal_pos = %d",head_horizontal_pos);
			ROS_INFO("fg = %d, kic = %d",first_goal,kick_position_check);
			if (first_goal && kick_position_check == false)
			{
				if(0 < goal_x[0] < 40){
				ROS_INFO("detect open");
				goal_position_first = head_horizontal_pos;
				goal_distance_first = head_vertical_pos;
				first_goal = false;
				ROS_INFO("goal_info_x = %d,goal_y = %d",goal_position_first,goal_distance_first);
				}
			}
			else if (!first_goal && kick_position_check == false)
			{
				if (head_horizontal_pos > (goal_position_first + 700) || head_horizontal_pos < (goal_position_first - 700))
				{
					goal_position_second = head_horizontal_pos;
					goal_distance_second = head_vertical_pos;
					if (goal_distance_second >= goal_distance_first)
					{
						kick_distance = goal_distance_first;
					}
					else if (goal_distance_first > goal_distance_second)
					{
						kick_distance = goal_distance_second;
					}
	
					kick_position = (goal_position_second + goal_position_first) / 2;
					kick_position_check = true;
	
				}
	
			}

		}
		else if(goalcnt == 2)
		{
				kick_position = head_horizontal_pos;
				kick_distance = head_vertical_pos;

				kick_position_check = true;			

		}


		if (kick_position_check)
		{
			ROS_INFO("first = %d,%d",goal_position_first,goal_distance_first);
			ROS_INFO("second = %d,%d",goal_position_second,goal_distance_second);
			if (kick_distance >= 2047)
			{
				ROS_INFO("1");
				close_flag = false;
				able_kick_flag = true;
				head_horizontal_state = (int)HeadStates::lockheadpos;
				head_horizontal_pos = 2047;
				head_vertical_state = (int)HeadStates::lockheadpos;
				head_vertical_pos = kick_distance;
				goal_imu_range = 0;
				first_goal = true;
				kick_position_check = false;
				able_angle_detect = false;
				goal_position_second = 0;
				goal_distance_second = 0;
				goal_position_first = 0;
				goal_distance_first =0;
			}
			else if (kick_distance < 2047 && kick_distance != 0)
			{
				ROS_INFO("2");
				close_flag = true;
				able_kick_flag = true;
				head_horizontal_state = (int)HeadStates::lockheadpos;
				head_horizontal_pos = kick_position;
				head_vertical_state = (int)HeadStates::lockheadpos;
				head_vertical_pos = kick_distance;
				goal_imu_range = (kick_position - 2047) * 90 / 1000;
				first_goal = true;
				kick_position_check = false;
				able_angle_detect = false;
				goal_position_second = 0;
				goal_distance_second = 0;
				goal_position_first = 0;
				goal_distance_first =0;
			}
		}
	}
}

