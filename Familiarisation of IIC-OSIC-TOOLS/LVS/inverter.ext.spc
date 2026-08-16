* NGSPICE file created from inverter.ext - technology: sky130A

.subckt inverter VDD VSS A Y
X0 Y A VDD VDD sky130_fd_pr__pfet_01v8 ad=0.6 pd=3.2 as=0.6 ps=3.2 w=1 l=0.15
X1 Y A VSS VSS sky130_fd_pr__nfet_01v8 ad=0.6 pd=3.2 as=0.6 ps=3.2 w=1 l=0.15
.ends

