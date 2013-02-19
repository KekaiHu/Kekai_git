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
set IP_REG_03 						0xC0A80301;
set WR_ADDR_REG_03 					0x00000003;
set RD_ADDR_REG_03 					0x00000003;

# Register Set 4
set IP_REG_04 						0xC0A80401;
set WR_ADDR_REG_04 					0x00000004;
set RD_ADDR_REG_04 					0x00000004;

set jtag_master [lindex [get_service_paths master] 0];

# Register Address Offset
# Dest IP
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 							0x2000074;
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG 							0x200007c;
set ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 							0x2000078;

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
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1;

# Writing the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_02;
# Reading the second set of Registers
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1;

# Writing the third set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_03;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_03;
# Reading the third set of Registers
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1;

# Writing the fourth set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG $IP_REG_04;
master_write_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_WR_ADDR_REG $WR_ADDR_REG_04;
# Reading the fourth set of Registers
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_RD_ADDR_REG 1;
master_read_32 $jtag_master $ROUTER_OP_LUT_DST_IP_FILTER_TABLE_ENTRY_IP_REG 1;

close_service master $jtag_master;
puts "\nInfo: Closed JTAG Master Service\n\n";