library verilog;
use verilog.vl_types.all;
entity Encoder is
    port(
        clk_50mhz       : in     vl_logic;
        num             : in     vl_logic_vector(7 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        sel0            : out    vl_logic;
        sel1            : out    vl_logic
    );
end Encoder;
