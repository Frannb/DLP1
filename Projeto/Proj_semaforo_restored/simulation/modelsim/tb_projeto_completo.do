vcom -93 -work work {../../Proj_semaforo.vhd}
vsim work.proj_semaforo
do wave_projeto_completo.do

#add wave -position insertpoint  \
#sim:/proj_semaforo/clk50MHz \
#sim:/proj_semaforo/rst \
#sim:/proj_semaforo/Sensor_V1 \
#sim:/proj_semaforo/Sensor_V2 \
#sim:/proj_semaforo/Sensor_V3 \
#sim:/proj_semaforo/Foto_celula \
#sim:/proj_semaforo/B_ped1 \
#sim:/proj_semaforo/B_ped2 \
#sim:/proj_semaforo/Acende_faixa \
#sim:/proj_semaforo/bip1 \
#sim:/proj_semaforo/bip2 \
#sim:/proj_semaforo/R_pedestre \
#sim:/proj_semaforo/G_pedestre \
#sim:/proj_semaforo/R_veiculos \
#sim:/proj_semaforo/Y_veiculos \
#sim:/proj_semaforo/G_veiculos \
#sim:/proj_semaforo/SSD_U1 \
#sim:/proj_semaforo/SSD_D1 

force -freeze sim:/proj_semaforo/clk50MHz 1 0, 0 {500000000000 ps} -r {1 sec}
force -freeze sim:/proj_semaforo/rst 1 0
run
force -freeze sim:/proj_semaforo/rst 0 0
force -freeze sim:/proj_semaforo/Sensor_V1 1 0
force -freeze sim:/proj_semaforo/Sensor_V2 0 0
force -freeze sim:/proj_semaforo/Sensor_V3 0 0
force -freeze sim:/proj_semaforo/Foto_celula 1 0
force -freeze sim:/proj_semaforo/B_ped1 1 0
force -freeze sim:/proj_semaforo/B_ped2 0 0
run 10 sec
force -freeze sim:/proj_semaforo/B_ped1 0 0
run 1000 sec


