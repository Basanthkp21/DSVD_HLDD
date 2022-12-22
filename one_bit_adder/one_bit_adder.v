`include "../xor/xor_gate.v"
`include "../or/or_gate.v"
`include "../and/and_gate.v"


module one_bit_adder(a,b,cin,sum,cout);
input a,b,cin;
output sum,cout;
wire x1,x2,x3;


xor_gate a1(a,b,x1);
xor_gate b1(x1,cin,sum);
and_gate c1(x1,cin,x2);
and_gate d1(a,b,x3);
or_gate e1(x2,x3,cout);


endmodule



