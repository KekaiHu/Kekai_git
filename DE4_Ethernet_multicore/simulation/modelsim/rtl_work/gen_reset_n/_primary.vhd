library verilog;
use verilog.vl_types.all;
entity gen_reset_n is
    generic(
        ctr_width       : integer := 20
    );
    port(
        tx_clk          : in     vl_logic;
        reset_n_in      : in     vl_logic;
        reset_n_out     : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of ctr_width : constant is 1;
end gen_reset_n;
