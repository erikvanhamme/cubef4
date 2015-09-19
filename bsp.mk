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
ifneq ($(strip $(findstring BSP,$(use))),)

# ---- Common -----------------------------------------------------------------
systemincludes += \
    cubef4/Drivers/BSP/Components/Common \

# ---- Boards -----------------------------------------------------------------

# Include STM324XG_EVAL support.
ifneq ($(strip $(findstring STM324XG_EVAL,$(use))),)

chip := stm32f407xg

systemincludes += cubef4/Drivers/BSP/STM324xG_EVAL

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

endif # End of STM324XG_EVAL


# Include STM32F429I_DISCOVERY support.
ifneq ($(strip $(findstring STM32F429I_DISCOVERY,$(use))),)

chip := stm32f429xi

defines += -DHSE_VALUE=8000000

systemincludes += cubef4/Drivers/BSP/STM32F429I-Discovery

systemsources += \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_eeprom.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_gyroscope.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_io.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_lcd.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_sdram.c \
	cubef4/Drivers/BSP/STM32F429I-Discovery/stm32f429i_discovery_ts.c \

endif # End of STM32F429I_DISCOVERY


# Include STM32F4XX_NUCLEO support.
ifneq ($(strip $(findstring STM32F4XX_NUCLEO,$(use))),)

chip := stm32f401xe

systemincludes += cubef4/Drivers/BSP/STM32F4xx-Nucleo

systemsources += cubef4/Drivers/BSP/STM32F4xx-Nucleo/stm32f4xx_nucleo.c

endif # End of STM32F4XX_NUCLEO


# ---- Components -------------------------------------------------------------

# Include AMPIRE480272 support.
ifneq ($(strip $(findstring AMPIRE480272,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ampire480272/
endif # End of AMPIRE480272

# Include AMPIRE640480 support.
ifneq ($(strip $(findstring AMPIRE640480,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ampire640480/
endif # End of AMPIRE640480

# Include CS43L22 support.
ifneq ($(strip $(findstring CS43L22,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/cs43l22/
systemsources += cubef4/Drivers/BSP/Components/cs43l22/cs43l22.c
endif # End of CS43L22

# Include EXC7200 support.
ifneq ($(strip $(findstring EXC7200,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/exc7200/
systemsources += cubef4/Drivers/BSP/Components/exc7200/exc7200.c
endif # End of EXC7200

# Include FT6X06 support.
ifneq ($(strip $(findstring FT6X06,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ft6x06/
systemsources += cubef4/Drivers/BSP/Components/ft6x06/ft6x06.c
endif # End of FT6X06

# Include ILI9325 support.
ifneq ($(strip $(findstring ILI9325,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ili9325/
systemsources += cubef4/Drivers/BSP/Components/ili9325/ili9325.c
endif # End of ILI9325

# Include ILI9341 support.
ifneq ($(strip $(findstring ILI9341,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ili9341/
systemsources += cubef4/Drivers/BSP/Components/ili9341/ili9341.c
endif # End of ILI9341

# Include L3GD20 support.
ifneq ($(strip $(findstring L3GD20,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/l3gd20/
systemsources += cubef4/Drivers/BSP/Components/l3gd20/l3gd20.c
endif # End of L3GD20

# Include LIS302DL support.
ifneq ($(strip $(findstring LIS302DL,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/lis302dl/
systemsources += cubef4/Drivers/BSP/Components/lis302dl/lis302dl.c
endif # End of LIS302DL

# Include LIS3DSH support.
ifneq ($(strip $(findstring LIS3DSH,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/lis3dsh/
systemsources += cubef4/Drivers/BSP/Components/lis3dsh/lis3dsh.c
endif # End of LIS3DSH

# Include LSM303DLHC support.
ifneq ($(strip $(findstring LSM303DLHC,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/lsm303dlhc/
systemsources += cubef4/Drivers/BSP/Components/lsm303dlhc/lsm303dlhc.c
endif # End of LSM303DLHC

# Include MFXSTM32L152 support.
ifneq ($(strip $(findstring MFXSTM32L152,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/mfxstm32l152/
systemsources += cubef4/Drivers/BSP/Components/mfxstm32l152/mfxstm32l152.c
endif # End of MFXSTM32L152

# Include N25Q128A support.
ifneq ($(strip $(findstring N25Q128A,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/n25q128a/
endif # End of N25Q128A

# Include N25Q256A support.
ifneq ($(strip $(findstring N25Q256A,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/n25q256a/
endif # End of N25Q256A

# Include N25Q512A support.
ifneq ($(strip $(findstring N25Q512A,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/n25q512a/
endif # End of N25Q512A

# Include OTM8009A support.
ifneq ($(strip $(findstring OTM8009A,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/otm8009a/
systemsources += cubef4/Drivers/BSP/Components/otm8009a/otm8009a.c
endif # End of OTM8009A

# Include OV2640 support.
ifneq ($(strip $(findstring OV2640,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ov2640/
systemsources += cubef4/Drivers/BSP/Components/ov2640/ov2640.c
endif # End of OV2640

# Include S25FL512S support.
ifneq ($(strip $(findstring S25FL512S,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/s25fl512s/
endif # End of S25FL512S

# Include S5K5CAG support.
ifneq ($(strip $(findstring S5K5CAG,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/s5k5cag/
systemsources += cubef4/Drivers/BSP/Components/s5k5cag/s5k5cag.c
endif # End of S5K5CAG

# Include ST7735 support.
ifneq ($(strip $(findstring ST7735,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/st7735/
systemsources += cubef4/Drivers/BSP/Components/st7735/st7735.c
endif # End of ST7735

# Include STMPE1600 support.
ifneq ($(strip $(findstring STMPE1600,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/stmpe1600/
systemsources += cubef4/Drivers/BSP/Components/stmpe1600/stmpe1600.c
endif # End of STMPE1600

# Include STMPE811 support.
ifneq ($(strip $(findstring STMPE811,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/stmpe811/
systemsources += cubef4/Drivers/BSP/Components/stmpe811/stmpe811.c
endif # End of STMPE811

# Include TS3510 support.
ifneq ($(strip $(findstring TS3510,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/ts3510/
systemsources += cubef4/Drivers/BSP/Components/ts3510/ts3510.c
endif # End of TS3510

# Include WM8994 support.
ifneq ($(strip $(findstring WM8994,$(use))),)
systemincludes += cubef4/Drivers/BSP/Components/wm8994/
systemsources += cubef4/Drivers/BSP/Components/wm8994/wm8994.c
endif # End of WM8994

endif # End of BSP
