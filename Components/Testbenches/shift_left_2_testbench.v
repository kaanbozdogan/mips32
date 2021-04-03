`define DELAY 20
module shift_left_2_testbench();

reg [31:0] in;
wire [31:0] out;

shift_left_2 sl2(out,in);

initial begin
in = 32'h11111111;
#`DELAY;
in = 32'h44444444;
#`DELAY;
end

initial begin
$monitor("time = %2d, in= %8h, out= %8h", $time, in, out);
end

endmodule