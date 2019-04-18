library verilog;
use verilog.vl_types.all;
entity Chooser_vlg_sample_tst is
    port(
        data1           : in     vl_logic_vector(3 downto 0);
        data2           : in     vl_logic_vector(3 downto 0);
        data3           : in     vl_logic_vector(3 downto 0);
        data4           : in     vl_logic_vector(3 downto 0);
        data5           : in     vl_logic_vector(3 downto 0);
        data6           : in     vl_logic_vector(3 downto 0);
        data7           : in     vl_logic_vector(3 downto 0);
        data8           : in     vl_logic_vector(3 downto 0);
        sel             : in     vl_logic_vector(7 downto 0);
        sampler_tx      : out    vl_logic
    );
end Chooser_vlg_sample_tst;
