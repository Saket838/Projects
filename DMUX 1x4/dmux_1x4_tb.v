
module dmux_1x4_tb();
reg a;
reg [1:0]s;
wire [3:0]y;
integer i;
dmux_1x4 dut (a,s,y);
task initialize;
{a,s} = 3'b0;
endtask
task inputs(input[2:0]k);
begin
{s,a} = k;
#10;
end
endtask
initial begin
initialize;
for(i = 0; i < 8; i = i+1) begin
inputs(i);
#10;
end
end
initial 
$monitor ($time, "inputs %b %b, outputs = %b",s,a,y);
initial
#350 $finish();
endmodule