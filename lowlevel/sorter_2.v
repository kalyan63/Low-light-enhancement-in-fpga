`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/30/2019 03:20:59 AM
// Design Name: 
// Module Name: sorter_2
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////

module sorter_2 (
  input  wire clk,
  input  wire [7:0] in1, in2, in3, in4, in5, in6, in7, in8, in9,  
  output [7:0] m
  );
  reg  [7:0] out1, out2, out3, out4, out5, out6, out7, out8, out9;
  reg [7:0] dat1, dat2, dat3, dat4, dat5, dat6, dat7, dat8, dat9;
  always @(posedge clk)
  begin
      dat1 <= in1;
      dat2 <= in2;
      dat3 <= in3;
      dat4 <= in4;
      dat5 <= in5;
      dat6 <= in6;
      dat7 <= in7;
      dat8 <= in8;
      dat9 <= in9;
  end
    integer i, j;
    reg [7:0] temp;
    reg [7:0] array [1:9];
    always @*
    begin
  array[1] = dat1;
  array[2] = dat2;
  array[3] = dat3;
  array[4] = dat4;
  array[5] = dat5;
  array[6] = dat6;
  array[7] = dat7;
  array[8] = dat8;
  array[9] = dat9;
  for (i = 9; i > 0; i = i - 1) begin
  for (j = 1 ; j < i; j = j + 1) begin
          if (array[j] < array[j + 1])
          begin
            temp = array[j];
            array[j] = array[j + 1];
            array[j + 1] = temp;
  end end
  end end
    always @(posedge clk)
    begin
      out1 <= array[1];
      out2 <= array[2];
      out3 <= array[3];
      out4 <= array[4];
      out5 <= array[5];
      out6 <= array[6];
      out7 <= array[7];
      out8 <= array[8];
      out9 <= array[9];      
  end
  assign m = out5;
  endmodule