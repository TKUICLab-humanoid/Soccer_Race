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
	robotCupInfo->characterInfo->who["myself"]->x = count;
	ros2MultiCom->sendRobotCupInfo(robotCupInfo);
	robotCupInfo->characterInfo->testShow();
	robotCupInfo->characterInfo->testShowTimer();
	robotCupInfo->characterInfo->setTimerPass(1000, false);
	ROS_INFO("PRS = %s", robotCupInfo->characterInfo->getPRS().c_str());

	if(count == 10)
	{
		robotCupInfo->characterInfo->changeMyself("suporter1");
		robotCupInfo->characterInfo->checkRobotCharacter();
	}
	if(count == 20)
	{
		robotCupInfo->characterInfo->changeMyself("suporter2");
		robotCupInfo->characterInfo->checkRobotCharacter();
	}
	if(count == 30)
	{
		robotCupInfo->characterInfo->changeMyself("defender");
		robotCupInfo->characterInfo->checkRobotCharacter();
	}
	if(count == 40)
	{
		robotCupInfo->characterInfo->changeMyself("attacker");
		robotCupInfo->characterInfo->checkRobotCharacter();
		count = 0;
	}
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

	count = 0;
};

KidsizeStrategy::~KidsizeStrategy()
{
	StrategyInfoInstance::deleteInstance();
	ToolInstance::deleteInstance();
	RosCommunicationInstance::deleteInstance();
	WalkContinuouseInstance::deleteInstance();
	Ros2MultiCommunication::deleteInstance();
	RobotCupInfo::deleteInstance();
};
