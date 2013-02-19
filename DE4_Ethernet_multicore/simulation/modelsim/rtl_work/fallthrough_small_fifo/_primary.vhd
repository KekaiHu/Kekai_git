library verilog;
use verilog.vl_types.all;
entity fallthrough_small_fifo is
    generic(
        WIDTH           : integer := 72;
        MAX_DEPTH_BITS  : integer := 3;
        PROG_FULL_THRESHOLD: vl_notype
    );
    port(
        din             : in     vl_logic_vector;
        wr_en           : in     vl_logic;
        rd_en           : in     vl_logic;
        dout            : out    vl_logic_vector;
        full            : out    vl_logic;
        nearly_full     : out    vl_logic;
        prog_full       : out    vl_logic;
        empty           : out    vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of WIDTH : constant is 1;
    attribute mti_svvh_generic_type of MAX_DEPTH_BITS : constant is 1;
    attribute mti_svvh_generic_type of PROG_FULL_THRESHOLD : constant is 3;
end fallthrough_small_fifo;
