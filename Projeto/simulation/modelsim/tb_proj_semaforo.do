vcom -93 -work work {../../Proj_semaforo.vhd}
vsim work.proj_semaforo
do wave_proj.do

#add wave -position insertpoint sim:/proj_semaforo/*
#add wave -position end  sim:/proj_semaforo/C2/tempo_count
#add wave -position end  sim:/proj_semaforo/C2/pr_state
#add wave -position end  sim:/proj_semaforo/C2/count_saida
force -freeze sim:/proj_semaforo/rst 1 0
run

force -freeze sim:/proj_semaforo/rst 0 0
force -freeze sim:/proj_semaforo/clk50MHz 1 0, 0 {500000000000 ps} -r {1 sec}
force -freeze sim:/proj_semaforo/rst 0 0
force -freeze sim:/proj_semaforo/Sensor_V1 0 0
force -freeze sim:/proj_semaforo/Sensor_V2 0 0
force -freeze sim:/proj_semaforo/Sensor_V3 0 0
force -freeze sim:/proj_semaforo/Foto_celula 0 0
force -freeze sim:/proj_semaforo/B_ped1 0 0
run 1 sec
force -freeze sim:/proj_semaforo/B_ped1 1 0
run 91 sec
force -freeze sim:/proj_semaforo/B_ped1 0 0
run 958 sec
force -freeze sim:/proj_semaforo/Foto_celula 1 0
force -freeze sim:/proj_semaforo/Sensor_V1 1 0
force -freeze sim:/proj_semaforo/B_ped1 1 0
run 10 sec
force -freeze sim:/proj_semaforo/B_ped1 0 0
run 1318 sec



