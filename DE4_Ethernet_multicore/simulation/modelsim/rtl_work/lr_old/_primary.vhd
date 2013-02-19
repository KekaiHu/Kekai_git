library verilog;
use verilog.vl_types.all;
entity lr_old is
    port(
        clk             : in     vl_logic;
        raddr           : in     vl_logic_vector(13 downto 2);
        waddr           : in     vl_logic_vector(13 downto 2);
        data_in         : in     vl_logic_vector(31 downto 0);
        data_out        : out    vl_logic_vector(31 downto 0);
        we              : in     vl_logic_vector(3 downto 0);
        reset           : in     vl_logic
    );
end lr_old;
