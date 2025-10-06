module d416_with_d38(x,y,z,e,d);
input x,y,z,e;
output[15:0]d;
not n (ne,e);
d38 d1 (x,y,z,ne,d[0],d[1],d[2],d[3],d[4],d[5],d[6],d[7]);
d38 d2 (x,y,z,e,d[8],d[9],d[10],d[11],d[12],d[13],d[14],d[15]);
endmodule