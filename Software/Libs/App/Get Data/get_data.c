/*
 * get_data.c
 *
 *  Created on: Jan 2, 2024
 *      Author: phang
 */
#include "get_data.h"

void TASK_GetBatteryData(BAT_t *bat)
{
	  BAT_GetVoltageAllCells(bat);
	  BAT_GetCurremt(bat);
	  BAT_GetTemperature(bat);
}

