#include "strategy/collaboration/example_strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "example");
	ros::NodeHandle nh;
	KidsizeGazebo kidsizeGazebo;

	ros::Rate loop_rate(10);

	while (nh.ok())
	{
		if (system("clear"))
		{
			ROS_ERROR("Failed to clear terminal");
			exit(EXIT_FAILURE);
		}
		ros::spinOnce();
		kidsizeGazebo.strategymain();
		loop_rate.sleep();
	}
	return 0;
}

void KidsizeGazebo::strategymain()
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

KidsizeGazebo::KidsizeGazebo()
{
	ros2MultiCom = Ros2MultiCommunication::getInstance();
	robotCupInfo = RobotCupInfo::getInstance();
	count = 0;
}

KidsizeGazebo::~KidsizeGazebo()
{
	Ros2MultiCommunication::deleteInstance();
	RobotCupInfo::deleteInstance();
}
