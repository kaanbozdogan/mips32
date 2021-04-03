module extend(out,in,signExtend);

input [15:0] in;
input signExtend;
output [31:0] out;

wire andRes;

and and1(andRes,signExtend,in[15]);

assign out[31] = andRes;
assign out[30] = andRes;
assign out[29] = andRes;
assign out[28] = andRes;
assign out[27] = andRes;
assign out[26] = andRes;
assign out[25] = andRes;
assign out[24] = andRes;
assign out[23] = andRes;
assign out[22] = andRes;
assign out[21] = andRes;
assign out[20] = andRes;
assign out[19] = andRes;
assign out[18] = andRes;
assign out[17] = andRes;
assign out[16] = andRes;
assign out[15:0] = in[15:0];

endmodule