 module cn_ff_tb();
reg c,n,clk,rst;
wire q,qbar;
cn_ff dut (c,n,clk,rst,q,qbar);
initial begin
clk = 1'b0;
forever
#5 clk = ~clk;
end
task initialize;
begin
c = 1'b0;
n = 1'b0;
rst = 1'b1;
end
endtask
task rst_dut;
begin
@ (negedge clk)
rst =1'b1;
@ (negedge clk)
rst = 1'b0;
end
endtask
task inputs(input a,input b);
begin
@ (negedge clk)
c = a;
@ (negedge clk)
n = b;
end
endtask
initial begin
initialize;
rst_dut;
inputs(1'b0,1'b1);
inputs(1'b1,1'b0);
inputs(1'b1,1'b1);
inputs(1'b0,1'b0);
inputs(1'b0,1'b1);
inputs(1'b0,1'b0);
inputs(1'b1,1'b1);
inputs(1'b1,1'b0);
rst_dut;
end
initial 
#200 $finish();
endmodule
