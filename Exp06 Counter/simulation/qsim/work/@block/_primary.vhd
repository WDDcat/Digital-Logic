library verilog;
use verilog.vl_types.all;
entity \Block\ is
    port(
        a               : out    vl_logic;
        clk             : in     vl_logic;
        clk_50mhz       : in     vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        ds              : out    vl_logic_vector(7 downto 0)
    );
end \Block\;
