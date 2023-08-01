// Code your design here
// 4x1 mux using 2x1 mux
module FourToOne_mux(y,s0,s1,d);
  output y;
  input s0,s1;
  input [3:0] d;
  wire w0,w1;
  
  TwoOne_mux mux1(w0,s0,d[0],d[1]);
  TwoOne_mux mux2(w1,s0,d[2],d[3]);
  TwoOne_mux mux3(y,s1,w0,w1);
  
  
endmodule



module TwoOne_mux(y,s,d0,d1);
  output y;
  input s,d0,d1;
  wire s0,w1,w2;
  
  not not_s(s0,s);
  and a1(w1,s0,d0);
  and a2(w2,s,d1);
  
  or result(y,w1,w2);
  
endmodule
