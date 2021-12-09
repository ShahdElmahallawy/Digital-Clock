
module Counter #(parameter n=4, m=6) (input clk, rst, en , output reg [n-1:0] count); // n bit counter, modulo m
always@(posedge clk, posedge rst)
begin 
if (rst == 1)
count <= 0;
else
begin
    if (en ==1) 
    begin
        if (count == m-1)
        count<=0;
        else 
        count <=count+1;
    end
    else 
    count<=count;
end
end
endmodule 


