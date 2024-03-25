################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Rotary\ Encoder/rotary_encoder.c 

OBJS += \
./Libs/Rotary\ Encoder/rotary_encoder.o 

C_DEPS += \
./Libs/Rotary\ Encoder/rotary_encoder.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Rotary\ Encoder/rotary_encoder.o: ../Libs/Rotary\ Encoder/rotary_encoder.c Libs/Rotary\ Encoder/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/Display" -I"E:/Battery-Monitor-System/Software/Libs/Control" -I"E:/Battery-Monitor-System/Software/Libs/Button" -I"E:/Battery-Monitor-System/Software/Libs/Rotary Encoder" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Libs/Rotary Encoder/rotary_encoder.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Rotary-20-Encoder

clean-Libs-2f-Rotary-20-Encoder:
	-$(RM) ./Libs/Rotary\ Encoder/rotary_encoder.cyclo ./Libs/Rotary\ Encoder/rotary_encoder.d ./Libs/Rotary\ Encoder/rotary_encoder.o ./Libs/Rotary\ Encoder/rotary_encoder.su

.PHONY: clean-Libs-2f-Rotary-20-Encoder

