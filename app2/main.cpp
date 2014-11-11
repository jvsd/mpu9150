#include "I2Cdev.h"
#include <stdio.h>
#include <iostream>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <time.h>
#include <zhelpers.hpp>
#include <pressure.hpp>
timespec count1;

void startTime();
double getElapsed();
double diff(timespec start, timespec end);

int main(void)
{
    zmq::context_t context(1);
    zmq::socket_t socket(context,ZMQ_PUB);
    socket.bind("tcp://*:6002");


    int file;
    char *filename = "/dev/i2c-1";
    if ((file=open(filename,O_RDWR)) < 0){
            std::cout << "Failed to open the bus" << std::endl;
            return 1;
            }

    if (ioctl(file,I2C_SLAVE,0x29) < 0)
    {
        std::cout << "Failed to talk to slave" << std::endl;
        return 1;
    }
            

    pressure pboard(file);

    startTime();

    while(true)
    {
    std::ostringstream pss;
    pss << "2\t" << pboard.getPressure() << getElapsed() << std::endl;
    s_send(socket,pss.str())
    }
}

void startTime()
{
    clock_gettime(CLOCK_REALTIME,&count1);
}

double getElapsed()
{
    timespec current;
    clock_gettime(CLOCK_REALTIME,&current);
    return diff(count1,current);
}

double diff(timespec start, timespec end)
{
    timespec temp;
    if ((end.tv_nsec-start.tv_nsec)<0){
        temp.tv_sec = end.tv_sec-start.tv_sec-1;
        temp.tv_nsec = 1000000000+end.tv_nsec-start.tv_nsec;
    }else{
        temp.tv_sec = end.tv_sec-start.tv_sec;
        temp.tv_nsec = end.tv_nsec - start.tv_nsec;
    }
    return double(temp.tv_sec*1000000000.0+temp.tv_nsec)/1000.0;
}

