module half_adder(a,b,sum,carry);
  input a,b;
  output sum,carry;
  
  assign sum = a ^ b;
  assign carry = a & b;
endmodule

module full_adder(a_in,b_in,c_in,sum1,carry1);
  input a_in,b_in,c_in;
  output sum1,carry1;
  
  wire w1,w2,w3;
  
  half_adder one(.a(a_in),
             .b(b_in),
             .sum(w1),
             .carry(w2) );
  
  half_adder two(.a(w1),
                 .b(c_in),
                 .sum(sum1),
                 .carry(w3) );
  
  or a(carry1,w2,w3);
  
  
endmodule
