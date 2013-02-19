library verilog;
use verilog.vl_types.all;
entity device_id_reg is
    generic(
        DEVICE_ID       : integer := 0;
        REVISION        : integer := 0;
        DEVICE_STR      : string  := "Undefined device"
    );
    port(
        reg_req         : in     vl_logic;
        reg_ack         : out    vl_logic;
        reg_rd_wr_L     : in     vl_logic;
        reg_addr        : in     vl_logic_vector(15 downto 0);
        reg_rd_data     : out    vl_logic_vector(31 downto 0);
        reg_wr_data     : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DEVICE_ID : constant is 1;
    attribute mti_svvh_generic_type of REVISION : constant is 1;
    attribute mti_svvh_generic_type of DEVICE_STR : constant is 1;
end device_id_reg;
