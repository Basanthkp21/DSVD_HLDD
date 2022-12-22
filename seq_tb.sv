module multiplier_tb();
 reg [3:0]a,b;
 reg load,rst,clk;
 wire op_ready;
 wire [7:0]product,temp,temp_b,p;
 multiplier dut(.*);
 initial 
 clk = 1'b0;
  always #5 clk=~clk; 
  
 initial begin
  rst = 1'b0; a=4'b1100; b=4'b0011; #10;
  load=1;#10;
  rst = 1'b1;#10;

  rst=1'b0; a=4'b1010; b=4'b1011; #10;
  load =1; #10;
  rst = 1'b1;#10;

  rst = 1'b0;a=4'b1111;b=4'b1111;#10;
  load = 1;#10;
  rst = 1'b1;#10;
   
  end
 initial begin

 $dumpfile("test.vcd");
 $dumpvars;

#180 $finish;

end
endmodule
