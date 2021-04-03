module pc_increment(new_pc, pc,
 							j, jal, j_adress,
							jr, jr_adress,
							beq, bne, zero, b_adress);

input j,jal,jr,beq,bne,zero;
input [11:0] j_adress, jr_adress, b_adress;
input [31:0] pc;
output [31:0] new_pc;

wire [11:0] w_add, w_mux1, w_mux2;
wire w_beq, w_bne, sel_b, sel_j, c_out;


_12bit_adder add (w_add, c_out, pc[13:2], b_adress, 1'b0);
				
and and1 (w_beq, zero, beq),
	and2 (w_bne, ~zero, bne);
	
or or1 (sel_b, w_beq, w_bne),
	or2 (sel_j, j, jal);
				
wire [11:0] w_new_pc;
_12bit_mux2_1 mux1 (w_mux1, sel_b, pc[13:2], w_add),
		mux2 (w_mux2, jr, w_mux1, jr_adress),
		mux3 (w_new_pc, sel_j, w_mux2, j_adress);

assign new_pc[31:14] = 18'b000000000000000000;
assign new_pc[13:2] = w_new_pc;
assign new_pc[1:0] = 2'b0;
		

endmodule