#ifndef _USART_H_
#define _USART_H_
#include <stm32f4xx.h>

#define USART_MODULE	USART3
#define USART_PORT		GPIOD
#define USART_TX_pin	8
#define USART_RX_pin	9
#define BAUDRATE			9600


void send_usart(unsigned char d);
void init_USART(void);
void Target_LED_1 (void);
void Target_LED_2 (void);
void Target_LED_3 (void);
void SPACE (void);

#endif
