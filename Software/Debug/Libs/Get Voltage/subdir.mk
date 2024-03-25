################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Get\ Voltage/adc_get_voltage.c 

OBJS += \
./Libs/Get\ Voltage/adc_get_voltage.o 

C_DEPS += \
./Libs/Get\ Voltage/adc_get_voltage.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Get\ Voltage/adc_get_voltage.o: ../Libs/Get\ Voltage/adc_get_voltage.c Libs/Get\ Voltage/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/Display" -I"E:/Battery-Monitor-System/Software/Libs/Control" -I"E:/Battery-Monitor-System/Software/Libs/Button" -I"E:/Battery-Monitor-System/Software/Libs/Rotary Encoder" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Libs/Get Voltage/adc_get_voltage.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Get-20-Voltage

clean-Libs-2f-Get-20-Voltage:
	-$(RM) ./Libs/Get\ Voltage/adc_get_voltage.cyclo ./Libs/Get\ Voltage/adc_get_voltage.d ./Libs/Get\ Voltage/adc_get_voltage.o ./Libs/Get\ Voltage/adc_get_voltage.su

.PHONY: clean-Libs-2f-Get-20-Voltage

