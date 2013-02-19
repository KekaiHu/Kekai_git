library verilog;
use verilog.vl_types.all;
entity ethernet_port_interface_tb is
    generic(
        IDLE_WR_ACK0    : integer := 0;
        WRITE_WR_ACK0   : integer := 1;
        IDLE_WR_ACK1    : integer := 0;
        WRITE_WR_ACK1   : integer := 1;
        IDLE_WR_ACK2    : integer := 0;
        WRITE_WR_ACK2   : integer := 1;
        IDLE_WR_ACK3    : integer := 0;
        WRITE_WR_ACK3   : integer := 1
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of IDLE_WR_ACK0 : constant is 1;
    attribute mti_svvh_generic_type of WRITE_WR_ACK0 : constant is 1;
    attribute mti_svvh_generic_type of IDLE_WR_ACK1 : constant is 1;
    attribute mti_svvh_generic_type of WRITE_WR_ACK1 : constant is 1;
    attribute mti_svvh_generic_type of IDLE_WR_ACK2 : constant is 1;
    attribute mti_svvh_generic_type of WRITE_WR_ACK2 : constant is 1;
    attribute mti_svvh_generic_type of IDLE_WR_ACK3 : constant is 1;
    attribute mti_svvh_generic_type of WRITE_WR_ACK3 : constant is 1;
end ethernet_port_interface_tb;
