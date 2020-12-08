#include "strategy/goalkeeper/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "goalkeeper");
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
	getInfo(); //when standing, have find soccer, strat to run strategy can first into trace soccer

	gettimeofday(&tv,&tz);

  	if(!strategy_info->getStrategyStart()) //strategy not running
	{
		if(walk.isStartContinuous())
		{
			walk.stopContinuous();
			timer_body_stop.initialize();
		}

		initialInfo();

		if(once_flag)
		{
			ros_com->sendBodySector(29);
			tool->Delay(1000);
			//ros_com->sendBodySector(1);
			once_flag = false;
		}

		if(send_head_cnt == 3) //when ==1 ==2 ,head won't move
		{
			ros_com->sendHeadMotor(HeadMotorID::VerticalID, head_vertical_max, 100);
			tool->Delay(500);
			ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 2048, 50);
			tool->Delay(500);
		}

		head_str.initialHeadParameter(head_vertical_max, head_vertical_mid, head_vertical_min, head_horizontal_max, head_horizontal_min);
  	}
	else //strategy start running
	{
		if(head_str.check_time_flag && !cnt_timer_flag) // to show the time how long we find the soccer
		{
			end_t = (double)(tv.tv_sec*1000000 + tv.tv_usec)/1000000;
			//printf("time = %f\n",(end_t - start_t));
			cnt_timer_flag = true;
		}

		if(!once_flag)
		{
			start_t = (double)(tv.tv_sec*1000000 + tv.tv_usec)/1000000;
			//printf("s = %f\n",start);
			ros_com->sendBodySector(4); //put down hand
			tool->Delay(2000);
		}
		once_flag = true;
		send_head_cnt = 0;

		if(soccer_dis < 70) // make sure robot can stare the soccer
		{
			head_str.soccer_vertical_range = 80;
			head_str.soccer_horizontal_range = 40;
		}
		else
		{
			head_str.soccer_vertical_range = 150;
			head_str.soccer_horizontal_range = 200;
		}

		head_str.headStrategy(get_soccer_flag, soccer_x, soccer_y, head_str.able_head_classify); // call head strategy

		bodyStrategy();
	}
}

/*void KidsizeStrategy::loadParameter()
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
		///  example
		///  parameter_name = tool->readvalue(fin, "parameter_name", 0);  // 0 int  1 float
		///
	}
	catch (exception e)
	{

	}
}*/

void KidsizeStrategy::initialInfo()
{
	// head
	head_vertical_max = 1850; //can't over 1900 (because of locolization might not accurate)
	head_vertical_min = 1200;
	head_vertical_mid = (head_vertical_max + head_vertical_min)/2; //1600;
	head_horizontal_max = 2800;//2700
	head_horizontal_min = 1300;
	head_move_theta = (2048 - head_str.head_vertical_pos) * scale_to_angle;

	head_str.head_mode_cnt = 0;
	head_str.soccer_info.close();

	if(send_head_cnt >= 100)send_head_cnt = 0;
	send_head_cnt ++;

	// walk
	walk.setWalkParameterInit(0, 0, 0, 0);
	walk.setWalkParameterMax(3000, 800, 0, 10);
	walk.setWalkParameterMin(-500, -800, 0, -10);
	walk.setWalkParameterExp(0, 0, 0, 0);
	walk.setWalkParameterOneAddValueAndPeriod(100, 100, 0, 0.4, 150);

	// flag
	down_stop_soccer_once_flag = false;
	check_goal_flag = false;
	goal_side_flag = false;
	fix_flag = false;
	move_flag = false;
	head_str.check_time_flag = false;
	cnt_timer_flag = false;
	store_flag = false;

	//status
	soccer_side = (int)SoccerSide::soccer_at_middle;
	body_side = (int)BodySide::straight;
	strategy_body_mode = (int)BodyModeSelect::kick;
	distance_mode = (int)DistanceDecide::null;

	// value
	yaw_value = 0;
	tmp_cnt_check_goal = 0;
	soccer_distance = 0;
	pre_soccer_dis = 0;
	soccer_dis = 0;
	goal_dis = 0;
	record_dis = 0;
	record_move_x = 0;
	record_move_y = 0;
	soccer_dis_x = 0;
	soccer_dis_y = 0;
	cnt_over_250 = 0;
	pos_x = 0;
	pos_y = 0;
	goal_pos_x = 0;
	goal_pos_y = 0;
	cnt_for_record = 0;

	// other
	dis_info.close();

}

void KidsizeStrategy::getInfo()
{
	for(int i = 0;i < strategy_info->soccer_info.size();i++)
	{
		if(strategy_info->soccer_info[i].object_mode == ObjectMode::SOCCER) // soccer info
		{
			soccer_width = strategy_info->soccer_info[i].width;
			soccer_height = strategy_info->soccer_info[i].height;
			soccer_x = strategy_info->soccer_info[i].x + (soccer_width / 2);
			soccer_y = strategy_info->soccer_info[i].y + (soccer_height / 2);
			soccer_size = soccer_width * soccer_height;
			soccer_dis = strategy_info->soccer_info[i].distance;
			soccer_dis_x = strategy_info->soccer_info[i].x_distance;
			soccer_dis_y = strategy_info->soccer_info[i].y_distance;
			get_soccer_flag = true;

			if(strategy_info->soccer_info.size() == 1)
			{
				get_goal_flag = false;
			}
		}
		else if(strategy_info->soccer_info[i].object_mode == ObjectMode::GOAL) // goal info
		{
			goal_width = strategy_info->soccer_info[i].width;
			goal_height = strategy_info->soccer_info[i].height;
			goal_x = strategy_info->soccer_info[i].x + (goal_width / 2);
			goal_y = strategy_info->soccer_info[i].y + (goal_height / 2);
			goal_dis = strategy_info->soccer_info[i].distance;
			goal_dis_x = strategy_info->soccer_info[i].x_distance;
			goal_dis_y = strategy_info->soccer_info[i].y_distance;
			get_goal_flag = true;

			if(goal_dis_y > 250)
			{
				goal_dis_y = pre_goal_dis_y;
			}

			pre_goal_dis_y = goal_dis_y;

			if(strategy_info->soccer_info.size() == 1)
			{
				get_soccer_flag = false;
			}
		}
		else if(strategy_info->soccer_info[i].object_mode == ObjectMode::NOTHING) // no soccer or goal in camera
		{
			get_soccer_flag = false;
			get_goal_flag = false;
		}
	}

	cnt_for_record ++;
	if(cnt_for_record >= 5) // not to record too fast
	{
		pre_soccer_dis = soccer_dis;
		cnt_for_record = 0;
	}

	if((soccer_dis - pre_soccer_dis) < 100) // avoid soccer dis judge change too over
	{
		soccer_dis = soccer_dis;
	}
	else
	{
		soccer_dis = pre_soccer_dis;
	}

	strategy_info->soccer_info.clear();

	roll_value = strategy_info->getIMUValue().Roll;
	pitch_value = strategy_info->getIMUValue().Pitch;
	yaw_value = strategy_info->getIMUValue().Yaw;

	if(yaw_value < 0)
	{
		yaw_value = yaw_value + 360;
	}

	pos_x = strategy_info->getRobotPosition().x;
	pos_y = strategy_info->getRobotPosition().y;
	pos_dir = strategy_info->getRobotPosition().dir;
	//goal_pos_x = strategy_info->getGoalPoint().x;
	//goal_pos_y = strategy_info->getGoalPoint().y;
	goal_pos_x = 980; // the goal center point
	goal_pos_y = 400;

	dis_x = goal_pos_x - pos_x;
	dis_y = -(goal_pos_y - pos_y); //add -,because our start point is at left up, not left down
	dis = sqrt(pow(dis_x,2) + pow(dis_y,2));
	angle = (int)(atan2(dis_y , dis_x) * 180 / PI);

	if(angle < 0)
	{
		angle = 360 + angle;
	}
	else if(angle > 360)
	{
		angle = angle - 360;
	}

	angle_error = angle - pos_dir;
}

/*void KidsizeStrategy::get_msg(const sensor_msgs::ImageConstPtr& msg)
{
	cv_bridge::CvImagePtr cv_ptr;

	try
    {
      cv_ptr = cv_bridge::toCvCopy(msg, sensor_msgs::image_encodings::BGR8);
      frame = cv_ptr->image;
    }
	catch (cv_bridge::Exception& e)
    {
      ROS_ERROR("cv_bridge exception: %s", e.what());
      return;
    }
}*/

void KidsizeStrategy::kickSideStrategy()
{
	switch(kick_side_mode)
	{
		case (int)KickStatesSelect::left_foot_stright_kick:
			ROS_INFO("left foot stright kick");
			ros_com->sendBodySector(7); //kick motion
			//ros_com->sendBodySector(6); //raise lest hand
			timer_body_stop.setTimerPass(2000);
			ros_com->sendBodySector(4); //put down hand
			tool->Delay(2000);
			break;

		case (int)KickStatesSelect::right_foot_stright_kick:
			ros_com->sendBodySector(8); //raise right hand
			timer_body_stop.setTimerPass(2000);
			ros_com->sendBodySector(4); //put down hand
			tool->Delay(2000);
			break;

		case (int)KickStatesSelect::left_side_kick:
			//ros_com->sendBodySector(9);
			timer_body_stop.setTimerPass(7000);
			break;

		case (int)KickStatesSelect::right_side_kick:
			//ros_com->sendBodySector(10);
			timer_body_stop.setTimerPass(7000);
			break;
	}

}

void KidsizeStrategy::afterKick()
{
	if(dis < 30 && dis > 0) //is close to the goal //future have to add identify where robot is ,because when over defend area, suggest robot not to walk over it
	{
		if(yaw_value > 0)
		{
			goal_side_flag = true; //close to left
		}
		else if(yaw_value < 0)
		{
			goal_side_flag = false; //close to right
		}

		//head_strategy.cpp
		head_str.able_head_classify = false; //close serch soccer
		head_str.goalCheck(false , goal_side_flag); //check whether is close to goal

		if(goal_dis > 120 && goal_dis < 150) //is close to goal //value to be check
		{
			if(walk.isStartContinuous())
			{
				//ROS_INFO("back to goal");
				walk_value.setValue(-400, 0, 0, ini_theta);
			}
			else if(!walk.isStartContinuous())
			{
				walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None); //start to walk
			}
		}
		else //fix to goal
		{
			goalFix();
		}
	}
	else if(dis >= 30 && dis < 200 && get_soccer_flag) //in the center place and have soccer
	{
		if((soccer_dis + dis) > 200) // over the defense area
		{
			strategy_body_mode = (int)BodyModeSelect::go_back;
		}
		else
		{
			if(soccer_dis > 50)
			{
				//ROS_INFO("into horizontal_move");
				strategy_body_mode = (int)BodyModeSelect::horizontal_move;
			}
			else
			{
				//ROS_INFO("in defense area");
				strategy_body_mode = (int)BodyModeSelect::correcte_body; //continue defense
			}
		}
	}
	else if(dis > 200 || !get_soccer_flag) //too far or no soccer
	{
		//ROS_INFO("into go back");
		strategy_body_mode = (int)BodyModeSelect::go_back;
	}

	walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);

}

void KidsizeStrategy::goalFix()
{
	if(yaw_value > 10)
	{
		goal_side_flag = false; //close to right
	}
	else if(yaw_value < -10)
	{
		goal_side_flag = true; //close to left
	}

	head_str.goalCheck(check_goal_flag, goal_side_flag); //move head

	if(goal_dis > 100 && goal_dis < 120) //value to be check
	{
		tmp_cnt_check_goal ++;
		if(tmp_cnt_check_goal >= 3) //to be check
		{
			//ROS_INFO("already go back!");
			check_goal_flag = true;
			tmp_cnt_check_goal = 0;
			strategy_body_mode = (int)BodyModeSelect::body_stay;
		}
	}
	else if (goal_dis > 120 && goal_side_flag)
	{
		walk_value.setValue(0, 300, 0, 0);
		check_goal_flag = false;
	}
	else if (goal_dis < 100 && goal_side_flag)
	{
		walk_value.setValue(0, -300, 0, 0);
		check_goal_flag = false;
	}
	else if (goal_dis > 120 && !goal_side_flag)
	{
		walk_value.setValue(0, -300, 0, 0);
		check_goal_flag = false;
	}
	else if (goal_dis < 100 && !goal_side_flag)
	{
		walk_value.setValue(0, 300, 0, 0);
		check_goal_flag = false;
	}
	else //to be check
	{
		walk_value.setValue(0, 0, 0, 0);
		check_goal_flag = false;
	}

	walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
}

void KidsizeStrategy::angleDecide()
{
	if(abs(angle_error) > 30)
	{
		if(angle_error > 0)
		{
			move_angle++;
			move_angle = checkangle(move_angle,5);
		}
		else
		{
			move_angle--;
			move_angle = checkangle(move_angle,-5);
		}
	}
	else if(abs(angle_error) > 20)
	{
		if(angle_error > 0)
		{
			move_angle++;
			move_angle = checkangle(move_angle,3);
		}
		else
		{
			move_angle--;
			move_angle = checkangle(move_angle,-3);
		}
	}
	else if(abs(angle_error) > 10)
	{
		if(angle_error > 0)
		{
			move_angle++;
			move_angle = checkangle(move_angle,2);
		}
		else
		{
			move_angle--;
			move_angle = checkangle(move_angle,-2);
		}
	}
	else if(abs(angle_error) > 3)
	{
		if(angle_error > 0)
		{
			move_angle++;
			move_angle = checkangle(move_angle,1);
		}
		else
		{
			move_angle--;
			move_angle = checkangle(move_angle,-1);
		}
	}
	else
	{
		move_angle = checkangle(move_angle,0);
	}
}

void KidsizeStrategy::movexDecide()
{
	if(dis > 300)
	{
		move_x = 2000;
	}
	else if(dis > 200)
	{
		move_x = 1500;
	}
	else if(dis >= 100)
	{
		move_x = 1000;
	}
}

int KidsizeStrategy::checkangle(int angle,int limit)
{
    if(limit > 0)
    {
        if(angle > limit)
        {
            angle-=2;
        }
    }
    else
    {
        if(angle < limit)
        {
            angle+=2;
        }
    }
    return angle;
}

void KidsizeStrategy::distanceJudge()
{
	if(abs(yaw_value) < 5) yaw_value = 0;

	if(soccer_dis > 200 || soccer_size < 2500) //over robot 200 cm
	{
		distance_mode = (int)DistanceDecide::over_range;
	}
	else if(soccer_dis <= 200 && soccer_dis > 150) //far 200~150
	{
		distance_mode = (int)DistanceDecide::far;
	}
	else if(soccer_dis <= 150 && soccer_dis > 15) //52000  //150~50
	{
		distance_mode = (int)DistanceDecide::middle;
	}
	else if(soccer_dis <= 15 && soccer_dis > 0)//close  //ready to kick
	{
		distance_mode = (int)DistanceDecide::close;
	}
	else
	{
		distance_mode = (int)DistanceDecide::null;
	}
}

void KidsizeStrategy::bodyStrategy()
{
	switch (strategy_body_mode) //body mode judge
	{
		case (int)BodyModeSelect::body_stay:

			head_str.able_head_classify = true;

			if (get_soccer_flag && !head_str.timer_check_find_soccer.checkTimePass()) //have find soccer, and is in the time we set
			{
				if(!walk.isStartContinuous() && timer_body_stop.checkTimePass()) //not walking, and robot is stop
				{
					if(timer_body_stop.getPeriodTimeMs() > 3000) timer_body_stop.setTimerPass(3000, false); //set stop time to 3s //for not send sendbodtauto too fast ,if too fast ,sendbodyauto might get lost to send
					walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
				}
				else if(walk.isStartContinuous() && head_str.strategy_head_mode == (int)HeadModeStates::trace_soccer) //is walking
				{
					//ROS_INFO("into correct body");
					record_dis = soccer_dis;
					record_dis_x = soccer_dis_x;
					record_dis_y = soccer_dis_y;
					strategy_body_mode = (int)BodyModeSelect::correcte_body;
				}
			}
			store_flag = false;
			break;

		case (int)BodyModeSelect::correcte_body:

			distanceJudge();

			head_str.able_head_classify = true;

			if(!get_soccer_flag && head_str.timer_check_find_soccer.checkTimePass()) //not find soccer, and is over the time we set
			{
				if(walk.isStartContinuous()) //if is walking -> stop walking
				{
					//ROS_INFO("not find soccer,body ready to stop");
					walk_value.setValue(0, 0, 0, ini_theta);

					if(head_str.stop_walk_flag)
					{
						//ROS_INFO("stop head");
						walk.stopContinuous();
						timer_body_stop.initialize();
						strategy_body_mode = (int)BodyModeSelect::body_stay;
					}
				}

			}

			// 1/4096*360*171 = 15 deg

			switch(distance_mode)
			{
				case (int)DistanceDecide::over_range:

					cnt_over_250 ++;
					if(/*walk.isStartContinuous() &&*/ cnt_over_250 > 10)
					{
						if(walk.isStartContinuous()) walk.stopContinuous();

						if((pre_soccer_dis - soccer_dis) > 20 && !timer_squat.checkTimePass())
						{
							if(!down_stop_soccer_once_flag)
							{
								ros_com->sendBodySector(2); //squat and open the hand
								tool->Delay(1600);
								ros_com->sendBodySector(3); //stand up
								tool->Delay(2300);
								ros_com->sendBodySector(4);
								tool->Delay(2000);
								down_stop_soccer_once_flag = true;
							}

							timer_squat.setTimerPass(5000,false); //to be check time
						}
					}

					break;

				case (int)DistanceDecide::far:

					if(!walk.isStartContinuous())
					{
						walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
					}

					down_stop_soccer_once_flag = false;

					cnt_over_250 = 0;

					if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 30) // 30 deg
					{
						walk_value.setValue(500, 0, 0, 8);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 15 && head_str.head_horizontal_pos < 2047 + angle_to_scale * 30) // 15~30 deg
					{
						walk_value.setValue(1000, 0, 0, 5);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 7.5 && head_str.head_horizontal_pos < 2047 + angle_to_scale * 15) // 7.5~15 deg
					{
						walk_value.setValue(1200, 0, 0, 2);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * (-7.5) && head_str.head_horizontal_pos < 2047 + angle_to_scale * 7.5) // 7.5~-7.5 deg
					{
						walk_value.setValue(1500, 0, 0, ini_theta);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * (-15) && head_str.head_horizontal_pos < 2047 + angle_to_scale * (-7.5)) // -7.5~-15 deg
					{
						walk_value.setValue(1200, 0, 0, -2);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * (-30) && head_str.head_horizontal_pos < 2047 + angle_to_scale * (-15)) // -15~-30 deg
					{
						walk_value.setValue(1000, 0, 0, -5);
					}
					else if(head_str.head_horizontal_pos < 2047 + angle_to_scale * (-30))
					{
						walk_value.setValue(500, 0, 0, -8);
					}

					break;

				case (int)DistanceDecide::middle:

					if(!walk.isStartContinuous())
					{
						walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
					}

					down_stop_soccer_once_flag = false;

					cnt_over_250 = 0;

					if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 30) // 30 deg
					{
						walk_value.setValue(500, 0, 0, 8);
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 15 && head_str.head_horizontal_pos < 2047 + angle_to_scale * 30) // 15~30 deg
					{
						walk_value.setValue(1000, 0, 0, 5); //500
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * 7.5 && head_str.head_horizontal_pos < 2047 + angle_to_scale * 15) // 7.5~15 deg
					{
						walk_value.setValue(1500, 0, 0, 2); //750
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * (-7.5) && head_str.head_horizontal_pos < 2047 + angle_to_scale * 7.5) // 7.5~-7.5 deg
					{
						walk_value.setValue(1800, 0, 0, ini_theta);//1000
					}
					else if(head_str.head_horizontal_pos >= 2047 + angle_to_scale * (-15) && head_str.head_horizontal_pos < 2047 + angle_to_scale * (-7.5)) // -7.5~-15 deg
					{
						walk_value.setValue(1500, 0, 0, -2); //750
					}
					else if(head_str.head_horizontal_pos >= 2047+angle_to_scale * (-30) && head_str.head_horizontal_pos < 2047 + angle_to_scale * (-15)) // -15~-30 deg
					{
						walk_value.setValue(1000, 0, 0, -5); //500
					}
					else if(head_str.head_horizontal_pos < 2047 + angle_to_scale * (-30))
					{
						walk_value.setValue(500, 0, 0, -8);
					}

					break;

				case (int)DistanceDecide::close:

					if(!walk.isStartContinuous())
					{
						walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
					}

					down_stop_soccer_once_flag = false;

					cnt_over_250 = 0;

					if(get_soccer_flag || !head_str.timer_check_find_soccer.checkTimePass())
					{
						if(head_str.head_vertical_pos != 1300 || head_str.head_horizontal_pos != 2047)
						{
							head_str.head_vertical_pos = 1300;   //beacuse it will add _move_range in head_strategy
							head_str.head_horizontal_pos = 2047; //so we should decrease _move_range
							head_str.head_horizontal_state = (int)HeadStatesSelect::lockheadpos;
							head_str.head_vertical_state = (int)HeadStatesSelect::lockheadpos;
							timer_able_body_strategy.initialize();
							head_str.able_head_classify = false;
						}
					}
					else
					{
						head_str.able_head_classify = true;
						strategy_body_mode = (int)BodyModeSelect::body_stay; //to be check
					}

					if(timer_able_body_strategy.checkTimePass()) //over the time we set
					{
						if(soccer_x < 270 && soccer_x >= 240 && soccer_y >= 160 && soccer_size > 50000) //1.x 240  2.x 200  y 180
						{
							walk.setWalkParameterExp(0, 0, 0, ini_theta);

							kick_side_mode = (int)KickStatesSelect::left_foot_stright_kick;
							strategy_body_mode = (int)BodyModeSelect::kick;

							timer_period.initialize();
						}
						else if(soccer_x < 400 && soccer_x >= 370 && soccer_y >= 160 && soccer_size > 50000)
						{
							walk.setWalkParameterExp(0, 0, 0, ini_theta);

							kick_side_mode = (int)KickStatesSelect::right_foot_stright_kick;
							strategy_body_mode = (int)BodyModeSelect::kick;

							timer_period.initialize();
						}
						else if(soccer_x < 240 && soccer_y >= 180) //x 240  y 180
						{
							//ROS_INFO("move right");
							walk_value.setValue(0, -400, 0, ini_theta);//-600
						}
						else if(soccer_x > 390 && soccer_y >= 180)//x 240
						{
							//ROS_INFO("move left");
							walk_value.setValue(0, 400, 0, ini_theta);//600
						}
						else if(/*soccer_x < 240 && soccer_x >= 200 &&*/ soccer_y < 230)
						{
							//ROS_INFO("move straight");
							walk_value.setValue(300, 0, 0, ini_theta); //500
						}
						else if(soccer_x > 270 && soccer_x < 370)
						{
							//ROS_INFO("move right to kick");
							walk_value.setValue(0, -400, 0, ini_theta);
						}
						else
						{
							//ROS_INFO("else");
						}

						/*else if(soccer_x >= 240 && soccer_y < 180)
						{
							walk_value.setValue(500, -400, 0, 0);//x 500  y -600
						}
						else if(soccer_x < 240 && soccer_y < 180)
						{
							walk_value.setValue(300, 400, 0, 0);//x 500 y 600
						}*/
					}

					break;

				case (int)DistanceDecide::null:

					break;
			}

			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			timer_squat.initialize();
			break;

		case (int)BodyModeSelect::kick:

			head_str.able_head_classify = true;

			if(walk.isStartContinuous() /*&& timer_period.checkTimePass()*/)
			{
				//ROS_INFO("stop to kick");
				walk.stopContinuous();
				timer_body_stop.initialize();
			}

			if(!walk.isStartContinuous() && timer_body_stop.checkTimePass())
			{
				kickSideStrategy();
				afterKick();
			}

			store_flag = false;

			///for testing
			//afterKick();

			break;

		case (int)BodyModeSelect::go_back:

			head_str.able_head_classify = false; //close serch soccer

			if(walk.isStartContinuous()) //is walking
			{
				if(!fix_flag)
				{
					if(yaw_value > 15 &&  yaw_value < 180) //left //value to be check
					{
						walk_value.setValue(0, 0, 0, -10);
					}
					else if(yaw_value > 180 &&  yaw_value < 345)
					{
						walk_value.setValue(0, 0, 0, 10); 
					}
					else //turn almost 180 degree,ready to go back
					{
						if(dis > 50) //not close to goal yet
						{
							//ROS_INFO("turn finish and go back");
							ros_com->sendHeadMotor(HeadMotorID::VerticalID, 1600, 100);
							tool->Delay(500);
							//walk_value.setValue(500, 0, 0, ini_theta);
							//localization
							if((pos_dir % 360) > 0 && (pos_dir % 360) < 90) //defense left's situation,at the first quadrant
							{
								if(dis < 100) //robot is close to our gate //value to be check
								{
									move_x = 1500;
									move_angle = 0;
									walk_value.setValue(move_x, 0, 0, move_angle);
								}
								else //robot is far from our gate
								{
									if((pos_dir % 360) > 160 && (pos_dir % 360) < 200)
									{
										angleDecide();
										movexDecide();
										walk_value.setValue(move_x, 0, 0, move_angle);
									}
									else
									{
										walk_value.setValue(0, 0, 0, 5); //turn left
									}
								}
							}
							else if((pos_dir % 360) > 270 && (pos_dir % 360) <= 360) //at the forth quadrant
							{
								if(dis < 100) //robot is close to our gate //value to be check
								{
									move_x = 1500;
									move_angle = 0;
									walk_value.setValue(move_x, 0, 0, move_angle);
								}
								else //robot is far from our gate
								{
									if((pos_dir % 360) > 160 && (pos_dir % 360) < 200)
									{
										angleDecide();
										movexDecide();
										walk_value.setValue(move_x, 0, 0, move_angle);
									}
									else
									{
										walk_value.setValue(0, 0, 0, -5); //turn right
									}
								}
							}
						}
						else //close to goal and ready turn
						{
							fix_flag = true;
						}

					}
				}
				else
				{
					//ROS_INFO("close to goal and turn");
					if(yaw_value < 160)
					{
						walk_value.setValue(0, 0, 0, 10);
					}
					else if(yaw_value > 200)
					{
						walk_value.setValue(0, 0, 0, -10);
					}
					else //already turn to positive
					{
						fix_flag = false;
						//ROS_INFO("turn finish and fix robot to goal");
						walk_value.setValue(0, 0, 0, ini_theta);
						if(walk.isStartContinuous()) walk.stopContinuous();
						strategy_body_mode = (int)BodyModeSelect::body_stay;
					}

				}
			}
			else //not walking
			{
				walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
				tool->Delay(300);
			}

			store_flag = false;
			//walk.setWalkParameterExp(1500, walk_value.y, walk_value.z, walk_value.theta);
			walk.setWalkParameterExp(walk_value.x, walk_value.y, walk_value.z, walk_value.theta);
			tool->Delay(300);

			break;

		case (int)BodyModeSelect::horizontal_move:

			//ROS_INFO("horizontal_move to stop enemy");
			if(soccer_x > 270 && soccer_x < 360)
			{
				if(walk.isStartContinuous()) walk.stopContinuous();
				tool->Delay(300);
				//ROS_INFO("in moddle area");
				if(!move_flag)
				{
					ROS_INFO("mv hand");
					//tool->Delay(100);
					//ros_com->sendBodySector(5); //move both hands
					//tool->Delay(2000);
					move_flag = true;
				}
			}
			else if(soccer_x <= 270) //left
			{
				if(!walk.isStartContinuous()) walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
				tool->Delay(300);
				walk_value.setValue(-500, 400, 0, 0);
			}
			else if(soccer_x >= 360) //right
			{
				if(!walk.isStartContinuous()) walk.startContinuous(WalkingMode::ContinuousStep_second, SensorMode::None);
				tool->Delay(300);
				walk_value.setValue(-500, -400, 0, 0);
			}

			store_flag = false;

			walk.setWalkParameterExp(-500, walk_value.y, walk_value.z, walk_value.theta);
			tool->Delay(300);

			break;
	}
}