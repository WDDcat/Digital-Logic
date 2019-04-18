library verilog;
use verilog.vl_types.all;
entity Selector is
    port(
        \select\        : in     vl_logic_vector(2 downto 0);
        in5             : in     vl_logic_vector(3 downto 0);
        in6             : in     vl_logic_vector(3 downto 0);
        \out\           : out    vl_logic_vector(3 downto 0);
        en              : in     vl_logic
    );
end Selector;
