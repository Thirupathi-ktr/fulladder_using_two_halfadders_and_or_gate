// Code your testbench here
// or browse Examples
module tb();
  reg a_in,b_in,c_in;
  wire sum1,carry1;
  
  full_adder dut(.a_in(a_in),
             .b_in(b_in),
             .c_in(c_in),
             .sum1(sum1),
             .carry1(carry1) );
  
  
  initial
    begin
      a_in=1'b0;b_in = 1'b0; c_in = 1'b0;
      #20;
      a_in=1'b1;b_in = 1'b0; c_in = 1'b0;
      #20;
      a_in=1'b0;b_in = 1'b1; c_in = 1'b0;
      #20;
      a_in=1'b0;b_in = 1'b0; c_in = 1'b1;
      #20;
      a_in=1'b0;b_in = 1'b1; c_in = 1'b1;
      #20;
      a_in=1'b1;b_in = 1'b1; c_in = 1'b0;
      #20;
      a_in=1'b0;b_in = 1'b0; c_in = 1'b0;
      #20;
      a_in=1'b1;b_in = 1'b1; c_in = 1'b1;
      #20;
    end
  
  initial
    begin
      $monitor("input a_in = %b,b_in =%b,c_in= %b,sum1 = %b,carry1 = %b",a_in,b_in,c_in,sum1,carry1);
    end
  initial
    begin
      $dumpfile("dump.vcd");
      $dumpvars(1);
    end
endmodule
  
