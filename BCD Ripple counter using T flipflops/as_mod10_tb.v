module as_mod10_tb();
reg[3:0] t;
reg clk,rst;
wire[3:0] q,qbar;
as_mod10 dut (t,clk,rst,q,qbar);
initial begin
clk = 1'b0;
forever 
#5 clk = ~clk;
end
task initialize;
begin
t = 4'b0;
rst = 1'b1;
end
endtask
task rst_dut;
begin
@ (posedge clk)
rst = 1'b1;
@ (posedge clk)
rst = 1'b0;
end
endtask
task inputs(input[3:0]k);
begin
@ (posedge clk)
t = k;
end
endtask
initial begin
initialize;
rst_dut;
inputs(4'b1111);
#250;
rst_dut;
end
initial
#500 $finish();
endmodule