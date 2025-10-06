`define m $fmonitor
`define f $finish
module d416_with_d38_tb();
reg x,y,z,e;
wire[15:0]d;
integer i,handle1;
d416_with_d38 dut (x,y,z,e,d);
task initialize;
{x,y,z,e} = 4'b0;
endtask
task inputs(input[3:0]k);
begin
{e,x,y,z} = k;
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
handle1 = $fopen("file1.txt");
initial
`m (handle1,$time, " Inputs  e = %b x = %b y = %b z = %b , Outputs d = %b",e,x,y,z,d);
initial
#650 `f;
endmodule 
