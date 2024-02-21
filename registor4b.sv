
module registor4b(input C,
input [3:0]D,
output [3:0]Q
);

//Clock signal will be add/sub


Dflop b1(C,D[0],Q[0]);
Dflop b2(C,D[1],Q[1]);
Dflop b3(C,D[2],Q[2]);
Dflop b4(C,D[3],Q[3]);

endmodule
