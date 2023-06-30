* OpAMP testbench
.param mc_mm_switch=0
.param mc_pr_switch=0
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/r+c/res_typical__cap_typical__lin.spice
.include /mnt/tools4/open_pdks/sky130/sky130B/libs.tech/ngspice/corners/tt/specialized_cells.spice

.include ./opamp1.sp
*.include ./opamp.spice

X1 vdd vss in1 in2 out2 opamp



* v1  vdd gnd dc 1
* v2  vss gnd dc -1

* v3 in1 gnd sine(0 1m 60)
* v4 in2 gnd sine(0 -1m 60)


* .tran 1u 10m
* .control
* run
* plot v(out2)

* .endc
* .end



* * Circuit Bias
* v1  vdd gnd dc 1
* v2  vss gnd dc -1

* v3 in1 gnd ac 1
* v4 in2 gnd dc 0

* *Simulation Command
* .ac dec 101 1 1g

* * ngspice control statements
* .control
* run
* print allv > plot_data_v.txt
* print alli > plot_data_i.txt

* plot db(V(out2)/V(in1))
* plot 180/PI*phase(v(out2))

* let gain = db(V(out2)/V(in1))
* let phase = 180/PI*phase(v(out2))

* let max_gain = maximum(gain)
* print max_gain

* print gain > gain_values.txt
* print phase > phase_values.txt

* .endc

* .end






* Circuit Bias
v1  vdd gnd dc 1
v2  vss gnd dc -1

v3 in1 gnd PULSE(-1 1 0 0 0 1u 2u)
v4 in2 gnd dc 0

.tran 0.1u 10u


* ngspice control statements
.control

run
print allv > plot_data_v.txt
print alli > plot_data_i.txt

plot v(out2)
print v(out2) > output_v.txt

.endc


.end
