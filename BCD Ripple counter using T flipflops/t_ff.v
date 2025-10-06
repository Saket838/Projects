module t_ff(t,clk,rst,q,qbar);
input t,clk,rst;
output reg q,qbar;
always @ (negedge clk or posedge rst)
begin
if (rst)
q <= 1'b0;
else begin
case(t)
1'b0 : q <= q;
1'b1 : q <= ~q;
default : q <= 1'bx;
endcase
end
end
always @ (q)
qbar = ~q;
endmodule
