module mux4x1(input [6:0] a, b, c, d, input s0, s1, output[6:0] out);
// 11 d
//10 c
//01 b
//00 a

assign out= (s1)? ((s0)? d:c ): ((s0)? b:a) ;
endmodule
