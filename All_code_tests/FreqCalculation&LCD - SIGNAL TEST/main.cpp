#include "mbed.h"
#include "lcd.h"
#include "lcd.c"
#include "usart.h"
#include "usart.c"
#include "ADC.h"
#include "ADC.c"
#include "DELAY.h"
#include "DELAY.c"

/* This code is designed to read the 16bit values (counted from T_cycle_measurement), 
from the spi slave on the FPGA, and use the data to calculate and display a value 
for frequency */

/*At the same time, the code will generate a 50Hz square wave output from the PWM pin A1 */

SPI spi(PA_7, PA_6, PA_5);    //initialise pins
DigitalOut cs(PC_6);
DigitalIn DO_NOT_USE(PB_12);     
PwmOut PWM(D6);

uint16_t read_T_value(void);    //Read value of T from FPGA (for frequency calculation)
uint16_t spi_readwrite(uint16_t data);  
void Display_Frequency(float T);
void init_USART();



int main() {
    cs = 1;                     // Chip must be deselected, Chip Select is active LOW
    spi.format(16,0);           // Setup the DATA frame SPI for 16 bit wide word, Clock Polarity 0 and Clock Phase 0 (0)
    spi.frequency(1000000);     // 1MHz clock rate
    PWM.period(0.02f);          // 0.02s period (50Hz)
	  PWM.write(0.50f);           // 50% duty cycle
	  initLCD();                  //initialise LCD (8bit mode)
	  init_ADC();                 //initialise ADC (channel 10)
	  float T;                    // create variable for T (seconds)
	  Timer2();                   //initialise timer to sample ADC values -**PWM TEST**

	
		/* TEST PURPOSES
      highest possible 16bit value = "1111111111111111" = 15Hz
      lowest  possible 16bit value whose freq value = 99Hz (LCD display limits) = "10011101110101"	
			for loop tests every 10 16bit value between these two limits, as if they were read straight from the slave 
			
			for (unsigned int read_T = 0b1111111111111111; read_T >= 0b10011101110101; read_T=read_T-10)    
	 {
			T = read_T*0.000001;  //raw value from FPGA, read_T*0.000001 to give signal cycle time T in seconds
		  Display_Frequency(T); //function to calculate frequency and display value to LCD
		  LCD_CLR();            // clears LCD screen 
		  
	 } 
	 */
 } 

void TIM2_IRQHandler(void);   //ISR for onboard ADC sampling **PWM TEST**


// **********************************************************************************************************
// Function to read back the value of T (16 bit wide)
//
// uint16_t read_T_value(void)
// Return data - the data returned from the FPGA to the MCU over the SPI interface (via MISO)
// **********************************************************************************************************

uint16_t read_T_value(void){
    
	uint16_t T_value = spi_readwrite(0);	//Turn off all LEDs + read T_value (in one full-duplex transaction)
 
	return T_value;    
}


// **********************************************************************************************************
// uint16_t spi_readwrite(uint16_t data)
//
// Function for writing to the SPI with the correct timing
// data - this parameter is the data to be sent from the MCU to the FPGA over the SPI interface (via MOSI)
// return data - the data returned from the FPGA to the MCU over the SPI interface (via MISO)
// **********************************************************************************************************

uint16_t spi_readwrite(uint16_t data) {	
	cs = 0;             									//Select the device by seting chip select LOW
	uint16_t rx = (uint16_t)spi.write(data);				//Send the data - ignore the return data
	wait_us(1);													//wait for last clock cycle to clear
	cs = 1;             									//De-Select the device by seting chip select HIGH
	return rx;
}
