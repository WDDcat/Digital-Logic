onerror {quit -f}
vlib work
vlog -work work FlowLED.vo
vlog -work work FlowLED.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.FlowLED_vlg_vec_tst
vcd file -direction FlowLED.msim.vcd
vcd add -internal FlowLED_vlg_vec_tst/*
vcd add -internal FlowLED_vlg_vec_tst/i1/*
add wave /*
run -all
