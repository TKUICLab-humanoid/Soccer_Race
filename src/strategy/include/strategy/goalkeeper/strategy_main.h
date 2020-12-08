//--------------------------------------
#include "strategy/goalkeeper/head_strategy.h"
//----------------libs-------------------
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
#include "tku_libs/WalkContinuouse.h"

//---------------------------------------
#define scale_to_angle 0.088  // 360/4096
#define angle_to_scale 11.378 // 4096/360

#define PI 3.14159
#define head_hight 7 //cm
#define body_hight 49
#define pix_recoup 2 // 1cm, 6pix
#define ini_theta -1

enum class BodyModeSelect {body_stay = 0, correcte_body, kick, go_back, horizontal_move};
enum class HeadStatesSelect{move = 0, lockheadpos, null};
enum class KickStatesSelect{left_foot_stright_kick = 0, right_foot_stright_kick, left_side_kick, right_side_kick};
enum class SoccerSide{soccer_at_left = 0, soccer_at_middle, soccer_at_right};
enum class BodySide{turn_left = 0, turn_right, straight, left_side_way, right_side_way};
enum class DistanceDecide{over_range = 0, far, middle, close, null};

struct timeval tv;
struct timezone tz;

class KidsizeStrategy
{
	public:
		KidsizeStrategy(ros::NodeHandle &nh)
		{
			strategy_info = StrategyInfoInstance::getInstance();
			tool = ToolInstance::getInstance();
			ros_com = RosCommunicationInstance::getInstance();

			//Image_subscriber = nh.subscribe("/usb_cam/image_raw", 1, &KidsizeStrategy::get_msg,this);

			timer_body_stop.setTimerPass(3000, false);
			timer_able_body_strategy.setTimerPass(300, false);
			timer_period.setTimerPass(825/2,false);
			timer_squat.setTimerPass(3000,false); //to be check time
			timer_turn.setTimerPass(1000,false);
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

		//Track tracker;

		TimeClass timer_body_stop;
		TimeClass timer_able_body_strategy;
		TimeClass timer_period;
		TimeClass timer_squat;
		TimeClass timer_turn;

		//------------------------
		cv::Mat frame;
		//-------------------------

		void strategyMain();

		void loadParameter();

		void get_msg(const sensor_msgs::ImageConstPtr& msg);
		ros::Subscriber Image_subscriber;

	private:

		bool once_flag;
		bool store_flag;
		bool down_stop_soccer_once_flag;
		bool cnt_timer_flag;

		bool fix_flag;

        bool move_flag;

		int send_head_cnt; //for move head, becausse first send head comand, no eck, need send more than one times

		double start_t = 0;
        double end_t = 0;

		//head info
		int head_vertical_max;
		int head_vertical_mid;
		int head_vertical_min;
		int head_horizontal_max;
		int head_horizontal_min;

		float head_move_theta;

		float total_hight;

		float camera_move_x;
		float camera_move_y;

		int cnt_over_250;

		bool check_goal_flag;
		bool goal_side_flag;

		int tmp_cnt_check_goal;

		//body related
		int strategy_body_mode;
		int kick_side_mode;
		float roll_value;
		float pitch_value;
		float yaw_value;
		int body_side;

		int distance_mode;

		int move_x;
		int move_angle;
		//---

		//soccer info
		int soccer_x;
		int soccer_y;
		int soccer_width;
		int soccer_height;
		int soccer_size;
		int soccer_dis;
		int pre_soccer_dis;
		bool get_soccer_flag;
		int soccer_side;
		float soccer_distance;
		int soccer_dis_x;
		int soccer_dis_y;
		//---

		//goal info
		int goal_x;
		int goal_y;
		int goal_width;
		int goal_height;
		int goal_dis;
		bool get_goal_flag;

		//localtion info
		int pos_x;
		int pos_y;
		int pos_dir;
		int goal_pos_x;
		int goal_pos_y;
		int goal_dis_x;
		int goal_dis_y;

		int pre_goal_dis_x;
		int pre_goal_dis_y;

		int dis;
		int dis_x;
		int dis_y;
		int angle;
		int angle_error;

		int record_dis;
		int record_dis_x;
		int record_dis_y;
		int record_move_x;
		int record_move_y;

		int cnt_for_record = 0;

		//--- for store value
        fstream dis_info;
        //---

		//function
		void initialInfo();
		void getInfo();    //store soccer info
		void bodyStrategy();     //decide body move
		void kickSideStrategy(); //decide where, which side to kick
		void soccerSideDecide();		 //find where soccer is
		void bodySideDecide();
		void distanceJudge();
		void angleDecide();
		void movexDecide();
		void afterKick();
		void goalFix();
		int checkangle(int angle,int limit);

		//---

};
