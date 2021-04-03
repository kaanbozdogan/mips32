`define DELAY 20
module mux4_1_testbench();

reg a, b, c, d;
reg [1:0] ctr;
wire res;

mux4_1 mux(res,ctr,a,b,c,d);

initial begin
a = 1'b0; b = 1'b1; c = 1'b1; d = 1'b1; ctr = 2'b00;
#`DELAY;
a = 1'b1; b = 1'b0; c = 1'b1; d = 1'b1; ctr = 2'b01;
#`DELAY;
a = 1'b1; b = 1'b1; c = 1'b0; d = 1'b1; ctr = 2'b10;
#`DELAY;
a = 1'b1; b = 1'b1; c = 1'b1; d = 1'b0; ctr = 2'b11;
end

initial begin
$monitor("time=%2d, a= %1b, b= %1b, c= %1b, d= %1b, ctr= %2b, res= %1b", $time, a, b, c, d, ctr, res);
end

endmodule