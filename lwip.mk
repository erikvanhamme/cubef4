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
# Support for the LwIP module.
#

# Include LWIP support if the use flags say so.
ifneq ($(strip $(findstring LWIP,$(use))),)

systemincludes += \
	cubef4/Middlewares/Third_Party/LwIP/src/include \
	cubef4/Middlewares/Third_Party/LwIP/system \

systemsources += \
	cubef4/Middlewares/Third_Party/LwIP/src/api/api_lib.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/api_msg.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/err.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/netbuf.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/netdb.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/netifapi.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/sockets.c \
	cubef4/Middlewares/Third_Party/LwIP/src/api/tcpip.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/def.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/dhcp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/dns.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/init.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/lwip_timers.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/mem.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/memp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/netif.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/pbuf.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/raw.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/asn1_dec.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/asn1_enc.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/mib2.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/mib_structs.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/msg_in.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/snmp/msg_out.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/stats.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/sys.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/tcp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/tcp_in.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/tcp_out.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/udp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/etharp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/auth.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/chap.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/chpms.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/fsm.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/ipcp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/lcp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/magic.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/md5.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/pap.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/ppp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/ppp_oe.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/randm.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/ppp/vj.c \
	cubef4/Middlewares/Third_Party/LwIP/src/netif/slipif.c \


# Include FREERTOS support if the use flags say so.
ifneq ($(strip $(findstring FREERTOS,$(use))),)

defines += -DLWIP_PROVIDE_ERRNO

systemsources += cubef4/Middlewares/Third_Party/LwIP/system/OS/sys_arch.c

endif # End of FREERTOS


# Include IPV4 support if the use flags say so.
ifneq ($(strip $(findstring IPV4,$(use))),)

systemincludes += cubef4/Middlewares/Third_Party/LwIP/src/include/ipv4

systemsources += \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/autoip.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/icmp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/igmp.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/inet.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/inet_chksum.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/ip_addr.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/ip.c \
	cubef4/Middlewares/Third_Party/LwIP/src/core/ipv4/ip_frag.c \

endif # End of IPV4


# TODO: Figure out how the IPv6 support is supposed to work.
#cubef4/Middlewares/Third_Party/LwIP/src/core/ipv6/icmp6.c
#cubef4/Middlewares/Third_Party/LwIP/src/core/ipv6/inet6.c
#cubef4/Middlewares/Third_Party/LwIP/src/core/ipv6/ip6_addr.c
#cubef4/Middlewares/Third_Party/LwIP/src/core/ipv6/ip6.c

endif # End of LWIP
