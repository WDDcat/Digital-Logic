library verilog;
use verilog.vl_types.all;
entity NameDispaly_vlg_check_tst is
    port(
        Col             : in     vl_logic_vector(3 downto 0);
        Row             : in     vl_logic_vector(15 downto 0);
        sampler_rx      : in     vl_logic
    );
end NameDispaly_vlg_check_tst;
