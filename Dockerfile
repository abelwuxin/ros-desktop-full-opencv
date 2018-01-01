# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM registry.cn-hangzhou.aliyuncs.com/abeldeng/ros-desktop-full:latest

# install ros packages
RUN add-apt-repository --yes ppa:xqms/opencv-nonfree && apt-get update && apt-get install -y \
    libopencv-nonfree-dev \
    libopencv-nonfree2.4 \
    ros-indigo-uvc-camera \
    && rm -rf /var/lib/apt/lists/*


