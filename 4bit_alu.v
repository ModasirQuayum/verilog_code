// Code your design here
module alu_4bit(Out,A,B,op);
  
  output [3:0]Out;
  input [3:0]A,B;
  
  input [1:0]op;
  
  reg [3:0]Out;
  
  always @ (*)
    begin
      case(op)
        2'b00: Out=A+B;
        2'b01: Out=A-B;
        2'b10: Out=A*B;
        2'b11: Out=A/B;
      endcase
    end
endmodule
