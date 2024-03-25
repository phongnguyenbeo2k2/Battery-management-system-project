################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Display/GFX_FUNCTIONS.c \
../Libs/Display/TFT_ST7735.c \
../Libs/Display/display.c \
../Libs/Display/fonts.c 

OBJS += \
./Libs/Display/GFX_FUNCTIONS.o \
./Libs/Display/TFT_ST7735.o \
./Libs/Display/display.o \
./Libs/Display/fonts.o 

C_DEPS += \
./Libs/Display/GFX_FUNCTIONS.d \
./Libs/Display/TFT_ST7735.d \
./Libs/Display/display.d \
./Libs/Display/fonts.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Display/%.o Libs/Display/%.su Libs/Display/%.cyclo: ../Libs/Display/%.c Libs/Display/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/Display" -I"E:/Battery-Monitor-System/Software/Libs/Control" -I"E:/Battery-Monitor-System/Software/Libs/Button" -I"E:/Battery-Monitor-System/Software/Libs/Rotary Encoder" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Display

clean-Libs-2f-Display:
	-$(RM) ./Libs/Display/GFX_FUNCTIONS.cyclo ./Libs/Display/GFX_FUNCTIONS.d ./Libs/Display/GFX_FUNCTIONS.o ./Libs/Display/GFX_FUNCTIONS.su ./Libs/Display/TFT_ST7735.cyclo ./Libs/Display/TFT_ST7735.d ./Libs/Display/TFT_ST7735.o ./Libs/Display/TFT_ST7735.su ./Libs/Display/display.cyclo ./Libs/Display/display.d ./Libs/Display/display.o ./Libs/Display/display.su ./Libs/Display/fonts.cyclo ./Libs/Display/fonts.d ./Libs/Display/fonts.o ./Libs/Display/fonts.su

.PHONY: clean-Libs-2f-Display

