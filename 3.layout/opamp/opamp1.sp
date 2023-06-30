.param mc_mm_switch=0
.param mc_pr_switch=0
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt/specialized_cells.spice


*.subckt opamp vdd vss in1 in2 out2
* * Stage 1 - Differential amplifier
* xm1 net-_m1-pad1_ in1 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.89
* xm2 out1 in2 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.89
* xm3 net-_m1-pad1_ net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10.5
* xm4 out1 net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10.5

* * Current Mirror
* xm5 net-_m1-pad3_ ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=21
* xm6 ref ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=10.5

* * Stage 2 - PMOS Common Source Amplifier
* xm7 out2 out1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=62.79
* xm8 out2 ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=62.79


* Stage 1 - Differential amplifier
.subckt opamp vdd vss in1 in2 out2
xm1 net-_m1-pad1_ in1 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm2 out1 in2 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
xm3 net-_m1-pad1_ net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
xm4 out1 net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10

* Current Mirror
xm5 net-_m1-pad3_ ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=20 nf=2
xm6 ref ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=10

* Stage 2 - PMOS Common Source Amplifier
xm7 out2 out1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=62.83 nf=2
xm8 out2 ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=62.83 nf=2

* Circuit Bias
xR1 vdd r1 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR2 r1 r2 gnd sky130_fd_pr__res_high_po_0p69 l=40
xR3 r2 ref gnd sky130_fd_pr__res_high_po_0p69 l=20
* xR4 r3 r4 gnd sky130_fd_pr__res_high_po_0p69 l=20
* xR5 r4 ref gnd sky130_fd_pr__res_high_po_0p69 l=20
.ends

* x1 net-_m1-pad1_ in1 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
* + nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1
* x2 out1 in2 net-_m1-pad3_ net-_m1-pad3_ sky130_fd_pr__nfet_01v8 l=1 w=1.79
* + nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1
* x3 net-_m1-pad1_ net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
* + nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1
* x4 out1 net-_m1-pad1_ vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=10
* + nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1

* * Current Mirror
* x5 net-_m1-pad3_ ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=20 nf=2
* + ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1
* x6 ref ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=10
* + nf=1 ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1

* * Stage 2 - PMOS Common Source Amplifier
* x7 out2 out1 vdd vdd sky130_fd_pr__pfet_01v8 l=1 w=62.83 nf=2
* + ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1
* x8 out2 ref vss vss sky130_fd_pr__nfet_01v8 l=1 w=62.83 nf=2
* + ad='int((nf+1)/2) * W/nf * 0.29' as='int((nf+2)/2) * W/nf * 0.29' pd='2*int((nf+1)/2) * (W/nf + 0.29)'
* + ps='2*int((nf+2)/2) * (W/nf + 0.29)' nrd='0.29 / W' nrs='0.29 / W' sa=0 sb=0 sd=0 mult=1