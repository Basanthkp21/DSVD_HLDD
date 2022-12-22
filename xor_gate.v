module xor_gate(a,b,out);
input a,b;
output reg out;

 always@(a,b) begin
 if(a!=b)
 out = 1'b1;
 else
 out = 1'b0;
 end

endmodule

