onerror {quit -f}
vlib work
vlog -work work Proj_semaforo.vo
vlog -work work Proj_semaforo.vt
vsim -novopt -c -t 1ps -L cyclone_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.SensorN_vias_vlg_vec_tst
vcd file -direction Proj_semaforo.msim.vcd
vcd add -internal SensorN_vias_vlg_vec_tst/*
vcd add -internal SensorN_vias_vlg_vec_tst/i1/*
add wave /*
run -all
