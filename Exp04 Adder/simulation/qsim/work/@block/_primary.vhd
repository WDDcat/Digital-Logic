library verilog;
use verilog.vl_types.all;
entity \Block\ is
    port(
        co              : out    vl_logic;
        AA              : in     vl_logic_vector(3 downto 0);
        BB              : in     vl_logic_vector(3 downto 0);
        sel             : out    vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        led             : out    vl_logic_vector(6 downto 0)
    );
end \Block\;
