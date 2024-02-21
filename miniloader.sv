module miniloader(input wire permit, value,output set,reset );

and(set,value,permit);
wire value_i;
not(value_i,value);
and(reset,value_i,permit);

endmodule