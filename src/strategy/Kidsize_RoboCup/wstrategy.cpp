#include "strategy/wstrategy.h"

Wstrategy::Wstrategy(ros::NodeHandle &nh)
{
	this->nh = &nh;
	
	GetVelocity_Publisher = nh.advertise<tku_msgs::GetVelocity>("/GetVelocityValue_Topic", 10);
	strategy_info = StrategyInfoInstance::getInstance();
	tool = ToolInstance::getInstance();
	ros_com = RosCommunicationInstance::getInstance();
    goal_pos.x = -1;
	goal_pos.y = -1;
    moving = 1;
}

int main(int argc, char** argv)
{
	ros::init(argc, argv, "strategy");
	ros::NodeHandle nh;
	Wstrategy *wstrategy;
    wstrategy = nullptr;

    bool reset_flag = false;

	ros::Rate loop_rate(30);
	

	while (nh.ok()) 
	{
        if(wstrategy == nullptr)
        {
            wstrategy = new Wstrategy(nh);
        }
        else
        {
            if(wstrategy->strategy_info->getStrategyStart())
            {
                // ROS_INFO("getRobotPosition = (%d %d)",wstrategy->strategy_info->getRobotPosition().x,wstrategy->strategy_info->getRobotPosition().y);
				reset_flag = true;
                switch(m_state) 
                {
                    case P_INIT:
						ROS_INFO("P_INIT");
                        wstrategy->Init();
                        break; 
                    case P_TRACK:
						ROS_INFO("P_TRACK");
                        wstrategy->Track();
                        break;
                    case P_TURN:
                        ROS_INFO("P_TURN");
                        wstrategy->Turn();
                        break;
                    case P_END:
                        nh.shutdown();
                        break;
                }
            }
            else
            {
                if(reset_flag)
                {
                    wstrategy->StrategyEnd();
                    m_state = P_INIT;
                    delete wstrategy;
                    wstrategy = nullptr;
                    reset_flag = false;
                }
            }
        }
		ros::spinOnce();
		loop_rate.sleep();
        
	}
	return 0;
}

void Wstrategy::Init()
{
    start = time(NULL); 
    continous_angle = 0;
    continous_x = 500;
    continous_y = 0;

    continous_flag = false;
    catch_pos_flag = false;

    m_state = P_TRACK;
    publishparam(continous_x,continous_y,continous_angle,1);
}

void Wstrategy::Track()
{
    float pitch = strategy_info->getIMUValue().Pitch;
    if(pitch > 50)
    {
        moving = 3;
    }else if (pitch < -30)
    {
        moving = 2;
    }else{
        moving = 1;
        if(strategy_info->getRobotPosition().x >= 0 && strategy_info->getRobotPosition().y >= 0)
        {
            ROS_INFO("getRobotPosition = (%d %d)",strategy_info->getRobotPosition().x,strategy_info->getRobotPosition().y);
            ROS_INFO("getGoalPoint = (%d %d)",strategy_info->getGoalPoint().x,strategy_info->getGoalPoint().y);
            int dis_x = strategy_info->getGoalPoint().x - strategy_info->getRobotPosition().x;
            int dis_y = -(strategy_info->getGoalPoint().y - strategy_info->getRobotPosition().y);
            int dis = sqrt(pow(dis_x,2) + pow(dis_y,2));
            int angle = (int)(atan2(dis_y , dis_x) * 180 / PI);
            if(angle < 0)
            {
                angle = 360 + angle;
            }
            else if(angle > 360)
            {
                angle = angle - 360;
            }
            ROS_INFO("dis = %d",dis);
            ROS_INFO("angle = %d",angle);

            int angle_error = angle - strategy_info->getRobotPosition().dir;
            ROS_INFO("angle_error = %d",angle_error);

            if(abs(angle_error) > 30)
            {
                if(angle_error > 0)
                {
                    continous_angle++;
                    continous_angle = checkangle(continous_angle,12);
                }
                else
                {
                    continous_angle--;
                    continous_angle = checkangle(continous_angle,-12);
                }
            }
            else if(abs(angle_error) > 20)
            {
                if(angle_error > 0)
                {
                    continous_angle++;
                    continous_angle = checkangle(continous_angle,8);
                }
                else
                {
                    continous_angle--;
                    continous_angle = checkangle(continous_angle,-8);
                }
            }
            else if(abs(angle_error) > 10)
            {
                if(angle_error > 0)
                {
                    continous_angle++;
                    continous_angle = checkangle(continous_angle,5);
                }
                else
                {
                    continous_angle--;
                    continous_angle = checkangle(continous_angle,-5);
                }
            }
            else if(abs(angle_error) > 2)
            {
                if(angle_error > 0)
                {
                    continous_angle++;
                    continous_angle = checkangle(continous_angle,2);
                }
                else
                {
                    continous_angle--;
                    continous_angle = checkangle(continous_angle,-2);
                }
            }
            else
            {
                continous_angle = checkangle(continous_angle,0);
            }

            if(dis > 300)
            {
                continous_x+=150;
                continous_x = checkcontinousX(continous_x,2000);
            }
            else if(dis > 200)
            {
                continous_x+=150;
                continous_x = checkcontinousX(continous_x,1700);
            }
            else if(dis > 150)
            {
                continous_x+=150;
                continous_x = checkcontinousX(continous_x,1300);
            }
            else if(dis > 80)
            {
                continous_x+=100;
                continous_x = checkcontinousX(continous_x,800);
            }
            else if(dis > 30)
            {
                continous_x+=50;
                continous_x = checkcontinousX(continous_x,500);
            }
            else
            {
                //continous_angle = checkangle(continous_angle,0);
                // m_state = P_END;
                continous_flag = false;
                //m_state = P_TURN;
            }
            if(!continous_flag)
            {
                continous_flag = true;
                ros_com->sendBodyAuto(continous_x, 0, 0, continous_angle, WalkingMode::ContinuousStep,SensorMode::None);
            }
            else
            {
                ros_com->sendContinuousValue(continous_x, 0, 0, continous_angle,SensorMode::None);
            }
            ROS_INFO("continous_angle = %d",continous_angle);
            ROS_INFO("continous_x = %d",continous_x);
            tool->Delay(300);
            publishparam(continous_x,0,continous_angle,moving);
        }
    }
    
}
time_t start_t, end_t;
void Wstrategy::publishparam(int continous_x,int continous_y, int continous_angle, int moving)
{
    end = time(&end_t);
    double timer = difftime(end, start);
    ROS_INFO("timer = %f",timer);
    tku_msgs::GetVelocity msg_GetVelocity;
    msg_GetVelocity.x = float(continous_x)/1000.0;
    msg_GetVelocity.y = 0.0;
    msg_GetVelocity.thta = continous_angle;
    msg_GetVelocity.moving = moving;
    msg_GetVelocity.dt = timer;
    start = time(&start_t);

    GetVelocity_Publisher.publish(msg_GetVelocity);
}


void Wstrategy::Turn()
{
    float pitch = strategy_info->getIMUValue().Pitch;
    if(pitch > 50)
    {
        moving = 3;
    }else if (pitch < -30)
    {
        moving = 2;
    }else{
        moving = 1;
    }
    int angle_error = 180 - strategy_info->getRobotPosition().dir;
    ROS_INFO("robot_pos.dir = %f",strategy_info->getRobotPosition().dir);
    ROS_INFO("angle_error = %d",angle_error);
    if(abs(angle_error) > 20)
    {
        if(angle_error > 0)
        {
            continous_angle++;
            continous_angle = checkangle(continous_angle,5);
        }
        else
        {
            continous_angle--;
            continous_angle = checkangle(continous_angle,-5);
        }
    }
    else if(abs(angle_error) > 10)
    {
        if(angle_error > 0)
        {
            continous_angle++;
            continous_angle = checkangle(continous_angle,3);
        }
        else
        {
            continous_angle--;
            continous_angle = checkangle(continous_angle,-3);
        }
    }
    else if(abs(angle_error) > 5)
    {
        if(angle_error > 0)
        {
            continous_angle++;
            continous_angle = checkangle(continous_angle,2);
        }
        else
        {
            continous_angle--;
            continous_angle = checkangle(continous_angle,-2);
        }
    }
    else
    {
        continous_angle = checkangle(continous_angle,0);
        m_state = P_END;
        continous_flag = false;
    }
    if(!continous_flag)
    {
        continous_flag = true;
        ros_com->sendBodyAuto(0, 0, 0, 0, WalkingMode::ContinuousStep,SensorMode::None);
    }
    else
    {
        ros_com->sendContinuousValue(-800, 0, 0, continous_angle,SensorMode::None);
    }
    ROS_INFO("continous_angle = %d",continous_angle);
    ROS_INFO("continous_x = %d",continous_x);
    tool->Delay(300);
    publishparam(continous_x,0,continous_angle,moving);
}

void Wstrategy::StrategyEnd()
{
    if(continous_flag)
    {
        continous_flag = false;
        ros_com->sendBodyAuto(0, 0, 0, continous_angle, WalkingMode::ContinuousStep,SensorMode::None);
        tool->Delay(300);
    }
}

int Wstrategy::checkangle(int angle,int limit)
{
    if(limit > 0)
    {
        if(angle > limit)
        {
            angle-=2;
        }
    }
    else
    {
        if(angle < limit)
        {
            angle+=2;
        }
    }
    return angle;
}

int Wstrategy::checkcontinousX(int x,int limit)
{
    if(x > limit)
    {
        x-=250;
    }
    return x;
}

