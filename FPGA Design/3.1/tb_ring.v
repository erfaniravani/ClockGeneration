`timescale 1ns/1ns
module tb_ring;
  
  reg en;
  wire out;
  
  ring TR(en,out);
  
  initial
  begin
    
    #100 en=1'b0;
    #100 en=1'b1;
    #10000 $stop;
    
  end
endmodule
