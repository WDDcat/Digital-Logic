library verilog;
use verilog.vl_types.all;
entity Block_vlg_check_tst is
    port(
        co              : in     vl_logic;
        led             : in     vl_logic_vector(6 downto 0);
        sel             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block_vlg_check_tst;
