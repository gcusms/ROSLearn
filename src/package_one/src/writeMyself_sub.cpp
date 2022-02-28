#include "ros/ros.h"
#include "std_msgs/String.h"

void chatterCallback(const std_msgs::String::ConstPtr& msg)
{
  ROS_INFO(" My node get it [%s]", msg->data.c_str());
}

void getNumber(const int &msg)
{
    ROS_INFO(" My node get it [%d]", msg);
}

int main(int argc, char *argv[])
{
    // 创建节点
    ros::init(argc,argv,"public_myself_sub");
    ros::NodeHandle node_;
    ros::Subscriber sub = node_.subscribe("chatter_mine",100,chatterCallback);
    ros::spin();
}