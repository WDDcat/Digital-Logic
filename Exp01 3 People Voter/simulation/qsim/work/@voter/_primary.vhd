library verilog;
use verilog.vl_types.all;
entity Voter is
    port(
        A               : in     vl_logic;
        B               : in     vl_logic;
        C               : in     vl_logic;
        D               : in     vl_logic;
        F               : out    vl_logic
    );
end Voter;
