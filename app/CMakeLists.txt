cmake_minimum_required(VERSION 2.8.9)
project(MPU9050)
include_directories(
    .
    ../
    /home/jamesd/Developer/I2Cdev
    /home/jamesd/Developer/MPU9050
    /usr/include
    /usr/include/glib-2.0/
    )

add_executable(main main.cpp)
target_link_libraries(main /home/jamesd/Developer/MPU9150/build/libMPU9050.a rt)

