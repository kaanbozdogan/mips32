`define DELAY 20
module _32bit_ALU_testbench();

reg [31:0] a, b;
reg [2:0] ctr;
wire [31:0] res;
wire zero;

_32bit_ALU alu(res,zero,a,b,ctr);

initial begin
a = 32'h00001111; b = 32'h11110000; ctr = 3'b010;
#`DELAY;
a = 32'h0000000f; b = 32'h00000001; ctr = 3'b010;
#`DELAY;
a = 32'b11111111111111111111111011101000; b = 32'b00000000000000000000000001110001; ctr = 3'b110;
#`DELAY;
a = 32'b00000000000000000000001110000100; b = 32'b00000000000000000000000001110001; ctr = 3'b110;
end

initial begin
$monitor("time = %2d, a= %8h, b= %8h, sum= %8h, zero=%1b", $time, a, b, res, zero);
end

endmodule