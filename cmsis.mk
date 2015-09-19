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
ifneq ($(strip $(findstring CMSIS,$(use))),)

# Include paths for the CMSIS.
systemincludes += \
        cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Include \
        cubef4/Drivers/CMSIS/Include \

# Main CMSIS system file.
systemsources += \
	cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/system_stm32f4xx.c \

# ---- Chip support -----------------------------------------------------------


# ---- STM32F407xx / STM32F417xx family ---------------------------------------
# http://www.st.com/web/catalog/mmc/FM141/SC1169/SS1577/LN11
ifneq ($(filter stm32f407xe stm32f407xg,$(chip)),)
defines += -DSTM32F407xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f407xx.s
endif

ifneq ($(filter stm32f417xe stm32f417xg,$(chip)),)
defines += -DSTM32F417xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f417xx.s
endif


# ---- STM32F429xx / STM32F439xx family ---------------------------------------
# http://www.st.com/web/catalog/mmc/FM141/SC1169/SS1577/LN1806
ifneq ($(filter stm32f429xe stm32f429xg stm32f429xi,$(chip)),)
defines += -DSTM32F429xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f429xx.s
endif

ifneq ($(filter stm32f439xe stm32f439xg stm32f439xi,$(chip)),)
defines += -DSTM32F439xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f439xx.s
endif



ifeq ($(chip),stm32f401xc)
defines += -DSTM32F401xC
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f401xc.s
endif

ifeq ($(chip),stm32f401xe)
defines += -DSTM32F401xE
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f401xe.s
endif

ifeq ($(chip),stm32f405xx)
defines += -DSTM32F405xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f405xx.s
endif


ifeq ($(chip),stm32f410cx)
defines += -DSTM32F410Cx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410cx.s
endif

ifeq ($(chip),stm32f410rx)
defines += -DSTM32F410Rx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410rx.s
endif

ifeq ($(chip),stm32f410tx)
defines += -DSTM32F410Tx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f410tx.s
endif

ifeq ($(chip),stm32f411xe)
defines += -DSTM32F411xE
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f411xe.s
endif

ifeq ($(chip),stm32f415xx)
defines += -DSTM32F415xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f415xx.s
endif

ifeq ($(chip),stm32f427xx)
defines += -DSTM32F427xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f427xx.s
endif

ifeq ($(chip),stm32f437xx)
defines += -DSTM32F437xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f437xx.s
endif

ifeq ($(chip),stm32f446xx)
defines += -DSTM32F446xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f446xx.s
endif

ifeq ($(chip),stm32f469xx)
defines += -DSTM32F469xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f469xx.s
endif

ifeq ($(chip),stm32f479xx)
defines += -DSTM32F479xx
systemsources += cubef4/Drivers/CMSIS/Device/ST/STM32F4xx/Source/Templates/gcc/startup_stm32f479xx.s
endif

endif # End of CMSIS
