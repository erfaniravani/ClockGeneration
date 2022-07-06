`timescale 1 ps/ 1 ps
module tb_freq;
  
  reg A1,B1,C1,D1,DN1,A2,B2,C2,D2,DN2,enable;
  wire QA1,QB1,QC1,QD1,QA2,QB2,QC2,QD2,CLK,CO;
  
  freqdivid fd(QA1,D1,C1,B1,A1,CLK,DN1,D2,C2,B2,A2,DN2,enable,QB1,QC1,QD1,QA2,QB2,QC2,QD2,CO);
  ring r(enable,CLK);
  
  initial
  begin
    #1000 enable=1'b0;
    A1=1'b1;
    B1=1'b1;
    C1=1'b1;
    D1=1'b1;
    A2=1'b0;
    B2=1'b0;
    C2=1'b0;
    D2=1'b1;
    DN1=1'b1;
    DN2=1'b1;
    #200000 enable=1'b1;
    #80000000 $stop;
  end
endmodule
