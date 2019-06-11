library verilog;
use verilog.vl_types.all;
entity timer is
    port(
        data1           : out    vl_logic_vector(3 downto 0);
        clk             : in     vl_logic;
        data2           : out    vl_logic_vector(3 downto 0);
        data4           : out    vl_logic_vector(3 downto 0);
        data5           : out    vl_logic_vector(3 downto 0);
        data7           : out    vl_logic_vector(3 downto 0);
        data8           : out    vl_logic_vector(3 downto 0)
    );
end timer;
