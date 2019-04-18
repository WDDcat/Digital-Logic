onerror {quit -f}
vlib work
vlog -work work Shift_Register.vo
vlog -work work Shift_Register.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Shift_Reg_vlg_vec_tst
vcd file -direction Shift_Register.msim.vcd
vcd add -internal Shift_Reg_vlg_vec_tst/*
vcd add -internal Shift_Reg_vlg_vec_tst/i1/*
add wave /*
run -all
