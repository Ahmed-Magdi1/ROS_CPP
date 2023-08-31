#include <ros/ros.h>
#include <count/cont.h>


int main(int argc, char** argv)
{
    ros::init(argc, argv, "client");

    if (argc != 2) {
        ROS_ERROR("Usage: count_client <input_text>");

        return 1;
    }

    ros::NodeHandle nh;
    ros::ServiceClient client = nh.serviceClient<count::cont>("Words_counter");
    count::cont srv;

    srv.request.words = argv[1];
    if (client.call(srv)) {
        ROS_INFO("Response : %d", srv.response.count);
    }
    else {
        ROS_ERROR("Failed to call service words_counter");
        return 1;
    }
    return 0;
}