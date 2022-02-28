#include "ros/ros.h"
#include "std_msgs/String.h"



int main(int argc, char *argv[])
{
    // 创建节点
    ros::init(argc,argv,"public_myself");
    // 创建节点句柄
    ros::NodeHandle node_;
    // 从节点总建立发布者者
    ros::Publisher pushber_ = node_.advertise<std_msgs::String>("chatter_mine",100);
    ros::Rate loop_rate(10); 

    std_msgs::String mesage_;
    int count_number = 10;
    while (ros::ok())
    {
        std::stringstream data_sub;
        data_sub << "SEND NUMBER :" << ++count_number ;
        mesage_.data = data_sub.str();
        pushber_.publish(mesage_);
        ROS_INFO("Sum: %s", mesage_.data.c_str());

        loop_rate.sleep();
        ros::spinOnce();
    }
    
}