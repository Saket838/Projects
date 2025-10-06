module fa_with_d38_tb();
reg a,b,cin;
wire s,c;
integer i;
fa_with_d38 dut (a,b,cin,s,c);
task initialize;
{a,b,cin} = 3'b0;
endtask
task inputs(input[2:0]k);
begin
{a,b,cin} = k;
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
$monitor ($time, "Inputs a = %b b = %b cin = %b,Outputs s = %b c = %b",a,b,cin,s,c);
initial
#300 $finish();
endmodule
