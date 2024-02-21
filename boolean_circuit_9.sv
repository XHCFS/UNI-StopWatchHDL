module boolean_circuit_9(input wire R,Q4,Q3,Q2,Q1, output wire out);
    wire R_i,Q1_i,Q2_i,Q3_i,Q4_i;
    not (R_i, R);
    not (Q1_i, Q1);
    not (Q2_i, Q2);
    not (Q3_i, Q3);
    not (Q4_i, Q4);

    wire term1,term2,term3;
    and(term1,R_i,Q2,Q1);
    and(term2,R,Q4,Q1_i);
    and(term3,R,Q3,Q2_i,Q1_i);

    or(out,term1,term2,term3);

endmodule
