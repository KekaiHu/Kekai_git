library verilog;
use verilog.vl_types.all;
entity shifter is
    port(
        value           : in     vl_logic_vector(31 downto 0);
        shift_amount    : in     vl_logic_vector(4 downto 0);
        shift_func      : in     vl_logic_vector(1 downto 0);
        c_shift         : out    vl_logic_vector(31 downto 0)
    );
end shifter;
