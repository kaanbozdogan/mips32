module memory(read_data, adress, write_data, mem_write, mem_read, clk);

input [17:0] adress;
input [31:0] write_data;
input mem_write, mem_read, clk;
output [31:0] read_data;

reg [31:0] data [0:65536];

wire [15:0] word_adress = adress[17:2];
assign read_data = data[word_adress];

always @(posedge clk)
begin
	if(mem_write == 1) begin
		data[word_adress] <= write_data;
	end
end



endmodule