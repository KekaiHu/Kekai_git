library verilog;
use verilog.vl_types.all;
entity pulse_synchronizer is
    port(
        pulse_in_clkA   : in     vl_logic;
        clkA            : in     vl_logic;
        pulse_out_clkB  : out    vl_logic;
        clkB            : in     vl_logic;
        reset_clkA      : in     vl_logic;
        reset_clkB      : in     vl_logic
    );
end pulse_synchronizer;
