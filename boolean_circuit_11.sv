


module boolean_circuit_11(input wire R,Q1,Q2,Q3,Q4, output wire out);
    wire R_i,Q1_i,Q2_i,Q3_i,Q4_i;
    not (R_i, R);
    not (Q1_i, Q1);
    not (Q2_i, Q2);
    not (Q3_i, Q3);
    not (Q4_i, Q4);

    wire term1,term2;
    and(term1,R_i,Q4,Q1);
    and(term2,R,Q4_i,Q3_i,Q2_i,Q1_i);

    or(out,term1,term2);

endmodule