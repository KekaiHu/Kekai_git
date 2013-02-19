library verilog;
use verilog.vl_types.all;
entity oq_regs_eval_full is
    generic(
        SRAM_ADDR_WIDTH : integer := 13;
        CTRL_WIDTH      : integer := 8;
        UDP_REG_SRC_WIDTH: integer := 2;
        NUM_OUTPUT_QUEUES: integer := 8;
        NUM_OQ_WIDTH    : vl_notype;
        PKT_LEN_WIDTH   : integer := 11;
        PKT_WORDS_WIDTH : vl_notype;
        MAX_PKT         : vl_notype;
        MIN_PKT         : vl_notype;
        PKTS_IN_RAM_WIDTH: vl_notype
    );
    port(
        dst_update      : in     vl_logic;
        dst_oq          : in     vl_logic_vector;
        dst_max_pkts_in_q: in     vl_logic_vector;
        dst_num_pkts_in_q: in     vl_logic_vector;
        dst_num_pkts_in_q_done: in     vl_logic;
        dst_oq_full_thresh: in     vl_logic_vector;
        dst_num_words_left: in     vl_logic_vector;
        dst_num_words_left_done: in     vl_logic;
        src_update      : in     vl_logic;
        src_oq          : in     vl_logic_vector;
        src_max_pkts_in_q: in     vl_logic_vector;
        src_num_pkts_in_q: in     vl_logic_vector;
        src_num_pkts_in_q_done: in     vl_logic;
        src_oq_full_thresh: in     vl_logic_vector;
        src_num_words_left: in     vl_logic_vector;
        src_num_words_left_done: in     vl_logic;
        initialize      : in     vl_logic;
        initialize_oq   : in     vl_logic_vector;
        full            : out    vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SRAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of UDP_REG_SRC_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of PKT_LEN_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PKT_WORDS_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of MAX_PKT : constant is 3;
    attribute mti_svvh_generic_type of MIN_PKT : constant is 3;
    attribute mti_svvh_generic_type of PKTS_IN_RAM_WIDTH : constant is 3;
end oq_regs_eval_full;
