library verilog;
use verilog.vl_types.all;
entity mlite_cpu is
    port(
        clk             : in     vl_logic;
        reset_in        : in     vl_logic;
        intr_in         : in     vl_logic;
        mem_address     : out    vl_logic_vector(31 downto 0);
        mem_data_w      : out    vl_logic_vector(31 downto 0);
        mem_data_r      : in     vl_logic_vector(31 downto 0);
        mem_byte_sel    : out    vl_logic_vector(3 downto 0);
        mem_write       : out    vl_logic;
        mem_pause       : in     vl_logic;
        opcode_instruction: out    vl_logic_vector(31 downto 0);
        address_next_out: out    vl_logic_vector(31 downto 0);
        processor_reset_seq: out    vl_logic
    );
end mlite_cpu;
