v {xschem version=3.4.8RC file_version=1.3}
G {}
K {}
V {}
S {}
F {}
E {}
N -210 70 -210 85 {lab=0}
N -140 70 -140 85 {lab=0}
N -3.75 38.75 -3.75 61.25 {lab=0}
N -78.75 0 -60 0 {lab=Vin}
N -3.75 -56.25 -3.75 -38.75 {lab=Vdd}
N -140 -7.5 -140 10 {lab=Vin}
N -210 -11.25 -210 10 {lab=Vdd}
N 75 0 98.75 0 {lab=Vout}
C {/foss/designs/diglib/inv/inverter.sym} 20 0 0 0 {name=x1}
C {vsource.sym} -140 40 0 0 {name=Vin value=0 savecurrent=false}
C {vsource.sym} -210 40 0 0 {name=Vdd value=1.8 savecurrent=false}
C {gnd.sym} -3.75 61.25 0 0 {name=l1 lab=0}
C {gnd.sym} -140 85 0 0 {name=l2 lab=0}
C {gnd.sym} -210 85 0 0 {name=l3 lab=0}
C {lab_pin.sym} -3.75 -56.25 0 0 {name=p1 sig_type=std_logic lab=Vdd}
C {lab_pin.sym} -78.75 0 0 0 {name=p2 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -140 -7.5 1 0 {name=p3 sig_type=std_logic lab=Vin}
C {lab_pin.sym} -210 -11.25 1 0 {name=p4 sig_type=std_logic lab=Vdd
}
C {opin.sym} 98.75 0 0 0 {name=p5 lab=Vout
}
C {devices/code.sym} -100 120 0 0 {name=TT_MODELS
only_toplevel=true
format="tcleval( @value )"
value="
** opencircuitdesign pdks install
.lib $::SKYWATER_MODELS/sky130.lib.spice tt
"
spice_ignore=false}
C {devices/code_shown.sym} 80 90 0 0 {name=NGSPICE
only_toplevel=true
value="
.option savecurrents
.control
save all
dc Vin 0 1.8 0.1
plot v(Vin) v(Vout)
.endc
" }
