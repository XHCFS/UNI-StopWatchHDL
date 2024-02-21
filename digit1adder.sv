
module digit1adder (//Variable def
 input add, sub,
 input [3:0]Q,
 output [3:0]Qn,QnR,output increment,decrement); 

 wire high=1;
 wire low=0;
 wire [3:0]b;  //bs
 wire enable;
 or(enable,add,sub);

 //Muxs to initialize bs //0010 and 1110
 assign b[0]=low;
 or(b[1],add,sub);
 m22 d2Mux(b[2],low,high,add,sub) ;
 m22 d3Mux(b[3],low,high,add,sub) ;

 
 //Adding using full adders
 wire [3:0]QnT;  //Hold sum but not display it yet cause values will be manipulated
 wire[3:0]QnT2; //more temps
 wire[3:0]QnRT2;
 wire cout;
 wire cin=low;
 full4adder Digit1(Q,b,cin,cout,QnT) ;   //QnT is the sum

//intialize QnRT
wire [3:0]QnRT;
not(QnRT[0],QnT[0]);
not(QnRT[1],QnT[1]);
not(QnRT[2],QnT[2]);
not(QnRT[3],QnT[3]);

//Increment/decrement signal
wire I10,I11;   //When binary==10 and 11
and(I10,QnRT[0],QnT[1],QnRT[2],QnT[3]);  //1010
and(I11,QnT[0],QnT[1],QnRT[2],QnT[3]) ;     //1011
wire D0,D1;
and(D0,QnT[0],QnT[1],QnT[2],QnT[3]); //D0= 1-2=             1111
and(D1,QnRT[0],QnT[1],QnT[2],QnT[3]);  //D1= 0-2 = -2-->    1110 

//Increment / Decrement Signal using OR gates
wire AddToMin;
wire TakeFromMin;
wire IorD;


or(AddToMin,I10,I11);
or(TakeFromMin,D0,D1);
assign increment = AddToMin;
assign decrement = TakeFromMin;
or(IorD,AddToMin,TakeFromMin);
//other logic
wire nD0,nD1,logicQ4,nI11,logicQ0;
not(nD0,D0);
not(nD1,D1);
not(nI11,I11);
and(logicQ0,TakeFromMin,nI11,nD0);
and(logicQ4,nD1,IorD,nD0);

//Logic element to manipulate output
//output logic

 m22 mQn0(QnT2[0],QnT[0],low,enable,logicQ0);  //Will always pass QnT to Qn unless there is a I/D signal
 m22 mQn1(QnT2[1],QnT[1],low,enable,IorD);   //if reset is high all values are manipulated
 m22 mQn2(QnT2[2],QnT[2],low,enable,IorD);
 m22 mQn3(QnT2[3],QnT[3],low,enable,logicQ4);

and(Qn[0],enable,QnT2[0]);
and(Qn[1],enable,QnT2[1]);
and(Qn[2],enable,QnT2[2]);
and(Qn[3],enable,QnT2[3]);

not(QnRT2[0],Qn[0]);
not(QnRT2[1],Qn[1]);
not(QnRT2[2],Qn[2]);
not(QnRT2[3],Qn[3]);

//QnR//
and(QnR[0],enable,QnRT2[0]);
and(QnR[1],enable,QnRT2[1]);
and(QnR[2],enable,QnRT2[2]);
and(QnR[3],enable,QnRT2[3]);

endmodule 

