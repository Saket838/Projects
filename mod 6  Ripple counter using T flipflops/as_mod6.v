module as_mod6(t,clk,rst,q,qbar);
input[2:0]t;
input clk,rst;
output [2:0] q,qbar;
wire w1,w2;
t_ff t1 (t[0],clk,w1,q[0],qbar[0]);
t_ff t2 (t[1],q[0],w1,q[1],qbar[1]);
t_ff t3 (t[2],q[1],w1,q[2],qbar[2]);
rst_logic r1 (qbar[1],qbar[2],w2);
assign w1 = rst | w2;
endmodule
