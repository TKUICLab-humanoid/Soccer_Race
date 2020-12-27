#include <ros/ros.h>

#include "tku_libs/TKU_tool.h"
#include "tku_libs/RobotCupInfo.h"
#include "tku_libs/Ros2MultiCommunication.h"

using namespace std;

class KidsizeGazebo
{
	public:
		KidsizeGazebo();
		~KidsizeGazebo();
		
		void strategymain();

	private:
		Ros2MultiCommunication *ros2MultiCom;
		RobotCupInfo *robotCupInfo;
		int count;
};
