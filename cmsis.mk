# Copyright 2015 Erik Van Hamme
# 
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
# 
#     http://www.apache.org/licenses/LICENSE-2.0
# 
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# Support for the CMSIS module.
#

# Include CMSIS support if the use flags say so.
ifneq ($(strip $(findstring cmsis,$(use))),)

# Main CMSIS system file.
systemsources += \
	cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c \

# Chip support.
ifeq ($(chip),stm32f405)
defines += -DSTM32F405xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.s
endif

ifeq ($(chip),stm32f407)
defines += -DSTM32F407xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s
endif

# TODO: add support for the other stm32f4 chips if needed (as above). List:
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f401xc.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f401xe.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410cx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410rx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410tx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f411xe.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f415xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f417xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f427xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f429xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f437xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f439xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f446xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f469xx.s
#cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f479xx.s

# Include paths for the CMSIS.
systemincludes += \
	cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Include \
	cubef4/Drivers/CMSIS/Include \

endif # End of CMSIS
