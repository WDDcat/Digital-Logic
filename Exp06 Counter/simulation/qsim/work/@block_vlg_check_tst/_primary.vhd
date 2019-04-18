library verilog;
use verilog.vl_types.all;
entity Block_vlg_check_tst is
    port(
        a               : in     vl_logic;
        b               : in     vl_logic;
        c               : in     vl_logic;
        d               : in     vl_logic;
        ds              : in     vl_logic_vector(7 downto 0);
        e               : in     vl_logic;
        f               : in     vl_logic;
        g               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end Block_vlg_check_tst;
