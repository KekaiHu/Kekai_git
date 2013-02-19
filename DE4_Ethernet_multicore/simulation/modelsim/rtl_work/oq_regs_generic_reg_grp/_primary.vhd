library verilog;
use verilog.vl_types.all;
entity oq_regs_generic_reg_grp is
    generic(
        REG_WIDTH       : integer := 32;
        NUM_OUTPUT_QUEUES: integer := 8;
        NUM_OQ_WIDTH    : vl_notype;
        WRITE_WIDTH     : integer := 16;
        ALLOW_NEGATIVE  : integer := 0;
        REPLACE_ON_WRITE: integer := 0
    );
    port(
        rd_a            : in     vl_logic;
        rd_addr_a       : in     vl_logic_vector;
        rd_data_a       : out    vl_logic_vector;
        wr_a            : in     vl_logic;
        wr_addr_a       : in     vl_logic_vector;
        wr_data_a       : in     vl_logic_vector;
        wr_new_value_a  : out    vl_logic_vector;
        wr_done_a       : out    vl_logic;
        rd_b            : in     vl_logic;
        rd_addr_b       : in     vl_logic_vector;
        rd_data_b       : out    vl_logic_vector;
        wr_b            : in     vl_logic;
        wr_addr_b       : in     vl_logic_vector;
        wr_data_b       : in     vl_logic_vector;
        wr_new_value_b  : out    vl_logic_vector;
        wr_done_b       : out    vl_logic;
        reg_req         : in     vl_logic;
        reg_ack         : out    vl_logic;
        reg_wr          : in     vl_logic;
        reg_addr        : in     vl_logic_vector;
        reg_wr_data     : in     vl_logic_vector(31 downto 0);
        reg_rd_data     : out    vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of WRITE_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of ALLOW_NEGATIVE : constant is 1;
    attribute mti_svvh_generic_type of REPLACE_ON_WRITE : constant is 1;
end oq_regs_generic_reg_grp;
