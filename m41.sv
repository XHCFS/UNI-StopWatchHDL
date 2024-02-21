module m41(input i0,i1,i2,i3,s0,s1,
output Y);

  wire Y1, Y2;	//Output of both muxs
  m21 M1 (Y1,i0, i1, s0);	//Defined Y1
  m21 M2 (Y2,i2, i3, s0);	//Defines Y2
  m21 M3 (Y,Y1, Y2, s1);	//selects output depending on s1
endmodule
