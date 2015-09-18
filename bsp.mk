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
# Support for the BSP driver module.
#

# Include BSP support if the use flags say so.
ifneq ($(strip $(findstring bsp,$(use))),)

# ---- Common -----------------------------------------------------------------
systemincludes += \
    cubef4/Drivers/BSP/Components/Common \

# ---- Boards -----------------------------------------------------------------

# Include STM324xG_EVAL support.
ifneq ($(strip $(findstring STM324xG_EVAL,$(use))),)

chip := stm32f407xx

systemincludes += \
    cubef4/Drivers/BSP/STM324xG_EVAL \

systemsources += \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_audio.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_camera.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_eeprom.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_io.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_lcd.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_sd.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_sram.c \
    cubef4/Drivers/BSP/STM324xG_EVAL/stm324xg_eval_ts.c \

endif # End of STM324xG_EVAL

# ---- Components -------------------------------------------------------------

# Include ili9325 support.
ifneq ($(strip $(findstring ili9325,$(use))),)

systemincludes += \
    cubef4/Drivers/BSP/Components/ili9325/ \

systemsources += \
    cubef4/Drivers/BSP/Components/ili9325/ili9325.c \

endif # End of ili9325

endif # End of BSP
