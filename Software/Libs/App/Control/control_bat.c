/*
 * control_bat.c
 *
 *  Created on: Dec 21, 2023
 *      Author: phang
 */

#include "control_bat.h"

#define BAT_ControlSwitch(x) HAL_GPIO_WritePin(GPIOA, GPIO_PIN_11, x)

void MODE_BatteryCharging(BAT_t *bat)
{
	while ((bat->BAT_Current < 0) && ((GPIOA->ODR & 0x11) == 1))
	{
		for (uint8_t i = 0; i < bat->number_of_cells; i++)
		{
			while (bat->BAT_Voltage[i] > bat->BAT_UpperThreshold)
			{
				BAT_ControlSwitch(0);
				bat->BAT_State = BAT_OVERCHARGE;
				break;
			}
			BAT_ControlSwitch(1);
			bat->BAT_State = BAT_NORMAL;
		}
	}
}

void MODE_BatteryDischarging(BAT_t *bat)
{
	while (bat->BAT_Current > bat->BAT_CurrentThreshold)
	{
		BAT_ControlSwitch(0);
		bat->BAT_State = BAT_OVERDISCHARGE;
	}
	BAT_ControlSwitch(1);
	bat->BAT_State = BAT_NORMAL;
}

void MODE_BatteryStoring(BAT_t *bat)
{
	BAT_ControlSwitch(0);
	bat->BAT_State = BAT_NORMAL;
}

void MODE_BatteryManager(BAT_t *bat, MODE_t bat_mode)
{
	switch(bat_mode)
	{
	case CHARGING_MODE:
		MODE_BatteryCharging(bat);
		break;
	case DISCHARGING_MODE:
		MODE_BatteryDischarging(bat);
		break;
	case STORING_MODE:
		MODE_BatteryStoring(bat);
		break;
	}
}
