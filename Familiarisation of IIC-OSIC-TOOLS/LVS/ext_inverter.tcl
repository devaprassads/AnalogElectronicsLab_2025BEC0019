crashbackups stop
drc off
load /foss/designs/diglib/inv/inverter.mag
select top cell
extract path /foss/designs/diglib/inv
extract no capacitance
extract no coupling
extract no resistance
extract no length
extract all
ext2spice lvs
ext2spice -p /foss/designs/diglib/inv -o /foss/designs/diglib/inv/inverter.ext.spc
quit -noprompt
