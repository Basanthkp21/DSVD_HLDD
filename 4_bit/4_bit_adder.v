`include "../one_bit_adder/one_bit_adder.v"

module four_bit_adder(a,b,cin,sum,cout);
input [3:0]a,b;
input cin;
wire [2:0]x1;
output [3:0]sum;
output cout;


one_bit_adder s1(a[0],b[0],cin,sum[0],x1[0]);
one_bit_adder s2(a[1],b[1],x1[0],sum[1],x1[1]);
one_bit_adder s3(a[2],b[2],x1[1],sum[2],x1[2]);
one_bit_adder s4(a[3],b[3],x1[2],sum[3],cout);

endmodule

