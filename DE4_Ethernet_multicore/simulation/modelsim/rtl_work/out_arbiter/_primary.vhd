library verilog;
use verilog.vl_types.all;
entity out_arbiter is
    generic(
        OA_STATE_IDLE   : vl_logic := Hi0;
        OA_STATE_TX     : vl_logic := Hi1
    );
    port(
        out_data        : out    vl_logic_vector(63 downto 0);
        out_ctrl        : out    vl_logic_vector(7 downto 0);
        out_wr          : out    vl_logic;
        out_rdy         : in     vl_logic;
        in_data0        : in     vl_logic_vector(63 downto 0);
        in_wr0          : in     vl_logic;
        in_req0         : in     vl_logic;
        in_ack0         : out    vl_logic;
        in_bop0         : in     vl_logic;
        in_eop0         : in     vl_logic;
        in_outrdy0      : out    vl_logic;
        in_data1        : in     vl_logic_vector(63 downto 0);
        in_wr1          : in     vl_logic;
        in_req1         : in     vl_logic;
        in_ack1         : out    vl_logic;
        in_bop1         : in     vl_logic;
        in_eop1         : in     vl_logic;
        in_outrdy1      : out    vl_logic;
        in_data2        : in     vl_logic_vector(63 downto 0);
        in_wr2          : in     vl_logic;
        in_req2         : in     vl_logic;
        in_ack2         : out    vl_logic;
        in_bop2         : in     vl_logic;
        in_eop2         : in     vl_logic;
        in_outrdy2      : out    vl_logic;
        in_data3        : in     vl_logic_vector(63 downto 0);
        in_wr3          : in     vl_logic;
        in_req3         : in     vl_logic;
        in_ack3         : out    vl_logic;
        in_bop3         : in     vl_logic;
        in_eop3         : in     vl_logic;
        in_outrdy3      : out    vl_logic;
        reg_req_in      : in     vl_logic;
        reg_ack_in      : in     vl_logic;
        reg_rd_wr_L_in  : in     vl_logic;
        reg_addr_in     : in     vl_logic_vector(22 downto 0);
        reg_data_in     : in     vl_logic_vector(31 downto 0);
        reg_src_in      : in     vl_logic_vector(1 downto 0);
        reg_req_out     : out    vl_logic;
        reg_ack_out     : out    vl_logic;
        reg_rd_wr_L_out : out    vl_logic;
        reg_addr_out    : out    vl_logic_vector(22 downto 0);
        reg_data_out    : out    vl_logic_vector(31 downto 0);
        reg_src_out     : out    vl_logic_vector(1 downto 0);
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of OA_STATE_IDLE : constant is 1;
    attribute mti_svvh_generic_type of OA_STATE_TX : constant is 1;
end out_arbiter;
