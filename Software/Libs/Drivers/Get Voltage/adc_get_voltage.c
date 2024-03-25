/*
 * adc_get_voltage.c
 *
 *  Created on: Dec 18, 2023
 *      Author: phang
 */

#include "adc_get_voltage.h"

#define VOLT_COFF	1.34277
#define CURR_COFF	0.0201
#define TEMP_COFF	0.01611

BAT_SystemStatus BAT_InitInfo(BAT_t *bat,
								ADC_HandleTypeDef bat_adc,
								BAT_Size number_of_cells)
{
	bat->BAT_adc = bat_adc;
	bat->number_of_cells = number_of_cells;
	bat->BAT_Temperature[0] = 0;
	bat->BAT_Temperature[1] = 0;
	bat->BAT_Current = 0;
	bat->BAT_CurrentThreshold = 0;
	bat->BAT_UpperThreshold = 0;
	bat->BAT_LowerThreshold = 0;
	for (uint8_t i = 0; i < number_of_cells; i++)
	{
		bat->BAT_Voltage[i] = 0;
	}
	HAL_ADCEx_Calibration_Start(&bat->BAT_adc);

}

void BAT_GetVoltageAllCells(BAT_t *bat)
{
	HAL_ADC_Start_DMA(&bat->BAT_adc, bat->BAT_adc_value, 7);
	for (uint8_t i = 0; i < bat->number_of_cells; i++)
	{
		bat->BAT_Voltage[i] = (float) bat->BAT_adc_value[i]*VOLT_COFF;
	}
}

void BAT_GetCurremt(BAT_t *bat)
{
	HAL_ADC_Start_DMA(&bat->BAT_adc, bat->BAT_adc_value, 7);
	bat->BAT_Current = (float) bat->BAT_adc_value[6]*CURR_COFF;
}

void BAT_GetTemperature(BAT_t *bat)
{
	HAL_ADC_Start_DMA(&bat->BAT_adc, bat->BAT_adc_value, 7);
	bat->BAT_Temperature[0] = (float) bat->BAT_adc_value[4]*TEMP_COFF;
	bat->BAT_Temperature[1] = (float) bat->BAT_adc_value[5]*TEMP_COFF;
}

BAT_State BAT_GetState()
{
	;
}
