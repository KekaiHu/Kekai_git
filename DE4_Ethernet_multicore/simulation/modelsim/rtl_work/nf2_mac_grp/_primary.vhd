library verilog;
use verilog.vl_types.all;
entity nf2_mac_grp is
    generic(
        DATA_WIDTH      : integer := 64;
        CTRL_WIDTH      : vl_notype;
        ENABLE_HEADER   : integer := 0;
        STAGE_NUMBER    : integer := 255;
        PORT_NUMBER     : integer := 0
    );
    port(
        mac_grp_reg_req : in     vl_logic;
        mac_grp_reg_rd_wr_L: in     vl_logic;
        mac_grp_reg_addr: in     vl_logic_vector(15 downto 0);
        mac_grp_reg_wr_data: in     vl_logic_vector(31 downto 0);
        mac_grp_reg_rd_data: out    vl_logic_vector(31 downto 0);
        mac_grp_reg_ack : out    vl_logic;
        out_data        : out    vl_logic_vector;
        out_ctrl        : out    vl_logic_vector;
        out_wr          : out    vl_logic;
        out_rdy         : in     vl_logic;
        in_data         : in     vl_logic_vector;
        in_ctrl         : in     vl_logic_vector;
        in_wr           : in     vl_logic;
        in_rdy          : out    vl_logic;
        gmac_tx_data_out: out    vl_logic_vector(7 downto 0);
        gmac_tx_dvld_out: out    vl_logic;
        gmac_tx_ack_out : in     vl_logic;
        end_of_packet   : out    vl_logic;
        start_of_packet : out    vl_logic;
        gmac_rx_data_in : in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld_in : in     vl_logic;
        gmac_rx_frame_error_in: in     vl_logic;
        txgmiimiiclk    : in     vl_logic;
        rxgmiimiiclk    : in     vl_logic;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of DATA_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CTRL_WIDTH : constant is 3;
    attribute mti_svvh_generic_type of ENABLE_HEADER : constant is 1;
    attribute mti_svvh_generic_type of STAGE_NUMBER : constant is 1;
    attribute mti_svvh_generic_type of PORT_NUMBER : constant is 1;
end nf2_mac_grp;
