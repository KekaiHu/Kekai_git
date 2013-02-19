library verilog;
use verilog.vl_types.all;
entity mult is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        a               : in     vl_logic_vector(31 downto 0);
        b               : in     vl_logic_vector(31 downto 0);
        mult_func       : in     vl_logic_vector(3 downto 0);
        c_mult          : out    vl_logic_vector(31 downto 0);
        pause_out       : out    vl_logic
    );
end mult;
