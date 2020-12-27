//----------------libs-------------------
#include "tku_libs/strategy_info.h"
#include "tku_libs/TKU_tool.h"
#include "tku_libs/RosCommunication.h"
#include "tku_libs/WalkContinuouse.h"

//---------------------------------------
class KidsizeStrategy
{
	public:
		KidsizeStrategy(ros::NodeHandle &nh)
		{
			strategy_info = StrategyInfoInstance::getInstance();
			tool = ToolInstance::getInstance();
			ros_com = RosCommunicationInstance::getInstance();
			walk_con = WalkContinuouseInstance::getInstance();
		};
		~KidsizeStrategy()
		{
			StrategyInfoInstance::deleteInstance();
			ToolInstance::deleteInstance();
			RosCommunicationInstance::deleteInstance();
			WalkContinuouseInstance::deleteInstance();
		};

		StrategyInfoInstance *strategy_info;
		ToolInstance *tool;
		RosCommunicationInstance *ros_com;
		WalkContinuouseInstance *walk_con;

		void strategyMain();

	private:

};
