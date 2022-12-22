module tb_one_bit_adder();
reg a,b,cin;
wire sum,cout;
one_bit_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
a = 1'b0;b = 1'b0;cin = 1'b0;#5;
a = 1'b0;b = 1'b0;cin = 1'b1;#5;
a = 1'b0;b = 1'b1;cin = 1'b0;#5;
a = 1'b0;b = 1'b1;cin = 1'b1;#5;
a = 1'b1;b = 1'b0;cin = 1'b0;#5;
a = 1'b1;b = 1'b0;cin = 1'b1;#5;
a = 1'b1;b = 1'b1;cin = 1'b0;#5;
a = 1'b1;b = 1'b1;cin = 1'b1;#5;
end

endmodule
