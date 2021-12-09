module bin_counter_nbits#(parameter n = 3)(input clk, reset, UpsDown, Inc, output reg [n-1:0]count);
always @(posedge clk, posedge reset) begin
 if (reset == 1)
 count <= 0; // non blocking assignment
 else
 count <= count + 1; // non blocking assignment
end
endmodule
