transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {D:/Git_Desktop_Files/Sistemas_Digitais/Aula2/mux.vhd}
vcom -93 -work work {D:/Git_Desktop_Files/Sistemas_Digitais/Aula2/somador_completo.vhd}
vcom -93 -work work {D:/Git_Desktop_Files/Sistemas_Digitais/Aula2/somador_nbits.vhd}
vcom -93 -work work {D:/Git_Desktop_Files/Sistemas_Digitais/Aula2/Aula2.vhd}

