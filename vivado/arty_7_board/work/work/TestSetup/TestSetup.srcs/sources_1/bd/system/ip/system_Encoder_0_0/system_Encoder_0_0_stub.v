// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 17:00:07 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Encoder_0_0/system_Encoder_0_0_stub.v
// Design      : system_Encoder_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Encoder,Vivado 2017.4" *)
module system_Encoder_0_0(ss_axi_i, ss_enc_out)
/* synthesis syn_black_box black_box_pad_pin="ss_axi_i[7:0],ss_enc_out[2:0]" */;
  input [7:0]ss_axi_i;
  output [2:0]ss_enc_out;
endmodule
