library verilog;
use verilog.vl_types.all;
entity Seven_Segment_Display is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        a               : out    vl_logic;
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic
    );
end Seven_Segment_Display;
