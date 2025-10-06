module d_ff(d,clk,rst,q,qbar);
input d,clk,rst;
output reg q,qbar;
always @ (posedge clk or posedge rst)
begin
if (rst)
q <= 1'b0;
else
q <= d;
end
always @ (q)
qbar <= ~q;
endmodule
