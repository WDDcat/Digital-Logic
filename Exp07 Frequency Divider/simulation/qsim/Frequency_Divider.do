onerror {quit -f}
vlib work
vlog -work work Frequency_Divider.vo
vlog -work work Frequency_Divider.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Frequency_Divider_vlg_vec_tst
vcd file -direction Frequency_Divider.msim.vcd
vcd add -internal Frequency_Divider_vlg_vec_tst/*
vcd add -internal Frequency_Divider_vlg_vec_tst/i1/*
add wave /*
run -all
