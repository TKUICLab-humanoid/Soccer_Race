#include <ros/ros.h>
#include <ros/package.h>
#include <vector>
#include <stdio.h>
#include <std_msgs/String.h>
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
//////////////////////////////////////////////////////////
#include "tku_msgs/RobotPos.h"
#include "tku_msgs/SetGoalPoint.h"
#include <stdlib.h>
#include <sys/time.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Bool.h>


#define PI 3.14159

enum strategy_state
{
    P_INIT,
	P_TRACK,
	P_TURN,
	P_END
};

strategy_state m_state = P_INIT;

struct coordinate
{
    int X;
    int Y;
};

using namespace std;

class KidsizeStrategy
{
	private:
		ros::NodeHandle *nh;

		ros::Subscriber RobotPos_subscribe;
		ros::Subscriber GetSetGoalPoint_subscribe;
		tku_msgs::GetVelocity get_velocity;
		tku_msgs::RobotPos robot_pos;

		coordinate goal_pos;
		coordinate goal_pos_init;

		bool catch_pos_flag ;
		bool continous_flag ;

		int continous_angle;
		int continous_x;
		int continous_y;
	public:
		vector<int> walk_velocity;
	public:
		KidsizeStrategy(ros::NodeHandle &nh)
		{
			this->nh = &nh;

			tool = ToolInstance::getInstance();
			ros_com = RosCommunicationInstance::getInstance();
			strategy_info = StrategyInfoInstance::getInstance();
			
			goal_pos.X = -1;
			goal_pos.Y = -1;

			walk_velocity.clear();
		};
		~KidsizeStrategy(){};
		void Init();
		void Track();
		void Turn();

		void StrategyEnd();
		
		int checkangle(int angle,int limit);
		int checkcontinousX(int x,int limit);
		int checkcontinousy(int y,int limit);

		void SaveWalkVecloity();
		string DtoS(double value);

		RosCommunicationInstance *ros_com;
		ToolInstance *tool;
		StrategyInfoInstance *strategy_info;
};

//bool isStart = false;

