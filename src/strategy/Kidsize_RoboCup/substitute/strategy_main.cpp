#include "strategy/substitute/strategy_main.h"

int main(int argc, char** argv)
{
	ros::init(argc, argv, "substitute");
	ros::NodeHandle nh;
	KidsizeStrategy KidsizeStrategy(nh);

	ros::Rate loop_rate(30);

	while (nh.ok())
	{
		ros::spinOnce();
		KidsizeStrategy.strategyMain();
		loop_rate.sleep();
	}
	return 0;
}

void KidsizeStrategy::strategyMain()
{
  	if(!strategy_info->getStrategyStart()) //strategy not running
	{
		
  	}
	else //strategy start running
	{

	}
}
