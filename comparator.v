module comparator(c,d,e,a,b);
  
  output c,d,e;
  input a,b;
  
  assign c = ~a && b;
  assign d = ~((~a && b) || (a && ~b));
  assign e = a && ~b;
  
endmodule
