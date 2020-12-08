#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <highgui.h>
#include <cmath>

#include "tku_libs/RosCommunication.h"
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"

#include <iostream>
#include <ctime>
#include <vector>
#include <fstream>

using namespace std;

#define middle_vertical_baseline  240
#define	middle_hortional_baseline  320

#define DivHeadSpeed 7

enum class HeadModeStates {head_stay = 0, find_soccer, trace_soccer};
enum class HeadStates{move, lockheadpos, null};
enum class VerticalStates{turn_far, turn_middle, turn_close};
enum class HorizontalStates{turn_right, turn_left, null};
enum class SoccerStates{left, right, up, down, null};

class HeadStrategy
{
    public:

        RosCommunication *ros_com;
        Tool *tool;

        HeadStrategy()
	    {
            ros_com = RosCommunicationInstance::getInstance();

            tool = ToolInstance::getInstance();

            timer_head.setTimerPass(50);//50
            timer_check_find_soccer.setTimerPass(1500,false); //2000 //per 60 loop cnt once
            timer_cnt_soccer_side_info.setTimerPass(200,false); //per "value"/33 loop cnt once
            timer_put_down_hand.setTimerPass(3000,false);

            once_flag = false;
            able_head_classify = true;
            able_angle_detect = true;
            able_kick_flag = false;
            first_goal = true;
            get_head_info = false;
            error_flag = false;
            close_flag = false;
            kick_position_check = false;


            head_horizontal_side = 0;
            head_vertical_side = 0;

            pre_soccer_x = 0;
            pre_soccer_y = 0;

            head_mode_cnt = 0;

            find_soccer_side_flag = false;

            stop_walk_flag = false;

            record_flag = false;

            soccer_side = (int)SoccerStates::null;

            tmp_pre_x_error = 0;
            tmp_pre_y_error = 0;

            cnt_soccer_side_x = 0;
            cnt_soccer_side_y = 0;

            cnt_soccer_right_side = 0;
            cnt_soccer_left_side = 0;
            cnt_up_side = 0;
            cnt_down_side = 0;

            goal_position_first = 0;
            goal_position_second = 0;
            goal_distance_first = 0;
            goal_distance_second = 0;
            kick_position = 0;
            kick_distance = 0;
            goal_imu_range = 0;
	    };

        ~HeadStrategy(){};

        TimeClass timer_head;
        TimeClass timer_check_find_soccer;
        TimeClass timer_cnt_soccer_side_info;
        TimeClass timer_put_down_hand;
        //----------------

        bool able_head_classify;
        bool able_angle_detect;
        bool able_kick_flag;
        bool first_goal;
        bool kick_position_check;
        bool close_flag;

        bool stop_walk_flag;

        int head_horizontal_pos;
        int head_vertical_pos;

        int head_vertical_state;
        int head_horizontal_state;

        int pre_soccer_x;
	    int pre_soccer_y;

        int cnt_soccer_side_x;
        int cnt_soccer_side_y;

        int cnt_soccer_right_side;
        int cnt_soccer_left_side;
        int cnt_up_side;
        int cnt_down_side;

        int goal_imu_range;

        float slpoe;

        int head_mode_cnt; //for counting run every head mode need's time, when every head position we have arrive, this cnt will return to 0

        //---
        vector<int> store_size;
        int tmp_pre_x_error;
        int tmp_pre_y_error;
        //---

        //---------------

        //--- for store value
        fstream oFile;
        //---

        void initialHeadParameter(int head_vertical_max_value, int head_vertical_mid_value, int head_vertical_min_value, int head_horizontal_max_value, int head_horizontal_min_value);
        void headStrategy(bool &soccer_flag, bool &goal_flag, int &soccer_info_x, int &soccer_info_y,  int *goal_info_x, int *goal_info_y,int &goal_cnt, bool able_move_head = true);


    private:

        bool find_goal_flag;
        bool find_soccer_flag;
        bool once_flag;
        bool get_head_info;
        bool error_flag;
        bool find_soccer_side_flag;

        bool record_flag; //when strat solve pre_soccer_x,y value,turn true to calculate slope

        int strategy_head_mode;

        int soccer_x;
        int soccer_y;

        int goal_x[2];
        int goal_y[2];
        int goalcnt;

        int head_horizontal_side;
	    int head_vertical_side;
        int soccer_side;

        int vertical_move_range;
        int horizontal_move_range;

        int soccer_vertical_range;
        int soccer_horizontal_range;
        int find_soccer_move_headX;
        int find_soccer_move_headY;

        int head_vertical_max;
        int head_vertical_mid;
        int head_vertical_min;
        int head_horizontal_max;
        int head_horizontal_min;

        int goal_position_first;
        int goal_position_second;
        int goal_distance_first;
        int goal_distance_second;
        int kick_position;
        int kick_distance;

        void initialHeadStrategy();
        void headStrategyClassify();
        void moveHead();
        void findSoccer();
        void traceSoccer();
        void traceGoal();

};
