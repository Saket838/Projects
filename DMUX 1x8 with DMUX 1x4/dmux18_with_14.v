module dmux18_with_14(a,s1,s0,e,y);
input a,s1,s0,e;
output[7:0]y;
not n1 (ne,e);
dmux_1x4 d1 (a,s1,s0,ne,y[0],y[1],y[2],y[3]);
dmux_1x4 d2 (a,s1,s0,e,y[4],y[5],y[6],y[7]);
endmodule
