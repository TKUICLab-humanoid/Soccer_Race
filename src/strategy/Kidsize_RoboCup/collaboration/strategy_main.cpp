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
		getSoccerInfo();
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
		roboCupInformation();
  	}
	else //strategy not running
	{
		ROS_INFO("Unconnect GameController");
	}
}

void KidsizeStrategy::getSoccerInfo()
{
	soccer_size = 0;
	robotCupInfo->characterInfo->who["myself"]->object["soccer"].exist_flag = false;
	get_goal_flag = false;
	ROS_INFO("soccer_info size = %d", strategy_info->soccer_info.size());
	if(0 < strategy_info->soccer_info.size() && strategy_info->soccer_info.size() <= 4)
	{
		goal_cnt = 0;
		for(int i = 0; i < strategy_info->soccer_info.size(); i++)
		{
			if(strategy_info->soccer_info[i].object_mode == ObjectMode::SOCCER)
			{
				soccer_width = strategy_info->soccer_info[i].width;
				soccer_height = strategy_info->soccer_info[i].height;
				soccer_size = soccer_width * soccer_height;
				robotCupInfo->characterInfo->who["myself"]->object["soccer"].x = strategy_info->soccer_info[i].x + (soccer_width / 2);
				robotCupInfo->characterInfo->who["myself"]->object["soccer"].y = strategy_info->soccer_info[i].y + (soccer_height / 2);
				robotCupInfo->characterInfo->who["myself"]->object["soccer"].exist_flag = true;
			}
			else if(strategy_info->soccer_info[i].object_mode == ObjectMode::GOAL)
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
			}
			else if((int)strategy_info->soccer_info[i].object_mode == (int)ObjectMode::NOTHING)
			{
				robotCupInfo->characterInfo->who["myself"]->object["soccer"].exist_flag = false;
				get_goal_flag = false;
			}
		}
		ROS_INFO("soccer size = %d", soccer_size);
	}
	else
	{
		ROS_INFO("No soccer");
	}
	strategy_info->soccer_info.clear();
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
	RobotPos_Publisher.publish(robotPosition);
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
	localizationPosition.robotFlag = msg.robotFlag;
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

	get_goal_flag = false;
	count = 0;
	soccer_width = 0;
	soccer_height = 0;
	soccer_size = 0;
	for(int i = 0; i < (sizeof(goal_x)/sizeof(goal_x[0])); i++)
	{
		goal_x[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal_y)/sizeof(goal_y[0])); i++)
	{
		goal_y[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal_width)/sizeof(goal_width[0])); i++)
	{
		goal_width[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal_height)/sizeof(goal_height[0])); i++)
	{
		goal_height[i] = 0;
	}
	for(int i = 0; i < (sizeof(goal_size)/sizeof(goal_size[0])); i++)
	{
		goal_size[i] = 0;
	}
	goal_cnt = 0;

	localizationPosition.position.x = 0;
	localizationPosition.position.y = 0;
	localizationPosition.theta = 0;
	localizationPosition.robotFlag = false;
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
