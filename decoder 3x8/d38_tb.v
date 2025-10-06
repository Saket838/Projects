`define m $fmonitor
`define f $finish
module d38_tb();
reg[2:0]a;
reg e;
wire[7:0]d;
integer i,handle1;
d38 dut (a,e,d);
task initialize;
{a,e} = 4'b0;
endtask
task inputs(input[3:0]k);
begin
{e,a} = k;
#10;
end
endtask
initial begin
initialize;
for(i = 0; i < 16; i = i+1) begin
inputs(i);
#10;
end
$fclose(handle1);
end
initial 
handle1 = $fopen("file2.txt");
initial
`m (handle1,$time, " Inputs  e = %b a = %b, Outputs d = %b",e,a,d);
initial
#350 `f;
endmodule 
