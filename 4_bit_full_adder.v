// Code your design here
// Full Adder using half adder
module full_adder4bit(Sum,Carry,A,B,Cin);
  output [3:0]Sum;
  output Carry;
  input [3:0]A,B;
  input Cin;
  
  wire w1,w2,w3;
  full_adder fa1(Sum[0],w1,A[0],B[0],Cin);
  full_adder fa2(Sum[1],w2,A[1],B[1],w1);
  full_adder fa3(Sum[2],w3,A[2],B[2],w2);
  full_adder fa4(Sum[3],Carry,A[3],B[3],w3);
endmodule
  

module full_adder(Sum,Carry,A,B,Cin);
  output Sum,Carry;
  input A,B,Cin;
  wire s1,c1,c2;
  
  half_adder h1(s1,c1,A,B);
  half_adder h2(Sum,c2,c1,Cin);
  or o1(Carry,c1,c2);
endmodule


module half_adder(Sum,Carry,A,B);
  
  input A, B;
  output Sum, Carry;
  
  xor x1(Sum, A, B);
  and a1(Carry, A, B);
  
endmodule
