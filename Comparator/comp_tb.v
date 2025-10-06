module comp_tb();
reg[1:0] a,b;
wire greater,equal,less;
integer i;
comp dut (a,b,greater,equal,less);
task initialize;
{a,b} = 4'b0;
endtask
task inputs(input[3:0]k);
begin
{a,b} = k;
#10;
end
endtask
initial begin
initialize;
for(i=0;i<16;i=i+1) begin
inputs(i);
#10;
end
end
initial
$monitor ($time, "inputs = %b %b,outputs = %b %b %b",a,b,greater,equal,less);
initial
#350 $finish();
endmodule
