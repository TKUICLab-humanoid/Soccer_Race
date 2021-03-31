#include "strategy/strategy_main.h"





int main(int argc, char** argv)
{
	ros::init(argc, argv, "strategy");
	ros::NodeHandle nh;
	KidsizeStrategy *kidsizeStrategy;
    kidsizeStrategy = nullptr;

    bool reset_flag = false;

	ros::Rate loop_rate(30);
	

	while (nh.ok()) 
	{
        if(kidsizeStrategy == nullptr)
        {
            kidsizeStrategy = new KidsizeStrategy(nh);
        }
        else
        {
            if(kidsizeStrategy->strategy_info->getStrategyStart())
            {
                reset_flag = true;
                switch(m_state) 
                {
                    case P_INIT:
                        kidsizeStrategy->Init();
                        break; 
                    case P_TRACK:
                        kidsizeStrategy->Track();
                        break;
                    case P_TURN:
                        ROS_INFO("Turn");
                        kidsizeStrategy->Turn();
                        break;
                    case P_END:
                        if(!kidsizeStrategy->walk_velocity.empty())
                        {
                            ROS_INFO("save!");
                            kidsizeStrategy->SaveWalkVecloity();
                        }
                        nh.shutdown();
                        break;
                }
            }
            else
            {
                if(reset_flag)
                {
                    if(!kidsizeStrategy->walk_velocity.empty())
                    {
                        ROS_INFO("save!");
                        kidsizeStrategy->SaveWalkVecloity();
                    }
                    
                    kidsizeStrategy->StrategyEnd();
                    m_state = P_INIT;
                    delete kidsizeStrategy;
                    kidsizeStrategy = nullptr;
                    reset_flag = false;
                }
            }
        }
		ros::spinOnce();
		loop_rate.sleep();
        
	}
	return 0;
}

void KidsizeStrategy::Init()
{
    continous_angle = 0;
    continous_x = 500;
    continous_y = 0;

    continous_flag = false;
    catch_pos_flag = false;

    m_state = P_TRACK;
}

void KidsizeStrategy::Track()
{
    if(strategy_info->getRobotPosition().x > 0 && strategy_info->getRobotPosition().y > 0)
    {
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
            m_state = P_END;
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
        walk_velocity.push_back(continous_x);
    }
}

void KidsizeStrategy::Turn()
{
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
    walk_velocity.push_back(continous_x);
}

void KidsizeStrategy::StrategyEnd()
{
    if(continous_flag)
    {
        continous_flag = false;
        ros_com->sendBodyAuto(0, 0, 0, continous_angle, WalkingMode::ContinuousStep,SensorMode::None);
        tool->Delay(300);
    }
}

int KidsizeStrategy::checkangle(int angle,int limit)
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

int KidsizeStrategy::checkcontinousX(int x,int limit)
{
    if(x > limit)
    {
        x-=250;
    }
    return x;
}

void KidsizeStrategy::SaveWalkVecloity()
{
    ROS_INFO("vector size = %d",walk_velocity.size());
    string savedText = "WalkVecloity\n";
    char path[200];
    strcpy(path, tool->getPackagePath("strategy").c_str());
    strcat(path, "/WalkVecloity_Record.ods");
    //char filename[]="/home/iclab/Desktop/OBS0722SLOW/newsystem/src/strategy/src/spartanrace/Parameter/Trajectory_Record.ods";

    fstream fp;
    fp.open(path, ios::out);

    fp<<savedText;

    for(int i = 0; i < walk_velocity.size(); i++)
    {
        savedText = DtoS(walk_velocity[i]) + "\n";

        fp<<savedText;
    }

    walk_velocity.clear();

    fp.close();
}

string KidsizeStrategy::DtoS(double value)
{
    string str;
    std::stringstream buf;
    buf << value;
    str = buf.str();

    return str;
}