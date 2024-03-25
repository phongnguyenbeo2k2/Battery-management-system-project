################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/App/Control/control_bat.c 

OBJS += \
./Libs/App/Control/control_bat.o 

C_DEPS += \
./Libs/App/Control/control_bat.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/App/Control/%.o Libs/App/Control/%.su Libs/App/Control/%.cyclo: ../Libs/App/Control/%.c Libs/App/Control/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/App" -I"E:/Battery-Monitor-System/Software/Libs/Drivers" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Button" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Rotary Encoder" -I"E:/Battery-Monitor-System/Software/Libs/App/Get Data" -I"E:/Battery-Monitor-System/Software/Libs/App/Control" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/TFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-App-2f-Control

clean-Libs-2f-App-2f-Control:
	-$(RM) ./Libs/App/Control/control_bat.cyclo ./Libs/App/Control/control_bat.d ./Libs/App/Control/control_bat.o ./Libs/App/Control/control_bat.su

.PHONY: clean-Libs-2f-App-2f-Control

