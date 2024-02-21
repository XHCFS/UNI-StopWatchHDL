module m22(Y, D0, D1, S,S2);

output Y;
input D0, D1, S,S2;
wire T1, T2, S2bar;	//T1 is D1 &  T2 is S' and D0
not(S2bar,S2);		 // S2 bar is complement of S2
and (T1, D0, S,S2bar);		//D0 is S is high and S2 is low
and(T2, D1, S,S2);	//D1 is S and S2
	
or (Y, T1, T2);		//Output Y if T1 or T2

endmodule
