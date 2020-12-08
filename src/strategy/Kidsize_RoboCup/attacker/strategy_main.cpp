#include "strategy/attacker/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "attacker");
	ros::NodeHandle nh;
	KidsizeStrategy KidsizeStrategy(nh);
	
	ros::Rate loop_rate(30);

	while (nh.ok())
	{
		ros::spinOnce();
		KidsizeStrategy.strategyMain();
		loop_rate.sleep();
	}
	return 0;
}

void KidsizeStrategy::strategyMain()
{
	if (!strategy_info->getStrategyStart()) //strategy not running
	{
		//ROS_INFO("soccer x = %d",soccer_x);
		//ROS_INFO("soccer y = %d",soccer_y);
		//ROS_INFO("y speed = %d",walk.getY());
		if (once_flag)
		{
			initialInfo();
			send_head_cnt = 0;
			ros_com->sendBodySector(29);
			once_flag = false;
			hand = true;
		}
		send_head_cnt++;
		if (send_head_cnt == 3)
		{
			ROS_INFO("ininin");
			ros_com->sendHeadMotor(HeadMotorID::VerticalID, 2048, 100);
			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 2048, 50);
			stay_flag_l = false;
			stay_flag_r = false;
		}

		head_str.initialHeadParameter(1850, 1450, 1200, 3095, 1000);
		walk.setWalkParameterInit(0, 0, 0, 0);
		walk.setWalkParameterMax(3000, 1500, 0, 15);
		walk.setWalkParameterMin(-1500, -1500, 0, -15);
		walk.setWalkParameterExp(0, 0, 0, 0);
		walk.setWalkParameterOneAddValueAndPeriod(100, 100, 0, 1, 150);
		head_str.able_angle_detect = true;

	}
	else //strategy running
	{

		once_flag = true;
		if (hand)
		{
			ros_com->sendBodySector(4);
			tool->Delay(1000);
			ROS_INFO("5n");
			hand = false;
		}
		getSoccerInfo();
		//ROS_INFO("goal = %d",goal_cnt);
		head_str.headStrategy(get_soccer_flag, get_goal_flag, soccer_x, soccer_y, &goal_x[0], &goal_y[0],goal_cnt);
		//bodyStrategy();
	}
}

void KidsizeStrategy::loadParameter()
{
	fstream fin;
	string sTmp;
	char line[100];
	char path[200];
	string PATH = tool->getPackagePath("strategy");
	strcpy(path, PATH.c_str());
	strcat(path, "/Strategy_Parameter.ini");
	fin.open(path, ios::in);
	try
	{
		/*****  example
		parameter_name = tool->readvalue(fin, "parameter_name", 0);  // 0 int  1 float
		*****/
	}
	catch (exception e)
	{

	}
}

void KidsizeStrategy::initialInfo()
{

	once_flag = false;
	down_stop_soccer_once_flag = false;
	if (imu_init_flag){
		roll_init = strategy_info->getIMUValue().Roll;
		pitch_init = strategy_info->getIMUValue().Pitch;
		yaw_init = strategy_info->getIMUValue().Yaw;
		ROS_INFO("roll = %f", roll_init);
		ROS_INFO("pitch = %f", pitch_init);
		ROS_INFO("yaw = %f", yaw_init);
	}
	imu_init_flag = false;
}

void KidsizeStrategy::getSoccerInfo()
{
	//ROS_INFO("size = %d",strategy_info->soccer_info.size());
	if(strategy_info->soccer_info.size()<=4)
	{
	/*soccer_x = strategy_info->getSoccerData().x + (strategy_info->getSoccerData().width) / 2;
	soccer_y = strategy_info->getSoccerData().y + (strategy_info->getSoccerData().height) / 2;
	soccer_width = strategy_info->getSoccerData().width;
	soccer_height = strategy_info->getSoccerData().height;
	get_soccer_flag = strategy_info->getSoccerData().get_flag;

	soccer_size = strategy_info->getSoccerData().width * strategy_info->getSoccerData().height;
	*/
	get_soccer_flag = false;
	get_goal_flag = false;
	goal_cnt = 0;
	//ROS_INFO("size = %d",strategy_info->soccer_info.size());

	for (int i = 0; i < strategy_info->soccer_info.size(); i++)
	{
		if (strategy_info->soccer_info[i].object_mode == ObjectMode::SOCCER)
		{
			soccer_width = strategy_info->soccer_info[i].width;
			soccer_height = strategy_info->soccer_info[i].height;
			soccer_x = strategy_info->soccer_info[i].x + (soccer_width / 2);
			soccer_y = strategy_info->soccer_info[i].y + (soccer_height / 2);
			soccer_size = soccer_width * soccer_height;
			get_soccer_flag = true;

		}
		else if (strategy_info->soccer_info[i].object_mode == ObjectMode::GOAL)
		{
			if(goal_cnt == 0)
			{
				goal_width[0] = strategy_info->soccer_info[i].width;
				goal_height[0] = strategy_info->soccer_info[i].height;
				goal_x[0] = strategy_info->soccer_info[i].x + (goal_width[0] / 2);
				goal_y[0] = strategy_info->soccer_info[i].y + (goal_height[0] / 2);
				get_goal_flag = true;
				goal_cnt = 1;
			}
			else if(goal_cnt == 1)
			{
				goal_width[1] = strategy_info->soccer_info[i].width;
				goal_height[1] = strategy_info->soccer_info[i].height;
				goal_x[1] = strategy_info->soccer_info[i].x + (goal_width[1] / 2);
				goal_y[1] = strategy_info->soccer_info[i].y + (goal_height[1] / 2);
				get_goal_flag = true;
				goal_cnt = 2;
				ROS_INFO("i n 2");
				
			}
			//ROS_INFO("goal_x = %d,goal_y = %d",goal_x,goal_y);

		}
		else if ((int)strategy_info->soccer_info[i].object_mode == (int)ObjectMode::NOTHING)
		{
			get_soccer_flag = false;
			get_goal_flag = false;
		}
		//strategy_info->soccer_info.clear();
	}

	strategy_info->soccer_info.clear();
}
	strategy_info->soccer_info.clear();
}

void KidsizeStrategy::imu_check(int range)
{

	int lrange_max, rrange_max, lrange_side, lrange_side_min, lrange_side_max, rrange_side, rrange_side_min, rrange_side_max;

	if (range == 0)
	{
		lrange_max = 180;
		lrange_side = range + 20;
		lrange_side_min = 180;
		rrange_max = -179;
		rrange_side_min = range - 20;
		rrange_side_max = -179;
	}
	else if (range >0)
	{
		lrange_max = 180;
		lrange_side = -179;
		lrange_side_min = -181 + range;
		rrange_max = 0;
		rrange_side_min = -1;
		rrange_side_max = -180 + range;

	}
	else if (range <0)
	{
		lrange_max = 0;
		lrange_side = 1;
		lrange_side_min = 180 + range;
		rrange_max = -179;
		rrange_side_min = 180;
		rrange_side_max = 181 + range;

	}

	if (angle_fix_flag)
	{
		if ((range + 20) < strategy_info->getIMUValue().Yaw && strategy_info->getIMUValue().Yaw < lrange_max && lrange_side_min >strategy_info->getIMUValue().Yaw && strategy_info->getIMUValue().Yaw > lrange_side)
		{
			ROS_INFO("imu = %d", range);
			ROS_INFO("turn l");
			ROS_INFO("range = %f", strategy_info->getIMUValue().Yaw);
			walk_value.setValue(-800, 800, 0, -15);
			focus_flag = false;
		}
		else if ((range - 20) > strategy_info->getIMUValue().Yaw && strategy_info->getIMUValue().Yaw > rrange_max &&  rrange_side_min > strategy_info->getIMUValue().Yaw && strategy_info->getIMUValue().Yaw > rrange_side_max)
		{
			ROS_INFO("imu = %d", range);
			ROS_INFO("turn r");
			ROS_INFO("range = %f", strategy_info->getIMUValue().Yaw);
			walk_value.setValue(-800, -800, 0, 15);
			focus_flag = false;
		}
		else
		{
			ROS_INFO("fix r l complete");
			walk_value.setValue(0, 0, 0, 0);
			angle_fix_flag = false;
			focus_flag = true;
			//back_flag = true;
		}
	}

}

void KidsizeStrategy::bodyStrategy()
{
	switch (strategy_body_mode) //body mode judge
	{
	case body_stay:
		/////////////////////////////////////////////imu
		if (zeroimu_detect)
			imu_check(0);

		if (!zeroimu_detect){
			imu_check(head_str.goal_imu_range);
		}
		if (!focus_flag && get_soccer_flag)
		{
			ROS_INFO("not focus");
			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			timer_squat.initialize();
			break;
		}
		else if (!get_soccer_flag && angle_fix_flag)
		{
			focus_flag = true;
			angle_fix_flag = false;
			walk_value.setValue(0, 0, 0, 0);
			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			timer_squat.initialize();
			break;
		}

		/////////////////////////////////////////////imu
		ROS_INFO("body_stay");
		head_str.able_head_classify = true;
		// v_soccersize.clear();

		if (get_soccer_flag && !head_str.timer_check_find_soccer.checkTimePass()) //have find soccer, and is in the time we set
		{
			if (!walk.isStartContinuous() && timer_body_stop.checkTimePass()) //not walking, and robot is stop
			{
				if (timer_body_stop.getPeriodTimeMs() > 3000) timer_body_stop.setTimerPass(3000, false); //set stop time to 3s //for not send sendbodtauto too fast ,if too fast ,sendbodyauto might get lost to send 

				walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None); //stop walking
				// tool->Delay(2500);
			}
			else if (walk.isStartContinuous()) //is walking
			{
				//ROS_INFO("into correct body");
				strategy_body_mode = correcte_body;
			}
		}


		break;

	case correcte_body:
		/////////////////////////////////////////////imu
		if (zeroimu_detect)
			imu_check(0);

		if (!zeroimu_detect){
			imu_check(head_str.goal_imu_range);
		}
		if (!focus_flag && get_soccer_flag)
		{
			ROS_INFO("not focus");
			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			timer_squat.initialize();
			break;
		}
		else if (!get_soccer_flag && angle_fix_flag)
		{
			focus_flag = true;
			angle_fix_flag = false;
			walk_value.setValue(0, 0, 0, 0);
			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			timer_squat.initialize();
			break;
		}

		/////////////////////////////////////////////imu
		ROS_INFO("correcte_body");

		if (get_soccer_flag && !head_str.able_head_classify) head_str.timer_check_find_soccer.initialize();

		if (zeroimu_detect == true)head_str.able_head_classify = true;

		if (!get_soccer_flag && head_str.timer_check_find_soccer.checkTimePass()) //not find soccer, and is over the time we set
		{
			if (walk.isStartContinuous()) //if is walking -> stop walking
			{
				ROS_INFO("not find soccer,body stop");
				walk.stopContinuous();
				timer_body_stop.initialize();
			}
			strategy_body_mode = body_stay;
		}

		// 1/4096*360*171 = 15 deg
		/*if(soccer_size < 20000 && soccer_size > 0) //over robot 200 cm //20000
		{
		ROS_INFO("far far");
		if(walk.isStartContinuous())
		{
		walk.stopContinuous();
		}

		if((soccer_y - head_str.pre_soccer_Y) > 70 && !timer_squat.checkTimePass()) //to be check
		{
		if(!down_stop_soccer_once_flag)
		{
		ROS_INFO("\ndown down\n");
		ros_com->sendBodySector(2); //squat and open the hand
		timer_squat.setTimerPass(5000,false); //to be check time
		down_stop_soccer_once_flag = true;
		}
		timer_squat.setTimerPass(5000,false); //to be check time
		}
		}*/
		if (soccer_size < 30000 && soccer_size >= 0) //far
		{

			down_stop_soccer_once_flag = false;

			ROS_INFO("far");
			if (head_str.head_horizontal_pos >= 2047 + 11.378 * 30) // 30 deg
			{
				walk_value.setValue(0, 0, 0, 10);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 15 && head_str.head_horizontal_pos < 2047 + 11.378 * 30) // 15~30 deg
			{
				walk_value.setValue(1000, 0, 0, 5);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 7.5 && head_str.head_horizontal_pos < 2047 + 11.378 * 15) // 7.5~15 deg
			{
				walk_value.setValue(1500, 0, 0, 2);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-7.5) && head_str.head_horizontal_pos < 2047 + 11.378 * 7.5) // 7.5~-7.5 deg
			{
				walk_value.setValue(2000, 0, 0, 0);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-15) && head_str.head_horizontal_pos < 2047 + 11.378 * (-7.5)) // -7.5~-15 deg
			{
				walk_value.setValue(1500, 0, 0, -2);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-30) && head_str.head_horizontal_pos < 2047 + 11.378 * (-15)) // -15~-30 deg
			{
				walk_value.setValue(1000, 0, 0, -5);
			}
			else if (head_str.head_horizontal_pos < 2047 + 11.378 * (-30))
			{
				walk_value.setValue(0, 0, 0, -10);
			}
		}
		else if (soccer_size >= 30000 && soccer_size < 40000) //52000
		{
			down_stop_soccer_once_flag = false;

			ROS_INFO("middle");
			if (head_str.head_horizontal_pos >= 2047 + 11.378 * 30) // 30 deg
			{
				walk_value.setValue(0, 0, 0, 10);
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 15 && head_str.head_horizontal_pos < 2047 + 11.378 * 30) // 15~30 deg
			{
				walk_value.setValue(400, 0, 0, 5); //500
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 7.5 && head_str.head_horizontal_pos < 2047 + 11.378 * 15) // 7.5~15 deg
			{
				walk_value.setValue(550, 0, 0, 2); //750
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-7.5) && head_str.head_horizontal_pos < 2047 + 11.378 * 7.5) // 7.5~-7.5 deg
			{
				walk_value.setValue(800, 0, 0, 0);//1000
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-15) && head_str.head_horizontal_pos < 2047 + 11.378 * (-7.5)) // -7.5~-15 deg
			{
				walk_value.setValue(550, 0, 0, -2); //750
			}
			else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-30) && head_str.head_horizontal_pos < 2047 + 11.378 * (-15)) // -15~-30 deg
			{
				walk_value.setValue(300, 0, 0, -5); //500
			}
			else if (head_str.head_horizontal_pos < 2047 + 11.378 * (-30))
			{
				walk_value.setValue(0, 0, 0, -10);
			}
		}
		else //close    //////close angle fix by head angle
		{
			down_stop_soccer_once_flag = false;
			head_str.able_head_classify = false;
			ROS_INFO("close");
			ROS_INFO("head_vertical_pos = %d", head_str.head_vertical_pos);
			ROS_INFO("head_horizontal_pos = %d", head_str.head_horizontal_pos);


			if (head_str.head_horizontal_pos < 1847 || head_str.head_horizontal_pos > 2247)
			{
				if (!angle_fix_flag){
					//head_str.head_vertical_pos = 1300;   //beacuse it will add _move_range in head_strategy
					//head_str.head_horizontal_pos = 2047; //so we should decrease _move_range
					//head_str.head_horizontal_state = (int)HeadStatesSelect::lockheadpos;
					//head_str.head_vertical_state = (int)HeadStatesSelect::lockheadpos;
					//timer_able_body_strategy.initialize();
					ROS_INFO("very near to the door");
					if (head_str.head_horizontal_pos >= 2047 + 11.378 * 30) // 30 deg
					{
						walk_value.setValue(0, 0, 0, 10);
						ROS_INFO("big left");
					}
					else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 15 && head_str.head_horizontal_pos < 2047 + 11.378 * 30) // 15~30 deg
					{
						walk_value.setValue(0, 0, 0, 5); //500
						ROS_INFO("m left");
					}
					else if (head_str.head_horizontal_pos >= 2047 + 11.378 * 7.5 && head_str.head_horizontal_pos < 2047 + 11.378 * 15) // 7.5~15 deg
					{
						walk_value.setValue(0, 0, 0, 2); //750
						ROS_INFO("s left");
					}
					else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-7.5) && head_str.head_horizontal_pos < 2047 + 11.378 * 7.5) // 7.5~-7.5 deg
					{
						walk_value.setValue(0, 0, 0, 0);//1000
					}
					else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-15) && head_str.head_horizontal_pos < 2047 + 11.378 * (-7.5)) // -7.5~-15 deg
					{
						walk_value.setValue(0, 0, 0, -2); //750
						ROS_INFO("s right");
					}
					else if (head_str.head_horizontal_pos >= 2047 + 11.378 * (-30) && head_str.head_horizontal_pos < 2047 + 11.378 * (-15)) // -15~-30 deg
					{
						walk_value.setValue(0, 0, 0, -5); //500
						ROS_INFO("m right");
					}
					else if (head_str.head_horizontal_pos < 2047 + 11.378 * (-30))
					{
						walk_value.setValue(0, 0, 0, -10);
						ROS_INFO("big right");
					}
					walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
					timer_squat.initialize();
					break;
				}
			}
			else //// head fix complete
			{
				head_str.head_vertical_pos = 1300;   //beacuse it will add _move_range in head_strategy
				head_str.head_horizontal_pos = 2047; //so we should decrease _move_range
				head_str.head_horizontal_state = (int)HeadStatesSelect::lockheadpos;
				head_str.head_vertical_state = (int)HeadStatesSelect::lockheadpos;
				angle_fix_flag = true;
				if (strategy_info->getIMUValue().Yaw < 20 && strategy_info->getIMUValue().Yaw > -20 && zeroimu_detect)
				{
					ROS_INFO("ready for goal detect");
					head_str.able_head_classify = false;
					head_str.able_angle_detect = true;
					walk.setWalkParameterExp(0, 0, 0, 0);
					if (head_str.able_kick_flag)
					{
						zeroimu_detect = false;
					}
				}

				if (strategy_info->getIMUValue().Yaw < (head_str.goal_imu_range + 20) && strategy_info->getIMUValue().Yaw >(head_str.goal_imu_range - 20) && !zeroimu_detect)
				{
					ROS_INFO("imu not zero , imu = %d", head_str.goal_imu_range);
					head_str.able_head_classify = true;
					head_str.able_angle_detect = false;
					zeroimu_detect = true;
					kick_flag = true;
				}
			}

			if (kick_flag && timer_able_body_strategy.checkTimePass()) //over the time we set  ////kick
			{
				ROS_INFO("ready to next step");
				ROS_INFO("soccer x = %d", soccer_x);
				ROS_INFO("soccer y = %d", soccer_y);
				ROS_INFO("y speed = %d", walk.getY());
				if (soccer_x < 250 && soccer_x >= 230 && soccer_y >= 160) //1.x 240  2.x 200  y 180
				{
					walk.setWalkParameterExp(0, 0, 0, 0);
					// walk.setWalkContinuouseOneAddValueAndPeriod(100, 1000, 0, 0.4, 150);
					if (walk.getY() == 0)
					{
						ROS_INFO("ready to kick");
						strategy_body_mode = kick_left;
						timer_period.initialize();
					}
				}
				else if (soccer_x < 410 && soccer_x >= 390 && soccer_y >= 160)
				{
					walk.setWalkParameterExp(0, 0, 0, 0);

					if (walk.getY() == 0)
					{
						ROS_INFO("ready to kick");
						strategy_body_mode = kick_right;
						timer_period.initialize();
					}
				}
				else if (soccer_x >= 250 && soccer_y >= 180) //x 240  y 180
				{
					walk_value.setValue(0, -200, 0, 0);//-600
				}
				else if (soccer_x < 250 && soccer_y >= 180)//x 240
				{
					walk_value.setValue(0, 200, 0, 0);//600
				}
				else if (soccer_x < 240 && soccer_x >= 200 && soccer_y < 180)
				{
					walk_value.setValue(200, 0, 0, 0); //500
				}
				else if (soccer_x >= 240 && soccer_y < 180)
				{
					walk_value.setValue(200, -200, 0, 0);//x 500  y -600
				}
				else if (soccer_x < 240 && soccer_y < 180)
				{
					walk_value.setValue(200, 200, 0, 0);//x 500 y 600
				}
			}
		}
		walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
		timer_squat.initialize();
		break;

	case kick_right:

		// walk.setWalkContinuouseOneAddValueAndPeriod(100, 100, 0, 0.4, 150);
		if (walk.isStartContinuous() && timer_period.checkTimePass())
		{
			walk.stopContinuous();
			timer_body_stop.initialize();
		}

		if (!walk.isStartContinuous() && timer_body_stop.checkTimePass())
		{
			ros_com->sendBodySector(6);
			timer_kick.initialize();
			//ros_com->sendBodySector(7);
			strategy_body_mode = body_stay;
			stay_flag_r = true;
			kick_flag = false;
		}

		break;

	case kick_left:

		ROS_INFO("kick left\n\n");
		// walk.setWalkContinuouseOneAddValueAndPeriod(100, 100, 0, 0.4, 150);
		if (walk.isStartContinuous() && timer_period.checkTimePass())
		{
			walk.stopContinuous();
			timer_body_stop.initialize();
		}

		if (!walk.isStartContinuous() && timer_body_stop.checkTimePass())
		{
			ros_com->sendBodySector(5);
			timer_kick.initialize();
			//ros_com->sendBodySector(7);
			strategy_body_mode = body_stay;
			stay_flag_l = true;
			kick_flag = false;
		}
		// tool->Delay(6000);
		break;
	}
}
