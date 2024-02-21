module boolean_count_mode(input start,output speed_up,slow_down);

wire not_start;
not(not_start,start);
and(speed_up,not_start);
and(slow_down,not_start);

endmodule