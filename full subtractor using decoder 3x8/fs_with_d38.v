module fs_with_d38(a,b,c,diff,borrow);
input a,b,c;
output diff,borrow;
wire[7:0] d;
d38 d1 (a,b,c,d);
or n1 (diff,d[1],d[2],d[4],d[7]);
or n2 (borrow,d[1],d[2],d[3],d[7]);
endmodule
