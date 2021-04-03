`define DELAY 20
module _1bit_ALU_testbench();

reg a, b;
reg [2:0] ctr;
wire res, c_out;

_1bit_ALU alu(res, c_out, a, b, ctr[2], ctr);

initial begin
a = 1'b0; b = 1'b0; ctr = 3'b000;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 3'b000;
#`DELAY;
a = 1'b1; b = 1'b0; ctr = 3'b000;
#`DELAY;
a = 1'b1; b = 1'b1; ctr = 3'b000;
#`DELAY;
a = 1'b0; b = 1'b0; ctr = 3'b001;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 3'b001;
#`DELAY;
a = 1'b1; b = 1'b0; ctr = 3'b001;
#`DELAY;
a = 1'b1; b = 1'b1; ctr = 3'b001;
#`DELAY;
a = 1'b0; b = 1'b0; ctr = 3'b011;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 3'b011;
#`DELAY;
a = 1'b1; b = 1'b0; ctr = 3'b011;
#`DELAY;
a = 1'b1; b = 1'b1; ctr = 3'b011;
#`DELAY;
a = 1'b0; b = 1'b0; ctr = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b0; ctr = 3'b010;
#`DELAY;
a = 1'b1; b = 1'b1; ctr = 3'b010;
#`DELAY;
a = 1'b0; b = 1'b0; ctr = 3'b110;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 3'b110;
#`DELAY;
a = 1'b1; b = 1'b0; ctr = 3'b110;
#`DELAY;
a = 1'b1; b = 1'b1; ctr = 3'b110;
#`DELAY;
end



 
initial begin
$monitor("time=%2d, a= %1b, b= %1b, ctr= %3b, res= %1b, cout= %1b", $time, a, b, ctr, res, c_out);
end
 
endmodule
