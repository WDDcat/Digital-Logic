library verilog;
use verilog.vl_types.all;
entity Counter is
    port(
        RCO             : out    vl_logic;
        Q               : out    vl_logic_vector(7 downto 0);
        clk             : in     vl_logic
    );
end Counter;
