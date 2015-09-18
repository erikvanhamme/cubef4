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
# module.mk descriptor for the cubef4 library.
#

# The library cannot be used unless an stm32f4 chip is selected.
ifneq ($(strip $(findstring stm32f4,$(use))),)

# Set the arch for the build.
arch := -mcpu=cortex-m4 -mthumb -mfloat-abi=softfp -mfpu=fpv4-sp-d16

# --- Drivers -----------------------------------------------------------------

# BSP module.
include cubef4/bsp.mk

# CMSIS module.
include cubef4/cmsis.mk

# HAL module.
include cubef4/hal.mk

# --- Middlewares -------------------------------------------------------------

# FreeRTOS module.
include cubef4/freertos.mk

# --- Utilities ---------------------------------------------------------------

# Fonts.
include cubef4/font.mk

# LCD Log
include cubef4/log.mk

# Stubs.
include cubef4/stubs.mk

endif # End of stm32f4
