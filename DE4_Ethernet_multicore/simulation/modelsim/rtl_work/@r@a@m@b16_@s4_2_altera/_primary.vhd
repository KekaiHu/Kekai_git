library verilog;
use verilog.vl_types.all;
entity RAMB16_S4_2_altera is
    generic(
        init_file       : string  := ""
    );
    port(
        clock           : in     vl_logic;
        data            : in     vl_logic_vector(3 downto 0);
        rdaddress       : in     vl_logic_vector(11 downto 0);
        wraddress       : in     vl_logic_vector(11 downto 0);
        wren            : in     vl_logic;
        q               : out    vl_logic_vector(3 downto 0)
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of init_file : constant is 1;
end RAMB16_S4_2_altera;
