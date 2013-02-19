library verilog;
use verilog.vl_types.all;
entity CAM_monitor is
    generic(
        LUT_DEPTH       : integer := 32
    );
    port(
        clk             : in     vl_logic;
        four_bit_hash   : in     vl_logic_vector(3 downto 0);
        pcin            : in     vl_logic_vector(11 downto 0);
        new_inst_signal : in     vl_logic;
        reset           : in     vl_logic;
        packet_drop_signal: out    vl_logic;
        cam_we          : in     vl_logic;
        cam_wr_addr     : in     vl_logic_vector(3 downto 0);
        cam_din         : in     vl_logic_vector(31 downto 0);
        proc_ack        : in     vl_logic;
        out_ack_reset   : out    vl_logic;
        cam_wr_ack      : out    vl_logic;
        processor_reset_seq: in     vl_logic;
        packet_done     : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of LUT_DEPTH : constant is 1;
end CAM_monitor;
