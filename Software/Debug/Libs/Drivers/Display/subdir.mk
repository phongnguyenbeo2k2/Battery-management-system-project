################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Drivers/Display/GFX_FUNCTIONS.c \
../Libs/Drivers/Display/TFT_ST7735.c \
../Libs/Drivers/Display/fonts.c 

OBJS += \
./Libs/Drivers/Display/GFX_FUNCTIONS.o \
./Libs/Drivers/Display/TFT_ST7735.o \
./Libs/Drivers/Display/fonts.o 

C_DEPS += \
./Libs/Drivers/Display/GFX_FUNCTIONS.d \
./Libs/Drivers/Display/TFT_ST7735.d \
./Libs/Drivers/Display/fonts.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Drivers/Display/%.o Libs/Drivers/Display/%.su Libs/Drivers/Display/%.cyclo: ../Libs/Drivers/Display/%.c Libs/Drivers/Display/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/App/Menu" -I"E:/Battery-Monitor-System/Software/Libs/App" -I"E:/Battery-Monitor-System/Software/Libs/Drivers" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Button" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Rotary Encoder" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Display" -I"E:/Battery-Monitor-System/Software/Libs/App/Get Data" -I"E:/Battery-Monitor-System/Software/Libs/App/Control" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Drivers-2f-Display

clean-Libs-2f-Drivers-2f-Display:
	-$(RM) ./Libs/Drivers/Display/GFX_FUNCTIONS.cyclo ./Libs/Drivers/Display/GFX_FUNCTIONS.d ./Libs/Drivers/Display/GFX_FUNCTIONS.o ./Libs/Drivers/Display/GFX_FUNCTIONS.su ./Libs/Drivers/Display/TFT_ST7735.cyclo ./Libs/Drivers/Display/TFT_ST7735.d ./Libs/Drivers/Display/TFT_ST7735.o ./Libs/Drivers/Display/TFT_ST7735.su ./Libs/Drivers/Display/fonts.cyclo ./Libs/Drivers/Display/fonts.d ./Libs/Drivers/Display/fonts.o ./Libs/Drivers/Display/fonts.su

.PHONY: clean-Libs-2f-Drivers-2f-Display

