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
# Support for the HAL module.
#

# Include HAL support if the use flags say so.
ifneq ($(strip $(findstring HAL,$(use))),)

# This define is needed by the stm32f4xx.h file.
defines += -DUSE_HAL_DRIVER

# Add main include paths for the HAL driver.
systemincludes += cubef4/Drivers/STM32F4xx_HAL_Driver/Inc

# Add all sources for the HAL driver.
systemsources += \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_adc_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_can.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cec.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cortex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_crc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_cryp_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dac_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dcmi_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma2d.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dma_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_dsi.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_eth.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_flash_ramfunc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_fmpi2c_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_gpio.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hash_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_hcd.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2c_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_i2s_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_irda.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_iwdg.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_lptim.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_ltdc_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_msp_template.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nand.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_nor.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pccard.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pcd_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_pwr_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_qspi.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rcc_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rng.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_rtc_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sai_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sd.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sdram.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_smartcard.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spdifrx.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_spi.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_sram.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_tim_ex.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_uart.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_usart.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_hal_wwdg.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fmc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_fsmc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_sdmmc.c \
	cubef4/Drivers/STM32F4xx_HAL_Driver/Src/stm32f4xx_ll_usb.c \

endif # End of HAL
