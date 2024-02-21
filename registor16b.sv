module registor16b(input C,
input [15:0]D,
output [15:0]Q
);

//Clock signal will be add/sub


Dflop b0(C,D[0],Q[0]);
Dflop b1(C,D[1],Q[1]);
Dflop b2(C,D[2],Q[2]);
Dflop b3(C,D[3],Q[3]);
Dflop b4(C,D[4],Q[4]);
Dflop b5(C,D[5],Q[5]);
Dflop b6(C,D[6],Q[6]);
Dflop b7(C,D[7],Q[7]);
Dflop b8(C,D[8],Q[8]);
Dflop b9(C,D[9],Q[9]);
Dflop b10(C,D[10],Q[10]);
Dflop b11(C,D[11],Q[11]);
Dflop b12(C,D[12],Q[12]);
Dflop b13(C,D[13],Q[13]);
Dflop b14(C,D[14],Q[14]);
Dflop b15(C,D[15],Q[15]);

endmodule