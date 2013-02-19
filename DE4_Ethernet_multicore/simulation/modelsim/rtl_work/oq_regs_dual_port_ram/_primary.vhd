library verilog;
use verilog.vl_types.all;
entity oq_regs_dual_port_ram is
    generic(
        REG_WIDTH       : integer := 32;
        NUM_OUTPUT_QUEUES: integer := 8;
        REG_FILE_ADDR_WIDTH: vl_notype
    );
    port(
        addr_a          : in     vl_logic_vector;
        we_a            : in     vl_logic;
        din_a           : in     vl_logic_vector;
        dout_a          : out    vl_logic_vector;
        clk_a           : in     vl_logic;
        addr_b          : in     vl_logic_vector;
        we_b            : in     vl_logic;
        din_b           : in     vl_logic_vector;
        dout_b          : out    vl_logic_vector;
        clk_b           : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of REG_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of NUM_OUTPUT_QUEUES : constant is 1;
    attribute mti_svvh_generic_type of REG_FILE_ADDR_WIDTH : constant is 3;
end oq_regs_dual_port_ram;
