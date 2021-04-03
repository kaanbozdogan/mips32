module _12bit_mux2_1(out,sel,m0,m1);

input sel;
input [11:0] m0, m1;
output [11:0] out;

mux2_1 mux1(out[0], sel, m0[0], m1[0]),
		mux2(out[1], sel, m0[1], m1[1]),
		mux3(out[2], sel, m0[2], m1[2]),
		mux4(out[3], sel, m0[3], m1[3]),
		mux5(out[4], sel, m0[4], m1[4]),
		mux6(out[5], sel, m0[5], m1[5]),
		mux7(out[6], sel, m0[6], m1[6]),
		mux8(out[7], sel, m0[7], m1[7]),
		mux9(out[8], sel, m0[8], m1[8]),
		mux10(out[9], sel, m0[9], m1[9]),
		mux11(out[10], sel, m0[10], m1[10]),
		mux12(out[11], sel, m0[11], m1[11]);


endmodule