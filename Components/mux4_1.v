module mux4_1(out,sel,m0,m1,m2,m3);

input m0, m1, m2, m3;
input [1:0] sel;
output out;

wire w1 ,w2;

mux2_1 mux1(w1,sel[0],m0,m1),
		mux2(w2,sel[0],m2,m3),
		mux3(out,sel[1],w1,w2);

endmodule