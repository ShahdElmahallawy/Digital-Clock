module clock(input clk_100MHZ, reset, output [6:0] data, output reg[3:0]en);
//wire 1HZ output of the clock divider 
wire clk_1HZ; 
//output wire of BINS
wire[6:0] sec17seg;
wire [6:0] sec27seg;
wire [6:0] min17seg;    
wire [6:0] min27seg;
//wires for seconds & minutes
wire [3:0] sec1;
wire [2:0] sec2;
wire [3:0] min1;
wire [2:0] min2;
//wire of counters
wire [1:0] counters; 
wire clk_100HZ;
clockDivider #(50_000_000) C0(clk_100MHZ,reset,clk_1HZ);
clockDivider #(5000)cd1(clk_100MHZ, reset, clk_100HZ); 

sec_min_counter A(clk_1HZ,reset,sec1,sec2,min1,min2);

// assuming working correctly
bin4to7seg D1(sec1, sec17seg);
bin3to7seg D2(sec2, sec27seg);
bin4to7seg D3(min1, min17seg);
bin3to7seg D4(min2, min27seg);

counter2 B(clk_100HZ, reset, counters);
// assuming working correctly 
mux4x1 M(sec17seg,sec27seg,min17seg,min27seg,counters[0] ,counters[1] ,data);
// 
always @(*)
begin
 if (counters==2'b00)
en=4'b1110;
else if (counters==2'b01)
en=4'b1101;
else if (counters==2'b10)
en=4'b1011;
else if (counters ==2'b11)
en=4'b0111;
end// en = 15(1111) - (1 << counters)

endmodule
