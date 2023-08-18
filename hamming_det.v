module hamming_det(a,e,c);
  input [6:0]a;
  output [6:0]c;
  output [2:0]e;
      assign e[0] = a[0]^a[2]^a[4]^a[6];
      assign e[1] = a[1]^a[2]^a[5]^a[6];
      assign e[2] = a[3]^a[4]^a[5]^a[6];
      assign c[0] = (e == 3'b001) ? ~a[0] : a[0];
      assign c[1] = (e == 3'b010) ? ~a[1] : a[1];
      assign c[2] = (e == 3'b011) ? ~a[2] : a[2];
      assign c[3] = (e == 3'b100) ? ~a[3] : a[3];
      assign c[4] = (e == 3'b101) ? ~a[4] : a[4];
      assign c[5] = (e == 3'b110) ? ~a[5] : a[5];
      assign c[6] = (e == 3'b111) ? ~a[6] : a[6];
endmodule
