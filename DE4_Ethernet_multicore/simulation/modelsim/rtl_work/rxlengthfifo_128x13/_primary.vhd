library verilog;
use verilog.vl_types.all;
entity rxlengthfifo_128x13 is
    port(
        aclr            : in     vl_logic;
        data            : in     vl_logic_vector(14 downto 0);
        rdclk           : in     vl_logic;
        rdreq           : in     vl_logic;
        wrclk           : in     vl_logic;
        wrreq           : in     vl_logic;
        q               : out    vl_logic_vector(14 downto 0);
        rdempty         : out    vl_logic;
        wrfull          : out    vl_logic
    );
end rxlengthfifo_128x13;
