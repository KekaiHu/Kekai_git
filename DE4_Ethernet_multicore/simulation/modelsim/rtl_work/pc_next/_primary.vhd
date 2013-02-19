library verilog;
use verilog.vl_types.all;
entity pc_next is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pc_new          : in     vl_logic_vector(31 downto 2);
        take_branch     : in     vl_logic;
        pause_in        : in     vl_logic;
        opcode25_0      : in     vl_logic_vector(25 downto 0);
        pc_source       : in     vl_logic_vector(1 downto 0);
        pc_out          : out    vl_logic_vector(31 downto 0);
        pc_out_plus4    : out    vl_logic_vector(31 downto 0);
        pc_out_next32   : out    vl_logic_vector(31 downto 0)
    );
end pc_next;
