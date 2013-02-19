library verilog;
use verilog.vl_types.all;
entity reg_grp is
    generic(
        REG_ADDR_BITS   : integer := 10;
        NUM_OUTPUTS     : integer := 4
    );
    port(
        reg_req         : in     vl_logic;
        reg_rd_wr_L     : in     vl_logic;
        reg_addr        : in     vl_logic_vector;
        reg_wr_data     : in     vl_logic_vector(31 downto 0);
        reg_ack         : out    vl_logic;
        reg_rd_data     : out    vl_logic_vector(31 downto 0);
        local_reg_req   : out    vl_logic_vector;
        local_reg_rd_wr_L: out    vl_logic_vector;
        local_reg_addr  : out    vl_logic_vector;
        local_reg_wr_data: out    vl_logic_vector;
        local_reg_ack   : in     vl_logic_vector;
        local_reg_rd_data: in     vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REG_ADDR_BITS : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUTS : constant is 1;
end reg_grp;
