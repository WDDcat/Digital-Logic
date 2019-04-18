library verilog;
use verilog.vl_types.all;
entity Scanner is
    port(
        LA              : out    vl_logic;
        data1           : in     vl_logic_vector(3 downto 0);
        data2           : in     vl_logic_vector(3 downto 0);
        data3           : in     vl_logic_vector(3 downto 0);
        data4           : in     vl_logic_vector(3 downto 0);
        data5           : in     vl_logic_vector(3 downto 0);
        data6           : in     vl_logic_vector(3 downto 0);
        data7           : in     vl_logic_vector(3 downto 0);
        data8           : in     vl_logic_vector(3 downto 0);
        clk_hz          : in     vl_logic;
        LB              : out    vl_logic;
        LC              : out    vl_logic;
        LD              : out    vl_logic;
        LE              : out    vl_logic;
        LF              : out    vl_logic;
        LG              : out    vl_logic;
        DS1             : out    vl_logic;
        DS2             : out    vl_logic;
        DS3             : out    vl_logic;
        DS4             : out    vl_logic;
        DS5             : out    vl_logic;
        DS6             : out    vl_logic;
        DS7             : out    vl_logic;
        DS8             : out    vl_logic;
        \out\           : out    vl_logic_vector(3 downto 0);
        clk_50mhz       : in     vl_logic
    );
end Scanner;
