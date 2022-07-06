`timescale 1 ps/ 1 ps
module test4;
  
  reg A1,B1,C1,D1,DN1,A2,B2,C2,D2,DN2,enable,CL1,disprst;
  wire QA1,QB1,QC1,QD1,QA2,QB2,QC2,QD2,CLK,co,QOUT1;
  wire [7:0] dispout;
  
  freqdivid fd4(QA1,D1,C1,B1,A1,CLK,DN1,D2,C2,B2,A2,DN2,enable,QB1,QC1,QD1,QA2,QB2,QC2,QD2,QOUT1,CL1,co,dispout,disprst);
  ring r(enable,CLK);
  
  initial
  begin
    #200 disprst=1'b1;
    #200 disprst=1'b0;
    #1000 enable=1'b0;CL1=1'b0;
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
    #200000 enable=1'b1;CL1=1'b1;
    #80000000 $stop;
  end
endmodule


