module mux2_1(out,sel,m0,m1);

input sel;
input m0, m1;
output out;
wire w1, w2, w3;

and a1(w1,sel,m1);
not n1(w2,sel);
and a2(w3,w2,m0);
or o1(out,w1,w3);

endmodule