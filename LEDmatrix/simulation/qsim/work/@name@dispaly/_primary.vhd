library verilog;
use verilog.vl_types.all;
entity NameDispaly is
    port(
        Col             : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        Row             : out    vl_logic_vector(15 downto 0);
        clk_50mhz       : in     vl_logic
    );
end NameDispaly;
