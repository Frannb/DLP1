onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Entradas
add wave -noupdate -color Blue /proj_semaforo/clk50MHz
add wave -noupdate -color Blue /proj_semaforo/rst
add wave -noupdate -color Blue /proj_semaforo/Sensor_V1
add wave -noupdate -color Blue /proj_semaforo/Sensor_V2
add wave -noupdate -color Blue /proj_semaforo/Sensor_V3
add wave -noupdate -color Blue /proj_semaforo/Foto_celula
add wave -noupdate -color Blue /proj_semaforo/Botao_pedestre
add wave -noupdate -divider Saidas
add wave -noupdate -expand -group Pedestre -color Cyan /proj_semaforo/Acende_faixa
add wave -noupdate -expand -group Pedestre -color {Medium Blue} /proj_semaforo/bip1
add wave -noupdate -expand -group Pedestre -color {Medium Blue} /proj_semaforo/bip2
add wave -noupdate -expand -group Pedestre -color Red /proj_semaforo/R_pedestre
add wave -noupdate -expand -group Pedestre -color {Lime Green} /proj_semaforo/G_pedestre
add wave -noupdate -expand -group Veiculo -color Red /proj_semaforo/R_veiculos
add wave -noupdate -expand -group Veiculo -color Gold /proj_semaforo/Y_veiculos
add wave -noupdate -expand -group Veiculo -color {Lime Green} /proj_semaforo/G_veiculos
add wave -noupdate -color Blue /proj_semaforo/SSD_U
add wave -noupdate -color Blue /proj_semaforo/SSD_D
add wave -noupdate -color Blue /proj_semaforo/C2/pr_state
add wave -noupdate -color Blue -radix unsigned /proj_semaforo/C2/count_saida
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2720000000000100 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 166
configure wave -valuecolwidth 40
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {2326780702265623 ps} {3442801015670336 ps}
