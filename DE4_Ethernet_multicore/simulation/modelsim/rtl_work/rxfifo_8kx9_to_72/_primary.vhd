library verilog;
use verilog.vl_types.all;
entity rxfifo_8kx9_to_72 is
    port(
        aclr            : in     vl_logic;
        data            : in     vl_logic_vector(8 downto 0);
        rdclk           : in     vl_logic;
        rdreq           : in     vl_logic;
        wrclk           : in     vl_logic;
        wrreq           : in     vl_logic;
        q               : out    vl_logic_vector(71 downto 0);
        rdempty         : out    vl_logic;
        wrfull          : out    vl_logic;
        wrusedw         : out    vl_logic_vector(14 downto 0)
    );
end rxfifo_8kx9_to_72;
