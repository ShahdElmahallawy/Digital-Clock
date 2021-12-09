
module bin3to7seg(input [2:0]binary, output reg [6:0]seg7);
always @(binary)
begin
if (binary==3'b000)
seg7=7'b0000001;
else if (binary ==3'b001)
seg7=7'b1001111;
else if (binary ==3'b010)
seg7=7'b0010010;
else if (binary ==3'b011)
seg7=7'b0000110;
else if (binary ==3'b100)
seg7=7'b1001100;
else if (binary ==3'b101)
seg7=7'b0100100;
end
endmodule

