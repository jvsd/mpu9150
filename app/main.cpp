#include "I2Cdev.h"
#include "MPU6050.h"
#include <stdio.h>
#include <iostream>
#include <linux/i2c-dev.h>
#include <sys/ioctl.h>
#include <sys/types.h>

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


    mpu.setRate(6);
    std::cout << "Rate: " << int(mpu.getRate()) << std::endl;

    mpu.setDLPFMode(0);
    mpu.setFullScaleGyroRange(0);
    mpu.setFullScaleAccelRange(0);
    int16_t ax, ay, az;
    int16_t gx, gy, gz;
    ax = 1;
    while(true)
    {
    mpu.getAcceleration(&ax, &ay, &az);
    mpu.getRotation(&gx, &gy, &gz);
    std::cout << ax <<" "<< ay <<" "<< az <<" "<< gx <<" "<< gy <<" "<< gz << std::endl;
    }
}

