library verilog;
use verilog.vl_types.all;
entity rom_shared is
    port(
        aclr            : in     vl_logic;
        address_a       : in     vl_logic_vector(11 downto 0);
        address_b       : in     vl_logic_vector(11 downto 0);
        clock           : in     vl_logic;
        rden_a          : in     vl_logic;
        rden_b          : in     vl_logic;
        q_a             : out    vl_logic_vector(31 downto 0);
        q_b             : out    vl_logic_vector(31 downto 0)
    );
end rom_shared;
