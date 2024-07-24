//
// Verilog Module I2C_HC_TestMaster_lib.master_encdec
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 10:37:35 07/07/16
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

`resetall
`timescale 1ns/10ps
module master_manchester_dec( 
   input   wire      scl, 
   input   wire      sclx2, 
   input   wire      RSTn, 
   input   wire      sdas_enc, 
   output  reg       sdas_dec
);

// ### Please start your Verilog code here ### 

// decoding of SDAs
// sample xored signal on negative sclx2 edge to be glitch independant
// Internal Declarations
always @(negedge sclx2 or negedge RSTn)
begin
  if (~RSTn)
    sdas_dec <= 1;
  else
    sdas_dec <= ~(sdas_enc ^ scl);
end

endmodule
