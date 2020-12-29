#include <ros/ros.h>

//----------------libs-------------------
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
#include "tku_libs/WalkContinuouse.h"
#include "tku_libs/RobotCupInfo.h"
#include "tku_libs/Ros2MultiCommunication.h"
#include "tku_libs/robocup_referee/referee_client.h"

using namespace robocup_referee;

class KidsizeStrategy
{
	public:
		KidsizeStrategy();
		~KidsizeStrategy();

		void strategyMain();
		void roboCupInformation();
		void getSoccerInfo();

	private:
		StrategyInfoInstance *strategy_info;
		ToolInstance *tool;
		RosCommunicationInstance *ros_com;
		WalkContinuouseInstance *walk_con;
		Ros2MultiCommunication *ros2MultiCom;
		RobotCupInfo *robotCupInfo;
		RefereeClient client;

		bool get_soccer_flag;
		bool get_goal_flag;
		int count;
		int soccer_x;
		int soccer_y;
		int soccer_width;
		int soccer_height;
		int soccer_size;
		int goal_x[2];
		int goal_y[2];
		int goal_width[2];
		int goal_height[2];
		int goal_size[2];
		int goal_cnt;
};
