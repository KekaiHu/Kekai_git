library verilog;
use verilog.vl_types.all;
entity pci2net_16x60 is
    port(
        aclr            : in     vl_logic;
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(59 downto 0);
        rdreq           : in     vl_logic;
        wrreq           : in     vl_logic;
        almost_empty    : out    vl_logic;
        almost_full     : out    vl_logic;
        empty           : out    vl_logic;
        full            : out    vl_logic;
        q               : out    vl_logic_vector(59 downto 0);
        usedw           : out    vl_logic_vector(3 downto 0)
    );
end pci2net_16x60;
