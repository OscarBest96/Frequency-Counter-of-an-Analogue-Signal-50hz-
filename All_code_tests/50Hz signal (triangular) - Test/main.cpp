#include "mbed.h"

// This code is designed to both generate a 50Hz PWM square wave signal with 50%
//duty cycle, but also read voltage values recieved from the ADC pin A0.
//This is the code i have used to test the filtered signal.


PwmOut pwm(D6);
AnalogIn ain(A0);

int main() {
    
    pwm.period(0.02f);  // 50Hz frequency
    pwm.write(0.50f);  // 50% duty cycle
   
 while(1){          //square wave generated 
   
   printf("input = %6.4f\n\r", ain.read()*3.3); //display ADC voltage values to putty.
   
   }
}






