module cn_ff(c,n,clk,rst,q,qbar);
input c,n,clk,rst;
output reg q,qbar;
always @ (posedge clk)
begin
if(rst)
q <= 1'b0;
else begin
case({c,n})
2'b00 : q <= q;
2'b01 : q <= 1'b0;
2'b10 : q <= q;
2'b11 : q <= ~q;
endcase
end
end
always @ (q)
qbar = ~q;
endmodule
