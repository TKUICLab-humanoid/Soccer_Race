#include "strategy/collaboration/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "collaboration");
	ros::NodeHandle nh;
	KidsizeStrategy KidsizeStrategy(nh);

	ros::Rate loop_rate(15);

	while (nh.ok())
	{
		if(system("clear"))
		{
			std::cerr << "Failed to clear terminal" << std::endl;
			exit(EXIT_FAILURE);
		}
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
		chooseLocalizationMethod();
		getSoccerInfo();
		roboCupInformation();
  	}
	else //strategy not running
	{
		roboCupInformation();
		ROS_INFO("Unconnect GameController");
	}
}

void KidsizeStrategy::chooseLocalizationMethod()
{
	if(localizationPosition.robotFlag)
	{
		ROS_INFO("MultiRobot Localization");
		robotPosition.x = localizationPosition.position.x;
		robotPosition.y = localizationPosition.position.y;
		robotPosition.dir = localizationPosition.theta;
	}
	else
	{
		ROS_INFO("MultiRobot Localization");
		robotPosition.x = localizationPosition.position.x;
		robotPosition.y = localizationPosition.position.y;
		robotPosition.dir = localizationPosition.theta;
	}
	robotCupInfo->characterInfo->who["myself"]->global.x_pos = robotPosition.x;
	robotCupInfo->characterInfo->who["myself"]->global.y_pos = robotPosition.y;
	robotCupInfo->characterInfo->who["myself"]->global.theta = robotPosition.dir;
	robotCupInfo->characterInfo->who["myself"]->local.x_pos = robotPosition.x;
	robotCupInfo->characterInfo->who["myself"]->local.y_pos = robotPosition.y;
	robotCupInfo->characterInfo->who["myself"]->local.theta = robotPosition.dir;

	RobotPos_Publisher.publish(robotPosition);
}

void KidsizeStrategy::getSoccerInfo()
{
	int tmp_x = robotPosition.x;
	int tmp_y = robotPosition.y;
 	float tmp_theta = robotPosition.dir;

	soccerDataInitialize();
	goalDataInitialize();
	
	ROS_INFO("soccer_info size = %d", strategy_info->soccer_info.size());
	if(0 < strategy_info->soccer_info.size() && strategy_info->soccer_info.size() <= 4)
	{
		for(int i = 0; i < strategy_info->soccer_info.size(); i++)
		{
			if(strategy_info->soccer_info[i].object_mode == ObjectMode::SOCCER)
			{
				soccer.width = strategy_info->soccer_info[i].width;
				soccer.height = strategy_info->soccer_info[i].height;
				soccer.size = soccer.width * soccer.height;
				soccer.x = strategy_info->soccer_info[i].x + (soccer.width / 2);
				soccer.y = strategy_info->soccer_info[i].y + (soccer.height / 2);
				soccer.x_dis = strategy_info->soccer_info[i].x_distance;
				soccer.y_dis = strategy_info->soccer_info[i].y_distance;
				soccer.theta = atan2(soccer.x_dis, soccer.y_dis);
				soccer.existFlag = true;
			}
			else if(strategy_info->soccer_info[i].object_mode == ObjectMode::GOAL)
			{
				if(goal.cnt == 0)
				{
					goal.width[0] = strategy_info->soccer_info[i].width;
					goal.height[0] = strategy_info->soccer_info[i].height;
					goal.x[0] = strategy_info->soccer_info[i].x + (goal.width[0] / 2);
					goal.y[0] = strategy_info->soccer_info[i].y + (goal.height[0] / 2);
					goal.cnt = 1;
					goal.existFlag = true;
				}
				else if(goal.cnt == 1)
				{
					goal.width[1] = strategy_info->soccer_info[i].width;
					goal.height[1] = strategy_info->soccer_info[i].height;
					goal.x[1] = strategy_info->soccer_info[i].x + (goal.width[1] / 2);
					goal.y[1] = strategy_info->soccer_info[i].y + (goal.height[1] / 2);
					goal.cnt = 2;
					goal.existFlag = true;
					ROS_INFO("i n 2");
				}
			}
			else if((int)strategy_info->soccer_info[i].object_mode == (int)ObjectMode::NOTHING)
			{
				
			}
		}
		ROS_INFO("soccer size = %d", soccer.size);
	}
	else
	{
		ROS_INFO("No soccer");
	}

	robotCupInfo->characterInfo->who["myself"]->object["soccer"].exist_flag = soccer.existFlag;
	if(soccer.existFlag)
	{
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.x_pos = soccer.x_dis;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.y_pos = soccer.y_dis;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.theta = soccer.theta;
		tmp_theta = Angle_Adjustment(robotPosition.dir + soccer.theta);
		tmp_x = robotPosition.x + cos(tmp_theta * DEG2RAD);
		tmp_y = robotPosition.y - sin(tmp_theta * DEG2RAD);
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.x_pos = tmp_x;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.y_pos = tmp_y;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.theta = tmp_theta;
	}
	else
	{
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.x_pos = 0;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.y_pos = 0;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].local.theta = 0.0;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.x_pos = 0;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.y_pos = 0;
		robotCupInfo->characterInfo->who["myself"]->object["soccer"].global.theta = 0.0;
	}

	robotCupInfo->characterInfo->who["myself"]->object["goal"].exist_flag = goal.existFlag;

	strategy_info->soccer_info.clear();
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

void KidsizeStrategy::roboCupInformation()
{
	count++;
	ros2MultiCom->sendRobotCupInfo(robotCupInfo);
	robotCupInfo->characterInfo->testShow();
	robotCupInfo->characterInfo->testShowTimer();
	robotCupInfo->characterInfo->setTimerPass(1000, false);
	ROS_INFO("PRS = %s", robotCupInfo->characterInfo->getPRS().c_str());

	// if(count == 10)
	// {
	// 	robotCupInfo->characterInfo->changeMyself("supporter1");
	// 	robotCupInfo->characterInfo->checkRobotCharacter();
	// }
	// if(count == 20)
	// {
	// 	robotCupInfo->characterInfo->changeMyself("supporter2");
	// 	robotCupInfo->characterInfo->checkRobotCharacter();
	// }
	// if(count == 30)
	// {
	// 	robotCupInfo->characterInfo->changeMyself("defender");
	// 	robotCupInfo->characterInfo->checkRobotCharacter();
	// }
	// if(count == 40)
	// {
	// 	robotCupInfo->characterInfo->changeMyself("attacker");
	// 	robotCupInfo->characterInfo->checkRobotCharacter();
	// 	count = 0;
	// }
}

void KidsizeStrategy::getLocalizationPositionFunction(const tku_msgs::LocalizationPos &msg)
{
	localizationPosition.position.x = msg.x;
    localizationPosition.position.y = msg.y;
    localizationPosition.theta = msg.dir;
	localizationPosition.weight = msg.weight;
	localizationPosition.robotFlag = msg.robotFlag;
}

void KidsizeStrategy::robotDataInitialize()
{
	localizationPosition.position.x = 0;
	localizationPosition.position.y = 0;
	localizationPosition.theta = 0.0;
	localizationPosition.weight = 0.0;
	localizationPosition.robotFlag = false;
}

void KidsizeStrategy::soccerDataInitialize()
{
	soccer.existFlag = false;
	soccer.width = 0;
	soccer.height = 0;
	soccer.size = 0;
	soccer.x = 0;
	soccer.y = 0;
	soccer.x_dis = 0;
	soccer.y_dis = 0;
	soccer.theta = 0.0;
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

	count = 0;

	robotDataInitialize();

	soccerDataInitialize();
	
	goalDataInitialize();
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
