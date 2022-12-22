`include "../4_bit/4_bit_adder.v"

module SBA(a,b,cin,sum,cout);
input [15:0]a,b;
input cin;
wire [14:0]x1;
output [15:0]sum;
output cout;


four_bit_adder s1(a[3:0],b[3:0],cin,sum[3:0],x1[4]);
four_bit_adder s2(a[7:4],b[7:4],x1[4],sum[7:4],x1[8]);
four_bit_adder s3(a[11:8],b[11:8],x1[8],sum[11:8],x1[12]);
four_bit_adder s4(a[15:12],b[15:12],x1[12],sum[15:12],cout);

endmodule


