module or_gate(a,b,out);
input a,b;
output reg out;

 always@(a,b) begin
 if(a==1'b1 | b==1'b1)
 out = 1'b1;
 else
 out = 1'b0;
 end

endmodule

