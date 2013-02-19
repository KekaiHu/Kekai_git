library verilog;
use verilog.vl_types.all;
entity control is
    port(
        opcode          : in     vl_logic_vector(31 downto 0);
        intr_signal     : in     vl_logic;
        rs_index        : out    vl_logic_vector(5 downto 0);
        rt_index        : out    vl_logic_vector(5 downto 0);
        rd_index        : out    vl_logic_vector(5 downto 0);
        imm_out         : out    vl_logic_vector(15 downto 0);
        alu_func        : out    vl_logic_vector(3 downto 0);
        shift_func      : out    vl_logic_vector(1 downto 0);
        mult_func       : out    vl_logic_vector(3 downto 0);
        branch_func     : out    vl_logic_vector(2 downto 0);
        a_source_out    : out    vl_logic_vector(1 downto 0);
        b_source_out    : out    vl_logic_vector(1 downto 0);
        c_source_out    : out    vl_logic_vector(2 downto 0);
        pc_source_out   : out    vl_logic_vector(1 downto 0);
        mem_source_out  : out    vl_logic_vector(3 downto 0)
    );
end control;
