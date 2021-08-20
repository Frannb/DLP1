transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/Proj_semaforo.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/divisor_clk.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/bin2bcd.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/bin2ssd.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/maq_semaforo.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/SensorN_vias.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/Sensor_faixa.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/Botao_ped.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/bin_bcd_ssd.vhd}
vcom -93 -work work {/home/aluno/pasta_remota/DLP_20_1/Projeto/Decrementador.vhd}

