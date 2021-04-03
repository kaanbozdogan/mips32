module _12bit_adder (S,C,A,B,C0);
input [11:0] A,B;
input C0;
output C;
output [11:0] S;
wire C1,C2,C3,C4,C5,C6,C7,C8,C9,C10,C11;

full_adder FA0(S[0], C1, A[0], B[0], C0),
				FA1(S[1], C2, A[1], B[1], C1),
				FA2(S[2], C3, A[2], B[2], C2),
				FA3(S[3], C4, A[3], B[3], C3),
				FA4(S[4], C5, A[4], B[4], C4),
				FA5(S[5], C6, A[5], B[5], C5),
				FA6(S[6], C7, A[6], B[6], C6),
				FA7(S[7], C8, A[7], B[7], C7),
				FA8(S[8], C9, A[8], B[8], C8),
				FA9(S[9], C10, A[9], B[9], C9),
				FA10(S[10], C11, A[10], B[10], C10),
				FA11(S[11], C, A[11], B[11], C11);
				
endmodule
 