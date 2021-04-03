module _32bit_ALU(res,zero,a,b,ctr);

input [31:0] a;
input [31:0] b;
input [2:0] ctr;
output [31:0] res;
output zero;

wire c1,c2,c3,c4,c5,c6,c7,c8,c9,c10,c11,c12,c13,c14,c15,c16,c17,c18,c19,c20,c21,c22,c23,c24,c25,c26,c27,c28,c29,c30,c31,c32;

wire o1,o2,o3,o4,o5,o6,o7,o8,o9,o10,o11,o12,o13,o14,o15,o16,o17,o18,o19,o20,o21,o22,o23,o24,o25,o26,o27,o28,o29,o30,o31;

wire overflow;

_1bit_ALU alu0(res[0], c1, a[0], b[0], ctr[2], ctr),
				alu1(res[1], c2, a[1], b[1], c1, ctr),
				alu2(res[2], c3, a[2], b[2], c2, ctr),
				alu3(res[3], c4, a[3], b[3], c3, ctr),
				alu4(res[4], c5, a[4], b[4], c4, ctr),
				alu5(res[5], c6, a[5], b[5], c5, ctr),
				alu6(res[6], c7, a[6], b[6], c6, ctr),
				alu7(res[7], c8, a[7], b[7], c7, ctr),
				alu8(res[8], c9, a[8], b[8], c8, ctr),
				alu9(res[9], c10, a[9], b[9], c9, ctr),
				alu10(res[10], c11, a[10], b[10], c10, ctr),
				alu11(res[11], c12, a[11], b[11], c11, ctr),
				alu12(res[12], c13, a[12], b[12], c12, ctr),
				alu13(res[13], c14, a[13], b[13], c13, ctr),
				alu14(res[14], c15, a[14], b[14], c14, ctr),
				alu15(res[15], c16, a[15], b[15], c15, ctr),
				alu16(res[16], c17, a[16], b[16], c16, ctr),
				alu17(res[17], c18, a[17], b[17], c17, ctr),
				alu18(res[18], c19, a[18], b[18], c18, ctr),
				alu19(res[19], c20, a[19], b[19], c19, ctr),
				alu20(res[20], c21, a[20], b[20], c20, ctr),
				alu21(res[21], c22, a[21], b[21], c21, ctr),
				alu22(res[22], c23, a[22], b[22], c22, ctr),
				alu23(res[23], c24, a[23], b[23], c23, ctr),
				alu24(res[24], c25, a[24], b[24], c24, ctr),
				alu25(res[25], c26, a[25], b[25], c25, ctr),
				alu26(res[26], c27, a[26], b[26], c26, ctr),
				alu27(res[27], c28, a[27], b[27], c27, ctr),
				alu28(res[28], c29, a[28], b[28], c28, ctr),
				alu29(res[29], c30, a[29], b[29], c29, ctr),
				alu30(res[30], c31, a[30], b[30], c30, ctr),
				alu31(res[31], c32, a[31], b[31], c31, ctr);
				
xor xor_overflow(overflow,c32,c31);

or or1(o1,res[0],res[1]),
	or2(o2,res[2],res[3]),
	or3(o3,res[4],res[5]),
	or4(o4,res[6],res[7]),
	or5(o5,res[8],res[9]),
	or6(o6,res[10],res[11]),
	or7(o7,res[12],res[13]),
	or8(o8,res[14],res[15]),
	or9(o9,res[16],res[17]),
	or10(o10,res[18],res[19]),
	or11(o11,res[20],res[21]),
	or12(o12,res[22],res[23]),
	or13(o13,res[24],res[25]),
	or14(o14,res[26],res[27]),
	or15(o15,res[28],res[29]),
	or16(o16,res[30],res[31]),
	
	or17(o17,o1,o2),
	or18(o18,o3,o4),
	or19(o19,o5,o6),
	or20(o20,o7,o8),
	or21(o21,o9,o10),
	or22(o22,o11,o12),
	or23(o23,o13,o14),
	or24(o24,o15,o16),
	
	or25(o25,o17,o18),
	or26(o26,o19,o20),
	or27(o27,o21,o22),
	or28(o28,o23,o24),
	
	or29(o29,o25,o26),
	or30(o30,o27,o28),
	
	or31(o31,o29,o30);

not n(zero,o31);


endmodule