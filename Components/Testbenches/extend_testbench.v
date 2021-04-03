`define DELAY 20
module extend_testbench();

reg [15:0] in;
reg s;
wire [31:0] out;

extend se(out,in,s);

initial begin
in = 16'hffff; s = 1;
#`DELAY;
in = 16'hf000; s = 1;
#`DELAY;
in = 16'hf000; s = 0;
end

initial begin
$monitor("time=%2d, in= %16b, out= %32b", $time, in, out);
end

endmodule

