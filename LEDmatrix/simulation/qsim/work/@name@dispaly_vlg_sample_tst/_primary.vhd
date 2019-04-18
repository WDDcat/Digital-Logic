library verilog;
use verilog.vl_types.all;
entity NameDispaly_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        clk_50mhz       : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end NameDispaly_vlg_sample_tst;
