module d38(a,b,c,d);
input a,b,c;
output [7:0]d;
assign d[0] = ~a & ~b & ~c;
assign d[1] =  ~a & ~b & c;
assign d[2] =  ~a & b & ~c;
assign d[3] = ~a & b & c;
assign d[4] =  a & ~b & ~c;
assign d[5] =  a & ~b & c;
assign d[6] = a & b & ~c;
assign d[7] =  a & b & c;
endmodule