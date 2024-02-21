onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /digit2adder/add
add wave -noupdate /digit2adder/sub
add wave -noupdate /digit2adder/Q
add wave -noupdate /digit2adder/Qn
add wave -noupdate /digit2adder/QnR
add wave -noupdate /digit2adder/reset
add wave -noupdate /digit2adder/enable
add wave -noupdate /digit2adder/high
add wave -noupdate /digit2adder/low
add wave -noupdate /digit2adder/b
add wave -noupdate /digit2adder/QnT
add wave -noupdate /digit2adder/QnRT
add wave -noupdate /digit2adder/cout
add wave -noupdate /digit2adder/cin
add wave -noupdate /digit2adder/if5
add wave -noupdate /digit2adder/if0
add wave -noupdate /digit2adder/o50
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {861 ps} 0}
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
