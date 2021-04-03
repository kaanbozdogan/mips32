module comparator_testbench();

reg [31:0] in;
wire [31:0] out;

comparator c(out,in);

initial begin
in = 32'b00000000000000000000000000000000;
#20;
in = 32'b10000000000000000000000000000000;
#20;
in = 32'b00000000000000000000010000000000;
end

initial begin
$monitor("%32b", out);
end

endmodule