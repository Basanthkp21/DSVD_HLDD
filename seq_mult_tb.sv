module multiplier_tb();
 reg [3:0]a,b;
 reg rst,clk;
 wire op_ready;
 wire [7:0]product,temp,temp_b,p;
 multiplier dut(.*);
 initial 
 clk = 1'b0;
  always #5 clk=~clk; 
  
 initial begin
  rst = 1'b0; a=4'b0011; b=4'b1000; #10;
  rst = 1'b1;#10;

  rst=1'b0; a=4'b0111; b=4'b1001; #10;
  rst = 1'b1;#10;

  rst = 1'b0;a=4'b1011;b=4'b0111;#10;
  rst = 1'b1;#10;
   
  end
 initial begin

 $dumpfile("test.vcd");
 $dumpvars;

#70 $finish;

end
endmodule
