module tb_four_bit_adder();
reg [3:0]a,b;
reg cin;
wire [3:0]sum;
wire cout;
four_bit_adder dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
a = 4'b1000;b = 4'b0001;cin = 1'b1;#5;
a = 4'b1001;b = 4'b0001;cin = 1'b1;#5;
a = 4'b1010;b = 4'b0011;cin = 1'b1;#5;
a = 4'b1111;b = 4'b1111;cin = 1'b0;#5;


end

endmodule
