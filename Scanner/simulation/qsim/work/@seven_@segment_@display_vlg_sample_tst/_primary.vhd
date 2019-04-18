library verilog;
use verilog.vl_types.all;
entity Seven_Segment_Display_vlg_sample_tst is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Seven_Segment_Display_vlg_sample_tst;
