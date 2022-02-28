#include "ros/ros.h"
#include "package_one/AddTwoInts.h"
#include <cstdlib>

int main(int argc, char **argv)
{
  ros::init(argc, argv, "add_two_ints_client");
  if (argc != 3)
  {
    ROS_INFO("usage: add_two_ints_client X Y");
    return 1;
  }

  ros::NodeHandle n;
  // 创建客户端 ros::ServiceClient对象的作用是在稍后调用服务。
  ros::ServiceClient client = n.serviceClient<package_one::AddTwoInts>("add_two_ints");
  // 实例化一个自动生成的服务类，并为它的request成员赋值。一个服务类包括2个成员变量：
  // request和response，以及2个类定义：Request和Response。
  package_one::AddTwoInts srv;
  srv.request.a = atoll(argv[1]);
  srv.request.b = atoll(argv[2]);
  if (client.call(srv))
  {
    ROS_INFO("Sum: %ld", (long int)srv.response.sum);
  }
  else
  {
    ROS_ERROR("Failed to call service add_two_ints");
    return 1;
  }

  return 0;
}