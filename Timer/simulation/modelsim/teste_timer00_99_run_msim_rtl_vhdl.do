transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/francin.b/DLP I (20-1)/Timer/teste_timer00_99.vhd}
vcom -93 -work work {/home/francin.b/DLP I (20-1)/Timer/div_clk.vhd}
vcom -93 -work work {/home/francin.b/DLP I (20-1)/Timer/contadorNbin.vhd}
vcom -93 -work work {/home/francin.b/DLP I (20-1)/Timer/bin2ssd.vhd}
vcom -93 -work work {/home/francin.b/DLP I (20-1)/Timer/bin2bcd_UD.vhd}

