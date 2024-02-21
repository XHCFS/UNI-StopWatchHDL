module m21(Y, D0, D1, S);

output Y;
input D0, D1, S;
wire T1, T2, Sbar;	//T1 is D1 &  T2 is S' and D0

and (T1, D1, S);
and(T2, D0, Sbar);	//Defining T and T2
not (Sbar, S);	// S bar is complement of S
or (Y, T1, T2);		//Output Y if T1 or T2

endmodule