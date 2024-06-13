// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 16:59:50 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Inverter_0_0/system_Inverter_0_0_sim_netlist.v
// Design      : system_Inverter_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_Inverter_0_0,Inverter,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Inverter,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_Inverter_0_0
   (sclx2_int,
    sclx2_ext,
    sdam_int,
    sdam_ext,
    sdas_int,
    sdas_ext,
    in_int,
    in_ext,
    out_int,
    out_ext);
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

  wire [5:0]in_ext;
  wire [5:0]in_int;
  wire [4:0]out_ext;
  wire [4:0]out_int;
  wire sclx2_ext;
  wire sclx2_int;
  wire sdam_ext;
  wire sdam_int;
  wire sdas_ext;
  wire sdas_int;

  system_Inverter_0_0_Inverter inst
       (.in_ext(in_ext),
        .in_int(in_int),
        .out_ext(out_ext),
        .out_int(out_int));
  LUT1 #(
    .INIT(2'h1)) 
    sclx2_ext_INST_0
       (.I0(sclx2_int),
        .O(sclx2_ext));
  LUT1 #(
    .INIT(2'h1)) 
    sdam_ext_INST_0
       (.I0(sdam_int),
        .O(sdam_ext));
  LUT1 #(
    .INIT(2'h1)) 
    sdas_int_INST_0
       (.I0(sdas_ext),
        .O(sdas_int));
endmodule

(* ORIG_REF_NAME = "Inverter" *) 
module system_Inverter_0_0_Inverter
   (in_int,
    out_ext,
    in_ext,
    out_int);
  output [5:0]in_int;
  output [4:0]out_ext;
  input [5:0]in_ext;
  input [4:0]out_int;

  wire [5:0]in_ext;
  wire [5:0]in_int;
  wire [4:0]out_ext;
  wire [4:0]out_int;

  LUT1 #(
    .INIT(2'h1)) 
    \in_int[0]_INST_0 
       (.I0(in_ext[0]),
        .O(in_int[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \in_int[1]_INST_0 
       (.I0(in_ext[1]),
        .O(in_int[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \in_int[2]_INST_0 
       (.I0(in_ext[2]),
        .O(in_int[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \in_int[3]_INST_0 
       (.I0(in_ext[3]),
        .O(in_int[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \in_int[4]_INST_0 
       (.I0(in_ext[4]),
        .O(in_int[4]));
  LUT1 #(
    .INIT(2'h1)) 
    \in_int[5]_INST_0 
       (.I0(in_ext[5]),
        .O(in_int[5]));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ext[0]_INST_0 
       (.I0(out_int[0]),
        .O(out_ext[0]));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ext[1]_INST_0 
       (.I0(out_int[1]),
        .O(out_ext[1]));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ext[2]_INST_0 
       (.I0(out_int[2]),
        .O(out_ext[2]));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ext[3]_INST_0 
       (.I0(out_int[3]),
        .O(out_ext[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \out_ext[4]_INST_0 
       (.I0(out_int[4]),
        .O(out_ext[4]));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
