module _1bit_ALU (res, c_out, a, b, c_in, ctr);

input a,b;
input c_in;
input [2:0] ctr;
output res;
output c_out;

wire w1,w2,w3,w4,w5,w6;
wire m0,m1,m2,m3;

xor xor_0(w1,b,ctr[2]);
or or_0(m1,w1,a);
and and_0(m0,w1,a);
not not_0(w2,m0);
and and_1(m3,w2,m1);
or or_1(w3,m3,c_in);
and and_2(w4,m3,c_in);
not not_1(w5,w4);
and and_3(m2,w3,w5);
or or_2(c_out,m0,w4);

mux4_1 mux(res,ctr[1:0],m0,m1,m2,m3);


endmodule

