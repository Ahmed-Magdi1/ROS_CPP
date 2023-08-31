#include <ros/ros.h>
#include <count/cont.h>


bool wordCounter_callback(count::cont::Request& req, count::cont::Response& res)
{
    std::string input = req.words;
    int count = 0;
    bool inword = false;

    for (char c : input) {
        if (std::isalpha(c)) {
            if (!inword) {
                inword = true;
                ++count;
            }
        }
        else {
            inword = false;
        }
    }

    res.count = count;

    return true;
}

int main(int argc, char** argv)
{
    ros::init(argc, argv, "server");
    ros::NodeHandle nh;

    ros::ServiceServer service = nh.advertiseService("Words_counter", wordCounter_callback);

    ROS_INFO("Ready to count words ...");
    ros::spin();

    return 0;
}