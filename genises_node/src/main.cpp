#include <chrono>
#include <memory>
#include <rclcpp/rclcpp.hpp>
#include <std_msgs/msg/string.hpp>

using namespace std::chrono_literals;

int main(int argc, char *argv[])
{
    rclcpp::init(argc, argv);
    auto node = rclcpp::Node::make_shared("status_publisher");
    auto publisher = node->create_publisher<std_msgs::msg::String>("status_topic", 10);

    rclcpp::Rate rate(1.0); // 1 Hz

    while (rclcpp::ok())
    {
        auto message = std_msgs::msg::String();
        message.data = "WD is alive!";
        RCLCPP_INFO(node->get_logger(), "Publishing: '%s'", message.data.c_str());
        publisher->publish(message);
        rclcpp::spin_some(node);
        rate.sleep();
    }

    rclcpp::shutdown();
    return 0;
}
