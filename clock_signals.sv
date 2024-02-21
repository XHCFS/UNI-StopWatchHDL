module clock_signals(input clock,slow_down,speed_up,output out_clock);

//temp clock
reg clock_normal,clock_fast,clock_slow;
Normal_clock mode_normal(clock,clock_normal);
Sped_up_clock mode_fast(clock,clock_fast);
Slowed_down_clock mode_slow(clock,clock_slow);

m41 mode(clock_normal,clock_fast,clock_slow,clock_normal,speed_up,slow_down,out_clock);

endmodule