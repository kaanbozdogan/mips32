`define DELAY 20
module memory_testbench();

reg [31:0] write_data;
reg mem_write, mem_read, clk;
reg [17:0] adress;
wire [31:0] read_data;

memory m(read_data, adress, write_data, mem_write, mem_read, clk);

initial clk = 0;
always #5 clk = ~clk;

initial begin
$readmemb("data_mem.txt", m.data);
adress = 18'b000000000000000100; mem_write = 0; mem_read = 1;
#10;
adress = 18'b000000000000000100; mem_write = 1; mem_read = 0; write_data = 32'h0000000f;
#10;
adress = 18'b000000000000000100; mem_write = 0; mem_read = 1;
#10;
adress = 18'b000000000000001000; mem_write = 0; mem_read = 1;
#10;
adress = 18'b000000000000001100; mem_write = 0; mem_read = 1;
#10;
$writememb("data_mem_output.txt", m.data);
$finish;
end

initial begin
$monitor("time = %2d, data= %32b", $time, read_data);
end

endmodule