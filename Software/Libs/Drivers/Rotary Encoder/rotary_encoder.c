#include "rotary_encoder.h"

__weak void RE_ClockwiseCallback(RE_t *p_re)
{
	
}
__weak void RE_CounterClockwiseCallback(RE_t *p_re)
{
	
}

void RE_Init(RE_t *p_re, TIM_HandleTypeDef *htim)
{
	p_re->re_htim = htim;
	p_re->re_cur_value = 0;
	p_re->re_pre_value = 0;
	HAL_TIM_Encoder_Start_IT(p_re->re_htim, TIM_CHANNEL_ALL);
}

static void RE_GetValue(RE_t *p_re, TIM_HandleTypeDef *htim)
{
	if (htim->Instance == p_re->re_htim->Instance)
			{
				p_re->re_cur_value = p_re->re_htim->Instance->CNT << 2;
			}
}

void HAL_TIM_IC_CaptureCallback(TIM_HandleTypeDef *htim)
{

}

void RE_Handle(RE_t *p_re)
{
		if ((p_re->re_pre_value == 0) && (p_re->re_cur_value == 65532))
		{
			RE_CounterClockwiseCallback(p_re);
			p_re->re_pre_value = p_re->re_cur_value;
		} else if ((p_re->re_pre_value == 65532) &&(p_re->re_cur_value == 0))
		{
			RE_ClockwiseCallback(p_re);
			p_re->re_pre_value = p_re->re_cur_value;
		} else if (p_re->re_pre_value < p_re->re_cur_value)
		{
			RE_ClockwiseCallback(p_re);
			p_re->re_pre_value = p_re->re_cur_value;
		} else if (p_re->re_pre_value > p_re->re_cur_value)
		{
			RE_CounterClockwiseCallback(p_re);
			p_re->re_pre_value = p_re->re_cur_value;
		}
}
