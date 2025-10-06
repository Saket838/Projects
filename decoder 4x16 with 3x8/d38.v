module d38(a,b,c,e,d0,d1,d2,d3,d4,d5,d6,d7);
input a,b,c,e;
output d0,d1,d2,d3,d4,d5,d6,d7;
assign d0 = e & ~a & ~b & ~c;
assign d1 = e & ~a & ~b & c;
assign d2 = e & ~a & b & ~c;
assign d3 = e & ~a & b & c;
assign d4 = e & a & ~b & ~c;
assign d5 = e & a & ~b & c;
assign d6 = e & a & b & ~c;
assign d7 = e & a & b & c;
endmodule