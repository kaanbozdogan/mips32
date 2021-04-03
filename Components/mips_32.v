module mips_32(clk);

input clk;
// instruction memory has 16kB = 2^14 bytes = 2^12 instructions (4 bytes)
reg [31:0] instructions [0:4095];

// pc
wire [31:0] pc;
wire [31:0] new_pc;
program_counter progc(pc, new_pc, clk);


// inst
wire [31:0] inst;
assign inst = instructions[pc[13:2]];


// control
wire RegDest,ALUSrc,MemtoReg,RegWrite,MemRead,MemWrite,beq,bne,j,jal,jr,newInst,SignExt,lui;
wire [1:0] ALUOP;
control control_unit(RegDest,
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
						inst[31:26],
						inst[5:0]);
					
					
wire [4:0] w_wr, write_reg1;
_5bit_mux2_1 mux_wr1(w_wr, RegDest, inst[20:16], inst[15:11]),
				mux2_wr2(write_reg1, jal, w_wr, 5'b11111);
				

// reg
wire [31:0] reg_out1, reg_out2, write_data1, write_data2;
register registers(reg_out1, reg_out2,
						inst[25:21], inst[20:16], 
						write_reg1, write_data1, RegWrite, 
						inst[25:21], write_data2, newInst,
						clk);


// pre alu
wire [31:0] w_extended;
extend extender(w_extended, inst[15:0], SignExt);

wire [31:0] w_alu;
_32bit_mux2_1 mux_alu(w_alu, ALUSrc, reg_out2, w_extended);


// alu
wire [2:0] aluctr;
ALUControl alu_control(aluctr, ALUOP, inst[5:0]);

wire [31:0] alu_out;
wire w_zero;
_32bit_ALU alu(alu_out, w_zero, reg_out1, w_alu, aluctr);


// memory
wire [31:0] mem_out;
memory data_memory(mem_out, alu_out[17:0], reg_out2, MemWrite, MemRead, clk);
						
wire [31:0] w_memtoreg;
_32bit_mux2_1 mux_memtoreg(w_memtoreg, MemtoReg, alu_out, mem_out);


// lui mux
wire [31:0] lui_data, lui_out;
assign lui_data[15:0] = 16'h0000;
assign lui_data[31:16] = inst[15:0];
_32bit_mux2_1 mux_lui(lui_out, lui, w_memtoreg, lui_data);


// calculate next pc
wire [31:0] next_pc;
wire c_out;
_32bit_adder add_pc(next_pc, c_out, pc, 32'h00000004, 1'b0);


// jal mux
wire [31:0] w_writedata;
_32bit_mux2_1 mux_jal(w_writedata, jal, lui_out, next_pc);
assign write_data2 = w_writedata;


// n type mux
wire [31:0] comp_out;
comparator comp(comp_out, w_writedata);

_32bit_mux2_1 mux_writedata(write_data1, newInst, w_writedata, comp_out);


// update pc
pc_increment pc_inc(new_pc, next_pc,
							j, jal, inst[11:0],
							jr, reg_out1[13:2],
							beq, bne, w_zero, w_extended[11:0]);
							


							
							

endmodule