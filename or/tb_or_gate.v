module tb_or_gate();
reg a,b;
wire out;

or_gate dut(.a(a),.b(b),.out(out));
initial begin
a = 1'b0;b = 1'b1;#5;
a = 1'b0;b = 1'b0;#5;
a = 1'b1;b = 1'b1;#5;
a = 1'b1;b = 1'b0;#5;

end 

endmodule

