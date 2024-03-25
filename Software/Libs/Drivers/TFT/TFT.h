/*
 * TFT_ST7735.h
 *
 *  Created on: Dec 29, 2023
 *      Author: Acer
 */

#ifndef TFT_ST7735_LIB_TFT_ST7735_H_
#define TFT_ST7735_LIB_TFT_ST7735_H_

#include "stdint.h"
#include "stm32f0xx_hal.h"
#include "stdbool.h"
#include "stdlib.h"

/*test*/
#define DELAY 0x80

#define ST7735_MADCTL_MY  0x80
#define ST7735_MADCTL_MX  0x40
#define ST7735_MADCTL_MV  0x20
#define ST7735_MADCTL_ML  0x10
#define ST7735_MADCTL_RGB 0x00
#define ST7735_MADCTL_BGR 0x08
#define ST7735_MADCTL_MH  0x04

#define ST7735_NOP     0x00
#define ST7735_SWRESET 0x01
#define ST7735_RDDID   0x04
#define ST7735_RDDST   0x09

#define ST7735_SLPIN   0x10
#define ST7735_SLPOUT  0x11
#define ST7735_PTLON   0x12
#define ST7735_NORON   0x13

#define ST7735_INVOFF  0x20
#define ST7735_INVON   0x21
#define ST7735_DISPOFF 0x28
#define ST7735_DISPON  0x29
#define ST7735_CASET   0x2A
#define ST7735_RASET   0x2B
#define ST7735_RAMWR   0x2C
#define ST7735_RAMRD   0x2E

#define ST7735_PTLAR   0x30
#define ST7735_COLMOD  0x3A
#define ST7735_MADCTL  0x36

#define ST7735_FRMCTR1 0xB1
#define ST7735_FRMCTR2 0xB2
#define ST7735_FRMCTR3 0xB3
#define ST7735_INVCTR  0xB4
#define ST7735_DISSET5 0xB6

#define ST7735_PWCTR1  0xC0
#define ST7735_PWCTR2  0xC1
#define ST7735_PWCTR3  0xC2
#define ST7735_PWCTR4  0xC3
#define ST7735_PWCTR5  0xC4
#define ST7735_VMCTR1  0xC5

#define ST7735_RDID1   0xDA
#define ST7735_RDID2   0xDB
#define ST7735_RDID3   0xDC
#define ST7735_RDID4   0xDD

#define ST7735_PWCTR6  0xFC

#define ST7735_GMCTRP1 0xE0
#define ST7735_GMCTRN1 0xE1
/*define commmand of TFT ST7735*/
/*color definition*/

#define BLACK   		0x0000
#define BLUE	   		0x001F
#define RED     		0xF800
#define GREEN   		0x07E0
#define CYAN    		0x07FF
#define MAGENTA 		0xF81F
#define YELLOW  		0xFFE0
#define WHITE   		0xFFFF
#define NAVY	   		0x000F
#define DARK_BLUE		0x0011
#define DARK_GREEN		0x03E0
#define DARK_CYAN   	 0x03EF
#define TURQUOISE		0x471A
#define INDIGO			0x4810
#define DARKRED			0x8000
#define OLIVE			0x7BE0
#define GRAY			0x8410
#define SKYBLUE			0x867D
#define BLUEVIOLET		0x895C
#define LIGHT_GREEN		0x9772
#define DARK_VIOLET		0x901A
#define YELLOW_GREEN	0x9E66
#define BROWN			0xA145
#define DARKGRAY		0x7BEF
#define SIENNA			0xA285
#define LIGHT_BLUE		0xAEDC
#define GREEN_YELLOW	0xAFE5
#define SILIVER			0xC618
#define LIGHT_GRAY		0xC618
#define LIGHT_CYAN		0xE7FF
#define TVIOLET			0xEC1D
#define TAZUR			0xF7FF
#define BEIGE			0xF7BB
#define TOMATO			0xFB08
#define GOLD			0xFEA0
#define ORANGE			0xFD20
#define SNOW			0xFFDF
#define color565(r, g, b) (((r & 0xF8) << 8) | ((g & 0xFC) << 3) | ((b & 0xF8) >> 3))

/*Font of char when write on tft screen*/
typedef struct {
    const uint8_t width;
    uint8_t height;
    const uint16_t *data;
}TFT_ST7735_FontDef_t;

extern TFT_ST7735_FontDef_t Font_7x10_t;
extern TFT_ST7735_FontDef_t Font_11x18_t;
extern TFT_ST7735_FontDef_t Font_16x26_t;

typedef enum __TFT_ST7735_SCREEN_SIZE
{
	TFT_ST7735_160x128,
	TFT_ST7735_120x128,
	TFT_ST7735_160x80
}TFT_ST7735_SCREEN_TYPE_t;

typedef struct __TFT_ST7735_info
{
	GPIO_TypeDef *cs_port;
	uint16_t cs_pin;
	GPIO_TypeDef *dc_port;
	uint16_t dc_pin;
	GPIO_TypeDef *rst_port;
	uint16_t rst_pin;
	SPI_HandleTypeDef *tft_hspi;
	TFT_ST7735_SCREEN_TYPE_t tft_type;
	uint16_t tft_max_width_size;
	uint16_t tft_max_height_size;
}TFT_ST7735_Info_t;

/*before run TFT need to fill out all information that is in struct TFT_ST7735_Info_t*/
/*base function*/
void TFT_ST7735_init_info(TFT_ST7735_Info_t *foo_tft, GPIO_TypeDef *foo_cs_port, uint16_t cs_pin, GPIO_TypeDef *foo_dc_port, uint16_t foo_dc_pin, GPIO_TypeDef *rst_port, uint16_t foo_rst_pin,SPI_HandleTypeDef *foo_tft_hspi, TFT_ST7735_SCREEN_TYPE_t foo_tft_type);
void TFT_ST7735_Unselect(TFT_ST7735_Info_t *foo_tft);
void TFT_ST7735_Select(TFT_ST7735_Info_t *foo_tft);
void TFT_ST7735_Reset(TFT_ST7735_Info_t *foo_tft);
void TFT_ST7735_Write_command(TFT_ST7735_Info_t *foo_tft, uint8_t cmd);
void TFT_ST7735_Write_data(TFT_ST7735_Info_t *foo_tft, uint8_t *buff, size_t buff_size);
void TFT_ST7735_Display_init(TFT_ST7735_Info_t *foo_tft, const uint8_t *addr);
void TFT_ST7735_Set_address_window(TFT_ST7735_Info_t *foo_tft, uint8_t x0, uint8_t y0, uint8_t x1, uint8_t y1);
void TFT_ST7735_Draw_pixel(TFT_ST7735_Info_t *foo_tft, uint16_t x, uint16_t y, uint16_t color);
void TFT_ST7735_Run(TFT_ST7735_Info_t *foo_tft, uint8_t rotation);
void TFT_ST7735_Set_rotation(TFT_ST7735_Info_t *foo_tft, uint8_t m);
/*High function*/
void TFT_ST7735_Write_char(TFT_ST7735_Info_t *foo_tft, uint16_t x, uint16_t y, char ch, TFT_ST7735_FontDef_t font, uint16_t color, uint16_t bgcolor);
void TFT_ST7735_Write_string(TFT_ST7735_Info_t *foo_tft, uint16_t x, uint16_t y, const char* str, TFT_ST7735_FontDef_t font, uint16_t color, uint16_t bgcolor);
void TFT_ST7735_Fill_rectangle(TFT_ST7735_Info_t *foo_tft, uint16_t x, uint16_t y, uint16_t w, uint16_t h, uint16_t color);
void TFT_ST7735_Draw_image(TFT_ST7735_Info_t *foo_tft, uint16_t x, uint16_t y, uint16_t w, uint16_t h, const uint16_t* data);
void TFT_ST7735_InvertColors(TFT_ST7735_Info_t *foo_tft, bool invert);
void TFT_ST7735_Display_off(TFT_ST7735_Info_t *foo_tft);
void TFT_St7735_Display_on(TFT_ST7735_Info_t *foo_tft);
/*use high function for draw graph*/
void TFT_ST7735_drawPixel(TFT_ST7735_Info_t *foo_tft, int16_t x, int16_t y, uint16_t color);
void TFT_ST7735_writePixel(TFT_ST7735_Info_t *foo_tft, int16_t x, int16_t y, uint16_t color);
void TFT_ST7735_writeLine(TFT_ST7735_Info_t *foo_tft, int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
void TFT_ST7735_drawFastVLine(TFT_ST7735_Info_t *foo_tft, int16_t x, int16_t y, int16_t h, uint16_t color);
void TFT_ST7735_drawFastHLine(TFT_ST7735_Info_t *foo_tft, int16_t x, int16_t y, int16_t w, uint16_t color);
void TFT_ST7735_drawLine(TFT_ST7735_Info_t *foo_tft, int16_t x0, int16_t y0, int16_t x1, int16_t y1, uint16_t color);
void TFT_ST7735_fillRect(TFT_ST7735_Info_t *foo_tft, int16_t x, int16_t y, int16_t w, int16_t h, uint16_t color);
void TFT_ST7735_fillScreen(TFT_ST7735_Info_t *foo_tft, uint16_t color);

#endif /* TFT_ST7735_LIB_TFT_ST7735_H_ */
