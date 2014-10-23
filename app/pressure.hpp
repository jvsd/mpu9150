#include "I2Cdev.h"
#include <linux/i2c-dev.h>
#include <iostream>
#include <stdio.h>
#include <sys/ioctl.h>
#include <sys/types.h>
#include <inttypes.h>

#define PRESSURE_ADDR 0x29

class pressure{
    public:
        pressure();
        std::ostringstream getPressure(int file);
        static void decode(char* buf, int16_t* out);
    private:
        int16_t pressure[24];
        char pbuffer[48];
};

