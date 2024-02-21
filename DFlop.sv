//Following is the equivalent Verilog code sample for the flip-flop with a positive-edge clock.
module Dflop (C, D, Q);  
  input C, D;  
  output Q;  
  reg Q;  
 
  always @(posedge C)  
    begin  
      Q = D;  
    end  
endmodule 
