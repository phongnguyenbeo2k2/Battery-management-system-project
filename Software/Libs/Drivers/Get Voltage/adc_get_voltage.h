/*
 * adc_get_voltage.h
 *
 *  Created on: Dec 18, 2023
 *      Author: phang
 */

#ifndef GET_VOLTAGE_ADC_GET_VOLTAGE_H_
#define GET_VOLTAGE_ADC_GET_VOLTAGE_H_

#include "main.h"
#define MAX_CELLS 4

typedef enum __BAT_State {
	BAT_NORMAL,
	BAT_OVERDISCHARGE,
	BAT_OVERCHARGE,
	BAT_SHORTCIRCUIT
}BAT_State;

typedef enum __BAT_SystemStatus {
	BAT_INIT_SUCCESS,
	BAT_INIT_FAI
}BAT_SystemStatus;

typedef enum __BAT_Size {
	BAT_4CELLS,
	BAT_3CELLS,
	BAT_2CELLS
}BAT_Size;

typedef struct __BAT_t {
	ADC_HandleTypeDef BAT_adc;
	BAT_State BAT_State;
	BAT_Size number_of_cells;
	uint16_t BAT_adc_value[7];
	float BAT_Voltage[MAX_CELLS];
	float BAT_LowerThreshold;
	float BAT_UpperThreshold;
	float BAT_Temperature[2];
	float BAT_Current;
	float BAT_CurrentThreshold;
}BAT_t;

BAT_SystemStatus BAT_InitInfo(BAT_t *bat,
								ADC_HandleTypeDef bat_adc,
								BAT_Size number_of_cells);
void BAT_GetVoltageAllCells(BAT_t *bat);
void BAT_GetCurremt(BAT_t *bat);
void BAT_GetTemperature(BAT_t *bat);
BAT_State BAT_GetState();

#endif /* GET_VOLTAGE_ADC_GET_VOLTAGE_H_ */
