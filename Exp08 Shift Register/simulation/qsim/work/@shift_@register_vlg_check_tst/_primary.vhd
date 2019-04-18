library verilog;
use verilog.vl_types.all;
entity Shift_Register_vlg_check_tst is
    port(
        Dout            : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end Shift_Register_vlg_check_tst;
