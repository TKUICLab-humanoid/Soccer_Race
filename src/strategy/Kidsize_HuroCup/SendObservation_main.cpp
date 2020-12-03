#include "strategy/SendObservation_main.h"

SendObservation::SendObservation(ros::NodeHandle &nh)
{
	this->nh = &nh;
	image_transport::ImageTransport it(nh);
	
	IMUData_Publisher = nh.advertise<tku_msgs::SensorPackage>("/package/sensorpackage", 10);
	HeadPosition_Publisher = nh.advertise<tku_msgs::HeadPackage>("/package/HeadMotor", 10);
	WalkVelocity_Publisher = nh.advertise<tku_msgs::Interface>("/ChangeContinuousValue_Topic", 10);

	Video_Publisher = it.advertise("/usb_cam/image_raw", 1);

	strategy_info = StrategyInfoInstance::getInstance();
	tool = ToolInstance::getInstance();
	ros_com = RosCommunicationInstance::getInstance();

	ReadObservationData();
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "sendobservation");
	ros::NodeHandle nh;
	SendObservation SendObservation(nh);
	ros::Rate loop_rate(30);

	SendObservation.ReadVideo();

	while (nh.ok()) 
	{
		SendObservation.strategymain();
		ros::spinOnce();
		loop_rate.sleep();
	}
	return 0;
}

void SendObservation::strategymain()
{
	if(m_cap.isOpened() && strategy_info->getStrategyStart())
	{
		////////////////Send IMU////////////////
		tku_msgs::SensorPackage msg_sensor;
		tku_msgs::HeadPackage msg_head;
		tku_msgs::Interface msg_walk;
		if(!IMUData_array.empty())
		{
			double IMU_value[3];
			IMU_value[0] = IMUData_array[0].roll;
			IMU_value[1] = IMUData_array[0].pitch;
			IMU_value[2] = IMUData_array[0].yaw;
			ROS_INFO("IMU_value[0] %f",IMU_value[0]);
			ROS_INFO("IMU_value[1] %f",IMU_value[1]);
			ROS_INFO("IMU_value[2] %f",IMU_value[2]);
			for(int i = 0; i < 3; i++)
			{
				msg_sensor.IMUData.push_back(IMU_value[i]);
			}
			IMUData_array.erase(IMUData_array.begin());
			IMUData_Publisher.publish(msg_sensor);
		}
		////////////////Send head position////////////////
		if(!horizontal_head_position_array.empty())
		{
			msg_head.ID = horizontal_head_position_array[0].ID;
			msg_head.Position = horizontal_head_position_array[0].Position;
			msg_head.Speed = horizontal_head_position_array[0].Speed;
			horizontal_head_position_array.erase(horizontal_head_position_array.begin());
			HeadPosition_Publisher.publish(msg_head);
			ROS_INFO("horizontal_head %d",msg_head.Position);
			msg_head.ID = vertical_head_position_array[0].ID;
			msg_head.Position = vertical_head_position_array[0].Position;
			msg_head.Speed = vertical_head_position_array[0].Speed;
			vertical_head_position_array.erase(vertical_head_position_array.begin());
			HeadPosition_Publisher.publish(msg_head);
			ROS_INFO("vertical_head %d",msg_head.Position);
		}
		////////////////Send walk////////////////
		if(!walkvelocity_array.empty())
		{
			msg_walk.x = walkvelocity_array[0];
			msg_walk.y = 0;
			walkvelocity_array.erase(walkvelocity_array.begin());
			WalkVelocity_Publisher.publish(msg_walk);
			ROS_INFO("msg_walk.x %d",msg_walk.x);
		}

		if(!m_cap.read(frame))
		{
			nh->shutdown();
		}
		else
		{
			cv::namedWindow("frame",cv::WINDOW_NORMAL);
			imshow("frame",frame);
			msg_object = cv_bridge::CvImage(std_msgs::Header(), "bgr8", frame).toImageMsg();
			Video_Publisher.publish(msg_object);
		}
		/*if(!IMUData_array.empty())
		{
			tku_msgs::SensorPackage msg;
			double IMU_value[3];
			IMU_value[0] = IMUData_array[0].roll;
			IMU_value[1] = IMUData_array[1].pitch;
			IMU_value[2] = IMUData_array[2].yaw;
			for(int i = 0; i < 3; i++)
			{
				msg.IMUData.push_back(IMU_value[i]);
			}
			IMUData_array.erase(IMUData_array.begin());
			IMUData_Publisher.publish(msg);
			//ROS_INFO("Yaw %f",IMU_value[2]);
		}*/
	}
	cv::waitKey(1);
}

void SendObservation::ReadObservationData()
{
	ROS_INFO("ReadObservationData");

	char data_file[200];
    strcpy(data_file, tool->getPackagePath("strategy").c_str());
	strcat(data_file, "/Data");

	char path_head[200];
	strcpy(path_head,data_file);
    strcat(path_head, "/HeadPosition_Record.csv");

	fstream fp;
    fp.open(path_head, ios::in);

	if(!fp)
	{
		cerr << "Can not create video file.\n" << endl;
		return ;
	}
	else
	{
		char x[200];
		fp.getline(x,sizeof(x),'\n');
		
		while(!fp.eof())
		{
			tku_msgs::HeadPackage data;
			fp.getline(x,sizeof(x),'\n');
			string sx = x;
			string horizontal_tmp;
			size_t n = sx.find(",");
			horizontal_tmp = sx.substr(0,n);
			sx.erase(0,n+1);
			data.Position = atoi(horizontal_tmp.c_str());
			data.ID = 1;
			data.Speed = 3000;
			horizontal_head_position_array.push_back(data);
			data.Position = atoi(sx.c_str());
			data.ID = 2;
			data.Speed = 3000;
			vertical_head_position_array.push_back(data);
		}
		horizontal_head_position_array.pop_back();
		vertical_head_position_array.pop_back();
		ROS_INFO("size = %d",horizontal_head_position_array.size());
	}
	fp.close();

	char path_IMU[200];
	strcpy(path_IMU,data_file);
    strcat(path_IMU, "/IMU_Record.csv");

	fp.open(path_IMU, ios::in);

	if(!fp)
	{
		cerr << "Can not create video file.\n" << endl;
		return ;
	}
	else
	{
		char x[300];
		fp.getline(x,sizeof(x),'\n');
		
		while(fp.getline(x,sizeof(x),'\n'))
		{
			//fp.getline(x,sizeof(x),'\n');
			IMUValue data;
			char tmp[300];
			istringstream tmp_line(x);
			string tmp_string;
			int status_cnt = 0;
			while(getline(tmp_line,tmp_string,','))
			{
				switch(status_cnt)
				{
					case 0:
						data.roll = atof(tmp_string.c_str());
						break;
					case 1:
						data.pitch = atof(tmp_string.c_str());
						break;
					case 2:
						data.yaw = atof(tmp_string.c_str());
						break;
				}
				status_cnt++;
			}
			//ROS_INFO("data %f",atof(tmp_string.c_str()));
			//ROS_INFO("x %s",x.c_str());
			IMUData_array.push_back(data);
			//ROS_INFO("data.yaw %f",data.yaw);
		}
		ROS_INFO("size = %d",IMUData_array.size());
	}
	fp.close();

	char path_walk[200];
	strcpy(path_walk,data_file);
    strcat(path_walk, "/WalkVecloity_Record.csv");

	fp.open(path_walk, ios::in);

	if(!fp)
	{
		cerr << "Can not create video file.\n" << endl;
		return ;
	}
	else
	{
		char x[300];
		fp.getline(x,sizeof(x),'\n');
		
		while(!fp.eof())
		{
			int data;
			fp.getline(x,sizeof(x),'\n');
			string value = x;

			data = atof(value.c_str());
			walkvelocity_array.push_back(data);
		}
		walkvelocity_array.pop_back();
		ROS_INFO("size = %d",walkvelocity_array.size());
	}
	fp.close();
}

void SendObservation::ReadVideo()
{
	char filename[200] = "/home/iclab/Desktop/Experiment_video/video_0.avi";

	m_cap.open(filename);
}
