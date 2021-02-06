COMPILER=ghdl
SIM_VIEWER=gtkwave

SIM_OUTFILE := simulation.vcd

all: halfadder_tb

halfadder_tb: halfadder_tb.o
	$(COMPILER) -e halfadder_tb

halfadder_tb.o: halfadder_tb.vhdl halfadder.o
	$(COMPILER) -a halfadder_tb.vhdl

%.o: %.vhdl
	$(COMPILER) -a $<

simulate: halfadder_tb
	ghdl -r halfadder_tb --vcd=$(SIM_OUTFILE)

view: simulate
	gtkwave $(SIM_OUTFILE)

PHONY: simulate view
