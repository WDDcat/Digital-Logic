library verilog;
use verilog.vl_types.all;
entity Scanner_vlg_sample_tst is
    port(
        clk_50mhz       : in     vl_logic;
        clk_hz          : in     vl_logic;
        data1           : in     vl_logic_vector(3 downto 0);
        data2           : in     vl_logic_vector(3 downto 0);
        data3           : in     vl_logic_vector(3 downto 0);
        data4           : in     vl_logic_vector(3 downto 0);
        data5           : in     vl_logic_vector(3 downto 0);
        data6           : in     vl_logic_vector(3 downto 0);
        data7           : in     vl_logic_vector(3 downto 0);
        data8           : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Scanner_vlg_sample_tst;
