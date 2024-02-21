module bitAdder(input a,input b,input carryIn,output sum,output carryOut);
    assign {carryOut,sum}=carryIn+a+b;
endmodule
