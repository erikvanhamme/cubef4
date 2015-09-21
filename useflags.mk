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
# USE flag processing file for the cubef4 library.
#

# If this library is included in a project, it means that an stm32f4 chip is involved.
use += CUBEF4 STM32F4 CMSIS

# ---- Component dependencies -------------------------------------------------

# Include LOG support if the use flags say so.
ifneq ($(strip $(findstring LOG,$(use))),)

# LOG needs FONTS support.
use += FONTS

endif # End of LOG


# Include LWIP support if the use flags say so.
ifneq ($(strip $(findstring LWIP,$(use))),)

# LWIP needs IPV4 support.
use += IPV4

# TODO: Figure out how the IPv6 support is supposed to work.

endif # End of LWIP


# ---- Board support ----------------------------------------------------------

# Include STM324XG_EVAL support.
ifneq ($(strip $(findstring STM324XG_EVAL,$(use))),)

# Add components used by this board.
use += BSP HAL ILI9325 STMPE811

endif # End of STM324XG_EVAL


# Include STM32F429I_DISCOVERY support.
ifneq ($(strip $(findstring STM32F429I_DISCOVERY,$(use))),)

# Add components used by this board.
use += BSP HAL ILI9341 STMPE811

endif # End of STM32F429I_DISCOVERY


# Include STM324F4XX_NUCLEO support.
ifneq ($(strip $(findstring STM32F4XX_NUCLEO,$(use))),)

# Add components used by this board.
use += BSP HAL

endif # End of STM32F4XX_NUCLEO
