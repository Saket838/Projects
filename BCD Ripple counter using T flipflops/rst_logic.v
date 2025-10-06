module rst_logic(input b,c,d,output y);
assign y = ~d & (~b | ~c);
endmodule
