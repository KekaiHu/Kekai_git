library verilog;
use verilog.vl_types.all;
entity altgx_reconfig_alt2gxb_reconfig_v3p is
    port(
        busy            : out    vl_logic;
        offset_cancellation_reset: in     vl_logic;
        reconfig_clk    : in     vl_logic;
        reconfig_fromgxb: in     vl_logic_vector(16 downto 0);
        reconfig_togxb  : out    vl_logic_vector(3 downto 0)
    );
end altgx_reconfig_alt2gxb_reconfig_v3p;
