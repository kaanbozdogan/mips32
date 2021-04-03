`define DELAY 20
module _32bit_adder_testbench();

reg [31:0] a;
reg [31:0] b;
reg c_in;
wire [31:0] sum;
wire c_out;

_32bit_adder fa(sum,c_out,a,b,c_in);

initial begin
a = 32'b11111111111111111111111111111111; b = 32'b11111111111111111111111111111111; c_in = 1'b1;
#`DELAY;
a = 32'b10000000000000000000000000000000; b = 32'b10000000000000000000000000000000; c_in = 1'b0;
#`DELAY;
a = 32'b10101010101010101010101010101010; b = 32'b01010101010101010101010101010101; c_in = 1'b0;
#`DELAY;
a = 32'b10101010101010101010101010101010; b = 32'b01010101010101010101010101010101; c_in = 1'b1;
end

initial begin
$monitor("time = %2d, a= %32b, b= %32b, c_in=%1b, sum= %32b, c_out=%1b", $time, a, b, c_in, sum, c_out);
end

endmodule