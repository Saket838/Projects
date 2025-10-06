module dmux_1x4(a,s,y);
input a;
input[1:0]s;
output [3:0]y;
assign y[0] = ~s[1] & ~s[0] & a;
assign y[1] = ~s[1] & s[0] & a;
assign y[2] = s[1] & ~s[0] & a;
assign y[3] = s[1] & s[0] & a;
endmodule
