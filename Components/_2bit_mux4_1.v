module _2bit_mux4_1(out,sel,m0,m1,m2,m3);

input [1:0] m0, m1, m2, m3;
input [1:0] sel;
output [1:0] out;

wire w1 ,w2;

mux4_1 mux1(out[0], sel, m0[0], m1[0], m2[0], m3[0]),
		mux2(out[1], sel, m0[1], m1[1], m2[1], m3[1]);

endmodule