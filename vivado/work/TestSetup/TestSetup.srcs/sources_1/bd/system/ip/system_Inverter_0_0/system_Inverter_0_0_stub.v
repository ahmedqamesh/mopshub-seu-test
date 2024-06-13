// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 16:59:50 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Inverter_0_0/system_Inverter_0_0_stub.v
// Design      : system_Inverter_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Inverter,Vivado 2017.4" *)
module system_Inverter_0_0(sclx2_int, sclx2_ext, sdam_int, sdam_ext, 
  sdas_int, sdas_ext, in_int, in_ext, out_int, out_ext)
/* synthesis syn_black_box black_box_pad_pin="sclx2_int,sclx2_ext,sdam_int,sdam_ext,sdas_int,sdas_ext,in_int[5:0],in_ext[5:0],out_int[4:0],out_ext[4:0]" */;
  input sclx2_int;
  output sclx2_ext;
  input sdam_int;
  output sdam_ext;
  output sdas_int;
  input sdas_ext;
  output [5:0]in_int;
  input [5:0]in_ext;
  input [4:0]out_int;
  output [4:0]out_ext;
endmodule
