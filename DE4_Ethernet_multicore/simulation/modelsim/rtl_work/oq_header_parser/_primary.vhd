library verilog;
use verilog.vl_types.all;
entity oq_header_parser is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        OP_LUT_STAGE_NUM: integer := 4;
        IOQ_STAGE_NUM   : vl_logic_vector(0 to 7) := (Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1, Hi1);
        NUM_OUTPUT_QUEUES: integer := 8;
        NUM_OQ_WIDTH    : vl_notype;
        MAX_PKT         : integer := 2048;
        PKT_BYTE_CNT_WIDTH: vl_notype;
        PKT_WORD_CNT_WIDTH: vl_notype
    );
    port(
        parsed_dst_oq   : out    vl_logic_vector;
        parsed_pkt_byte_len: out    vl_logic_vector;
        parsed_pkt_word_len: out    vl_logic_vector;
        header_parser_rdy: out    vl_logic;
        dst_oq_avail    : out    vl_logic;
        rd_dst_oq       : in     vl_logic;
        in_wr           : in     vl_logic;
        in_ctrl         : in     vl_logic_vector;
        in_data         : in     vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of OP_LUT_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of IOQ_STAGE_NUM : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of NUM_OQ_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of MAX_PKT : constant is 1;
    attribute mti_svvh_generic_type of PKT_BYTE_CNT_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of PKT_WORD_CNT_WIDTH : constant is 3;
end oq_header_parser;
