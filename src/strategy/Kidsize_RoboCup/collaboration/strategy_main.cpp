#include "strategy/collaboration/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "collaboration");
	ros::NodeHandle nh;
	KidsizeStrategy KidsizeStrategy;

	ros::Rate loop_rate(15);

	while (nh.ok())
	{
		if (system("clear"))
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
  	if(strategy_info->getStrategyStart() || client.getGameState().getActualGameState() != -1 ) //strategy start running
	{
		switch(client.getGameState().getActualGameState())
		{
			case 0:
				ROS_INFO("Initial");;
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
		getSoccerInfo();
		roboCupInformation();
  	}
	else //strategy not running
	{
		ROS_INFO("Unconnect GameController");
	}
}

void KidsizeStrategy::roboCupInformation()
{
	count++;
	robotCupInfo->characterInfo->who["myself"]->object["soccer"].x = soccer_x;
	robotCupInfo->characterInfo->who["myself"]->object["soccer"].y = soccer_y;
	robotCupInfo->characterInfo->who["myself"]->object["soccer"].exist_flag = get_soccer_flag;
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

void KidsizeStrategy::getSoccerInfo()
{
	ROS_INFO("soccer_info size = %d", strategy_info->soccer_info.size());
	if(strategy_info->soccer_info.size()<=4)
	{
		get_soccer_flag = false;
		get_goal_flag = false;
		goal_cnt = 0;
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
			}
			else if ((int)strategy_info->soccer_info[i].object_mode == (int)ObjectMode::NOTHING)
			{
				get_soccer_flag = false;
				get_goal_flag = false;
			}
		}
		ROS_INFO("soccer size = %d", soccer_size);
	}
	strategy_info->soccer_info.clear();
}

KidsizeStrategy::KidsizeStrategy()
{
	strategy_info = StrategyInfoInstance::getInstance();
	tool = ToolInstance::getInstance();
	ros_com = RosCommunicationInstance::getInstance();
	walk_con = WalkContinuouseInstance::getInstance();
	ros2MultiCom = Ros2MultiCommunication::getInstance();
	robotCupInfo = RobotCupInfo::getInstance();
	client.start();

	get_soccer_flag = false;
	get_goal_flag = false;
	count = 0;
	soccer_x = 0;
	soccer_y = 0;
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
