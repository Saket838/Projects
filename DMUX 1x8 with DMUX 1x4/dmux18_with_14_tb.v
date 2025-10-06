module dmux18_with_14_tb();
reg a,s1,s0,e;
wire [7:0]y;
integer i;
dmux18_with_14 dut (a,s1,s0,e,y);
task initialize;
{a,s1,s0,e} = 4'b0;
endtask
task inputs(input[3:0]k);
begin
{e,s1,s0,a} = k;
#10;
end
endtask
initial begin
initialize;
for(i = 0; i < 16; i = i+1) begin
inputs(i);
#10;
end
end
initial 
$monitor ($time, "inputs %b %b %b %b, outputs = %b",e,s1,s0,a,y);
initial
#800 $finish();
endmodule