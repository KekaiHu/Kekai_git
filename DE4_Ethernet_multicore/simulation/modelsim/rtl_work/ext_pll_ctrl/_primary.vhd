library verilog;
use verilog.vl_types.all;
entity ext_pll_ctrl is
    port(
        osc_50          : in     vl_logic;
        rstn            : in     vl_logic;
        clk1_set_wr     : in     vl_logic_vector(3 downto 0);
        clk1_set_rd     : out    vl_logic_vector(3 downto 0);
        clk2_set_wr     : in     vl_logic_vector(3 downto 0);
        clk2_set_rd     : out    vl_logic_vector(3 downto 0);
        clk3_set_wr     : in     vl_logic_vector(3 downto 0);
        clk3_set_rd     : out    vl_logic_vector(3 downto 0);
        conf_wr         : in     vl_logic;
        conf_rd         : in     vl_logic;
        conf_ready      : out    vl_logic;
        max_sclk        : out    vl_logic;
        max_sdat        : inout  vl_logic
    );
end ext_pll_ctrl;
