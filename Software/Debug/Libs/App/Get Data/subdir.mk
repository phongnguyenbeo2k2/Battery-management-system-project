################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/App/Get\ Data/get_data.c 

OBJS += \
./Libs/App/Get\ Data/get_data.o 

C_DEPS += \
./Libs/App/Get\ Data/get_data.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/App/Get\ Data/get_data.o: ../Libs/App/Get\ Data/get_data.c Libs/App/Get\ Data/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/App" -I"E:/Battery-Monitor-System/Software/Libs/Drivers" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Button" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Rotary Encoder" -I"E:/Battery-Monitor-System/Software/Libs/App/Get Data" -I"E:/Battery-Monitor-System/Software/Libs/App/Control" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/TFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"Libs/App/Get Data/get_data.d" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-App-2f-Get-20-Data

clean-Libs-2f-App-2f-Get-20-Data:
	-$(RM) ./Libs/App/Get\ Data/get_data.cyclo ./Libs/App/Get\ Data/get_data.d ./Libs/App/Get\ Data/get_data.o ./Libs/App/Get\ Data/get_data.su

.PHONY: clean-Libs-2f-App-2f-Get-20-Data

