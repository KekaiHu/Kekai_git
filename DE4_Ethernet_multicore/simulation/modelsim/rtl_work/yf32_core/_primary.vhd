library verilog;
use verilog.vl_types.all;
entity yf32_core is
    port(
        CLK_I           : in     vl_logic;
        RST_I           : in     vl_logic;
        ADR_O           : out    vl_logic_vector(31 downto 0);
        DAT_I           : in     vl_logic_vector(31 downto 0);
        DAT_O           : out    vl_logic_vector(31 downto 0);
        WE_O            : out    vl_logic;
        SEL_O           : out    vl_logic_vector(3 downto 0);
        STB_O           : out    vl_logic;
        ACK_I           : in     vl_logic;
        CYC_O           : out    vl_logic;
        INT_I           : in     vl_logic;
        opcode_instruction: out    vl_logic_vector(31 downto 0);
        address_next_out: out    vl_logic_vector(31 downto 0);
        processor_reset_seq: out    vl_logic
    );
end yf32_core;
