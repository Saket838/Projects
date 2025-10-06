module as_mod10(t,clk,rst,q,qbar);
input[3:0]t;
input clk,rst;
output[3:0] q,qbar;
wire w1,w2;
t_ff t1 (t[0],clk,w1,q[0],qbar[0]);
t_ff t2 (t[1],q[0],w1,q[1],qbar[1]);
t_ff t3 (t[2],q[1],w1,q[2],qbar[2]);
t_ff t4 (t[3],q[2],w1,q[3],qbar[3]);
rst_logic r1 (qbar[1],qbar[2],qbar[3],w2);
assign w1 = rst | w2;
endmodule
