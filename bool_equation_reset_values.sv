module bool_equation_reset_values(input reset, reverse, add, signal,output index_reset);
    wire term1,term2;
    and(term1,reset,reverse);
    and(term2,add,signal);
    or(index_reset,term1,term2);
endmodule