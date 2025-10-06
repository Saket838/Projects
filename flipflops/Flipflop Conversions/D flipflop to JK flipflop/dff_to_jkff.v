module dff_to_jkff(j,k,clk,rst,q,qbar);
input j,k,clk,rst;
output q,qbar;
wire d;
assign d = (qbar & j) | (~k & q);
d_ff d1 (d,clk,rst,q,qbar);
endmodule
