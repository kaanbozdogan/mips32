module mips_32_testbench();

reg clk;

mips_32 mips(clk);

initial clk = 0;
always #5 clk = ~clk;


initial begin
$readmemb("register.txt", mips.registers.registers);
$readmemb("data_mem.txt", mips.data_memory.data);
$readmemb("inst_mem.txt", mips.instructions);
//mips.pc = 32'b00000000000000000000000000000000;
#5000;
$writememb("register_output.txt", mips.registers.registers);
$writememb("data_mem_output.txt", mips.data_memory.data);
$finish;
end


initial begin
$monitor("%2d > %d, %3b", $time, mips.pc, mips.aluctr);
//  = %32b , %32b , %32b , %32b
// , mips.alu_out, mips.w_memtoreg, mips.w_writedata, mips.write_data1
end


endmodule