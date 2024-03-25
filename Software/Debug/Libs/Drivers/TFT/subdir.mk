################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (11.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../Libs/Drivers/TFT/TFT.c \
../Libs/Drivers/TFT/fonts.c 

OBJS += \
./Libs/Drivers/TFT/TFT.o \
./Libs/Drivers/TFT/fonts.o 

C_DEPS += \
./Libs/Drivers/TFT/TFT.d \
./Libs/Drivers/TFT/fonts.d 


# Each subdirectory must supply rules for building sources it contributes
Libs/Drivers/TFT/%.o Libs/Drivers/TFT/%.su Libs/Drivers/TFT/%.cyclo: ../Libs/Drivers/TFT/%.c Libs/Drivers/TFT/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m0 -std=gnu11 -g3 -DDEBUG -DUSE_HAL_DRIVER -DSTM32F030x8 -c -I../Core/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc -I../Drivers/STM32F0xx_HAL_Driver/Inc/Legacy -I../Drivers/CMSIS/Device/ST/STM32F0xx/Include -I../Drivers/CMSIS/Include -I"E:/Battery-Monitor-System/Software/Libs" -I"E:/Battery-Monitor-System/Software/Libs/App" -I"E:/Battery-Monitor-System/Software/Libs/Drivers" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Get Voltage" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Button" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/Rotary Encoder" -I"E:/Battery-Monitor-System/Software/Libs/App/Get Data" -I"E:/Battery-Monitor-System/Software/Libs/App/Control" -I"E:/Battery-Monitor-System/Software/Libs/Drivers/TFT" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfloat-abi=soft -mthumb -o "$@"

clean: clean-Libs-2f-Drivers-2f-TFT

clean-Libs-2f-Drivers-2f-TFT:
	-$(RM) ./Libs/Drivers/TFT/TFT.cyclo ./Libs/Drivers/TFT/TFT.d ./Libs/Drivers/TFT/TFT.o ./Libs/Drivers/TFT/TFT.su ./Libs/Drivers/TFT/fonts.cyclo ./Libs/Drivers/TFT/fonts.d ./Libs/Drivers/TFT/fonts.o ./Libs/Drivers/TFT/fonts.su

.PHONY: clean-Libs-2f-Drivers-2f-TFT

