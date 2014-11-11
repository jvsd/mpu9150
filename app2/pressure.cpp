#include "pressure.hpp"
#include <sstream>

pressure::pressure(int i2c)
{file = i2c;}

std::string pressure::getPressure()
{
    //ioctl(file,I2C_SLAVE,PRESSURE_ADDR);
    std::ostringstream oss;
    I2Cdev::readBytes(file,0x00,48,(uint8_t*)pbuffer,0);
    pressure::decode(pbuffer,pressureData);
    for(int i=0; i<24;i++)
    {
        oss<<pressureData[i]<<"\t";
    }
    return oss.str();
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
