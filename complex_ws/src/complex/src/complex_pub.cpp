#include <ros/ros.h>
#include <complex/comp.h>

int main(int argc, char**argv)
{
    ros::init(argc,argv, "pub_complex");
    ros::NodeHandle nh;
    ros::Publisher pub = nh.advertise<complex::comp>("complex", 1000);
    ros::Rate rate(1);

    complex::comp inp_complex;

    while (ros::ok())
    {
        inp_complex.Real=1+(rand() %50);
        inp_complex.Imaginary=1+(random() %50);
        pub.publish(inp_complex);
        rate.sleep();
    }

    return 0;
}

