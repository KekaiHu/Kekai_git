library verilog;
use verilog.vl_types.all;
entity hash_calculation is
    port(
        core_sp_clk     : in     vl_logic;
        instruction_sec_mon: in     vl_logic_vector(31 downto 0);
        read_address    : in     vl_logic_vector(13 downto 2);
        hash_int_ACK    : in     vl_logic;
        reset           : in     vl_logic;
        hash_value      : out    vl_logic_vector(3 downto 0);
        new_inst_signal : out    vl_logic
    );
end hash_calculation;
