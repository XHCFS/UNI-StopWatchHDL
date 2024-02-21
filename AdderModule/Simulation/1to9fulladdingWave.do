onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /FullAdderModule/q1
add wave -noupdate /FullAdderModule/q2
add wave -noupdate /FullAdderModule/add
add wave -noupdate /FullAdderModule/sub
add wave -noupdate /FullAdderModule/qn1
add wave -noupdate /FullAdderModule/qn1r
add wave -noupdate /FullAdderModule/qn2
add wave -noupdate /FullAdderModule/qn2r
add wave -noupdate /FullAdderModule/reset
add wave -noupdate /FullAdderModule/q1T
add wave -noupdate /FullAdderModule/q2T
add wave -noupdate /FullAdderModule/signal_1
add wave -noupdate /FullAdderModule/enableR1
add wave -noupdate /FullAdderModule/signal_2
add wave -noupdate /FullAdderModule/increment
add wave -noupdate /FullAdderModule/decrement
add wave -noupdate /FullAdderModule/enableR2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {856 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {50 ps} {1050 ps}
