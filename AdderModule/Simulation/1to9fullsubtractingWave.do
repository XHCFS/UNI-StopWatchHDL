onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /digit1adder/add
add wave -noupdate /digit1adder/sub
add wave -noupdate /digit1adder/Q
add wave -noupdate /digit1adder/Qn
add wave -noupdate /digit1adder/QnR
add wave -noupdate /digit1adder/increment
add wave -noupdate /digit1adder/decrement
add wave -noupdate /digit1adder/high
add wave -noupdate /digit1adder/low
add wave -noupdate /digit1adder/b
add wave -noupdate /digit1adder/enable
add wave -noupdate /digit1adder/QnT
add wave -noupdate /digit1adder/QnT2
add wave -noupdate /digit1adder/QnRT2
add wave -noupdate /digit1adder/cout
add wave -noupdate /digit1adder/cin
add wave -noupdate /digit1adder/QnRT
add wave -noupdate /digit1adder/I10
add wave -noupdate /digit1adder/I11
add wave -noupdate /digit1adder/D0
add wave -noupdate /digit1adder/D1
add wave -noupdate /digit1adder/AddToMin
add wave -noupdate /digit1adder/TakeFromMin
add wave -noupdate /digit1adder/IorD
add wave -noupdate /digit1adder/nD0
add wave -noupdate /digit1adder/nD1
add wave -noupdate /digit1adder/logicQ4
add wave -noupdate /digit1adder/nI11
add wave -noupdate /digit1adder/logicQ0
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {944 ps} 0}
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
