module hamming_det_tb;
  reg [6:0]a;
  wire [6:0]c;
  wire [2:0]e;
  hamming_det x (.a(a),.e(e),.c(c));
  initial
    begin
      $dumpfile("correct.vcd");
      $dumpvars(1);
      a=7'b1011011;
      #10;
      $finish;
    end
endmodule
