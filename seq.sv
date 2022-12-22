module multiplier(a,b,load,product,rst,clk,op_ready);
 input [3:0]a,b;
 input load,rst,clk;
 output reg op_ready;
 output reg[7:0]product;

 reg[7:0]temp,temp_b,p;

 assign temp={4'b0000,b};
 
 always @(posedge clk)
 begin
  
 if(rst==1'b1)
 begin
  op_ready = 1'b0;
  p=8'b0000_0000;
product=8'b0000_0000;
 end

 if(rst==1'b0 && load==1'b1)
  begin
   p = 8'b0000_0000;
   for(int i=0;i<4;i++)
    if(a[i]==1)
    begin
     temp_b = temp<<i;
    p = p+temp_b;

    if(i==3)
    op_ready = 1'b1;
    $display("p = %b", p);
  end
 end
if(op_ready == 1'b1)
  product=p;
end
endmodule
