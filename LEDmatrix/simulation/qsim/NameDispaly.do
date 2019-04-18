onerror {quit -f}
vlib work
vlog -work work NameDispaly.vo
vlog -work work NameDispaly.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.NameDispaly_vlg_vec_tst
vcd file -direction NameDispaly.msim.vcd
vcd add -internal NameDispaly_vlg_vec_tst/*
vcd add -internal NameDispaly_vlg_vec_tst/i1/*
add wave /*
run -all
