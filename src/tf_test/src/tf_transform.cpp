#include "ros/ros.h"

#include "tf/transform_broadcaster.h"
#include "tf/transform_datatypes.h"

int main(int argc,char **argv)
{
    ros::init(argc,argv,"robot_tf_publisher");
    ros::NodeHandle np;
    ros::Rate r(10);

    tf::TransformBroadcaster broaster;
    float angle = 0.0;
    float x = 0.0;
    float y = 0.0;
    float z = 0.0;

    ROS_INFO("TF CHANGE");
    while (np.ok())
    {
        x = cos(angle) *0.3;
        y = sin(angle)* 0.5;
        z = 0.2;
        broaster.sendTransform(
            tf::StampedTransform(
                tf::Transform(tf::createQuaternionFromRPY(0.0,0.0,angle),tf::Vector3(x,y,z)),ros::Time::now(),"tf4","tf1")
            );
        angle += 0.4;
        ROS_INFO("%s",std::to_string(angle).c_str());
        r.sleep();
    }
    
}