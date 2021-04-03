`define DELAY 20
module mux2_1_testbench();

reg a, b;
reg ctr;
wire res;

mux2_1 mux(res,ctr,a,b);

initial begin
a = 1'b0; b = 1'b1; ctr = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1; ctr = 1'b1;
end

initial begin
$monitor("time=%2d, a= %1b, b= %1b, ctr= %1b, res= %1b", $time, a, b, ctr, res);
end

endmodule
