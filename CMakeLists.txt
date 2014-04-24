cmake_minimum_required(VERSION 2.8.9)
project(MPU9050)
include_directories(
    .
    ../I2Cdev
    /usr/include
    /usr/include/glib-2.0/
    )

add_library(MPU9050 MPU6050.cpp)
target_link_libraries(MPU9050 ../I2Cdev/libI2Cdev.a)

