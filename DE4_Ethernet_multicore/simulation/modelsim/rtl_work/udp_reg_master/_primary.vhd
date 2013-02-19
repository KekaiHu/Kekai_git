library verilog;
use verilog.vl_types.all;
entity udp_reg_master is
    generic(
        SRC_ADDR        : integer := 0;
        TIMEOUT         : integer := 127;
        TIMEOUT_RESULT  : vl_logic_vector(31 downto 0) := (Hi1, Hi1, Hi0, Hi1, Hi1, Hi1, Hi1, Hi0, Hi1, Hi0, Hi1, Hi0, Hi1, Hi1, Hi0, Hi1, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0, Hi0);
        UDP_REG_SRC_WIDTH: integer := 2
    );
    port(
        core_reg_req    : in     vl_logic;
        core_reg_ack    : out    vl_logic;
        core_reg_rd_wr_L: in     vl_logic;
        core_reg_addr   : in     vl_logic_vector(22 downto 0);
        core_reg_rd_data: out    vl_logic_vector(31 downto 0);
        core_reg_wr_data: in     vl_logic_vector(31 downto 0);
        reg_req_out     : out    vl_logic;
        reg_ack_out     : out    vl_logic;
        reg_rd_wr_L_out : out    vl_logic;
        reg_addr_out    : out    vl_logic_vector(22 downto 0);
        reg_data_out    : out    vl_logic_vector(31 downto 0);
        reg_src_out     : out    vl_logic_vector;
        reg_req_in      : in     vl_logic;
        reg_ack_in      : in     vl_logic;
        reg_rd_wr_L_in  : in     vl_logic;
        reg_addr_in     : in     vl_logic_vector(22 downto 0);
        reg_data_in     : in     vl_logic_vector(31 downto 0);
        reg_src_in      : in     vl_logic_vector;
        clk             : in     vl_logic;
        reset           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of SRC_ADDR : constant is 1;
    attribute mti_svvh_generic_type of TIMEOUT : constant is 1;
    attribute mti_svvh_generic_type of TIMEOUT_RESULT : constant is 1;
    attribute mti_svvh_generic_type of UDP_REG_SRC_WIDTH : constant is 1;
end udp_reg_master;
