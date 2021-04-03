module control_testbench();

wire RegDest,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,beq,bne,j,jal,newInst,SignExt,lui;
wire [1:0] ALUOP;
reg [5:0] op;

control c(RegDest,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,beq,bne,j,jal,newInst,SignExt,lui,ALUOP,op);

initial begin
op = 6'b000000;
#20;
op = 6'b100011;
#20;
op = 6'b101011;
#20;
op = 6'b000100;
#20;
op = 6'b000101;
#20;
op = 6'b000010;
#20;
op = 6'b000011;
#20;
op = 6'b000000;
#20;
op = 6'b001101;
#20;
op = 6'b001111;
end

initial begin
$monitor("%1b %1b %1b %1b %1b %1b %1b %1b %1b %1b %1b %1b %1b %1b %1b", 
	RegDest,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,beq,bne,j,jal,newInst,SignExt,ALUOP[0],ALUOP[1],lui);
end


endmodule