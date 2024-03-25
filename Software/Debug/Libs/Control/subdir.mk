################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Control/control_bat.c 

OBJS += \
./Libs/Control/control_bat.o 

C_DEPS += \
./Libs/Control/control_bat.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Control/%.o Libs/Control/%.su Libs/Control/%.cyclo: ../Libs/Control/%.c Libs/Control/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/Display" -I"E:/Battery-Monitor-System/Software/Libs/Control" -I"E:/Battery-Monitor-System/Software/Libs/Button" -I"E:/Battery-Monitor-System/Software/Libs/Rotary Encoder" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Control

clean-Libs-2f-Control:
	-$(RM) ./Libs/Control/control_bat.cyclo ./Libs/Control/control_bat.d ./Libs/Control/control_bat.o ./Libs/Control/control_bat.su

.PHONY: clean-Libs-2f-Control

