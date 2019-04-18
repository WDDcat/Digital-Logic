library verilog;
use verilog.vl_types.all;
entity Encoder_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(3 downto 0);
        sel0            : in     vl_logic;
        sel1            : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Encoder_vlg_check_tst;
