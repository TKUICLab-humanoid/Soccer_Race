#include "strategy/goalkeeper/head_strategy.h"

void HeadStrategy::initialHeadParameter(int head_vertical_max_value, int head_vertical_mid_value, int head_vertical_min_value, int head_horizontal_max_value, int head_horizontal_min_value)
{
	head_vertical_max = head_vertical_max_value;
    head_vertical_mid = head_vertical_mid_value;
    head_vertical_min = head_vertical_min_value;
    head_horizontal_max = head_horizontal_max_value;
    head_horizontal_min = head_horizontal_min_value;

	//to protect value do not over the limit
	if(head_vertical_max_value > 2300 || head_vertical_mid_value > 2300 || head_vertical_min_value > 2300)
	{
		if(!error_flag)
		{
			ROS_ERROR("Head vertical value over limit!");
			error_flag = true;
		}

		while(1)
		{
			break;
		}
	}
	else if(head_vertical_max_value < 1100 || head_vertical_mid_value < 1100 || head_vertical_min_value < 1100)
	{
		if(!error_flag)
		{
			ROS_ERROR("Head vertical value below limit!");
			error_flag = true;
		}
		while(1)
		{
			break;
		}
	}
	else if(head_horizontal_max > 3100 || head_horizontal_min > 3100)
	{
		if(!error_flag)
		{
			ROS_ERROR("Head horizontal value over limit!");
			error_flag = true;
		}
		while(1)
		{
			break;
		}
	}
	else if(head_horizontal_max < 1000 || head_horizontal_min < 1000)
	{
		if(!error_flag)
		{
			ROS_ERROR("Head horizontal value below limit!");
			error_flag = true;
		}
		while(1)
		{
			break;
		}
	}

	head_vertical_pos = head_vertical_max;
	head_horizontal_pos = (head_horizontal_max + head_horizontal_min) / 2;

	get_head_info = true;
	head_horizontal_side = 0;
    head_vertical_side = 0;

	store_flag = false;
}

void HeadStrategy::initialHeadStrategy()
{
	head_vertical_max = 1900;//2100
	head_vertical_mid = 1600;
	head_vertical_min = 1200;
	head_horizontal_max = 2700;
	head_horizontal_min = 1300;
}

void HeadStrategy::headStrategy(bool &soccer_flag, int &soccer_info_x, int &soccer_info_y, bool able_move_head)
{
	find_soccer_flag = soccer_flag;
	soccer_x = soccer_info_x;
	soccer_y = soccer_info_y;
	able_head_classify = able_move_head;

	if(!get_head_info) //user have not set initialHeadParameter()
	{
		initialHeadStrategy();
		ROS_ERROR("Did not set head ini_info!");
	}

	if(able_head_classify)
	{
		headStrategyClassify();
	}

	if(timer_head.checkTimePass())
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
		strategy_head_mode = (int)HeadModeStates::trace_soccer; //have find soccer, then trace soccer
		find_soccer_side_flag = true;
	}
	else
	{
		strategy_head_mode = (int)HeadModeStates::find_soccer; //didn't find soccer, so find soccer

		if(head_mode_cnt == 4)
		{
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

			store_flag = false;
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

			if(abs(vertical_move_range) < 100)
			{
				ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_pos, 70);
			}
			else
			{
				ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_pos, 50);//abs(vertical_move_range)
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

			if(abs(horizontal_move_range) <= 20)
			{
				ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 50);//70
			}
			else if(abs(horizontal_move_range) > 20 && abs(horizontal_move_range) < 50)
			{
				ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 70); //150
			}
			else
			{
				ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 20);//abs(horizontal_move_range)+50
			}

			head_horizontal_state = (int)HeadStates::null;
			break;

		case (int)HeadStates::lockheadpos:

			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, head_horizontal_pos, 300); //100
			head_horizontal_state = (int)HeadStates::null;

			break;

		case (int)HeadStates::null:

			break;
	}
	if(timer_cnt_soccer_side_info.checkTimePass())
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

void HeadStrategy::goalCheck(bool finish_flag, bool side_decide)
{
	if(!side_decide) //close to right side
	{
		ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 1000, 50); //look right side goal
	}
	else if(side_decide) //close to left side
	{
		ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 3100, 50); //look left side goal
	}

	if(finish_flag)
	{
		ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 2048, 50); //return head horizontal position to moddle
	}
}

void HeadStrategy::findSoccer()
{
	vertical_move_range = 0;

	if(find_soccer_side_flag)
	{
		switch (soccer_side)
		{
			case (int)SoccerStates::left:
				head_horizontal_side = (int)HorizontalStates::turn_left;
				break;

			case (int)SoccerStates::right:
				head_horizontal_side = (int)HorizontalStates::turn_right;
				break;

			case (int)SoccerStates::up:
				head_vertical_side = (int)VerticalStates::turn_far;

				break;

			case (int)SoccerStates::down:
				head_vertical_side = (int)VerticalStates::turn_close;
				break;

			case (int)SoccerStates::null:

				break;
		}
	}

	if (head_horizontal_pos <= head_horizontal_min && head_horizontal_side == (int)HorizontalStates::turn_right)
	{
		switch(head_vertical_side)
		{
			case (int)VerticalStates::turn_close:
				head_vertical_pos = head_vertical_min;
				head_mode_cnt += 1;
				break;
			case (int)VerticalStates::turn_middle:
				head_vertical_pos = head_vertical_mid;
				head_mode_cnt += 1;
				break;
			case (int)VerticalStates::turn_far:
				head_vertical_pos = head_vertical_max;
				head_mode_cnt += 1;
				break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_left;
		head_vertical_state = (int)HeadStates::move;
	}
	else if (head_horizontal_pos >= head_horizontal_max && head_horizontal_side == (int)HorizontalStates::turn_left)
	{
		switch(head_vertical_side)
		{
			case (int)VerticalStates::turn_close:
				head_vertical_pos = head_vertical_min;
				head_mode_cnt += 1;
				break;
			case (int)VerticalStates::turn_middle:
				head_vertical_pos = head_vertical_mid;
				head_mode_cnt += 1;
				break;
			case (int)VerticalStates::turn_far:
				head_vertical_pos = head_vertical_max;
				head_mode_cnt += 1;
				break;
		}

		head_vertical_side = (head_vertical_side + 1) % 3;

		head_horizontal_side = (int)HorizontalStates::turn_right;
		head_vertical_state = (int)HeadStates::move;
	}

	switch(head_horizontal_side)
	{
		case (int)HorizontalStates::turn_right:
			horizontal_move_range = -20; //-40
			break;
		case (int)HorizontalStates::turn_left:
			horizontal_move_range = 20; //40
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
	find_soccer_move_headX = (soccer_x - middle_hortional_baseline);
	find_soccer_move_headY = (soccer_y - middle_vertical_baseline);


	if(abs((find_soccer_move_headX * find_soccer_move_headY) - (tmp_pre_x_error*tmp_pre_y_error)) < 500 /*&& (soccer_x * soccer_y) - (pre_soccer_x * pre_soccer_y) > 0*/)
	{
		//do nothing
	}
	else //catch something else not target
	{
		soccer_x = pre_soccer_x;
		soccer_y = pre_soccer_y;
	}

	soccer_vertical_range = 150; //30 new //50
	soccer_horizontal_range = 300;//40 new //40

	if((soccer_x - pre_soccer_x) > 10)
	{
		cnt_soccer_right_side ++;
		cnt_soccer_left_side = 0;
		if(cnt_soccer_right_side > 6)
		{
			soccer_side = (int)SoccerStates::right;
			cnt_soccer_right_side = 0;
		}
	}
	else if((soccer_x - pre_soccer_x) < -10)
	{
		cnt_soccer_right_side = 0;
		cnt_soccer_left_side ++;
		if(cnt_soccer_left_side > 6)
		{
			soccer_side = (int)SoccerStates::left;
			cnt_soccer_left_side = 0;
		}
	}
	else
	{
		soccer_side = (int)SoccerStates::null;
	}

	if((soccer_y - pre_soccer_y) < -5)
	{
		cnt_up_side ++;
		cnt_down_side = 0;
		if(cnt_up_side > 4)
		{
			soccer_side = (int)SoccerStates::up;
			cnt_up_side = 0;
		}
	}
	else if((soccer_y - pre_soccer_y) > 5)
	{
		cnt_down_side ++;
		cnt_up_side = 0;
		if(cnt_down_side > 4)
		{
			soccer_side = (int)SoccerStates::down;
			cnt_down_side = 0;
		}
	}
	else
	{
		soccer_side = (int)SoccerStates::null;
	}

	if (abs(find_soccer_move_headX) <= soccer_horizontal_range && abs(find_soccer_move_headY) <= soccer_vertical_range) //soccer is in middle
	{
		if(!check_time_flag)
		{
			check_time_flag = true;
		}
	}
	else if(!(abs(find_soccer_move_headX) <= soccer_horizontal_range) && abs(find_soccer_move_headY) <= soccer_vertical_range) //x move over limit ,but y is in limitt
	{
		horizontal_move_range = -find_soccer_move_headX/DivHeadSpeed; //make sure not correct too frequently

		if(abs(horizontal_move_range) < 10)
		{
			horizontal_move_range = 0;
		}
		if(head_horizontal_pos + horizontal_move_range <= head_horizontal_min)
		{
			horizontal_move_range = head_horizontal_min - head_horizontal_pos;
		}
		else if(head_horizontal_pos + horizontal_move_range >= head_horizontal_max)
		{
			horizontal_move_range = head_horizontal_max - head_horizontal_pos;
		}

		head_horizontal_state = (int)HeadStates::move;
	}
	else if(abs(find_soccer_move_headX) <= soccer_horizontal_range && !(abs(find_soccer_move_headY) <= soccer_vertical_range)) //x is limit ,but y move is over limitt
	{
		vertical_move_range = -find_soccer_move_headY/DivHeadSpeed;

		if(abs(vertical_move_range) < 7)
		{
			vertical_move_range = 0;
		}
		if(head_vertical_pos + vertical_move_range <= head_vertical_min)
		{
			vertical_move_range = head_vertical_min - head_vertical_pos;
		}
		else if(head_vertical_pos + vertical_move_range >= head_vertical_max)
		{
			vertical_move_range = head_vertical_max - head_vertical_pos;
		}

		head_vertical_state = (int)HeadStates::move;
	}
	else
	{
		vertical_move_range = -find_soccer_move_headY/DivHeadSpeed;
		horizontal_move_range = -find_soccer_move_headX/DivHeadSpeed;

		if(abs(vertical_move_range) < 10)
		{
			vertical_move_range = 0;
		}
		if(head_vertical_pos + vertical_move_range <= head_vertical_min)
		{
			vertical_move_range = head_vertical_min - head_vertical_pos;
		}
		else if(head_vertical_pos + vertical_move_range >= head_vertical_max)
		{
			vertical_move_range = head_vertical_max - head_vertical_pos;
		}

		if(abs(horizontal_move_range) < 10)
		{
			horizontal_move_range = 0;
		}
		if(head_horizontal_pos + horizontal_move_range <= head_horizontal_min)
		{
			horizontal_move_range = head_horizontal_min - head_horizontal_pos;
		}
		else if(head_horizontal_pos + horizontal_move_range >= head_horizontal_max)
		{
			horizontal_move_range = head_horizontal_max - head_horizontal_pos;
		}

		head_vertical_state = (int)HeadStates::move;
		head_horizontal_state = (int)HeadStates::move;
	}

	tmp_pre_x_error = find_soccer_move_headX;
	tmp_pre_y_error = find_soccer_move_headY;

	cnt_record ++;

	if(cnt_record >= 5)
	{
		pre_soccer_x = soccer_x;
		pre_soccer_y = soccer_y;
		cnt_record = 0;
	}
}

