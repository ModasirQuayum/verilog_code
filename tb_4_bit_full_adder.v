// Code your testbench here
// or browse Examples
module tb_fulladder;
  
  reg [3:0]a,b;
  reg c;
  wire [3:0]diff;
  wire borr;
  
  full_adder4bit f(.Sum(diff), .Carry(borr), .A(a), .B(b), .Cin(c) );
  initial
    begin 
      $monitor($time, "a=%b,b=%b,c=%b,Sum=%b,Carry=%b",a,b,c,diff,borr);
    
    #10 a=4'b0000; b=1'b0000; c=1'b0;
    #10 a=4'b0100; b=4'b0010; c=1'b1;
    #10 a=4'b0000; b=4'b0001; c=1'b0;
    #10 a=4'b0000; b=4'b0001; c=1'b1;
    #10 a=4'b1111; b=4'b1111; c=1'b1;

    end
endmodule
