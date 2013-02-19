library verilog;
use verilog.vl_types.all;
entity rx_queue is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        ENABLE_HEADER   : integer := 0;
        STAGE_NUMBER    : integer := 255;
        PORT_NUMBER     : integer := 0
    );
    port(
        out_data        : out    vl_logic_vector;
        out_ctrl        : out    vl_logic_vector;
        out_wr          : out    vl_logic;
        out_rdy         : in     vl_logic;
        gmac_rx_data    : in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld    : in     vl_logic;
        gmac_rx_goodframe: in     vl_logic;
        gmac_rx_badframe: in     vl_logic;
        rx_pkt_good     : out    vl_logic;
        rx_pkt_bad      : out    vl_logic;
        rx_pkt_dropped  : out    vl_logic;
        rx_pkt_byte_cnt : out    vl_logic_vector(11 downto 0);
        rx_pkt_word_cnt : out    vl_logic_vector(9 downto 0);
        rx_pkt_pulled   : out    vl_logic;
        rx_queue_en     : in     vl_logic;
        reset           : in     vl_logic;
        clk             : in     vl_logic;
        rxcoreclk       : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of ENABLE_HEADER : constant is 1;
    attribute mti_svvh_generic_type of STAGE_NUMBER : constant is 1;
    attribute mti_svvh_generic_type of PORT_NUMBER : constant is 1;
end rx_queue;
