#include "strategy/video_strategy.h"

void OBSimage::Catch_image(const sensor_msgs::ImageConstPtr& img)
{
	cv_img = cv_bridge::toCvCopy(img, sensor_msgs::image_encodings::BGR8);
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "videostrategy");
	ros::NodeHandle nh;
	OBSimage OBSimage(nh);
	ros::Rate loop_rate(30);
	

	while (nh.ok()) 
	{
		OBSimage.strategymain();
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}

void OBSimage::strategymain()
{
	if(strategy_info->getStrategyStart())
	{	
		if(init_flag)
		{
			cv::Size s(IMAGEWIDTH, IMAGEHEIGHT);
			
			path = "/home/iclab/Desktop/record/video_";  //路徑及檔名
			path.append(to_string(i));
			path.append(".avi");
			writer = cv::VideoWriter(path, CV_FOURCC('M', 'J', 'P', 'G'), 25, s);  
			i++;
			init_flag = false;
			if (!writer.isOpened())
			{
				cerr << "Can not create video file.\n" << endl;
				return ;
			}
		}
        cv::Mat image = cv_img->image;
		writer << image;
		cv::waitKey(33);
	}
	else
	{
		init_flag = true;
	}
}
