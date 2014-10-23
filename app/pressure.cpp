#include "pressure.hpp"

pressure::pressure(int i2c)
{file = i2c;}

std::ostringstream pressure::getPressure()
{
    ioctl(file,I2C_SLAVE,PRESSURE_ADDR);
    std::ostringstream oss;
    I2Cdev::readBytes(file,0x00,48,(uint8_t*)pbuffer,0);
    pressure::decode(pbuffer,pressure);
    for(int i=0; i<24;i++)
    {
        oss<<pressure[i]<<"\t";
    }
    return oss;
}

void pressure::decode(char* buf, int16_t* out){
    int j = 0;
    for(int i = 0; i <48;)
    {
        out[j] = (int16_t)(buf[i]+buf[i+1]);
        i = i+2;
        j = j+1;
    }
}
