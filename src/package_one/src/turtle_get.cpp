#include "ros/ros.h"
#include "turtlesim/Spawn.h"
#include "geometry_msgs/Twist.h"
#include "turtlesim/Color.h"


#define MODE 1

int main(int argc, char *argv[])
{
    setlocale(LC_ALL,"");
    // 2.初始化 ros 节点
    ros::init(argc,argv,"set_turtle");
    // 3.创建 ros 句柄
    ros::NodeHandle nh;
    ros::NodeHandle nh2;
    ros::Rate loop_sleep(1000);  // 10/1000 ms
#if MODE == 1
    // 创建话题发布者
    ros::Publisher turtle_vel_pub=nh.advertise<geometry_msgs::Twist>("/turtle1/cmd_vel",10);
     ros::Publisher turtle_color_pub = nh2.advertise<turtlesim::Color>("/turtle1/color_sensor",100);
    while (ros::ok())
    {
        geometry_msgs::Twist mes_send_;
        mes_send_.angular.z = rand()%5;
        mes_send_.linear.z = rand()%5;
        mes_send_.angular.x = rand()%5;
        mes_send_.linear.x = rand()%5;
        turtle_vel_pub.publish(mes_send_);
		ROS_INFO("VEL");

        turtlesim::Color color_send;
        color_send.b = rand()%255;
        color_send.g = rand()%255;
        color_send.r = rand()%255;
        turtle_color_pub.publish(color_send);
        ROS_INFO("COLOR");
        loop_sleep.sleep();
    }
    
#endif
#if MODE == 0
    // 4.创建 service 客户端
    ros::ServiceClient client = nh.serviceClient<turtlesim::Spawn>("/spawn");
    // 5.等待服务启动
    // client.waitForExistence();
    ros::service::waitForService("/spawn");
    // 6.发送请求
    turtlesim::Spawn spawn;
 

    static float x_ = 1.0;
    static float y_ = 1.0;
    // while (ros::ok())
    // {
    x_ = rand()%10;
    y_ = rand()%10;
    spawn.request.x = x_;
    spawn.request.y = y_;
    spawn.request.theta = rand()%10;
    spawn.request.name = "";
    bool flag = client.call(spawn);
    // 7.处理响应结果
    if (flag)
    {
        ROS_INFO("新的乌龟生成,名字:%s",spawn.response.name.c_str());
    } else {
        ROS_INFO("乌龟生成失败");
    }
    loop_sleep.sleep();
    // }
    ros::spinOnce();
#endif
    return 0;
}