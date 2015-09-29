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
# This file stores the parameters of the various chips supported by this
# library.
#

# TODO: complete this file.

# ---- STM32F401xx family -----------------------------------------------------
# http://www.st.com/web/catalog/mmc/FM141/SC1169/SS1577/LN1810
supported_chips += \
	stm32f401xe \

ifeq ($(chip),stm32f401xe)
defines += -DSTM32F401xE
flashsize := 512K
sramsize := 96K
ccmsize := 0K
endif # End of stm32f401xe


# ---- STM32F407xx / STM32F417xx family ---------------------------------------
# http://www.st.com/web/catalog/mmc/FM141/SC1169/SS1577/LN11
supported_chips += \
	stm32f407xe \
	stm32f407xg \
	stm32f417xe \
	stm32f417xg \

ifeq ($(chip),stm32f407xe)
defines += -DSTM32F407xx
flashsize := 512K
sramsize := 128K
ccmsize := 64K
endif # End of stm32f407xe

ifeq ($(chip),stm32f407xg)
defines += -DSTM32F407xx
flashsize := 1024K
sramsize := 128K
ccmsize := 64K
endif # End of stm32f407xg

ifeq ($(chip),stm32f417xe)
defines += -DSTM32F417xx
flashsize := 512K
sramsize := 128K
ccmsize := 64K
endif # End of stm32f417xe

ifeq ($(chip),stm32f417xg)
defines += -DSTM32F417xx
flashsize := 1024K
sramsize := 128K
ccmsize := 64K
endif # End of stm32f417xg


# ---- STM32F429xx / STM32F439xx family ---------------------------------------
# http://www.st.com/web/catalog/mmc/FM141/SC1169/SS1577/LN1806
supported_chips += \
	stm32f429xe \
	stm32f429xg \
	stm32f429xi \
	stm32f439xe \
	stm32f439xg \
	stm32f439xi \

ifeq ($(chip),stm32f429xe)
defines += -DSTM32F429xx
flashsize := 512K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f429xe

ifeq ($(chip),stm32f429xg)
defines += -DSTM32F429xx
flashsize := 1048K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f429xg

ifeq ($(chip),stm32f429xi)
defines += -DSTM32F429xx
flashsize := 2048K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f429xi

ifeq ($(chip),stm32f439xe)
defines += -DSTM32F439xx
flashsize := 512K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f439xe

ifeq ($(chip),stm32f439xg)
defines += -DSTM32F439xx
flashsize := 1048K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f439xg

ifeq ($(chip),stm32f439xi)
defines += -DSTM32F439xx
flashsize := 2048K
sramsize := 192K
ccmsize := 64K
endif # End of stm32f439xi
