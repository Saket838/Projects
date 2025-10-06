`include "file1.txt"
module d24 (a,e,d);
input[1:0]a;
input e;
output reg [3:0]d;
always @ (a or e)
begin
if (e == 1'b0)
d = 4'b0000;
begin
case({e,a})
`four : d = 4'b0001;
`five : d = 4'b0010;
`six : d = 4'b0100;
`seven : d = 4'b1000;
default : d = 4'b0000;
endcase
end
end
endmodule
