// Code your testbench here
// or browse Examples
module tb_FourToOne_mux;
  
  reg s0,s1;
  reg [3:0]d;
  wire out;
  
  // instantiate
  FourToOne_mux mux4(.y(out), .s0(s0),.s1(s1), .d(d));
  initial 
    begin
      $dumpvars;
      $dumpfile("dump.vcd");
      $monitor($time,"S1=%b,S0=%b,D0=%b,D1=%b,D2=%b,D3=%b,OUTPUT=%b",s1,s0,d[0],d[1],d[2],d[3],out);
      
      #10 s0=1'b0;s1=1'b0; d[0]=1'b0;d[1]=1'b0;d[2]=1'b0;d[3]=1'b0;
      #10 s0=1'b0;s1=1'b0; d[0]=1'b1;d[1]=1'b0;d[2]=1'b0;d[3]=1'b0;
      #10 s0=1'b1;s1=1'b0; d[0]=1'b1;d[1]=1'b0;d[2]=1'b0;d[3]=1'b0;
      #10 s0=1'b1;s1=1'b0; d[0]=1'b1;d[1]=1'b1;d[2]=1'b0;d[3]=1'b0;
      #10 s0=1'b0;s1=1'b1; d[0]=1'b1;d[1]=1'b0;d[2]=1'b0;d[3]=1'b0;
      #10 s0=1'b0;s1=1'b1; d[0]=1'b1;d[1]=1'b1;d[2]=1'b1;d[3]=1'b0;
      #10 s0=1'b1;s1=1'b1; d[0]=1'b1;d[1]=1'b0;d[2]=1'b1;d[3]=1'b0;
      #10 s0=1'b1;s1=1'b1; d[0]=1'b0;d[1]=1'b0;d[2]=1'b0;d[3]=1'b1;
      
    end
endmodule
