//
// Verilog Module I2C_HC_TestMaster_lib.clock_divider
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 17:37:22 06/21/16
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

`resetall
`timescale 1ns/10ps
module clock_divider( 
   input   wire      RSTn, 
   input   wire      clkin, 
   output  reg       clkdiv1000, 
   output  reg       clkdiv500, 
   output  wire      clkdiv500b
);

// ### Please start your Verilog code here ###
// Internal Declarations
reg [7:0] cnt;

// count to 250 for clkdiv500
always @(posedge clkin or negedge RSTn)
begin
  if (~RSTn)
  begin
    cnt <= 0;
    clkdiv500 <= 0;
  end
  else 
  begin
    if (cnt >= 249)
    begin
      clkdiv500 <= ~clkdiv500;
      cnt <= 0;
    end
    else 
      cnt <= cnt + 1;
  end
end

assign clkdiv500b = clkdiv500;

// generate clkdiv1000
always @(posedge clkdiv500 or negedge RSTn)
begin
  if (~RSTn)
    clkdiv1000 <= 0;
  else
    clkdiv1000 <= ~clkdiv1000;
end

endmodule
