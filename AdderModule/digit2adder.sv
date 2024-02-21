module digit2adder(input add,sub,
input [3:0]Q,
output [3:0]Qn,QnR,output reset);
//def var
wire enable,high,low;
or(enable,sub,add);
assign high=1;
assign low=0;
wire [3:0]b;

//temp varables
wire [3:0]QnT;
wire [3:0]QnRT;
not(QnRT[0],QnT[0]);
not(QnRT[1],QnT[1]);
not(QnRT[2],QnT[2]);
not(QnRT[3],QnT[3]);
//adding logic

 //Muxs to initialize bs
 m22 d0Mux(b[0],high,high,add,sub) ;
 m22 d1Mux(b[1],low,high,add,sub) ;
 m22 d2Mux(b[2],low,high,add,sub) ;
 m22 d3Mux(b[3],low,high,add,sub) ;



 //Adding using full adders

 wire cout;
 wire cin=low;
 full4adder Digit2(Q,b,cin,cout,QnT) ;   //QnT is the sum



//Value checking 
wire if5,if0,o50;
and(if5,QnT[0],QnRT[1],QnT[2],QnRT[3]); //0101
and(if0,QnRT[0],QnRT[1],QnRT[2],QnRT[3]); //0000
or(o50,if5,if0); //or both
and(reset,o50,enable)  ; //reset signal

//Output manipulations
m22 mQn0(Qn[0],QnT[0],low,enable,reset);  
m22 mQn1(Qn[1],QnT[1],low,enable,reset);   
m22 mQn2(Qn[2],QnT[2],low,enable,reset);
m22 mQn3(Qn[3],QnT[3],low,enable,reset);

//QnR
wire [3:0]nQn;
not(nQn[0],Qn[0]);
not(nQn[1],Qn[1]);
not(nQn[2],Qn[2]);
not(nQn[3],Qn[3]);

//not reset 
wire nreset;
not(nreset,reset);

//Intializing Qns
and(QnR[0],nQn[0],enable,nreset);
and(QnR[1],nQn[1],enable,nreset);
and(QnR[2],nQn[2],enable,nreset);
and(QnR[3],nQn[3],enable,nreset);


endmodule
