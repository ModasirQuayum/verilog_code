// Code your testbench here
// or browse Examples
module tb_comp;
  
  reg a,b;
  wire c,d,e;
  
  comparator c1( .c(c), .d(d),.e(e), .a(a), .b(b));
  
  initial begin
    $dumpvars;
    $dumpfile("dump.vcd");
    $monitor($time, "a=%b,b=%b,c=%b,d=%b,e=%b",a,b,c,d,e);
      #10 a=1'b0; b=1'b0; 
      #10 a=1'b1; b=1'b0;
      #10 a=1'b0; b=1'b1;
      #10 a=1'b1; b=1'b1;
    end
endmodule
