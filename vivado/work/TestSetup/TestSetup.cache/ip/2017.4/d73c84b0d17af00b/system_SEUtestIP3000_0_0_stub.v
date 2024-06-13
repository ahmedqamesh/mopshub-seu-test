// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 17:01:24 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_SEUtestIP3000_0_0_stub.v
// Design      : system_SEUtestIP3000_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "SEUtestIP3000,Vivado 2017.4" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(S_AXI_ACLK, S_AXI_ARADDR, S_AXI_ARESETN, 
  S_AXI_ARVALID, S_AXI_AWADDR, S_AXI_AWVALID, S_AXI_BREADY, S_AXI_RREADY, S_AXI_WDATA, 
  S_AXI_WSTRB, S_AXI_WVALID, TMR, simple, S_AXI_ARREADY, S_AXI_AWREADY, S_AXI_BRESP, 
  S_AXI_BVALID, S_AXI_RDATA, S_AXI_RRESP, S_AXI_RVALID, S_AXI_WREADY, data, mode, shift_clk)
/* synthesis syn_black_box black_box_pad_pin="S_AXI_ACLK,S_AXI_ARADDR[9:0],S_AXI_ARESETN,S_AXI_ARVALID,S_AXI_AWADDR[9:0],S_AXI_AWVALID,S_AXI_BREADY,S_AXI_RREADY,S_AXI_WDATA[31:0],S_AXI_WSTRB[3:0],S_AXI_WVALID,TMR,simple,S_AXI_ARREADY,S_AXI_AWREADY,S_AXI_BRESP[1:0],S_AXI_BVALID,S_AXI_RDATA[31:0],S_AXI_RRESP[1:0],S_AXI_RVALID,S_AXI_WREADY,data,mode,shift_clk" */;
  input S_AXI_ACLK;
  input [9:0]S_AXI_ARADDR;
  input S_AXI_ARESETN;
  input S_AXI_ARVALID;
  input [9:0]S_AXI_AWADDR;
  input S_AXI_AWVALID;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input [31:0]S_AXI_WDATA;
  input [3:0]S_AXI_WSTRB;
  input S_AXI_WVALID;
  input TMR;
  input simple;
  output S_AXI_ARREADY;
  output S_AXI_AWREADY;
  output [1:0]S_AXI_BRESP;
  output S_AXI_BVALID;
  output [31:0]S_AXI_RDATA;
  output [1:0]S_AXI_RRESP;
  output S_AXI_RVALID;
  output S_AXI_WREADY;
  output data;
  output mode;
  output shift_clk;
endmodule
