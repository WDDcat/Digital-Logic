library verilog;
use verilog.vl_types.all;
entity Block_vlg_sample_tst is
    port(
        AA              : in     vl_logic_vector(3 downto 0);
        BB              : in     vl_logic_vector(3 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end Block_vlg_sample_tst;
