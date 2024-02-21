module lat(
  input wire enable,
  input wire in,
  output reg out
);
  initial out<=0;
  always @(*) begin
    if (enable) begin
      out <= in;
    end
  end
endmodule