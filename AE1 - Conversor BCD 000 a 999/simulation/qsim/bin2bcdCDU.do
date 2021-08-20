onerror {quit -f}
vlib work
vlog -work work bin2bcdCDU.vo
vlog -work work bin2bcdCDU.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.bin2bcdCDU_vlg_vec_tst
vcd file -direction bin2bcdCDU.msim.vcd
vcd add -internal bin2bcdCDU_vlg_vec_tst/*
vcd add -internal bin2bcdCDU_vlg_vec_tst/i1/*
add wave /*
run -all
