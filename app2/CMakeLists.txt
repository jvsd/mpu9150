cmake_minimum_required(VERSION 2.8.9)
project(MPU9050)
include_directories(
    .
    ../
    ${CMAKE_SOURCE_DIR}/../../I2Cdev
    ${CMAKE_SOURCE_DIR}/../MPU9050
    /usr/include
    /usr/include/glib-2.0/
    )

add_executable(main main.cpp pressure.cpp)
target_link_libraries(main ${CMAKE_SOURCE_DIR}/../MPU9150/build/libMPU9050.a rt zmq)

