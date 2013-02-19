library verilog;
use verilog.vl_types.all;
entity tx_queue is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        ENABLE_HEADER   : integer := 0;
        STAGE_NUMBER    : integer := 255
    );
    port(
        in_data         : in     vl_logic_vector;
        in_ctrl         : in     vl_logic_vector;
        in_wr           : in     vl_logic;
        in_rdy          : out    vl_logic;
        gmac_tx_ack     : in     vl_logic;
        gmac_tx_dvld    : out    vl_logic;
        gmac_tx_data    : out    vl_logic_vector(7 downto 0);
        end_of_packet   : out    vl_logic;
        start_of_packet : out    vl_logic;
        tx_queue_en     : in     vl_logic;
        tx_pkt_sent     : out    vl_logic;
        tx_pkt_stored   : out    vl_logic;
        tx_pkt_byte_cnt : out    vl_logic_vector(11 downto 0);
        tx_pkt_word_cnt : out    vl_logic_vector(9 downto 0);
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        txcoreclk       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of ENABLE_HEADER : constant is 1;
    attribute mti_svvh_generic_type of STAGE_NUMBER : constant is 1;
end tx_queue;
