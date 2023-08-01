// Code your design here
// Gate LEVEL Design
module full_subtractor(Diff,Borr,a,b,in);
  output Diff,Borr;
  input a,b,in;
  wire w0,w1,w2,w3,w4;
  
  not n1(w0,a);
  xor n2(w1,a,b);
  xor n3(Diff,w1,in);
  xnor n4(w2,a,b);
  and  n5(w3,w2,in);
  and n6(w4,w0,b);
  or n7(Borr,w3,w4);
  
endmodule
