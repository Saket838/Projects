`include "file1.txt"
module d38 (a,e,d);
input[2:0] a;
input e;
output reg [7:0] d;
always @ (a or e)
begin
if (e == 1'b0);
d = 8'b00000000;
begin
case ({e,a})
`eight : d = 8'b00000001;
`nine : d = 8'b00000010;
`ten : d = 8'b00000100;
`eleven : d = 8'b00001000;
`twelve : d = 8'b00010000;
`thirteen : d = 8'b00100000;
`forteen : d = 8'b01000000;
`fifteen : d = 8'b10000000;
default : d = 8'b00000000;
endcase
end
end
endmodule
