library verilog;
use verilog.vl_types.all;
entity bus_mux is
    port(
        imm_in          : in     vl_logic_vector(15 downto 0);
        reg_source      : in     vl_logic_vector(31 downto 0);
        a_mux           : in     vl_logic_vector(1 downto 0);
        a_out           : out    vl_logic_vector(31 downto 0);
        reg_target      : in     vl_logic_vector(31 downto 0);
        b_mux           : in     vl_logic_vector(1 downto 0);
        b_out           : out    vl_logic_vector(31 downto 0);
        c_bus           : in     vl_logic_vector(31 downto 0);
        c_memory        : in     vl_logic_vector(31 downto 0);
        c_pc            : in     vl_logic_vector(31 downto 0);
        c_pc_plus4      : in     vl_logic_vector(31 downto 0);
        c_mux           : in     vl_logic_vector(2 downto 0);
        reg_dest_out    : out    vl_logic_vector(31 downto 0);
        branch_func     : in     vl_logic_vector(2 downto 0);
        take_branch     : out    vl_logic
    );
end bus_mux;
