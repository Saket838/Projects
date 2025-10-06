module dff_to_jkff_tb();
reg j,k,clk,rst;
wire q,qbar;
dff_to_jkff dut (j,k,clk,rst,q,qbar);
initial begin
clk = 1'b0;
forever 
#5 clk = ~clk;
end
task initialize;
begin
j = 1'b0;
k = 1'b0;
rst = 1'b1;
end
endtask
task rst_dut;
begin
@ (negedge clk)
rst = 1'b1;
@ (negedge clk)
rst = 1'b0;
end
endtask
task inputs(input m,input n);
begin
@ (negedge clk)
j = m;
@ (negedge clk)
k = n;
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
inputs(1'b1,1'b0);
rst_dut;
end
initial #200 $finish();
endmodule
