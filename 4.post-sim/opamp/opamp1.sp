.subckt opamp vdd gnd in1 in2 out2
xm1 node1 in1 node2 gnd sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm2 out1 in2 node2 gnd sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm3 node1 node1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
xm4 out1 node1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
xm5 node2 ref gnd gnd sky130_fd_pr__nfet_01v8 l=1 w=20 nf=2
xm6 ref ref gnd gnd sky130_fd_pr__nfet_01v8 l=1 w=10
xm7 out2 out1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=62.83 nf=2
xm8 out2 ref gnd gnd sky130_fd_pr__nfet_01v8 l=1 w=62.83 nf=2
xR1 vdd r1 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR2 r1 r2 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR3 r2 ref gnd sky130_fd_pr__res_high_po_0p69 l=20
.ends
