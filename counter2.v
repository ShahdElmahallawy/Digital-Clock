
module counter2(input clk, reset, output reg [1:0]count);
always @(posedge clk, posedge reset)
 begin
 if (reset == 1)
 count <= 0; // non blocking assignment
 else
 count <= count + 1; // non blocking assignment
end
endmodule
