library verilog;
use verilog.vl_types.all;
entity FlowLED is
    port(
        clk             : in     vl_logic;
        reset           : in     vl_logic;
        \out\           : out    vl_logic_vector(7 downto 0)
    );
end FlowLED;
