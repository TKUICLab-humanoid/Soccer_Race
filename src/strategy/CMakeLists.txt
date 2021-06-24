cmake_minimum_required(VERSION 2.8.3)
project(strategy)

## Compile as C++11, supported in ROS Kinetic and newer
 add_compile_options(-std=c++11)

## Find catkin macros and libraries
## if COMPONENTS list like find_package(catkin REQUIRED COMPONENTS xyz)
## is used, also find other catkin packages
find_package(catkin REQUIRED COMPONENTS
	cv_bridge
 	image_transport 
	message_generation
	roscpp
	sensor_msgs
	std_msgs
	tku_libs
	tku_msgs
)

find_package(OpenCV REQUIRED)

set(TKU_LIBRARIES ${CATKIN_DEVEL_PREFIX}/lib/libtku_libs.so)
set(ROSCOMMUNICATION_LIBRARIES ${CATKIN_DEVEL_PREFIX}/lib/libroscommunication.so)

#find_package(OpenCV 3.4.3 REQUIRED)
# find_package(Boost REQUIRED COMPONENTS system)

## Generate messages in the 'msg' folder
#add_message_files(DIRECTORY msg
#	FILES
#)

## Generate services in the 'srv' folder
#add_service_files(DIRECTORY srv 
#	FILES
#)

## Generate actions in the 'action' folder
# add_action_files(
#   FILES
#   Action1.action
#   Action2.action
# )

## Generate added messages and services with any dependencies listed here
#generate_messages(DEPENDENCIES std_msgs)

catkin_package(
	INCLUDE_DIRS include
	LIBRARIES tku_libs roscommunication ros2multicommunication
	CATKIN_DEPENDS cv_bridge roscpp sensor_msgs std_msgs
)

include_directories(
	include
	${catkin_INCLUDE_DIRS}
	${OpenCV_INCLUDE_DIRS}
)

## attacker
add_executable(attacker
	Kidsize_RoboCup/attacker/strategy_main.cpp
	Kidsize_RoboCup/attacker/head_strategy.cpp
)
add_dependencies(attacker ${catkin_EXPORTED_TARGETS})
target_link_libraries(attacker ${catkin_LIBRARIES} ${OpenCV_LIBRARIES} ${TKU_LIBRARIES} ${ROSCOMMUNICATION_LIBRARIES})

##collaboration
add_executable(example
	Kidsize_RoboCup/collaboration/example_strategy_main.cpp
)
add_dependencies(example ${catkin_EXPORTED_TARGETS})
target_link_libraries(example ${catkin_LIBRARIES} ${OpenCV_LIBRARIES} ${TKU_LIBRARIES} ${ROSCOMMUNICATION_LIBRARIES})

##goalkeeper
add_executable(goalkeeper
	Kidsize_RoboCup/goalkeeper/strategy_main.cpp
	Kidsize_RoboCup/goalkeeper/head_strategy.cpp
)
add_dependencies(goalkeeper ${catkin_EXPORTED_TARGETS})
target_link_libraries(goalkeeper ${catkin_LIBRARIES} ${OpenCV_LIBRARIES} ${TKU_LIBRARIES} ${ROSCOMMUNICATION_LIBRARIES})

##substitute
add_executable(substitute
	Kidsize_RoboCup/substitute/strategy_main.cpp
)
add_dependencies(substitute ${catkin_EXPORTED_TARGETS})
target_link_libraries(substitute ${catkin_LIBRARIES} ${OpenCV_LIBRARIES} ${TKU_LIBRARIES} ${ROSCOMMUNICATION_LIBRARIES})
