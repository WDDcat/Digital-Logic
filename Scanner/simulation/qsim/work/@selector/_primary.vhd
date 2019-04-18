library verilog;
use verilog.vl_types.all;
entity Selector is
    port(
        clk             : in     vl_logic;
        sel             : out    vl_logic_vector(7 downto 0)
    );
end Selector;
