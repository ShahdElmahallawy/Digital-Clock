
module sec_min_counter(input clk, rst, output[3:0]sec1, [2:0]sec2, [3:0]min1,[2:0] min2 );
//clk, rst, en , output reg [n-1:0] count
Counter #(4,10) c1 (clk, rst, 1, sec1);// n bit counter, modulo m
Counter #(3,6) c2(clk, rst, sec1==9, sec2);
Counter #(4,10) c3(clk, rst, (sec1==9 & sec2==5) , min1);
Counter #(3,6) c4(clk, rst, (sec1==9 & sec2==5) & min1==9 , min2);

endmodule
