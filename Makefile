all:
	iverilog gshare_tb.v
	vvp a.out
	gtkwave sim.vcd ondas.gtkw 