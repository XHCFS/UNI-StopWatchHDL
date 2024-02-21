onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /Signal2/sA
add wave -noupdate /Signal2/sS
add wave -noupdate /Signal2/signal_button
add wave -noupdate /Signal2/reg2enable
add wave -noupdate /Signal2/signal
add wave -noupdate /Signal2/c0
add wave -noupdate /Signal2/c1
add wave -noupdate /Signal2/signal_t
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {384 ps} 0}
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
WaveRestoreZoom {0 ps} {1 ns}
