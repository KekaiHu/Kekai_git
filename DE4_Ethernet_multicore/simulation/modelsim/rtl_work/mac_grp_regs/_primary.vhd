library verilog;
use verilog.vl_types.all;
entity mac_grp_regs is
    generic(
        CTRL_WIDTH      : integer := 8
    );
    port(
        mac_grp_reg_req : in     vl_logic;
        mac_grp_reg_rd_wr_L: in     vl_logic;
        mac_grp_reg_addr: in     vl_logic_vector(15 downto 0);
        mac_grp_reg_wr_data: in     vl_logic_vector(31 downto 0);
        mac_grp_reg_rd_data: out    vl_logic_vector(31 downto 0);
        mac_grp_reg_ack : out    vl_logic;
        reset_MAC       : out    vl_logic;
        disable_crc_check: out    vl_logic;
        disable_crc_gen : out    vl_logic;
        enable_jumbo_rx : out    vl_logic;
        enable_jumbo_tx : out    vl_logic;
        rx_mac_en       : out    vl_logic;
        tx_mac_en       : out    vl_logic;
        rx_pkt_good     : in     vl_logic;
        rx_pkt_bad      : in     vl_logic;
        rx_pkt_dropped  : in     vl_logic;
        rx_pkt_byte_cnt : in     vl_logic_vector(11 downto 0);
        rx_pkt_word_cnt : in     vl_logic_vector(9 downto 0);
        rx_pkt_pulled   : in     vl_logic;
        rx_queue_en     : out    vl_logic;
        tx_queue_en     : out    vl_logic;
        tx_pkt_sent     : in     vl_logic;
        tx_pkt_stored   : in     vl_logic;
        tx_pkt_byte_cnt : in     vl_logic_vector(11 downto 0);
        tx_pkt_word_cnt : in     vl_logic_vector(9 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 1;
end mac_grp_regs;
