// Code your testbench here
// or browse Examples
module tb_4alu;
  
  reg [3:0]a,b;
  reg [1:0]op;
  wire [3:0]out;
  
  alu_4bit a1(.Out(out), .A(a), .B(b), .op(op));
  
  initial
    begin
      
      $monitor($time,"op=%b,a=%b,b=%b,out=%b",op,a,b,out);
      
      #10 op=2'b00; a=4'b0101; b=4'b0011; // a=5, b=3
      #10 op=2'b01; a=4'b0101; b=4'b0011;
      #10 op=2'b10; a=4'b0101; b=4'b0011;
      #10 op=2'b11; a=4'b0101; b=4'b0011;
      
    end
endmodule
