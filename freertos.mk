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
# Support for the FreeRTOS middleware module.
#

# Include FREERTOS support if the use flags say so.
ifneq ($(strip $(findstring FREERTOS,$(use))),)

# Add FreeRTOS include directories.
systemincludes += \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/include \

# Add FreeRTOS source files.
systemsources += \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS/cmsis_os.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/croutine.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/event_groups.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/list.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/queue.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/tasks.c \
	cubef4/Middlewares/Third_Party/FreeRTOS/Source/timers.c \

# Chip support for STM32F4.
ifneq ($(strip $(findstring STM32F4,$(use))),)
systemincludes += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM4F/port.c
endif # End of STM32F4

# HEAP1 implementation selection from use flags.
ifneq ($(strip $(findstring HEAP1,$(use))),)
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_1.c
endif # End of HEAP1

# HEAP2 implementation selection from use flags.
ifneq ($(strip $(findstring HEAP2,$(use))),)
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_2.c
endif # End of HEAP2

# HEAP3 implementation selection from use flags.
ifneq ($(strip $(findstring HEAP3,$(use))),)
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_3.c
endif # End of HEAP3

# HEAP4 implementation selection from use flags.
ifneq ($(strip $(findstring HEAP4,$(use))),)
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_4.c
endif # End of HEAP4

# HEAP5 implementation selection from use flags.
ifneq ($(strip $(findstring HEAP5,$(use))),)
systemsources += cubef4/Middlewares/Third_Party/FreeRTOS/Source/portable/MemMang/heap_5.c
endif # End of HEAP5

endif # End of FREERTOS
