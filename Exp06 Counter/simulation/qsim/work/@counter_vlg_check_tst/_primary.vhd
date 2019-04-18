library verilog;
use verilog.vl_types.all;
entity Counter_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(7 downto 0);
        RCO             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Counter_vlg_check_tst;
