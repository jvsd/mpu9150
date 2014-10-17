#include "I2Cdev.h"
#include "MPU6050.h"
#include <stdio.h>
#include <iostream>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <time.h>
timespec count1;

void startTime();
double getElapsed();
double diff(timespec start, timespec end);

int main(void)
{
    int file;
    char *filename = "/dev/i2c-1";
    if ((file=open(filename,O_RDWR)) < 0){
            std::cout << "Failed to open the bus" << std::endl;
            return 1;
            }

    if (ioctl(file,I2C_SLAVE,0x68) < 0)
    {
        std::cout << "Failed to talk to slave" << std::endl;
        return 1;
    }
            
    MPU6050 mpu(file);
    mpu.initialize();
    if(mpu.testConnection())
    {
        std::cout << "connected" << std::endl;
    }else{
        std::cout << int(mpu.getDeviceID()) << std::endl;
    }
    std::cout << "Rate: " << int(mpu.getRate()) << std::endl;


    mpu.setRate(7);
    mpu.setDLPFMode(0);
    mpu.setFullScaleGyroRange(1);// +/- 500 degree/s 65.5 LSB/deg/s
    mpu.setFullScaleAccelRange(1);// +/- 4g 4092 LSB/mg
    int16_t ax, ay, az;
    int16_t gx, gy, gz;
    ax = 1;
    startTime();
    while(true)
    {
    mpu.getAcceleration(&ax, &ay, &az);
    mpu.getRotation(&gx, &gy, &gz);
    std::cout << ax <<"\t"<< ay <<" \t"<< az <<"\t"<< gx <<"\t"<< gy <<"\t"<< gz << "\t" << getElapsed() <<  std::endl;
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

