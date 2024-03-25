/*
 * control_bat.h
 *
 *  Created on: Dec 21, 2023
 *      Author: phang
 */

#ifndef CONTROL_CONTROL_BAT_H_
#define CONTROL_CONTROL_BAT_H_

#include "adc_get_voltage.h"

typedef enum {
	CHARGING_MODE,
	DISCHARGING_MODE,
	STORING_MODE
}MODE_t;

void MODE_BatteryManager(BAT_t *bat, MODE_t bat_mode);

#endif /* CONTROL_CONTROL_BAT_H_ */
