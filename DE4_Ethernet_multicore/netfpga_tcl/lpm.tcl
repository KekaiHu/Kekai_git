# =======================================================================================
# ALTERA Confidential and Proprietary
# Copyright 2010 (c) Altera Corporation
# All rights reserved
#
# Project     : Altera NetFPGA Design
# 
# Description : Altera NetFPGA LPM Configuration Setting Script
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
set IP_REG_01 						0xAB400200; #171.64.2.0
set MASK_REG_01 					0xffffff00; #255.255.255.0
set NEXT_HOP_IP_REG_01 				0xAB400201; #171.64.2.1
set OUTPUT_PORT_REG_01 				0x00000004; # port 4
set WR_ADDR_REG_01 					0x00000000;
set RD_ADDR_REG_01 					0x00000000;

# Register Set 2
set IP_REG_02 						0x00000000; #0.0.0.0
set MASK_REG_02 					0x00000000;	#0.0.0.0
set NEXT_HOP_IP_REG_02 				0xAB400101; #171.64.1.1
set OUTPUT_PORT_REG_02 				0x00000001;	# port 1
set WR_ADDR_REG_02 					0x0000000f;
set RD_ADDR_REG_02 					0x0000000f;

# Register Set 3
set IP_REG_03 						0x0000cafe;
set MASK_REG_03 					0xf00d0001;
set NEXT_HOP_IP_REG_03 				0x0000cafe;
set OUTPUT_PORT_REG_03 				0xf00d0001;
set WR_ADDR_REG_03 					0x0000cafe;
set RD_ADDR_REG_03 					0x0000cafe;

# Register Set 4
set IP_REG_04 						0x0000cafe;
set MASK_REG_04 					0xf00d0001;
set NEXT_HOP_IP_REG_04 				0x0000cafe;
set OUTPUT_PORT_REG_04 				0xf00d0001;
set WR_ADDR_REG_04 					0x0000cafe;
set RD_ADDR_REG_04 					0x0000cafe;



set jtag_master [lindex [get_service_paths master] 0];

# Register Address Offset
# LPM
set ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG 							0x8000120;
set ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG 						0x8000130;
set ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG 				0x8000140;
set ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG 				0x8000150;
set ROUTER_OP_LUT_ROUTE_TABLE_WR_ADDR_REG 							0x8000170;
set ROUTER_OP_LUT_ROUTE_TABLE_RD_ADDR_REG							0x8000160;

# Starting Altera NetFPGA LPM Configuration System Console
# =================================================
puts "=============================================================================="
puts "	Starting Altera NetFPGA LPM Configuration System Console                   			"
puts "==============================================================================\n\n"

# Open JTAG Master Service
# ========================
open_service master $jtag_master;

# Writing the first set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_01;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_WR_ADDR_REG $WR_ADDR_REG_01;

# Reading the first set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_RD_ADDR_REG $RD_ADDR_REG_01;
puts "LPM IP Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG 1]";
puts "LPM MASK Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG 1]";
puts "LPM NEXT HOP Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG 1]";
puts "LPM PORT Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG 1]";
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_01;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_01;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_01;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_01;

# Writing the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_02;
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_WR_ADDR_REG $WR_ADDR_REG_02;

# Reading the second set of Registers
master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_RD_ADDR_REG $RD_ADDR_REG_02;
puts "LPM IP Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG 1]";
puts "LPM MASK Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG 1]";
puts "LPM NEXT HOP Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG 1]";
puts "LPM PORT Address 0 \t \t = [master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG 1]";
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_02;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_02;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_02;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_02;

# Writing the third set of Registers
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_03;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_WR_ADDR_REG $WR_ADDR_REG_03;

# Reading the third set of Registers
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_RD_ADDR_REG $RD_ADDR_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_03;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_03;

# Writing the fourth set of Registers
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_04;
#master_write_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_WR_ADDR_REG $WR_ADDR_REG_04;

# Reading the fourth set of Registers
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_RD_ADDR_REG $RD_ADDR_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_IP_REG $IP_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_MASK_REG $MASK_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_NEXT_HOP_IP_REG $NEXT_HOP_IP_REG_04;
#master_read_32 $jtag_master $ROUTER_OP_LUT_ROUTE_TABLE_ENTRY_OUTPUT_PORT_REG $OUTPUT_PORT_REG_04;

close_service master $jtag_master;
puts "\nInfo: Closed JTAG Master Service\n\n";