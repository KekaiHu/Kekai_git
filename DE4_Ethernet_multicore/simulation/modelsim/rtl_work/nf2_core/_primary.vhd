library verilog;
use verilog.vl_types.all;
entity nf2_core is
    generic(
        UDP_REG_SRC_WIDTH: integer := 2
    );
    port(
        control_port_address: in     vl_logic_vector(26 downto 0);
        control_port_read: in     vl_logic;
        control_port_readdata: out    vl_logic_vector(31 downto 0);
        control_port_write: in     vl_logic;
        control_port_writedata: in     vl_logic_vector(31 downto 0);
        control_port_waitrequest: out    vl_logic;
        gmac_tx_data_1_out: out    vl_logic_vector(7 downto 0);
        gmac_tx_dvld_1_out: out    vl_logic;
        gmac_tx_ack_1_out: in     vl_logic;
        end_of_packet_1_out: out    vl_logic;
        start_of_packet_1_out: out    vl_logic;
        gmac_rx_data_1_in: in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld_1_in: in     vl_logic;
        gmac_rx_frame_error_1_in: in     vl_logic;
        gmac_tx_data_2_out: out    vl_logic_vector(7 downto 0);
        gmac_tx_dvld_2_out: out    vl_logic;
        gmac_tx_ack_2_out: in     vl_logic;
        end_of_packet_2_out: out    vl_logic;
        start_of_packet_2_out: out    vl_logic;
        gmac_rx_data_2_in: in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld_2_in: in     vl_logic;
        gmac_rx_frame_error_2_in: in     vl_logic;
        gmac_tx_data_3_out: out    vl_logic_vector(7 downto 0);
        gmac_tx_dvld_3_out: out    vl_logic;
        gmac_tx_ack_3_out: in     vl_logic;
        end_of_packet_3_out: out    vl_logic;
        start_of_packet_3_out: out    vl_logic;
        gmac_rx_data_3_in: in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld_3_in: in     vl_logic;
        gmac_rx_frame_error_3_in: in     vl_logic;
        gmac_tx_data_0_out: out    vl_logic_vector(7 downto 0);
        gmac_tx_dvld_0_out: out    vl_logic;
        gmac_tx_ack_0_out: in     vl_logic;
        end_of_packet_0_out: out    vl_logic;
        start_of_packet_0_out: out    vl_logic;
        gmac_rx_data_0_in: in     vl_logic_vector(7 downto 0);
        gmac_rx_dvld_0_in: in     vl_logic;
        gmac_rx_frame_error_0_in: in     vl_logic;
        core_clk_int    : in     vl_logic;
        statemac_clk    : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of UDP_REG_SRC_WIDTH : constant is 1;
end nf2_core;
