module program_counter(out,in,clk);

input clk;
input [31:0] in;
output reg [31:0] out;

initial begin
out <= 32'h00000000;
end

always @(posedge clk)
begin
	out <= in;
end

endmodule