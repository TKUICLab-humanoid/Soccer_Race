//---------------------------------------
#include "strategy/attacker/head_strategy.h"
//----------------libs-------------------
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
#include "tku_libs/WalkContinuouse.h"

//---------------------------------------
enum body_mode_select {body_stay = 0, correcte_body, kick_right, kick_left};
enum class HeadStatesSelect{move, lockheadpos, null};

class KidsizeStrategy
{
	public:
		KidsizeStrategy(ros::NodeHandle &nh)
		{
			strategy_info = StrategyInfoInstance::getInstance();
			tool = ToolInstance::getInstance();
			ros_com = RosCommunicationInstance::getInstance();

			timer_body_stop.setTimerPass(3000, false);
			timer_able_body_strategy.setTimerPass(300, false);
			timer_period.setTimerPass(825/2,false);
			timer_squat.setTimerPass(3000,false); //to be check time
			timer_kick.setTimerPass(6000,false);
		};
		~KidsizeStrategy()
		{
			StrategyInfoInstance::deleteInstance();
			ToolInstance::deleteInstance();
			RosCommunicationInstance::deleteInstance();
		};

		StrategyInfoInstance *strategy_info;
		ToolInstance *tool;
		RosCommunicationInstance *ros_com;

		HeadStrategy head_str;
		WalkContinuouse walk;
		WalkValue walk_value;

		TimeClass timer_body_stop;
		TimeClass timer_able_body_strategy;
		TimeClass timer_period;
		TimeClass timer_squat;
		TimeClass timer_kick;

		//------------------------

		//-------------------------

		void strategyMain();

		void loadParameter();

	private:
		bool angle_fix_flag = false;
		bool imu_init_flag = true;
		bool once_flag;
		bool down_stop_soccer_once_flag;
		bool focus_flag = true;
		bool back_flag = false;
		bool hand=true;
		bool kick_flag = false;
		bool stay_flag_l;
		bool stay_flag_r;
		bool zeroimu_detect = true;

		int send_head_cnt;

		int strategy_body_mode = 0;

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
		float pitch_init;
		float roll_init;
		float yaw_init;
		bool get_soccer_flag;
		bool get_goal_flag;

		void initialInfo();
		void getSoccerInfo();
		void bodyStrategy();
		void imu_check(int range);

};
