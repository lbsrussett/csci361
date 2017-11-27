################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/Hello\ World.c 

OBJS += \
./src/Hello\ World.o 

C_DEPS += \
./src/Hello\ World.d 


# Each subdirectory must supply rules for building sources it contributes
src/Hello\ World.o: ../src/Hello\ World.c
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C Compiler 6.3.1 [aarch64-elf]'
	aarch64-elf-gcc.exe -O0 -g -Wall -MMD -MP -MF"src/Hello World.d" -MT"src/Hello\ World.d" -c -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


