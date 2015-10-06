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
# Support for the USB Host module.
#

# Include USB Host support if the use flags say so.
ifneq ($(strip $(findstring USBH,$(use))),)

systemincludes += cubef4/Middlewares/ST/STM32_USB_Host_Library/Core/Inc

systemsources += \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_core.c \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ctlreq.c \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_ioreq.c \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Core/Src/usbh_pipes.c \

# ---- USB Host Class Support -------------------------------------------------

# Include USB Host MSC support if the use flags say so.
ifneq ($(strip $(findstring USBH_MSC,$(use))),)

systemincludes += cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Inc

systemsources += \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_bot.c \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc.c \
	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MSC/Src/usbh_msc_scsi.c \

endif # End of USB Host MSC.


#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Inc
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Inc
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Inc
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MTP/Inc

#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/AUDIO/Src/usbh_audio.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/CDC/Src/usbh_cdc.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_keybd.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_mouse.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/HID/Src/usbh_hid_parser.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MTP/Src/usbh_mtp.c
#	cubef4/Middlewares/ST/STM32_USB_Host_Library/Class/MTP/Src/usbh_mtp_ptp.c

endif # End of USB Host.
