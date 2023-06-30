
* .param mc_mm_switch=0
* .param mc_pr_switch=0
* .include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt.spice
* .include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
* .include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
* .include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt/specialized_cells.spice

.subckt opamp vdd vss gnd in1 in2 out2
xm1 net-_m1-pad1_ in1 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm2 out1 in2 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm3 net-_m1-pad1_ net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
xm4 out1 net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
xm5 net-_m1-pad3_ ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=20 nf=2
xm6 ref ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=10
xm7 out2 out1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=62.83 nf=2
xm8 out2 ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=62.83 nf=2
xR1 vdd r1 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR2 r1 r2 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR3 r2 ref gnd sky130_fd_pr__res_high_po_0p69 l=20

.ends
