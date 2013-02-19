library verilog;
use verilog.vl_types.all;
entity pll_125_altpll is
    port(
        clk             : out    vl_logic_vector(9 downto 0);
        inclk           : in     vl_logic_vector(1 downto 0);
        locked          : out    vl_logic
    );
end pll_125_altpll;
