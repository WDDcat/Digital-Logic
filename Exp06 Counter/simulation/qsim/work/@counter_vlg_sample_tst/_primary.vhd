library verilog;
use verilog.vl_types.all;
entity Counter_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Counter_vlg_sample_tst;
