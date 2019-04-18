library verilog;
use verilog.vl_types.all;
entity Block1_vlg_sample_tst is
    port(
        en              : in     vl_logic;
        in5             : in     vl_logic_vector(3 downto 0);
        in6             : in     vl_logic_vector(3 downto 0);
        \select\        : in     vl_logic_vector(2 downto 0);
        sampler_tx      : out    vl_logic
    );
end Block1_vlg_sample_tst;
