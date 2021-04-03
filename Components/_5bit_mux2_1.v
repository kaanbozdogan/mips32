module _5bit_mux2_1(out,sel,a,b);

input [4:0] a, b;
input sel;
output [4:0] out;

mux2_1 m1(out[0],sel,a[0],b[0]),
		m2(out[1],sel,a[1],b[1]),
		m3(out[2],sel,a[2],b[2]),
		m4(out[3],sel,a[3],b[3]),
		m5(out[4],sel,a[4],b[4]);

endmodule