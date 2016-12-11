//adapted from http://wiringpi.com/examples/blink/
//and from https://projects.drogon.net/raspberry-pi/examples/
#include <stdio.h>
#include <stdlib.h>
#include <stdint.h>
#include <wiringPi.h>
int main (void)
{
	if (wiringPiSetup () == -1)
		exit (1) ;
	pinMode (0, OUTPUT) ;
	pinMode (1, PWM_OUTPUT) ;
	int i = 0;
	for (; i < 1; i++)
	{
		digitalWrite (0, HIGH);
		pwmWrite (1, 0) ;
		delay (100);
		digitalWrite (0, HIGH) ;
		pwmWrite (1, 1023) ;
	}
	return 0 ;
}

