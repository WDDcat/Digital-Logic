library verilog;
use verilog.vl_types.all;
entity Chooser_vlg_check_tst is
    port(
        data            : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Chooser_vlg_check_tst;
