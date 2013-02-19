library verilog;
use verilog.vl_types.all;
entity mem_ctrl is
    generic(
        ACCURATE_TIMING : vl_logic := Hi0;
        STATE_FETCH     : vl_logic_vector(0 to 1) := (Hi0, Hi0);
        STATE_ADDR      : vl_logic_vector(0 to 1) := (Hi0, Hi1);
        STATE_WRITE     : vl_logic_vector(0 to 1) := (Hi1, Hi0);
        STATE_PAUSE     : vl_logic_vector(0 to 1) := (Hi1, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pause_in        : in     vl_logic;
        nullify_op      : in     vl_logic;
        address_pc      : in     vl_logic_vector(31 downto 0);
        opcode_out      : out    vl_logic_vector(31 downto 0);
        address_data    : in     vl_logic_vector(31 downto 0);
        mem_source      : in     vl_logic_vector(3 downto 0);
        data_write      : in     vl_logic_vector(31 downto 0);
        data_read       : out    vl_logic_vector(31 downto 0);
        pause_out       : out    vl_logic;
        mem_address     : out    vl_logic_vector(31 downto 0);
        mem_data_w      : out    vl_logic_vector(31 downto 0);
        mem_data_r      : in     vl_logic_vector(31 downto 0);
        mem_byte_sel    : out    vl_logic_vector(3 downto 0);
        mem_write       : out    vl_logic;
        address_next_out: out    vl_logic_vector(31 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ACCURATE_TIMING : constant is 1;
    attribute mti_svvh_generic_type of STATE_FETCH : constant is 1;
    attribute mti_svvh_generic_type of STATE_ADDR : constant is 1;
    attribute mti_svvh_generic_type of STATE_WRITE : constant is 1;
    attribute mti_svvh_generic_type of STATE_PAUSE : constant is 1;
end mem_ctrl;
