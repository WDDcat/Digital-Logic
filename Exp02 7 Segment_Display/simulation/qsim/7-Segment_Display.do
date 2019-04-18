onerror {quit -f}
vlib work
vlog -work work 7-Segment_Display.vo
vlog -work work 7-Segment_Display.vt
vsim -novopt -c -t 1ps -L cycloneiv_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Seven_Segment_Display_vlg_vec_tst
vcd file -direction 7-Segment_Display.msim.vcd
vcd add -internal Seven_Segment_Display_vlg_vec_tst/*
vcd add -internal Seven_Segment_Display_vlg_vec_tst/i1/*
add wave /*
run -all
