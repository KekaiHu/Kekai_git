library verilog;
use verilog.vl_types.all;
entity np_core is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        UDP_REG_SRC_WIDTH: integer := 2;
        INPUT_ARBITER_STAGE_NUM: integer := 2;
        IO_QUEUE_STAGE_NUM: vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        NUM_OUTPUT_QUEUES: integer := 8;
        NUM_IQ_BITS     : integer := 3;
        STAGE_NUM       : integer := 4;
        CPU_QUEUE_NUM   : integer := 0
    );
    port(
        out_data        : out    vl_logic_vector;
        out_ctrl        : out    vl_logic_vector;
        out_wr          : out    vl_logic;
        out_rdy         : in     vl_logic;
        in_data         : in     vl_logic_vector;
        in_ctrl         : in     vl_logic_vector;
        in_wr           : in     vl_logic;
        in_rdy          : out    vl_logic;
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
        clk             : in     vl_logic;
        core_sp_clk     : in     vl_logic;
        statemac_clk    : in     vl_logic;
        reset           : in     vl_logic;
        instruction_sec_mon: out    vl_logic_vector(31 downto 0);
        prog_counter_sec_mon: out    vl_logic_vector(31 downto 0);
        ppu_mem_addr    : out    vl_logic_vector(31 downto 0);
        packet_drop     : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of UDP_REG_SRC_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of INPUT_ARBITER_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of IO_QUEUE_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of NUM_IQ_BITS : constant is 1;
    attribute mti_svvh_generic_type of STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of CPU_QUEUE_NUM : constant is 1;
end np_core;
