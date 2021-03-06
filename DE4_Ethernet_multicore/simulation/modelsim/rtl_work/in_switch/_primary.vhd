library verilog;
use verilog.vl_types.all;
entity in_switch is
    generic(
        EMPTY_BUFF_LOOKUP: vl_logic_vector(0 to 1) := (Hi0, Hi0);
        EMPTY_BUFF_GRANT: vl_logic_vector(0 to 1) := (Hi0, Hi1);
        EMPTY_BUFF_WAIT1: vl_logic_vector(0 to 1) := (Hi1, Hi0);
        EMPTY_BUFF_WAIT2: vl_logic_vector(0 to 1) := (Hi1, Hi1);
        BYPASS_BUFF_LOOKUP: vl_logic_vector(0 to 1) := (Hi0, Hi0);
        BYPASS_BUFF_GRANT: vl_logic_vector(0 to 1) := (Hi0, Hi1);
        BYPASS_BUFF_WAIT1: vl_logic_vector(0 to 1) := (Hi1, Hi0);
        BYPASS_BUFF_WAIT2: vl_logic_vector(0 to 1) := (Hi1, Hi1);
        PORT_STATE_IDLE : vl_logic_vector(0 to 2) := (Hi0, Hi0, Hi1);
        PORT_STATE_BUFF_LOOKUP: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi0);
        PORT_STATE_BUFF_REQ: vl_logic_vector(0 to 2) := (Hi0, Hi1, Hi1);
        PORT_STATE_TX   : vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi0);
        PORT_STATE_CANCEL_BUFF_REQ: vl_logic_vector(0 to 2) := (Hi1, Hi0, Hi1)
    );
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        TRIG0           : out    vl_logic_vector(239 downto 0);
        in_data0        : in     vl_logic_vector(63 downto 0);
        in_pkt_route0   : in     vl_logic_vector(23 downto 0);
        in_wr0          : in     vl_logic;
        in_req0         : in     vl_logic;
        in_ack0         : out    vl_logic;
        in_bypass0      : in     vl_logic;
        in_data1        : in     vl_logic_vector(63 downto 0);
        in_pkt_route1   : in     vl_logic_vector(23 downto 0);
        in_wr1          : in     vl_logic;
        in_req1         : in     vl_logic;
        in_ack1         : out    vl_logic;
        in_bypass1      : in     vl_logic;
        in_data2        : in     vl_logic_vector(63 downto 0);
        in_pkt_route2   : in     vl_logic_vector(23 downto 0);
        in_wr2          : in     vl_logic;
        in_req2         : in     vl_logic;
        in_ack2         : out    vl_logic;
        in_bypass2      : in     vl_logic;
        in_data3        : in     vl_logic_vector(63 downto 0);
        in_pkt_route3   : in     vl_logic_vector(23 downto 0);
        in_wr3          : in     vl_logic;
        in_req3         : in     vl_logic;
        in_ack3         : out    vl_logic;
        in_bypass3      : in     vl_logic;
        pb_in_data0     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route0: out    vl_logic_vector(23 downto 0);
        pb_in_wr0       : out    vl_logic;
        pb_in_req0      : out    vl_logic;
        pb_in_ack0      : in     vl_logic;
        pb_in_empty0    : in     vl_logic;
        pb_in_data1     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route1: out    vl_logic_vector(23 downto 0);
        pb_in_wr1       : out    vl_logic;
        pb_in_req1      : out    vl_logic;
        pb_in_ack1      : in     vl_logic;
        pb_in_empty1    : in     vl_logic;
        pb_in_data2     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route2: out    vl_logic_vector(23 downto 0);
        pb_in_wr2       : out    vl_logic;
        pb_in_req2      : out    vl_logic;
        pb_in_ack2      : in     vl_logic;
        pb_in_empty2    : in     vl_logic;
        pb_in_data3     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route3: out    vl_logic_vector(23 downto 0);
        pb_in_wr3       : out    vl_logic;
        pb_in_req3      : out    vl_logic;
        pb_in_ack3      : in     vl_logic;
        pb_in_empty3    : in     vl_logic;
        pb_in_data4     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route4: out    vl_logic_vector(23 downto 0);
        pb_in_wr4       : out    vl_logic;
        pb_in_req4      : out    vl_logic;
        pb_in_ack4      : in     vl_logic;
        pb_in_empty4    : in     vl_logic;
        pb_in_data5     : out    vl_logic_vector(63 downto 0);
        pb_in_pkt_route5: out    vl_logic_vector(23 downto 0);
        pb_in_wr5       : out    vl_logic;
        pb_in_req5      : out    vl_logic;
        pb_in_ack5      : in     vl_logic;
        pb_in_empty5    : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of EMPTY_BUFF_LOOKUP : constant is 1;
    attribute mti_svvh_generic_type of EMPTY_BUFF_GRANT : constant is 1;
    attribute mti_svvh_generic_type of EMPTY_BUFF_WAIT1 : constant is 1;
    attribute mti_svvh_generic_type of EMPTY_BUFF_WAIT2 : constant is 1;
    attribute mti_svvh_generic_type of BYPASS_BUFF_LOOKUP : constant is 1;
    attribute mti_svvh_generic_type of BYPASS_BUFF_GRANT : constant is 1;
    attribute mti_svvh_generic_type of BYPASS_BUFF_WAIT1 : constant is 1;
    attribute mti_svvh_generic_type of BYPASS_BUFF_WAIT2 : constant is 1;
    attribute mti_svvh_generic_type of PORT_STATE_IDLE : constant is 1;
    attribute mti_svvh_generic_type of PORT_STATE_BUFF_LOOKUP : constant is 1;
    attribute mti_svvh_generic_type of PORT_STATE_BUFF_REQ : constant is 1;
    attribute mti_svvh_generic_type of PORT_STATE_TX : constant is 1;
    attribute mti_svvh_generic_type of PORT_STATE_CANCEL_BUFF_REQ : constant is 1;
end in_switch;
