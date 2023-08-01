// Code your testbench here
// or browse Examples

module tb_fullsubtractor;
  
  reg a,b,c;
  wire diff,borr;
  
  full_subtractor fs(.Diff(diff), .Borr(borr), .a(a), .b(b), .in(c) );
  initial
    begin 
      $monitor($time, "a=%b,b=%b,c=%b,diff=%b,borr=%b",a,b,c,diff,borr);
    
    #10 a=1'b0; b=1'b0; c=1'b0;
    #10 a=1'b0; b=1'b0; c=1'b1;
    #10 a=1'b0; b=1'b1; c=1'b0;
    #10 a=1'b0; b=1'b1; c=1'b1;
    #10 a=1'b1; b=1'b0; c=1'b0;
    #10 a=1'b1; b=1'b0; c=1'b1;
    #10 a=1'b1; b=1'b1; c=1'b0;
    #10 a=1'b1; b=1'b1; c=1'b1;
    end
endmodule
