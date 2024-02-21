
module Signal1(input add,sub,
                output [1:0]signal);
wire nadd,nsub;
not(nadd,add);

or(signal[0],add,sub);
and(signal[1],sub);
endmodule