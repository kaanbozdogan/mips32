module ALUControl(out, aluop, func);

input [5:0] func;
input [1:0] aluop;
output [2:0] out;

wire wx1, wx2, wy1, wy2, wz1, wz2;

and ax1(wx1,~aluop[1],aluop[0]),
	ax2(wx2,func[1],~func[2],aluop[1],~aluop[0]);
or ox1(out[2],wx1,wx2);

or oy1(wy1,func[1],~func[2]);
and ay1(wy2,wy1,~aluop[0]);
or oy2(out[1],wy2,~aluop[1]);

and az1(wz1,func[1],func[2]);
or oz1(wz2,wz1,func[0],aluop[0]);
and az2(out[0],wz2,aluop[1]);
	

endmodule