module register_testbench();


reg [4:0] read_reg1, read_reg2, write_reg1, write_reg2;
reg [31:0] write_data1, write_data2;
reg clk, reg_write1, reg_write2;
wire [31:0] read_data1, read_data2;

register r(read_data1, read_data2,
					read_reg1, read_reg2, 
					write_reg1, write_data1, reg_write1, 
					write_reg2, write_data2, reg_write2,
					clk);
					
initial clk = 1'b0;
always #5 clk = ~clk;

initial begin
$readmemb("register.txt", r.registers);
read_reg1 = 5'b11000; read_reg2 = 5'b11001;
write_reg1 = 5'b01000; write_data1 = 32'h00000001;
write_reg2 = 5'b01001; write_data2 = 32'h00000010;
reg_write1 = 1'b1; reg_write2 = 1'b1;
#20;
$writememb("register_output.txt", r.registers);
end


initial begin
$monitor("data1= %32h, data2= %32h", read_data1, read_data2);
end


endmodule