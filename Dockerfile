# This is an auto generated Dockerfile for ros:desktop-full
# generated from docker_images/create_ros_image.Dockerfile.em
FROM osrf/ros:indigo-desktop-trusty

# install ros packages
RUN apt-get update && apt-get install -y \
    ros-indigo-desktop-full=1.1.5-0* \
    && rm -rf /var/lib/apt/lists/*

RUN apt-get update && apt-get install -y \
    ros-indigo-ros-tutorials \
    ros-indigo-common-tutorials \
    ros-indigo-control-toolbox* \
    ros-indigo-navigation* \
    ros-indigo-csm* \
    software-properties-common \
    && rm -rf /var/lib/apt/lists/

RUN add-apt-repository -y ppa:ubuntu-toolchain-r/test \
    && apt-get update \
    && apt-get install -y \
    gcc-4.9 \
    g++-4.9 \
    && rm -rf /var/lib/apt/lists/

RUN apt-get update && apt-get install -y \
    scons \
    python-pip \
    && rm -rf /var/lib/apt/lists/
    
RUN update-alternatives --install \
    /usr/bin/gcc gcc /usr/bin/gcc-4.9 60 \
    --slave \
    /usr/bin/g++ g++ /usr/bin/g++-4.9 

RUN pip install \
    redis \
    hiredis 

ADD ./json /usr/include/json
ADD ./libjson_linux-gcc-4.8_libmt.so /usr/lib/libjson_linux-gcc-4.8_libmt.so
ADD ./bashrc /root/.bashrc
ADD ./hiredis /usr/include/hiredis
ADD ./libhiredis.a /usr/lib/libhiredis.a
ADD ./libhiredis.so /usr/lib/libhiredis.so

