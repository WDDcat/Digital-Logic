library verilog;
use verilog.vl_types.all;
entity timer_vlg_sample_tst is
    port(
        clk             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end timer_vlg_sample_tst;
