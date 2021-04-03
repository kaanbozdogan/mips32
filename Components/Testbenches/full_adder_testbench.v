`define DELAY 20
module full_adder_testbench(); 
reg a, b, carry_in;
wire sum, carry_out;

full_adder fatb (sum, carry_out, a, b, carry_in);

initial begin
a = 1'b0; b = 1'b0; carry_in = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b0; carry_in = 1'b1;
#`DELAY;
a = 1'b0; b = 1'b1; carry_in = 1'b0;
#`DELAY;
a = 1'b0; b = 1'b1; carry_in = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b0; carry_in = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b0; carry_in = 1'b1;
#`DELAY;
a = 1'b1; b = 1'b1; carry_in = 1'b0;
#`DELAY;
a = 1'b1; b = 1'b1; carry_in = 1'b1;
end
 
 
initial
begin
$monitor("time = %2d, a =%h, b=%h, carry_in=%b, sum=%h, carry_out=%1b", $time, a, b, carry_in, sum, carry_out);
end
 
endmodule