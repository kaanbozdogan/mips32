module control(RegDest,
					ALUSrc,
					MemtoReg,
					RegWrite,
					MemRead,
					MemWrite,
					beq,
					bne,
					j,
					jal,
					jr,
					newInst,
					SignExt,
					lui,
					ALUOP,
					op,
					func);
					
input [5:0] op, func;
output RegDest, ALUSrc, MemtoReg, RegWrite, MemRead, MemWrite, beq, bne, j, jal, jr, newInst, SignExt, lui;
output [1:0] ALUOP;

wire lw, sw, R, ori, lui;

and a1(lw, op[5], ~op[4], ~op[3], ~op[2], op[1], op[0]),
		a2(sw, op[5], ~op[4], op[3], ~op[2], op[1], op[0]),
		a3(j, ~op[5], ~op[4], ~op[3], ~op[2], op[1], ~op[0]),
		a4(jal, ~op[5], ~op[4], ~op[3], ~op[2], op[1], op[0]),
		a5(beq, ~op[5], ~op[4], ~op[3], op[2], ~op[1], ~op[0]),
		a6(bne, ~op[5], ~op[4], ~op[3], op[2], ~op[1], op[0]),
		a7(jr, ~func[5], ~func[4], func[3], ~func[2], ~func[1], ~func[0]), // differance with R type
		a8(R, ~op[5], ~op[4], ~op[3], ~op[2], ~op[1], ~op[0], ~jr),
		a9(ori, ~op[5], ~op[4], op[3], op[2], ~op[1], op[0]),
		a10(lui, ~op[5], ~op[4], op[3], op[2], op[1], op[0]);
		
assign RegDest = R;

or o1(ALUSrc,lw,sw,ori);

or o2(MemtoReg,lw);

or o3(RegWrite,R,lw,jal,ori,lui);
	
assign MemRead = lw;

assign MemWrite = sw;

assign newInst = R;

or o5(SignExt,lw,sw);

or o6(ALUOP[0],beq,bne,ori);

or o7(ALUOP[1],R,ori);






endmodule