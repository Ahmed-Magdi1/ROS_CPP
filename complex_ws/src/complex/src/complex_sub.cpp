#include <ros/ros.h>
#include <complex/comp.h>

void call_Back(const complex::comp::ConstPtr& comp)
{
    ROS_INFO("%.2f + %.2fj", comp->Real, comp->Imaginary);
}

int main(int argc, char**argv)
{
    ros::init(argc,argv, "sub_complex");
    ros::NodeHandle nh;

    ros::Subscriber sub = nh.subscribe("complex", 1000, call_Back);

    ros::spin();
    return 0;

}