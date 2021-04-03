module pc_increment_testbench();

reg j,jal,jr,beq,bne,zero;
reg [11:0] pc, j_adress, jr_adress, b_adress; 
wire [11:0] new_pc;

pc_increment pci(new_pc,pc,j,jal,j_adress,jr,jr_adress,beq,bne,zero,b_adress);

initial begin
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 0; jr_adress = 12'h000; beq = 0; bne = 0; zero = 0; b_adress = 12'h000;
#20;
pc = 12'h000; j = 1; jal = 0; j_adress = 12'h222; jr = 0; jr_adress = 12'h000; beq = 0; bne = 0; zero = 0; b_adress = 12'h000;
#20;
pc = 12'h000; j = 0; jal = 1; j_adress = 12'h220; jr = 0; jr_adress = 12'h000; beq = 0; bne = 0; zero = 0; b_adress = 12'h000;
#20;
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 1; jr_adress = 12'h200; beq = 0; bne = 0; zero = 0; b_adress = 12'h000;
#20;
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 0; jr_adress = 12'h000; beq = 1; bne = 0; zero = 1; b_adress = 12'h00b;
#20;
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 0; jr_adress = 12'h000; beq = 1; bne = 0; zero = 0; b_adress = 12'h00b;
#20;
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 0; jr_adress = 12'h000; beq = 0; bne = 1; zero = 0; b_adress = 12'h0b0;
#20;
pc = 12'h000; j = 0; jal = 0; j_adress = 12'h000; jr = 0; jr_adress = 12'h000; beq = 0; bne = 1; zero = 1; b_adress = 12'h0b0;
end

initial begin
$monitor("newpc= %h", new_pc);
end




endmodule