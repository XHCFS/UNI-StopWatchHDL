

module full4adder (input [3:0] a,input [3:0] b,input cin,output cout,output [3:0] sum);
     
    wire c_out[2:0];
    bitAdder a1(a[0],b[0],cin,sum[0],c_out[0]);
    bitAdder a2(a[1],b[1],c_out[0],sum[1],c_out[1]);
    bitAdder a3(a[2],b[2],c_out[1],sum[2],c_out[2]);
    bitAdder a4(a[3],b[3],c_out[2],sum[3],cout);
endmodule