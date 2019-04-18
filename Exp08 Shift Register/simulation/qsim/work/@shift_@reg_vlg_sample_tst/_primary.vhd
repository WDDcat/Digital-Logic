library verilog;
use verilog.vl_types.all;
entity Shift_Reg_vlg_sample_tst is
    port(
        Din             : in     vl_logic_vector(7 downto 0);
        LorR            : in     vl_logic;
        Num             : in     vl_logic_vector(2 downto 0);
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Shift_Reg_vlg_sample_tst;
