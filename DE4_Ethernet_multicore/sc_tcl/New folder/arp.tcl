# =======================================================================================
# ALTERA Confidential and Proprietary
# Copyright 2010 (c) Altera Corporation
# All rights reserved
#
# Project     : Altera NetFPGA Design
# 
# Description : Altera NetFPGA ARP Configuration Setting Script
#
# Revision Control Information
#
# Author      : RCG
# Revision    : 
# Date        : 
# ======================================================================================

# Define Variable
# ===============
# Register Set 1
set NEXT_HOP_IP_REG_01 							0xAB400101; # 171.64.1.1
set MAC_HI_REG_01 								0x000000fe; # 00:fe:
set MAC_LO_REG_01 								0xed02d065; # ed:01:d0:65
set WR_ADDR_REG_01 								0x00000000;
set RD_ADDR_REG_01 								0x00000000;

# Register Set 2
set NEXT_HOP_IP_REG_02 							0xAB400201; # 171.64.2.1
set MAC_HI_REG_02 								0x000000fe; # 00:fe:
set MAC_LO_REG_02 								0xed01d065; # ed:02:d0:65
set WR_ADDR_REG_02 								0x00000001;
set RD_ADDR_REG_02								0x00000001;

# Register Set 3
#set NEXT_HOP_IP_REG_03 							0x0000cafe;
#set MAC_HI_REG_03 								0xf00d0001;
#set MAC_LO_REG_03 								0xf00d0001;
#set WR_ADDR_REG_03 								0xf00d0001;
#set RD_ADDR_REG_03 								0xf00d0001;

# Register Set 4
#set NEXT_HOP_IP_REG_04 							0x0000cafe;
#set MAC_HI_REG_04 								0xf00d0001;
#set MAC_LO_REG_04 								0xf00d0001;
#set WR_ADDR_REG_04 								0xf00d0001;
#set RD_ADDR_REG_04 								0xf00d0001;

set jtag_master [lindex [get_service_paths master] 0];

# Register Address Offset
# Dest IP
set ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG 							0x2000068;
set ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG 								0x2000060;
set ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG 								0x2000064;
set ROUTER_OP_LUT_ARP_TABLE_WR_ADDR_REG 									0x2000070;
set ROUTER_OP_LUT_ARP_TABLE_RD_ADDR_REG 									0x200006c;

# Starting Altera NetFPGA ARP Configuration System Console
# =================================================
puts "=============================================================================="
puts "	Starting Altera NetFPGA ARP Configuration System Console                   			"
puts "==============================================================================\n\n"

# Open JTAG Master Service
# ========================
open_service master $jtag_master;

# Writing the first set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_WR_ADDR_REG $WR_ADDR_REG_01;
# Reading the first set of Registers
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG 1;

# Writing the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_WR_ADDR_REG $WR_ADDR_REG_02;
# Reading the second set of Registers
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG 1;

# Writing the third set of Registers
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_WR_ADDR_REG $WR_ADDR_REG_03;
# Reading the third set of Registers
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_RD_ADDR_REG $RD_ADDR_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_03;

# Writing the fourth set of Registers
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_WR_ADDR_REG $WR_ADDR_REG_04;
# Reading the fourth set of Registers
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_RD_ADDR_REG $RD_ADDR_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_HI_REG $MAC_HI_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ARP_TABLE_ENTRY_MAC_LO_REG $MAC_LO_REG_04;

close_service master $jtag_master;
puts "\nInfo: Closed JTAG Master Service\n\n";