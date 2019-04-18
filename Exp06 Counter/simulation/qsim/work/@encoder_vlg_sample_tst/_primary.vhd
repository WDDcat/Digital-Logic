library verilog;
use verilog.vl_types.all;
entity Encoder_vlg_sample_tst is
    port(
        clk_50mhz       : in     vl_logic;
        num             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Encoder_vlg_sample_tst;
