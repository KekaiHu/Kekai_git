library verilog;
use verilog.vl_types.all;
entity pipeline is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        a_bus           : in     vl_logic_vector(31 downto 0);
        a_busD          : out    vl_logic_vector(31 downto 0);
        b_bus           : in     vl_logic_vector(31 downto 0);
        b_busD          : out    vl_logic_vector(31 downto 0);
        alu_func        : in     vl_logic_vector(3 downto 0);
        alu_funcD       : out    vl_logic_vector(3 downto 0);
        shift_func      : in     vl_logic_vector(1 downto 0);
        shift_funcD     : out    vl_logic_vector(1 downto 0);
        mult_func       : in     vl_logic_vector(3 downto 0);
        mult_funcD      : out    vl_logic_vector(3 downto 0);
        reg_dest        : in     vl_logic_vector(31 downto 0);
        reg_destD       : out    vl_logic_vector(31 downto 0);
        rd_index        : in     vl_logic_vector(5 downto 0);
        rd_indexD       : out    vl_logic_vector(5 downto 0);
        rs_index        : in     vl_logic_vector(5 downto 0);
        rt_index        : in     vl_logic_vector(5 downto 0);
        pc_source       : in     vl_logic_vector(1 downto 0);
        mem_source      : in     vl_logic_vector(3 downto 0);
        a_source        : in     vl_logic_vector(1 downto 0);
        b_source        : in     vl_logic_vector(1 downto 0);
        c_source        : in     vl_logic_vector(2 downto 0);
        c_bus           : in     vl_logic_vector(31 downto 0);
        pause_any       : in     vl_logic;
        pause_pipeline  : out    vl_logic
    );
end pipeline;
