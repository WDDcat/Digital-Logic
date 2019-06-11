library verilog;
use verilog.vl_types.all;
entity timer_vlg_check_tst is
    port(
        data1           : in     vl_logic_vector(3 downto 0);
        data2           : in     vl_logic_vector(3 downto 0);
        data4           : in     vl_logic_vector(3 downto 0);
        data5           : in     vl_logic_vector(3 downto 0);
        data7           : in     vl_logic_vector(3 downto 0);
        data8           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end timer_vlg_check_tst;
