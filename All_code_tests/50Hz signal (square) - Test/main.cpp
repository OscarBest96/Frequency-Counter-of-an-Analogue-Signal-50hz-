#include "mbed.h"
//this code is designed to generate a square wave using the PWM pin D6 on the nucleo board.
//the output signal has a frequency of 50Hz.
//This code also uses the ADC to read the voltage values of the PWM signal and display them to the terminal.

PwmOut pin(D6); //initialise PWM pin D6 on nucleo board.
AnalogIn ain(A0); //initialise ADC pin A0 on nucleo board.
float fVin = 0.0;   //create float type variable.

int main()
{

	pin.period(0.02f);  // 0.02 second period (50Hz frequency).
	pin.write(0.50f);  // 50% duty cycle ('1' and '0' share equal time).

	while (true)
	{

		//Read ADC.
		fVin = ain;

		//Write to terminal.
		printf("Analog input = %5.3f\n\r", fVin*3.3);  //converts data read to voltage 0-3.3v.
	}
}
