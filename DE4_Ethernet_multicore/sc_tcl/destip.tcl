# =======================================================================================
# ALTERA Confidential and Proprietary
# Copyright 2010 (c) Altera Corporation
# All rights reserved
#
# Project     : Altera NetFPGA Design
# 
# Description : Altera NetFPGA Dest IP Configuration Setting Script
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
set IP_REG_01 						0xC0A80101;
set WR_ADDR_REG_01 					0x00000001;
set RD_ADDR_REG_01 					0x00000001;

# Register Set 2
set IP_REG_02 						0xC0A80201;
set WR_ADDR_REG_02 					0x00000002;
set RD_ADDR_REG_02 					0x00000002;

# Register Set 3
set IP_REG_03 						0x0A020301; # 10.2.3.1 #10.2.3.1
set WR_ADDR_REG_03 					0x00000003;
set RD_ADDR_REG_03 					0x00000003;

# Register Set 4
set IP_REG_04 						0x0A010401; # 20.2.4.1 #10.1.4.1
set WR_ADDR_REG_04 					0x00000004;
set RD_ADDR_REG_04 					0x00000004;

set jtag_master [lindex [get_service_paths master] 0];

# Register Address Offset
# Dest IP
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 							0x80001d0;
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG 							0x80001f0;
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 							0x80001e0;

# Starting Altera NetFPGA Dest IP Configuration System Console
# =================================================
puts "=============================================================================="
puts "	Starting Altera NetFPGA Dest IP Configuration System Console                   			"
puts "==============================================================================\n\n"

# Open JTAG Master Service
# ========================
open_service master $jtag_master;

# Writing the first set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_01;
# Reading the first set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG $RD_ADDR_REG_01;
#master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_01;
puts "Dest ip Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1]";

# Writing the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_02;
# Reading the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG $RD_ADDR_REG_02;
#master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_02;
puts "Dest ip  Address 1 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1]";

# Writing the third set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_03;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_03;
# Reading the third set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG $RD_ADDR_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_03;
puts "Dest ip  Address 2 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1]";

# Writing the fourth set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_04;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_04;
# Reading the fourth set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG $RD_ADDR_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_04;
puts "Dest ip  Address 3 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1]";

close_service master $jtag_master;
puts "\nInfo: Closed JTAG Master Service\n\n";