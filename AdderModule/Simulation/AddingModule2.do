onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /adderIC/q1
add wave -noupdate /adderIC/q2
add wave -noupdate /adderIC/add
add wave -noupdate /adderIC/sub
add wave -noupdate /adderIC/qn1
add wave -noupdate /adderIC/qn1r
add wave -noupdate /adderIC/qn2
add wave -noupdate /adderIC/qn2r
add wave -noupdate /adderIC/reset
add wave -noupdate /adderIC/q1T
add wave -noupdate /adderIC/q2T
add wave -noupdate /adderIC/signal_1
add wave -noupdate /adderIC/clock1
add wave -noupdate /adderIC/signal_2
add wave -noupdate /adderIC/increment
add wave -noupdate /adderIC/decrement
add wave -noupdate /adderIC/clock2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {48 ps} 0}
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
WaveRestoreZoom {0 ps} {1024 ps}
