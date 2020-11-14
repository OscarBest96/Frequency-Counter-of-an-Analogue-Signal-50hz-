#include "lcd.h"
#include <stdlib.h>


void lcd_delayus(unsigned int us)		//blocking delay for LCD, argument is approximate number of micro-seconds to delay
{
	unsigned char i;
	while(us--)
	{
		for(i=0; i<SystemCoreClock/4000000; i++);
	}
}


void BusyFlag(void)     //busyflag delay to check LCD isn't busy before sending data.
{
	set_LCD_bus_input();
	set_LCD_RW();
	clr_LCD_RS();
	clr_LCD_E();
	set_LCD_E();
	clr_LCD_E();
	
	unsigned int i=1;
	while(i!=0)
	{
			set_LCD_E();
	    i=GPIOD->IDR;
		  i&=(1u<<7);
		  clr_LCD_E();
}
	set_LCD_bus_output();
}


void set_LCD_data(unsigned char d)
{
	
	//ClearDisplay();
	LCD_PORT->BSRR=(0xff<<(LCD_D0_pin+16));	//clear data lines
	LCD_PORT->BSRR=(d<<LCD_D0_pin);					//put data on lines
}

void LCD_strobe(void)		//10us high pulse on LCD enable line
{
	lcd_delayus(10);
	set_LCD_E();
	lcd_delayus(10);
	clr_LCD_E();
}


void cmdLCD(unsigned char cmd)		//sends a byte to the LCD control register
{
	BusyFlag();				//wait for LCD to be not busy
	clr_LCD_RS();					//control command
	clr_LCD_RW();					//write command
	set_LCD_data(cmd);		//set data on bus
	LCD_strobe();					//apply command
}

void putLCD(unsigned char put)	//sends a char to the LCD display
{
	BusyFlag();				//wait for LCD to be not busy
	set_LCD_RS();					//text command
	clr_LCD_RW();					//write command
	set_LCD_data(put);		//set data on bus
	LCD_strobe();					//apply command
}





void initLCD(void)
{
		SystemCoreClockUpdate();
		RCC->AHB1ENR|=RCC_AHB1ENR_GPIODEN;	//enable LCD port clock
	
	
			//CONFIG LCD GPIO PINS
		LCD_PORT->MODER&=~(					//clear pin direction settings
			(3u<<(2*LCD_RS_pin))
			|(3u<<(2*LCD_RW_pin))
			|(3u<<(2*LCD_E_pin))
			|(0xffff<<(2*LCD_D0_pin))
			);
	
	
	LCD_PORT->MODER|=(				//reset pin direction settings to digital outputs
			(1u<<(2*LCD_RS_pin))
			|(1u<<(2*LCD_RW_pin))
			|(1u<<(2*LCD_E_pin))
			|(0x5555<<(2*LCD_D0_pin))
		);

	
			//LCD INIT COMMANDS
	clr_LCD_RS();					//all lines default low
	clr_LCD_RW();
	clr_LCD_E();
	
	lcd_delayus(25000);		//25ms startup delay
	cmdLCD(0x38);	//Function set: 2 Line, 8-bit, 5x7 dots
	cmdLCD(0x0c);	//Display on, Cursor blinking command
	cmdLCD(0x01);	//Clear LCD
	cmdLCD(0x06);	//Entry mode, auto increment with no shift
	
	
}
 void Display_Frequency(float T)
 {
	 void send_usart(unsigned char d);
	 
	 float Frequency = 1/T;             // simple equation for frequency: F = 1/T
  
	short first_value =abs(Frequency)/10;                   //using abs() function to take the absolute value of the frequency.
	float second_number =(Frequency-(first_value*10));     //each number of the frequency value is assigned a variable
	short second_value =abs(second_number);                 //(eg. 'first value')
  float third_number =((Frequency-((first_value*10)+(second_value)))*10);     
	short third_value =abs(third_number);                                                        
	 
  short	Frequency_output1 =(first_value+48); // Each absolute value +48 allows ascii translation ready to output to peripherals.
	short	Frequency_output2=(second_value+48);
	short	Frequency_output3=(third_value+48);
    
	  LCD_CLR();
	  putLCD(Frequency_output1);  // This outputs frequency (1-99Hz) to the LCD display to 1dp             
		putLCD(Frequency_output2);
	  putLCD(46);
	  putLCD(Frequency_output3);
	  putLCD(72);              
		putLCD(122);	
	
}
	 
	/* 	send_usart(Frequency_output1);  // This prints frequency (1-99Hz) to the terminal to 1dp             
		send_usart(Frequency_output2);
	  send_usart(46);
	  send_usart(Frequency_output3);
	  send_usart(72);              
		send_usart(122);
		send_usart(13);  */
    	 
	
