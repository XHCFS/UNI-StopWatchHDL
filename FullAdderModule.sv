
module FullAdderModule(

input add,sub,
input [15:0]in_final,
output [15:0]out_final, //output 
output reset
);

// Flow :
/*
Buttons are pressed-->signal1 module-->signal 01/11-->Clock opens for registors-->values are passed to adding digit 1:
*/
//defs 
//Temps
wire [3:0]q1T;
wire [3:0]q2T;
wire [3:0]qn1, qn1r, qn2, qn2r;

//signal 1
wire [1:0]signal_1;    
wire enableR1;
or(enableR1,add,sub);
Signal1 signal1(add,sub,signal_1);  

//signal 2
wire [1:0]signal_2;
wire increment,decrement,enableR2;
Signal2 signal2(increment,decrement,signal_1,enableR2,signal_2);

//Filling registors//
wire [15:0]in_temp;
registor16b R1(enableR1,in_final,in_temp);

//adding modules//

// 2min adder
digit1adder min1(signal_1[0],signal_1[1],in_temp[11:8],qn1,qn1r,increment,decrement); 

//1 min adder
digit2adder min2(signal_2[0],signal_2[1],signal_1[0],signal_1[1],in_temp[15:12],qn2,qn2r,reset);


// Gives output for preset and set signals that feed the loader into the flipflops
//16 bit output 
wire add_or_sub;
or(add_or_sub,add,sub);
and(out_final[0],add_or_sub,in_final[0]);
and(out_final[1],add_or_sub,in_final[1]);
and(out_final[2],add_or_sub,in_final[2]);
and(out_final[3],add_or_sub,in_final[3]);
and(out_final[4],add_or_sub,in_final[4]);
and(out_final[5],add_or_sub,in_final[5]);
and(out_final[6],add_or_sub,in_final[6]);
and(out_final[7],add_or_sub,in_final[7]);


and(out_final[8], add_or_sub,qn1[0]);
and(out_final[9], add_or_sub,qn1[1]);
and(out_final[10],add_or_sub,qn1[2]);
and(out_final[11],add_or_sub,qn1[3]);
and(out_final[12],add_or_sub,qn2[0]);
and(out_final[13],add_or_sub,qn2[1]);
and(out_final[14],add_or_sub,qn2[2]);
and(out_final[15],add_or_sub,qn2[3]);


endmodule
