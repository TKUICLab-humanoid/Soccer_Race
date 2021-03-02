#include <ros/ros.h>

//----------------libs-------------------
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
#include "tku_libs/WalkContinuouse.h"
#include "tku_libs/RobotCupInfo.h"
#include "tku_libs/Ros2MultiCommunication.h"
#include "tku_libs/robocup_referee/referee_client.h"

#include "tku_msgs/LocalizationPos.h"
#include "tku_msgs/RobotPos.h"

using namespace robocup_referee;

struct Coordinate
{
    int x;
    int y;
};

struct RobotData
{
	bool robotFlag;
	int theta;

	Coordinate position;
};

class KidsizeStrategy
{
	public:
		KidsizeStrategy(ros::NodeHandle &nh);
		~KidsizeStrategy();

		void strategyMain();
		void getSoccerInfo();
		void chooseLocalizationMethod();
		void roboCupInformation();

	public:
		void getLocalizationPositionFunction(const tku_msgs::LocalizationPos &msg);

	private:
		StrategyInfoInstance *strategy_info;
		ToolInstance *tool;
		RosCommunicationInstance *ros_com;
		WalkContinuouseInstance *walk_con;
		Ros2MultiCommunication *ros2MultiCom;
		RobotCupInfo *robotCupInfo;
		RefereeClient client;

		ros::Publisher RobotPos_Publisher;

		ros::Subscriber localizationPos_Subscriber;

		tku_msgs::RobotPos robotPosition;

	private:
		bool get_goal_flag;
		int count;
		int soccer_width;
		int soccer_height;
		int soccer_size;
		int goal_x[2];
		int goal_y[2];
		int goal_width[2];
		int goal_height[2];
		int goal_size[2];
		int goal_cnt;

		RobotData localizationPosition;
};
