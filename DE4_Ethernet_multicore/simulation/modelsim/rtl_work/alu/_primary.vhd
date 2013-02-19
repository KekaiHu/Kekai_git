library verilog;
use verilog.vl_types.all;
entity alu is
    port(
        a_in            : in     vl_logic_vector(31 downto 0);
        b_in            : in     vl_logic_vector(31 downto 0);
        alu_function    : in     vl_logic_vector(3 downto 0);
        c_alu           : out    vl_logic_vector(31 downto 0)
    );
end alu;
