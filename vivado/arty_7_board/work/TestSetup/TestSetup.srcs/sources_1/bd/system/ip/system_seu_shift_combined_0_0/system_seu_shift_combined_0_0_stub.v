// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 16:56:08 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_seu_shift_combined_0_0/system_seu_shift_combined_0_0_stub.v
// Design      : system_seu_shift_combined_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "seu_shift_combined,Vivado 2017.4" *)
module system_seu_shift_combined_0_0(clk_in, data_in, mode, data_out, data_outTMR)
/* synthesis syn_black_box black_box_pad_pin="clk_in,data_in,mode,data_out,data_outTMR" */;
  input clk_in;
  input data_in;
  input mode;
  output data_out;
  output data_outTMR;
endmodule
