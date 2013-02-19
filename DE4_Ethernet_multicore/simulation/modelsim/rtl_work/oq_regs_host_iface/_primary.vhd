library verilog;
use verilog.vl_types.all;
entity oq_regs_host_iface is
    generic(
        SRAM_ADDR_WIDTH : integer := 13;
        CTRL_WIDTH      : integer := 8;
        UDP_REG_SRC_WIDTH: integer := 2;
        NUM_OUTPUT_QUEUES: integer := 8;
        NUM_OQ_WIDTH    : vl_notype;
        NUM_REGS_USED   : integer := 17;
        ADDR_WIDTH      : vl_notype
    );
    port(
        reg_req_in      : in     vl_logic;
        reg_ack_in      : in     vl_logic;
        reg_rd_wr_L_in  : in     vl_logic;
        reg_addr_in     : in     vl_logic_vector(22 downto 0);
        reg_data_in     : in     vl_logic_vector(31 downto 0);
        reg_src_in      : in     vl_logic_vector;
        reg_req_out     : out    vl_logic;
        reg_ack_out     : out    vl_logic;
        reg_rd_wr_L_out : out    vl_logic;
        reg_addr_out    : out    vl_logic_vector(22 downto 0);
        reg_data_out    : out    vl_logic_vector(31 downto 0);
        reg_src_out     : out    vl_logic_vector;
        req_in_progress : out    vl_logic;
        reg_rd_wr_L_held: out    vl_logic;
        reg_data_held   : out    vl_logic_vector(31 downto 0);
        addr            : out    vl_logic_vector;
        q_addr          : out    vl_logic_vector;
        result_ready    : in     vl_logic;
        reg_result      : in     vl_logic_vector(31 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SRAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of UDP_REG_SRC_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of NUM_REGS_USED : constant is 1;
    attribute mti_svvh_generic_type of ADDR_WIDTH : constant is 3;
end oq_regs_host_iface;
