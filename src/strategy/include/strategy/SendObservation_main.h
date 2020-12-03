#include <ros/ros.h>
#include <ros/package.h>
#include <ros/callback_queue.h>

#include <vector>
#include <stdio.h>
#include <std_msgs/String.h>
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/strategy_base.h"
#include "tku_libs/RosCommunication.h"

#include "tku_msgs/SensorPackage.h"
#include "tku_msgs/Interface.h"
#include "tku_msgs/HeadPackage.h"
//////////////////////////////////////////////////////////

#include <stdlib.h>
#include <sys/time.h>
#include <std_msgs/Int16.h>
#include <std_msgs/Bool.h>
///////////////////////////////////// new /////////////////////////////////
#include <image_transport/image_transport.h>
#include <opencv2/highgui/highgui.hpp>
#include <opencv2/opencv.hpp>
#include <opencv2/imgproc/imgproc.hpp>
#include <opencv2/core/core.hpp>
#include <cv_bridge/cv_bridge.h>
#include <sensor_msgs/Image.h>
#include <sensor_msgs/image_encodings.h>
#include <highgui.h>


#include <string>
#include <fstream>
#include <sstream>

#define IMAGEHEIGHT 480
#define IMAGEWIDTH 640
using namespace std;

struct IMUValue
{
	float roll;
	float pitch;
	float yaw;
};

class SendObservation
{
	public:
		ros::NodeHandle *nh;

		ros::Publisher  IMUData_Publisher; 
        ros::Publisher  HeadPosition_Publisher;
		ros::Publisher  WalkVelocity_Publisher;

		image_transport::Publisher Video_Publisher;
		sensor_msgs::ImagePtr msg_object;
	public:

	public:
		vector<tku_msgs::HeadPackage> horizontal_head_position_array;
		vector<tku_msgs::HeadPackage> vertical_head_position_array;
		vector<IMUValue> IMUData_array;
		vector<int> walkvelocity_array;

		cv::VideoCapture m_cap;

		cv::Mat frame;
	public:
		SendObservation(ros::NodeHandle &nh);
		~SendObservation(){};
		void strategymain();
		void ReadObservationData();
		void ReadVideo();
		bool init_flag = true;
		int i = 0;
		string path;
		
		RosCommunicationInstance *ros_com;
		ToolInstance *tool;
		StrategyInfoInstance *strategy_info;
};
