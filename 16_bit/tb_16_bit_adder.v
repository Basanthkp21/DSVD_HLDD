module tb_SBA();
reg [15:0]a,b;
reg cin;
wire [15:0]sum;
wire cout;
SBA dut(.a(a),.b(b),.cin(cin),.sum(sum),.cout(cout));

initial begin
a = 16'b0000000000000011;b = 16'b0000000000000010;cin = 1'b0;#5;
a = 16'b0000000000000111;b = 16'b0000000000100011;cin = 1'b0;#5;
a = 16'b0000000000000011;b = 16'b0001000000000011;cin = 1'b1;#5;
a = 16'b1111111111111111;b = 16'b1111111111111111;cin = 1'b0;#5;


end

endmodule
