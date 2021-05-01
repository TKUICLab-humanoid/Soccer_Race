#include "strategy/collaboration/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "collaboration");
	ros::NodeHandle nh;
	KidsizeStrategy KidsizeStrategy(nh);

	ros::Rate loop_rate(30);

	while (nh.ok())
	{
		// if(system("clear"))
		// {
		// 	std::cerr << "Failed to clear terminal" << std::endl;
		// 	exit(EXIT_FAILURE);
		// }
		ros::spinOnce();
		KidsizeStrategy.strategyMain();
		loop_rate.sleep();
	}
	return 0;
}

void KidsizeStrategy::strategyMain()
{
	std::cout << &client.getGameState() << std::endl;
  	if(strategy_info->getStrategyStart() || client.getGameState().getActualGameState() != -1) //strategy start running
	{
		switch(client.getGameState().getActualGameState())
		{
			case 0:
				ROS_INFO("Initial");
				break;
			case 1:
				ROS_INFO("Ready");
				break;
			case 2:
				ROS_INFO("Set");
				break; 
			case 3:
				ROS_INFO("Playing");
				break;
			case 4:
				ROS_INFO("Finished");
				break;
			default:
				ROS_INFO("None");
				break;
		}
		calculateRobotPosition();
		calculateObjectPosition();
		transmitRoboCupInfo();
  	}
	else //strategy not running
	{
		ROS_INFO("Unconnect GameController");
	}
}

void KidsizeStrategy::calculateRobotPosition()
{
	int weightCnt;
	float robotX;
	float robotY;
	float robotTheta;
	float weight;

	if(localizationPosition.weight >= highThreshold)
	{
		ROS_INFO("RobotPosition Section 1; Weight above highThreshold");
		robotX = localizationPosition.position.x;
		robotY = localizationPosition.position.y;
		robotTheta = localizationPosition.theta;
		weight = localizationPosition.weight;
	}
	else if(localizationPosition.weight < highThreshold && localizationPosition.weight >= lowThreshold)
	{
		ROS_INFO("RobotPosition Section 2; Weight under highThreshold and above lowThreshold");
		robotX = localizationPosition.position.x * localizationPosition.weight;
		robotY = localizationPosition.position.y * localizationPosition.weight;
		robotTheta = localizationPosition.theta * localizationPosition.weight;
		weight = localizationPosition.weight;
		weightCnt = 1;

		for(std::map<std::string, CharacterInfo*>::iterator it = robotCupInfo->characterInfo->who.begin(); it != robotCupInfo->characterInfo->who.end(); it++)
		{
			if(it->first != itMyself->first && it->first != itMyself->second->which_robot)
			{
				if(it->second->partner[itMyself->second->which_robot].exist_flag == true && it->second->weight >= localizationPosition.weight)
				{
					robotX += (it->second->partner[itMyself->second->which_robot].global.x_pos * it->second->weight);
					robotY += (it->second->partner[itMyself->second->which_robot].global.y_pos * it->second->weight);
					robotTheta += (it->second->partner[itMyself->second->which_robot].global.theta * it->second->weight);
					weight += it->second->weight;
					weightCnt++;
				}
			}
		}

		if(weightCnt >= 2)
		{
			robotX /= weight;
			robotY /= weight;
			robotTheta /= weight;
			weight /= weightCnt;
		}
		else
		{
			robotX = localizationPosition.position.x;
			robotY = localizationPosition.position.y;
			robotTheta = localizationPosition.theta;
			weight = localizationPosition.weight;
		}
	}
	else if(localizationPosition.weight < lowThreshold)
	{
		ROS_INFO("RobotPosition Section 3; Weight under lowThreshold");
		robotX = 0.0;
		robotY = 0.0;
		robotTheta = 0.0;
		weight = 0.0;
		weightCnt = 0;

		for(std::map<std::string, CharacterInfo*>::iterator it = robotCupInfo->characterInfo->who.begin(); it != robotCupInfo->characterInfo->who.end(); it++)
		{
			if(it->first != itMyself->first && it->first != itMyself->second->which_robot)
			{
				if(it->second->partner[itMyself->second->which_robot].exist_flag == true && it->second->weight >= lowThreshold)
				{
					robotX += (it->second->partner[itMyself->second->which_robot].global.x_pos * it->second->weight);
					robotY += (it->second->partner[itMyself->second->which_robot].global.y_pos * it->second->weight);
					robotTheta += (it->second->partner[itMyself->second->which_robot].global.theta * it->second->weight);
					weight += it->second->weight;
					weightCnt++;
				}
			}
		}

		if(weightCnt >= 1)
		{
			robotX /= weight;
			robotY /= weight;
			robotTheta /= weight;
			weight /= weightCnt;
		}
		else
		{
			robotX = localizationPosition.position.x;
			robotY = localizationPosition.position.y;
			robotTheta = localizationPosition.theta;
			weight = localizationPosition.weight;
		}
	}
	
	itMyself->second->weight = weight;
	itMyself->second->global.x_pos = (int)robotX;
	itMyself->second->global.y_pos = (int)robotY;
	itMyself->second->global.theta = robotTheta;
	itMyself->second->local.x_pos = (int)robotX;
	itMyself->second->local.y_pos = (int)robotY;
	itMyself->second->local.theta = robotTheta;

	robotPosition.x = (int)robotX;
	robotPosition.y = (int)robotY;
	robotPosition.dir = robotTheta;

	ROS_INFO("robotPosition.x: %d", robotPosition.x);
	ROS_INFO("robotPosition.y: %d", robotPosition.y);
	ROS_INFO("robotPosition.dir: %f\n", robotPosition.dir);

	RobotPos_Publisher.publish(robotPosition);
}

void KidsizeStrategy::calculateObjectPosition()
{
	getSoccerInfo();

	bool soccerExistFlag;
	int soccerCnt;
	int weightCnt;
	int distanceX;
	int distanceY;
	float soccerTmpX;
	float soccerTmpY;
	float soccerTmpTheta;
	float soccerGlobalX;
	float soccerGlobalY;
	float soccerGlobalTheta;
	float soccerLocalX;
	float soccerLocalY;
	float soccerLocalTheta;
	float soccerWeight;
	float weight;
	
	if(soccer.existFlag)
	{
		soccerTmpTheta = Angle_Adjustment(robotPosition.dir + soccer.theta);
		soccerTmpX = robotPosition.x + soccer.dis * cos(soccerTmpTheta * DEG2RAD);
		soccerTmpY = robotPosition.y - soccer.dis * sin(soccerTmpTheta * DEG2RAD);

		if(localizationPosition.weight >= highThreshold)
		{
			ROS_INFO("ObjectPosition Section 1; Weight above highThreshold");
			soccerGlobalX = soccerTmpX;
			soccerGlobalY = soccerTmpY;
			soccerGlobalTheta = soccerTmpTheta;
			soccerLocalX = soccer.x_dis;
			soccerLocalY = soccer.y_dis;
			soccerLocalTheta = soccer.theta;
		}
		else if(localizationPosition.weight < highThreshold && localizationPosition.weight >= lowThreshold)
		{
			ROS_INFO("ObjectPosition Section 2; Weight under highThreshold and above lowThreshold");
			soccerGlobalX = soccerTmpX * localizationPosition.weight;
			soccerGlobalY = soccerTmpY * localizationPosition.weight;
			weight = localizationPosition.weight;
			weightCnt = 1;

			for(std::map<std::string, CharacterInfo*>::iterator it = robotCupInfo->characterInfo->who.begin(); it != robotCupInfo->characterInfo->who.end(); it++)
			{
				if(it->first != itMyself->first && it->first != itMyself->second->which_robot)
				{
					if(it->second->object["soccer"].exist_flag == true && it->second->weight >= localizationPosition.weight)
					{
						soccerGlobalX += (it->second->object["soccer"].global.x_pos * it->second->weight);
						soccerGlobalY += (it->second->object["soccer"].global.y_pos * it->second->weight);
						weight += it->second->weight;
						weightCnt++;
					}
				}
			}

			if(weightCnt >= 2)
			{
				soccerGlobalX /= weight;
				soccerGlobalY /= weight;
				distanceX = soccerGlobalX - robotPosition.x;
				distanceY = -(soccerGlobalY - robotPosition.y);
				soccerGlobalTheta = Angle_Adjustment(atan2(distanceY, distanceX) * 180 / PI);
				soccerLocalTheta = soccerGlobalTheta - robotPosition.dir;
				soccerLocalX = -(sqrt(pow(distanceY,2)+pow(distanceX,2)) * sin(soccerLocalTheta * DEG2RAD));
				soccerLocalY = sqrt(pow(distanceY,2)+pow(distanceX,2)) * cos(soccerLocalTheta * DEG2RAD);
			}
			else
			{
				soccerGlobalX = soccerTmpX;
				soccerGlobalY = soccerTmpY;
				soccerGlobalTheta = soccerTmpTheta;
				soccerLocalX = soccer.x_dis;
				soccerLocalY = soccer.y_dis;
				soccerLocalTheta = soccer.theta;
			}
		}
		else if(localizationPosition.weight < lowThreshold)
		{
			ROS_INFO("ObjectPosition Section 3; Weight under lowThreshold");
			soccerGlobalX = 0.0;
			soccerGlobalY = 0.0;
			weight = 0.0;
			weightCnt = 0;

			for(std::map<std::string, CharacterInfo*>::iterator it = robotCupInfo->characterInfo->who.begin(); it != robotCupInfo->characterInfo->who.end(); it++)
			{
				if(it->first != itMyself->first && it->first != itMyself->second->which_robot)
				{
					if(it->second->object["soccer"].exist_flag == true && it->second->weight >= lowThreshold)
					{
						soccerGlobalX += (it->second->object["soccer"].global.x_pos * it->second->weight);
						soccerGlobalY += (it->second->object["soccer"].global.y_pos * it->second->weight);
						weight += it->second->weight;
						weightCnt++;
					}
				}
			}

			if(weightCnt >= 1)
			{
				soccerGlobalX /= weight;
				soccerGlobalY /= weight;
				distanceX = soccerGlobalX - robotPosition.x;
				distanceY = -(soccerGlobalY - robotPosition.y);
				soccerGlobalTheta = Angle_Adjustment(atan2(distanceY, distanceX) * 180 / PI);
				soccerLocalTheta = soccerGlobalTheta - robotPosition.dir;
				soccerLocalX = -(sqrt(pow(distanceY,2)+pow(distanceX,2)) * sin(soccerLocalTheta * DEG2RAD));
				soccerLocalY = sqrt(pow(distanceY,2)+pow(distanceX,2)) * cos(soccerLocalTheta * DEG2RAD);
			}
			else
			{
				soccerGlobalX = soccerTmpX;
				soccerGlobalY = soccerTmpY;
				soccerGlobalTheta = soccerTmpTheta;
				soccerLocalX = soccer.x_dis;
				soccerLocalY = soccer.y_dis;
				soccerLocalTheta = soccer.theta;
			}
		}
	}
	else
	{
		ROS_INFO("ObjectPosition Section 4; No Soccer");
		soccerGlobalX = 0.0;
		soccerGlobalY = 0.0;
		weight = 0.0;
		weightCnt = 0;

		for(std::map<std::string, CharacterInfo*>::iterator it = robotCupInfo->characterInfo->who.begin(); it != robotCupInfo->characterInfo->who.end(); it++)
		{
			if(it->first != itMyself->first && it->first != itMyself->second->which_robot)
			{
				if(it->second->object["soccer"].exist_flag == true && it->second->weight >= lowThreshold)
				{
					soccerGlobalX += (it->second->object["soccer"].global.x_pos * it->second->weight);
					soccerGlobalY += (it->second->object["soccer"].global.y_pos * it->second->weight);
					weight += it->second->weight;
					weightCnt++;
				}
			}
		}

		if(weightCnt >= 1)
		{
			soccerGlobalX /= weight;
			soccerGlobalY /= weight;
			distanceX = soccerGlobalX - robotPosition.x;
			distanceY = -(soccerGlobalY - robotPosition.y);
			soccerGlobalTheta = Angle_Adjustment(atan2(distanceY, distanceX) * 180 / PI);
			soccerLocalTheta = soccerGlobalTheta - robotPosition.dir;
			soccerLocalX = -(sqrt(pow(distanceY,2)+pow(distanceX,2)) * sin(soccerLocalTheta * DEG2RAD));
			soccerLocalY = sqrt(pow(distanceY,2)+pow(distanceX,2)) * cos(soccerLocalTheta * DEG2RAD);
			soccer.existFlag = true;
		}
		else
		{
			soccer.existFlag = itMyself->second->object["soccer"].exist_flag;
			soccerGlobalX = itMyself->second->object["soccer"].global.x_pos;
			soccerGlobalY = itMyself->second->object["soccer"].global.y_pos;
			soccerGlobalTheta = itMyself->second->object["soccer"].global.theta;
			soccerLocalX = itMyself->second->object["soccer"].local.x_pos;
			soccerLocalY = itMyself->second->object["soccer"].local.y_pos;
			soccerLocalTheta = itMyself->second->object["soccer"].local.theta;
		}
	}

	itMyself->second->object["soccer"].exist_flag = soccer.existFlag;
	itMyself->second->object["soccer"].global.x_pos = (int)soccerGlobalX;
	itMyself->second->object["soccer"].global.y_pos = (int)soccerGlobalY;
	itMyself->second->object["soccer"].global.theta = soccerGlobalTheta;
	itMyself->second->object["soccer"].local.x_pos = (int)soccerLocalX;
	itMyself->second->object["soccer"].local.y_pos = (int)soccerLocalY;
	itMyself->second->object["soccer"].local.theta = soccerLocalTheta;
}

void KidsizeStrategy::getSoccerInfo()
{
	soccerDataInitialize();
	goalDataInitialize();
	
	ROS_INFO("objectInfo size = %d", strategy_info->objectInfo.size());
	if(0 < strategy_info->objectInfo.size() && strategy_info->objectInfo.size() <= 4)
	{
		for(int i = 0; i < strategy_info->objectInfo.size(); i++)
		{
			if(strategy_info->objectInfo[i].object_mode == ObjectMode::SOCCER)
			{
				soccer.width = strategy_info->objectInfo[i].width;
				soccer.height = strategy_info->objectInfo[i].height;
				soccer.size = soccer.width * soccer.height;
				soccer.x = strategy_info->objectInfo[i].x + (soccer.width / 2);
				soccer.y = strategy_info->objectInfo[i].y + (soccer.height / 2);
				soccer.x_dis = strategy_info->objectInfo[i].x_distance;
				soccer.y_dis = strategy_info->objectInfo[i].y_distance;
				soccer.dis = strategy_info->objectInfo[i].distance;
				soccer.theta = -(atan2(soccer.x_dis, soccer.y_dis) * 180 / PI);
				soccer.existFlag = true;
			}
			else if(strategy_info->objectInfo[i].object_mode == ObjectMode::GOAL)
			{
				if(goal.cnt == 0)
				{
					goal.width[0] = strategy_info->objectInfo[i].width;
					goal.height[0] = strategy_info->objectInfo[i].height;
					goal.x[0] = strategy_info->objectInfo[i].x + (goal.width[0] / 2);
					goal.y[0] = strategy_info->objectInfo[i].y + (goal.height[0] / 2);
					goal.cnt = 1;
					goal.existFlag = true;
				}
				else if(goal.cnt == 1)
				{
					goal.width[1] = strategy_info->objectInfo[i].width;
					goal.height[1] = strategy_info->objectInfo[i].height;
					goal.x[1] = strategy_info->objectInfo[i].x + (goal.width[1] / 2);
					goal.y[1] = strategy_info->objectInfo[i].y + (goal.height[1] / 2);
					goal.cnt = 2;
					goal.existFlag = true;
					// ROS_INFO("i n 2");
				}
			}
			else if((int)strategy_info->objectInfo[i].object_mode == (int)ObjectMode::NOTHING)
			{
				
			}
		}
		ROS_INFO("soccer size = %d", soccer.size);
	}
	else
	{
		ROS_INFO("No soccer");
	}

	ROS_INFO("soccer.x_dis: %d", soccer.x_dis);
	ROS_INFO("soccer.y_dis: %d", soccer.y_dis);
	ROS_INFO("soccer.theta: %f\n", soccer.theta);

	strategy_info->objectInfo.clear();
}

float KidsizeStrategy::Angle_Adjustment(float angle)
{
    if(angle < 0.0)
	{
        return angle + 360.0;
	}
    else if(angle >= 360.0)
	{
        return angle - 360.0;
	}
    else
	{
        return angle;
	}
}

void KidsizeStrategy::transmitRoboCupInfo()
{
	ros2MultiCom->sendRobotCupInfo(robotCupInfo);
	robotCupInfo->characterInfo->testShow();
	robotCupInfo->characterInfo->testShowTimer();
	robotCupInfo->characterInfo->setTimerPass(1000, false);
	ROS_INFO("PRS = %s", robotCupInfo->characterInfo->getPRS().c_str());
}

void KidsizeStrategy::getLocalizationPositionFunction(const tku_msgs::LocalizationPos &msg)
{
	localizationPosition.position.x = msg.x;
    localizationPosition.position.y = msg.y;
    localizationPosition.theta = msg.dir;
	localizationPosition.weight = msg.weight;
}

void KidsizeStrategy::robotPositionDataInitialize()
{
	localizationPosition.position.x = 0;
	localizationPosition.position.y = 0;
	localizationPosition.theta = 0.0;
	localizationPosition.weight = 0.0;
}

void KidsizeStrategy::objectPositionDataInitialize()
{
	soccerPosition.position.x = 0;
	soccerPosition.position.y = 0;
	soccerPosition.theta = 0.0;
}

void KidsizeStrategy::soccerDataInitialize()
{
	soccer.existFlag = false;
	// soccer.width = 0;
	// soccer.height = 0;
	// soccer.size = 0;
	// soccer.x = 0;
	// soccer.y = 0;
	// soccer.x_dis = 0;
	// soccer.y_dis = 0;
	// soccer.theta = 0.0;
}

void KidsizeStrategy::goalDataInitialize()
{
	goal.existFlag = false;
	for(int i = 0; i < (sizeof(goal.x)/sizeof(goal.x[0])); i++)
	{
		goal.x[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal.y)/sizeof(goal.y[0])); i++)
	{
		goal.y[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal.width)/sizeof(goal.width[0])); i++)
	{
		goal.width[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal.height)/sizeof(goal.height[0])); i++)
	{
		goal.height[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal.size)/sizeof(goal.size[0])); i++)
	{
		goal.size[i] = 0;
	}
	goal.cnt = 0;
}

KidsizeStrategy::KidsizeStrategy(ros::NodeHandle &nh)
{
	strategy_info = StrategyInfoInstance::getInstance();
	tool = ToolInstance::getInstance();
	ros_com = RosCommunicationInstance::getInstance();
	walk_con = WalkContinuouseInstance::getInstance();
	ros2MultiCom = Ros2MultiCommunication::getInstance();
	robotCupInfo = RobotCupInfo::getInstance();
	client.start();

	RobotPos_Publisher = nh.advertise<tku_msgs::RobotPos>("/localization/robotpos", 1000);
	
	localizationPos_Subscriber = nh.subscribe("/localization/localizationpos", 1, &KidsizeStrategy::getLocalizationPositionFunction, this);

	robotPosition.x = 0;
	robotPosition.y = 0;
	robotPosition.dir = 0;

	robotPositionDataInitialize();

	objectPositionDataInitialize();

	soccerDataInitialize();
	
	goalDataInitialize();

	itMyself = robotCupInfo->characterInfo->who.find("myself");

	tool->Delay(500);
    ros_com->sendHeadMotor(HeadMotorID::HorizontalID, 2048, 200);
    tool->Delay(50);
    ros_com->sendHeadMotor(HeadMotorID::VerticalID, 1700, 200);
    tool->Delay(50);
    ros_com->sendSensorReset();//IMU值重製
}

KidsizeStrategy::~KidsizeStrategy()
{
	StrategyInfoInstance::deleteInstance();
	ToolInstance::deleteInstance();
	RosCommunicationInstance::deleteInstance();
	WalkContinuouseInstance::deleteInstance();
	Ros2MultiCommunication::deleteInstance();
	RobotCupInfo::deleteInstance();
}
