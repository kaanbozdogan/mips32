module _32bit_mux2_1(out,sel,a,b);

input [31:0] a, b;
input sel;
output [31:0] out;

mux2_1 m1(out[0],sel,a[0],b[0]),
		m2(out[1],sel,a[1],b[1]),
		m3(out[2],sel,a[2],b[2]),
		m4(out[3],sel,a[3],b[3]),
		m5(out[4],sel,a[4],b[4]),
		m6(out[5],sel,a[5],b[5]),
		m7(out[6],sel,a[6],b[6]),
		m8(out[7],sel,a[7],b[7]),
		m9(out[8],sel,a[8],b[8]),
		m10(out[9],sel,a[9],b[9]),
		m11(out[10],sel,a[10],b[10]),
		m12(out[11],sel,a[11],b[11]),
		m13(out[12],sel,a[12],b[12]),
		m14(out[13],sel,a[13],b[13]),
		m15(out[14],sel,a[14],b[14]),
		m16(out[15],sel,a[15],b[15]),
		m17(out[16],sel,a[16],b[16]),
		m18(out[17],sel,a[17],b[17]),
		m19(out[18],sel,a[18],b[18]),
		m20(out[19],sel,a[19],b[19]),
		m21(out[20],sel,a[20],b[20]),
		m22(out[21],sel,a[21],b[21]),
		m23(out[22],sel,a[22],b[22]),
		m24(out[23],sel,a[23],b[23]),
		m25(out[24],sel,a[24],b[24]),
		m26(out[25],sel,a[25],b[25]),
		m27(out[26],sel,a[26],b[26]),
		m28(out[27],sel,a[27],b[27]),
		m29(out[28],sel,a[28],b[28]),
		m30(out[29],sel,a[29],b[29]),
		m31(out[30],sel,a[30],b[30]),
		m32(out[31],sel,a[31],b[31]);


endmodule