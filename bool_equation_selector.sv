module bool_equation_selector(input reset, subtract, add, signal, selector );

    wire term1,term2;
    or(term1,subtract,add);
    and(term2,term1,signal);
    or(selector,term2,reset);


endmodule