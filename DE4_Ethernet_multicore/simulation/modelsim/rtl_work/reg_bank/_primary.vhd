library verilog;
use verilog.vl_types.all;
entity reg_bank is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        pause           : in     vl_logic;
        rs_index        : in     vl_logic_vector(5 downto 0);
        rt_index        : in     vl_logic_vector(5 downto 0);
        rd_index        : in     vl_logic_vector(5 downto 0);
        reg_source_out  : out    vl_logic_vector(31 downto 0);
        reg_target_out  : out    vl_logic_vector(31 downto 0);
        reg_dest_new    : in     vl_logic_vector(31 downto 0);
        intr_enable     : out    vl_logic
    );
end reg_bank;
