library verilog;
use verilog.vl_types.all;
entity store_pkt is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        NUM_OUTPUT_QUEUES: integer := 5;
        SRAM_ADDR_WIDTH : integer := 13;
        PKT_LEN_WIDTH   : integer := 11;
        PKT_WORDS_WIDTH : vl_notype;
        OQ_STAGE_NUM    : integer := 6;
        NUM_OQ_WIDTH    : vl_notype
    );
    port(
        dst_oq_avail    : in     vl_logic;
        parsed_dst_oq   : in     vl_logic_vector;
        parsed_pkt_byte_len: in     vl_logic_vector;
        parsed_pkt_word_len: in     vl_logic_vector;
        rd_dst_oq       : out    vl_logic;
        dst_oq_wr_addr_new: out    vl_logic_vector;
        pkt_stored      : out    vl_logic;
        pkt_dropped     : out    vl_logic;
        stored_pkt_data_length: out    vl_logic_vector;
        stored_pkt_overhead_length: out    vl_logic_vector;
        stored_pkt_total_word_length: out    vl_logic_vector;
        dst_oq          : out    vl_logic_vector;
        rd_dst_addr     : out    vl_logic;
        dst_oq_high_addr: in     vl_logic_vector;
        dst_oq_low_addr : in     vl_logic_vector;
        dst_oq_wr_addr  : in     vl_logic_vector;
        dst_oq_full     : in     vl_logic_vector;
        wr_0_addr       : out    vl_logic_vector;
        wr_0_req        : out    vl_logic;
        wr_0_ack        : in     vl_logic;
        wr_0_data       : out    vl_logic_vector;
        input_fifo_rd_en: out    vl_logic;
        input_fifo_empty: in     vl_logic;
        input_fifo_data_out: in     vl_logic_vector;
        input_fifo_ctrl_out: in     vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of SRAM_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PKT_LEN_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of PKT_WORDS_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of OQ_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
end store_pkt;
