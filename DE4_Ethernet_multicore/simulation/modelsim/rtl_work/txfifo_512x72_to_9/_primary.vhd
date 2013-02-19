library verilog;
use verilog.vl_types.all;
entity txfifo_512x72_to_9 is
    port(
        aclr            : in     vl_logic;
        data            : in     vl_logic_vector(71 downto 0);
        rdclk           : in     vl_logic;
        rdreq           : in     vl_logic;
        wrclk           : in     vl_logic;
        wrreq           : in     vl_logic;
        q               : out    vl_logic_vector(8 downto 0);
        rdempty         : out    vl_logic;
        wrfull          : out    vl_logic;
        wrusedw         : out    vl_logic_vector(9 downto 0)
    );
end txfifo_512x72_to_9;
