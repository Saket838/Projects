module dmux_1x2_tb();
reg a,s;
wire [1:0]y;
integer i;
dmux_1x2 dut (a,s,y);
task initialize;
{a,s} = 2'b0;
endtask
task inputs(input[1:0]k);
begin
{s,a} = k;
#10;
end
endtask
initial begin
initialize;
for(i = 0; i < 4; i = i+1) begin
inputs(i);
#10;
end
end
initial 
$monitor ($time, "inputs %b %b, outputs = %b",s,a,y);
initial
#100 $finish();
endmodule
