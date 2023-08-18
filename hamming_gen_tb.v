module hamming_gen_tb;
  reg [3:0]a;
  wire [6:0]b;
  hamming_gen x (.a(a),.b(b));
  initial
    begin
      $dumpfile("Hamming_gen.vcd");
      $dumpvars(1);
      a=4'b0000;
      #10
      a=4'b0001;
      #10
      a=4'b0010;
      #10
      a=4'b0011;
      #10
      a=4'b0100;
      #10
      a=4'b0101;
      #10
      a=4'b0110;
      #10
      a=4'b0111;
      #10
      a=4'b1000;
      #10
      a=4'b1001;
      #10
      a=4'b1010;
      #10
      a=4'b1011;
      #10
      a=4'b1100;
      #10
      a=4'b1101;
      #10
      a=4'b1110;
      #10
      a=4'b1111;
      $finish;
    end
endmodule
