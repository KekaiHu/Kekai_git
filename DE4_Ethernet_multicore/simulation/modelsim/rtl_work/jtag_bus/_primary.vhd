library verilog;
use verilog.vl_types.all;
entity jtag_bus is
    generic(
        CPCI_NF2_ADDR_WIDTH: integer := 27;
        CPCI_NF2_DATA_WIDTH: integer := 32
    );
    port(
        jtag_rd_wr_L    : in     vl_logic;
        jtag_req        : in     vl_logic;
        jtag_addr       : in     vl_logic_vector;
        jtag_wr_data    : in     vl_logic_vector;
        jtag_rd_data    : out    vl_logic_vector;
        fifo_empty      : out    vl_logic;
        fifo_rd_en      : in     vl_logic;
        bus_rd_wr_L     : out    vl_logic;
        bus_addr        : out    vl_logic_vector;
        bus_wr_data     : out    vl_logic_vector;
        bus_rd_data     : in     vl_logic_vector;
        bus_rd_vld      : in     vl_logic;
        reset           : in     vl_logic;
        core_clk        : in     vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of CPCI_NF2_ADDR_WIDTH : constant is 1;
    attribute mti_svvh_generic_type of CPCI_NF2_DATA_WIDTH : constant is 1;
end jtag_bus;
