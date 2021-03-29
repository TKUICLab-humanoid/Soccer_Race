/////////ROS/////////
#include <ros/ros.h>
#include <ros/package.h>
#include <ros/callback_queue.h>
///////std_msgs//////
#include <std_msgs/Int16.h>
#include <std_msgs/Bool.h>
#include <std_msgs/String.h>
///////tku_libs///////
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
///////tku_msgs///////
#include "tku_msgs/SensorPackage.h"
#include "tku_msgs/Interface.h"
#include "tku_msgs/HeadPackage.h"
#include "tku_msgs/GetVelocity.h"
/////////////////opencv//////////////////////
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <image_transport/image_transport.h>
#include <cv_bridge/cv_bridge.h>
#include <highgui.h>
/////////////////////////////
#include <stdlib.h>
#include <sys/time.h>
#include <string>
#include <fstream>
#include <sstream>
#include <vector>
#include <stdio.h>
#include <time.h>

#define PI 3.14159

enum strategy_state
{
    P_INIT,
	  P_TRACK,
	  P_TURN,
	  P_END
};

strategy_state m_state = P_INIT;

using namespace std;


class Wstrategy
{
    
    	cv::Point goal_pos;
      cv::Point goal_pos_init;

      bool catch_pos_flag ;
      bool continous_flag ;

      int continous_angle;
      int continous_x;
      int continous_y;
    public:
      time_t start, end;
      ros::NodeHandle *nh;
      ros::Publisher  GetVelocity_Publisher; 
      Wstrategy(ros::NodeHandle &nh);
      ~Wstrategy(){};
      RosCommunicationInstance *ros_com;
      ToolInstance *tool;
      StrategyInfoInstance *strategy_info;
      int moving;
      void Init();
      void Track();
      void Turn();

      void StrategyEnd();
      void publishparam(int continous_x,int continous_y, int continous_angle, int moving);
      int checkangle(int angle,int limit);
      int checkcontinousX(int x,int limit);

};
