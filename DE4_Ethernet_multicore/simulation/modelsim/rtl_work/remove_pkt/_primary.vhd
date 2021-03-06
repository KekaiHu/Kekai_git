library verilog;
use verilog.vl_types.all;
entity remove_pkt is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        NUM_OUTPUT_QUEUES: integer := 8;
        SRAM_ADDR_WIDTH : integer := 13;
        OQ_STAGE_NUM    : integer := 6;
        OP_LUT_STAGE_NUM: integer := 4;
        IOQ_STAGE_NUM   : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        PKT_LEN_WIDTH   : integer := 11;
        PKT_WORDS_WIDTH : vl_notype;
        NUM_OQ_WIDTH    : vl_notype
    );
    port(
        rd_0_ack        : in     vl_logic;
        rd_0_data       : in     vl_logic_vector;
        rd_0_vld        : in     vl_logic;
        rd_0_addr       : out    vl_logic_vector;
        rd_0_req        : out    vl_logic;
        src_oq          : out    vl_logic_vector;
        rd_src_addr     : out    vl_logic;
        src_oq_rd_addr  : in     vl_logic_vector;
        src_oq_high_addr: in     vl_logic_vector;
        src_oq_low_addr : in     vl_logic_vector;
        src_oq_empty    : in     vl_logic_vector;
        src_oq_rd_addr_new: out    vl_logic_vector;
        pkt_removed     : out    vl_logic;
        removed_pkt_data_length: out    vl_logic_vector;
        removed_pkt_overhead_length: out    vl_logic_vector;
        removed_pkt_total_word_length: out    vl_logic_vector;
        removed_oq      : out    vl_logic_vector;
        enable_send_pkt : in     vl_logic_vector;
        out_data_0      : out    vl_logic_vector;
        out_ctrl_0      : out    vl_logic_vector;
        out_rdy_0       : in     vl_logic;
        out_wr_0        : out    vl_logic;
        out_data_1      : out    vl_logic_vector;
        out_ctrl_1      : out    vl_logic_vector;
        out_rdy_1       : in     vl_logic;
        out_wr_1        : out    vl_logic;
        out_data_2      : out    vl_logic_vector;
        out_ctrl_2      : out    vl_logic_vector;
        out_rdy_2       : in     vl_logic;
        out_wr_2        : out    vl_logic;
        out_data_3      : out    vl_logic_vector;
        out_ctrl_3      : out    vl_logic_vector;
        out_rdy_3       : in     vl_logic;
        out_wr_3        : out    vl_logic;
        out_data_4      : out    vl_logic_vector;
        out_ctrl_4      : out    vl_logic_vector;
        out_rdy_4       : in     vl_logic;
        out_wr_4        : out    vl_logic;
        out_data_5      : out    vl_logic_vector;
        out_ctrl_5      : out    vl_logic_vector;
        out_wr_5        : out    vl_logic;
        out_rdy_5       : in     vl_logic;
        out_data_6      : out    vl_logic_vector;
        out_ctrl_6      : out    vl_logic_vector;
        out_wr_6        : out    vl_logic;
        out_rdy_6       : in     vl_logic;
        out_data_7      : out    vl_logic_vector;
        out_ctrl_7      : out    vl_logic_vector;
        out_wr_7        : out    vl_logic;
        out_rdy_7       : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of SRAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of OQ_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of OP_LUT_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of IOQ_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of PKT_LEN_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PKT_WORDS_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
end remove_pkt;
