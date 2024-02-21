module Signal2(

    input sA,sS,input [1:0]signal_button,        //Signal add/sub, button add/sub
    output reg2enable,output [1:0]signal      //clock, incerement , decrement
);
 


//Intialize the clock
wire c0,c1;
or(c0,signal_button[0],signal_button[1]);
or(c1,sA,sS);
xor(reg2enable,c0,c1);   //enable of 2nd registor

wire signal_t[1:0];
//creating signals
and(signal_t[1],sS,signal_button[1]);
and(signal_t[0],sA,signal_button[0]);


//converting signal to adding circuit logic
Signal1 fsignal(signal_t[0],signal_t[1],signal);

endmodule
