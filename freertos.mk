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

# Include FreeRTOS support if the use flags say so.
ifneq ($(strip $(findstring freertos,$(use))),)

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

# Chip support for stm32f4.
ifneq ($(strip $(findstring stm32f4,$(use))),)
systemincludes += freertos/Source/portable/GCC/ARM_CM4F
systemsources += freertos/Source/portable/GCC/ARM_CM4F/port.c
endif

# Heap 1 implementation selection from use flags.
ifneq ($(strip $(findstring heap1,$(use))),)
systemsources += freertos/Source/portable/MemMang/heap_1.c
endif

# Heap 2 implementation selection from use flags.
ifneq ($(strip $(findstring heap2,$(use))),)
systemsources += freertos/Source/portable/MemMang/heap_2.c
endif

# Heap 3 implementation selection from use flags.
ifneq ($(strip $(findstring heap3,$(use))),)
systemsources += freertos/Source/portable/MemMang/heap_3.c
endif

# Heap 4 implementation selection from use flags.
ifneq ($(strip $(findstring heap4,$(use))),)
systemsources += freertos/Source/portable/MemMang/heap_4.c
endif

# Heap 5 implementation selection from use flags.
ifneq ($(strip $(findstring heap5,$(use))),)
systemsources += freertos/Source/portable/MemMang/heap_5.c
endif

endif # End of FreeRTOS
