vlog -work work D:/16021019/Test01/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneiii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.Voter_vlg_vec_tst
onerror {resume}
add wave {Voter_vlg_vec_tst/i1/A}
add wave {Voter_vlg_vec_tst/i1/B}
add wave {Voter_vlg_vec_tst/i1/C}
add wave {Voter_vlg_vec_tst/i1/D}
add wave {Voter_vlg_vec_tst/i1/F}
run -all
