module comparator(out, in);

input [31:0] in;
output [31:0] out;
assign out [31:2] = 30'b000000000000000000000000000000;

wire zero;
wire [1:0] sel;

// least sig bit returns 1 if the value is smaller than 0, returns 0 if value is bigger than 0.
assign sel[0] = in[31];

// most sig bit returns 1 if the value equals to 0
or o(zero,
		in[0],
		in[1],
		in[2],
		in[3],
		in[4],
		in[5],
		in[6],
		in[7],
		in[8],
		in[9],
		in[10],
		in[11],
		in[12],
		in[13],
		in[14],
		in[15],
		in[16],
		in[17],
		in[18],
		in[19],
		in[20],
		in[21],
		in[22],
		in[23],
		in[24],
		in[25],
		in[26],
		in[27],
		in[28],
		in[29],
		in[30],
		in[31]);
		
not n(sel[1], zero);
		
				
_2bit_mux4_1 mux(out[1:0], sel, 2'b11, 2'b10, 2'b01, 2'b01);


endmodule