set jtag_master [lindex [get_service_paths master] 0]

open_service master $jtag_master

master_write_32 $jtag_master 0x80000a0 0x000000ca
master_write_32 $jtag_master 0x80000b0 0xfe000001
master_write_32 $jtag_master 0x80000c0 0x000000ca
master_write_32 $jtag_master 0x80000d0 0xfe000002
master_write_32 $jtag_master 0x80000e0 0x000000ca
master_write_32 $jtag_master 0x80000f0 0xfe000003
master_write_32 $jtag_master 0x8000100 0x000000ca
master_write_32 $jtag_master 0x8000110 0xfe000004



master_write_32 $jtag_master 0x80001d0 0xC0A80101
master_write_32 $jtag_master 0x80001f0 0x00000001

master_write_32 $jtag_master 0x80001d0 0xC0A80201
master_write_32 $jtag_master 0x80001f0 0x00000002

master_write_32 $jtag_master 0x80001d0 0xC0A80301
master_write_32 $jtag_master 0x80001f0 0x00000003

master_write_32 $jtag_master 0x80001d0 0xC0A80401
master_write_32 $jtag_master 0x80001f0 0x00000004


master_write_32 $jtag_master 0x80001a0 0xAB400101
master_write_32 $jtag_master 0x8000180 0x000000fe
master_write_32 $jtag_master 0x8000190 0xed02d065
master_write_32 $jtag_master 0x80001c0 0x00000000

master_write_32 $jtag_master 0x80001a0 0xAB400201
master_write_32 $jtag_master 0x8000180 0x000000fe
master_write_32 $jtag_master 0x8000190 0xed01d065
master_write_32 $jtag_master 0x80001c0 0x00000001




master_write_32 $jtag_master 0x8000120 0xAB400200
master_write_32 $jtag_master 0x8000130 0xffffff00
master_write_32 $jtag_master 0x8000140 0xAB400201
master_write_32 $jtag_master 0x8000150 0x00000004
master_write_32 $jtag_master 0x8000170 0x00000000

master_write_32 $jtag_master 0x8000120 0x00000000
master_write_32 $jtag_master 0x8000130 0x00000000
master_write_32 $jtag_master 0x8000140 0xAB400101
master_write_32 $jtag_master 0x8000150 0x00000001
master_write_32 $jtag_master 0x8000170 0x0000000f

close_service master $jtag_master;


