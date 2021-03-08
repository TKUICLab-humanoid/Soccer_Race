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
	float theta;
	float weight;

	Coordinate position;
};

struct SoccerData
{
	bool existFlag;
	int x;
	int y;
	int width;
	int height;
	int size;
	int x_dis;
	int y_dis;
	float theta;
};

struct GoalData
{
	bool existFlag;
	int x[2];
	int y[2];
	int width[2];
	int height[2];
	int size[2];
	int cnt;
};

class KidsizeStrategy
{
	public:
		KidsizeStrategy(ros::NodeHandle &nh);
		~KidsizeStrategy();

		void strategyMain();
		void chooseLocalizationMethod();
		void getSoccerInfo();
		void roboCupInformation();
		void robotDataInitialize();
		void soccerDataInitialize();
		void goalDataInitialize();

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
		int count;

		RobotData localizationPosition;
		SoccerData soccer;
		GoalData goal;
};
