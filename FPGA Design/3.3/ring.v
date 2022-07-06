`timescale 1ns/1ns
module ring#(   
                parameter delay = 1.8,  //delay of one inverter
                parameter num = 5  //number of inverters neede 
                 )(
                 input en,
                 output out
                 );
                 
wire [num:0] line;
and  inv(line[0],en,line[num]);

genvar j;
generate for(j=0 ; j<num ; j=j+1)
  not #delay invj(line[j+1],line[j]);
endgenerate

assign out = line[num];

endmodule
