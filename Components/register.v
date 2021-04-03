module register(read_data1, read_data2,
					read_reg1, read_reg2, 
					write_reg1, write_data1, reg_write1, 
					write_reg2, write_data2, reg_write2,
					clk);


input [4:0] read_reg1, read_reg2, write_reg1, write_reg2;
input [31:0] write_data1, write_data2;
input clk, reg_write1, reg_write2;
output [31:0] read_data1, read_data2;

reg [31:0] registers [0:31];


assign read_data1 = registers[read_reg1];
assign read_data2 = registers[read_reg2];


always @(negedge clk)
begin
	if(reg_write1 == 1'b1)
	begin
		registers[write_reg1] <= write_data1;
	end
end


always @(negedge clk)
begin
	if(reg_write2 == 1'b1)
	begin
		registers[write_reg2] <= write_data2;
	end
end


endmodule