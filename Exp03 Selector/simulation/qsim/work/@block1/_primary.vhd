library verilog;
use verilog.vl_types.all;
entity Block1 is
    port(
        a               : out    vl_logic;
        en              : in     vl_logic;
        in5             : in     vl_logic_vector(3 downto 0);
        in6             : in     vl_logic_vector(3 downto 0);
        \select\        : in     vl_logic_vector(2 downto 0);
        b               : out    vl_logic;
        c               : out    vl_logic;
        d               : out    vl_logic;
        e               : out    vl_logic;
        f               : out    vl_logic;
        g               : out    vl_logic;
        sel             : out    vl_logic
    );
end Block1;
