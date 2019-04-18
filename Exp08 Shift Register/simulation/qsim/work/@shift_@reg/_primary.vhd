library verilog;
use verilog.vl_types.all;
entity Shift_Reg is
    port(
        clk             : in     vl_logic;
        Din             : in     vl_logic_vector(7 downto 0);
        Num             : in     vl_logic_vector(2 downto 0);
        LorR            : in     vl_logic;
        Dout            : out    vl_logic_vector(7 downto 0)
    );
end Shift_Reg;
