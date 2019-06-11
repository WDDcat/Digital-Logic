library verilog;
use verilog.vl_types.all;
entity Scanner_vlg_check_tst is
    port(
        DS1             : in     vl_logic;
        DS2             : in     vl_logic;
        DS3             : in     vl_logic;
        DS4             : in     vl_logic;
        DS5             : in     vl_logic;
        DS6             : in     vl_logic;
        DS7             : in     vl_logic;
        DS8             : in     vl_logic;
        LA              : in     vl_logic;
        LB              : in     vl_logic;
        LC              : in     vl_logic;
        LD              : in     vl_logic;
        LE              : in     vl_logic;
        LF              : in     vl_logic;
        LG              : in     vl_logic;
        \out\           : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end Scanner_vlg_check_tst;
