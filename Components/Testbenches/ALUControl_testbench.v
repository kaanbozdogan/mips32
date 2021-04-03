`define DELAY 20
module ALUControl_testbench();

reg [1:0] aluop;
reg [5:0] func;
wire [2:0] out;
wire jr;

ALUControl ac(out,jr,aluop,func);

initial begin
aluop = 2'b00; func = 6'b100010;
#`DELAY;
aluop = 2'b01; func = 6'b000000;
#`DELAY;
aluop = 2'b10; func = 6'b100000;
#`DELAY;
aluop = 2'b10; func = 6'b100010;
#`DELAY;
aluop = 2'b10; func = 6'b100110;
#`DELAY;
aluop = 2'b10; func = 6'b100100;
#`DELAY;
aluop = 2'b10; func = 6'b100101;
#`DELAY;
aluop = 2'b11; func = 6'b100000;
#`DELAY;
aluop = 2'b10; func = 6'b001000;
#`DELAY;
aluop = 2'b10; func = 6'b000000;
end

initial begin
$monitor("time=%2d, aluop= %2b, jr= %1b, ctrl= %6b, out= %3b", $time, aluop, jr, func, out);
end

endmodule
