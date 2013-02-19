library verilog;
use verilog.vl_types.all;
entity packet_buffer is
    generic(
        BUFF_EMPTY      : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        BUFF_RECV_PKT   : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        BUFF_PROC_PKT   : vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        BUFF_SEND_REQ   : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        BUFF_SEND_PKT   : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1);
        BUFF_SEND_CANCEL: vl_logic_vector(0 to 2) := (Hi1, Hi1, Hi0)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        TRIG0           : out    vl_logic_vector(239 downto 0);
        in_data         : in     vl_logic_vector(63 downto 0);
        in_pkt_route    : in     vl_logic_vector(23 downto 0);
        in_wr           : in     vl_logic;
        in_empty        : out    vl_logic;
        in_req          : in     vl_logic;
        in_ack          : out    vl_logic;
        out_data        : out    vl_logic_vector(63 downto 0);
        out_pkt_route   : out    vl_logic_vector(23 downto 0);
        out_wr          : out    vl_logic;
        out_req         : out    vl_logic;
        out_ack         : in     vl_logic;
        out_neighbor    : out    vl_logic_vector(1 downto 0);
        out_bop         : out    vl_logic;
        out_eop         : out    vl_logic;
        out_rdy         : in     vl_logic;
        out_bypass      : out    vl_logic;
        proc_addr       : in     vl_logic_vector(10 downto 2);
        proc_data_in    : in     vl_logic_vector(31 downto 0);
        proc_data_out   : out    vl_logic_vector(31 downto 0);
        proc_we         : in     vl_logic;
        proc_req        : out    vl_logic;
        proc_done       : in     vl_logic;
        proc_done_repeat: in     vl_logic;
        proc_wr_pkt_len : in     vl_logic;
        proc_pkt_len    : in     vl_logic_vector(7 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of BUFF_EMPTY : constant is 1;
    attribute mti_svvh_generic_type of BUFF_RECV_PKT : constant is 1;
    attribute mti_svvh_generic_type of BUFF_PROC_PKT : constant is 1;
    attribute mti_svvh_generic_type of BUFF_SEND_REQ : constant is 1;
    attribute mti_svvh_generic_type of BUFF_SEND_PKT : constant is 1;
    attribute mti_svvh_generic_type of BUFF_SEND_CANCEL : constant is 1;
end packet_buffer;
