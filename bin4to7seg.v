module bin4to7seg(input [3:0]binary, output reg [6:0]seg7); 
always @(binary)
begin
if (binary==4'b0000)
seg7=7'b0000001;
else if (binary ==4'b0001)
seg7=7'b1001111;
else if (binary ==4'b0010)
seg7=7'b0010010;
else if (binary ==4'b0011)
seg7=7'b0000110;
else if (binary ==4'b0100)
seg7=7'b1001100;
else if (binary ==4'b0101)
seg7=7'b0100100;
else if (binary ==4'b0110)
seg7=7'b0100000;
else if (binary ==4'b0111)
seg7=7'b0001111;
else if (binary ==4'b1000)
seg7=7'b0000000;
else if (binary ==4'b1001)
seg7=7'b0000100;
else
seg7=7'b1111111;
end
endmodule

