# ALTERA Confidential and Proprietary
# Copyright 2010 (c) Altera Corporation
# All rights reserved
#
# Project     : Altera NetFPGA Design
# 
# Description : Altera NetFPGA MAC Configuration Setting Script
#
# Revision Control Information
#
# Author      : RCG
# Revision    : 
# Date        : 
# ======================================================================================

# Define Variable
# ===============

set MAC_0_HI 				0x0000004e;
set MAC_0_LO 				0x46324300;

set MAC_1_HI 				0x0000004e;
set MAC_1_LO 				0x46324301;

set MAC_2_HI 				0x0000004e;
set MAC_2_LO 				0x46324302;

set MAC_3_HI 				0x0000004e;
set MAC_3_LO 				0x46324303;

set jtag_master [lindex [get_service_paths master] 0];

# Register Address Offset
# MAC
set ROUTER_OP_LUT_MAC_0_HI_REG 				0x80000a0;
set ROUTER_OP_LUT_MAC_0_LO_REG 				0x80000b0;

set ROUTER_OP_LUT_MAC_1_HI_REG 				0x80000c0;
set ROUTER_OP_LUT_MAC_1_LO_REG 				0x80000d0;

set ROUTER_OP_LUT_MAC_2_HI_REG 				0x80000e0;
set ROUTER_OP_LUT_MAC_2_LO_REG 				0x80000f0;

set ROUTER_OP_LUT_MAC_3_HI_REG 				0x8000100;
set ROUTER_OP_LUT_MAC_3_LO_REG 				0x8000110;

# Starting Altera NetFPGA MAC Configuration System Console
# =================================================
puts "=============================================================================="
puts "	Starting Altera NetFPGA MAC Configuration System Console                   			"
puts "==============================================================================\n\n"

# Open JTAG Master Service
# ========================
open_service master $jtag_master;

# MAC_0 HI and LO
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_0_HI_REG $MAC_0_HI;
puts "MAC HI Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_0_HI_REG 1]";
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_0_LO_REG $MAC_0_LO;
puts "MAC LO Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_0_LO_REG 1]";

# MAC_1 HI and LO
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_1_HI_REG $MAC_1_HI;
puts "MAC HI Address 1 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_1_HI_REG 1]";
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_1_LO_REG $MAC_1_LO;
puts "MAC LO Address 1 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_1_LO_REG 1]";

# MAC_2 HI and LO
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_2_HI_REG $MAC_2_HI;
puts "MAC HI Address 2 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_2_HI_REG 1]";
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_2_LO_REG $MAC_2_LO;
puts "MAC LO Address 2 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_2_LO_REG 1]";

# MAC_3 HI and LO
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_3_HI_REG $MAC_3_HI;
puts "MAC HI Address 3 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_3_HI_REG 1]";
master_write_32 $jtag_master $ROUTER_OP_LUT_MAC_3_LO_REG $MAC_3_LO;
puts "MAC LO Address 3 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_MAC_3_LO_REG 1]";

close_service master $jtag_master;
puts "\nInfo: Closed JTAG Master Service\n\n";
