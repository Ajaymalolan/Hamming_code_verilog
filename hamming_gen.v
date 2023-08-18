module hamming_gen(a,b);
  input [3:0]a;
  output reg [6:0]b;
  always @(a)
    begin
      b[0] <= a[0]^a[1]^a[3];
      b[1] <= a[0]^a[2]^a[3];
      b[2] <= a[0];
      b[3] <= a[1]^a[2]^a[3];
      b[4] <= a[1];
      b[5] <= a[2];
      b[6] <= a[3];
    end
endmodule
