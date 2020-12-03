#include <ros/ros.h>
#include <ros/package.h>
#include <vector>
#include <stdio.h>
#include <std_msgs/String.h>
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/strategy_base.h"
#include "tku_libs/RosCommunication.h"
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

class OBSimage
{
public:
	OBSimage(ros::NodeHandle &nh)
	{
		image_transport::ImageTransport it(nh);
		orignimage_subscribe = nh.subscribe("/usb_cam/image_raw", 1, &OBSimage::Catch_image,this);
		strategy_info = StrategyInfoInstance::getInstance();
		tool = ToolInstance::getInstance();
		ros_com = RosCommunicationInstance::getInstance();
	};
	~OBSimage(){};
	void strategymain();
	void Catch_image(const sensor_msgs::ImageConstPtr& img);
	bool init_flag = true;
	int i = 0;
	string path;

	cv_bridge::CvImagePtr cv_img;
	cv::VideoWriter writer;
	ros::Subscriber orignimage_subscribe;
	
	RosCommunicationInstance *ros_com;
	ToolInstance *tool;
	StrategyInfoInstance *strategy_info;
};
