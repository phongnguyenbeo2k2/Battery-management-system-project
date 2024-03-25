/*
 * button.h
 *
 *  Created on: Mar 9, 2023
 *      Author: phang
 */

#ifndef INC_BUTTON_H_
#define INC_BUTTON_H_

#include "main.h"

typedef struct
{
	uint8_t button_current_state;
	uint8_t button_last_state;
	uint8_t button_filter;
	uint8_t is_debouncing;
	uint8_t is_press_long;
	uint32_t debounce_time;
	uint32_t time_start_press;
	GPIO_TypeDef *GPIOx;
	uint16_t GPIO_Pin;
} BUTTON_t;

typedef enum
{
	BUTTON_PRESSING,
	BUTTON_PRESSING_SHORT,
	BUTTON_PRESSING_LONG,
	BUTTON_RELEASING
} BUTTON_Status_t;



void BUTTON_Init(BUTTON_t *p_button, GPIO_TypeDef *GPIOx, uint16_t GPIO_Pin);
void BUTTON_Handle(BUTTON_t *p_button);

#endif /* INC_BUTTON_H_ */
