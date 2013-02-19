library verilog;
use verilog.vl_types.all;
entity altgx_reconfig is
    port(
        offset_cancellation_reset: in     vl_logic;
        reconfig_clk    : in     vl_logic;
        reconfig_fromgxb: in     vl_logic_vector(16 downto 0);
        busy            : out    vl_logic;
        reconfig_togxb  : out    vl_logic_vector(3 downto 0)
    );
end altgx_reconfig;
