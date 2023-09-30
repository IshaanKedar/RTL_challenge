module half adder(a,b,c,d);
// half adder
input a,b;
output c,d;
xor g1(c,a,b);
and g2(d,a,b);
endmodule
