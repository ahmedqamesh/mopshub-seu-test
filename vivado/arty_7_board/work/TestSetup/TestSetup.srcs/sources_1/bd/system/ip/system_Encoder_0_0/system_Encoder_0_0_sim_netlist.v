// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 17:00:07 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Encoder_0_0/system_Encoder_0_0_sim_netlist.v
// Design      : system_Encoder_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_Encoder_0_0,Encoder,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "Encoder,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_Encoder_0_0
   (ss_axi_i,
    ss_enc_out);
  input [7:0]ss_axi_i;
  output [2:0]ss_enc_out;

  wire [7:0]ss_axi_i;
  wire [2:0]ss_enc_out;
  wire \ss_enc_out[0]_INST_0_i_1_n_0 ;
  wire \ss_enc_out[1]_INST_0_i_1_n_0 ;
  wire \ss_enc_out[1]_INST_0_i_2_n_0 ;
  wire \ss_enc_out[2]_INST_0_i_1_n_0 ;

  LUT3 #(
    .INIT(8'h7F)) 
    \ss_enc_out[0]_INST_0 
       (.I0(\ss_enc_out[0]_INST_0_i_1_n_0 ),
        .I1(ss_axi_i[0]),
        .I2(ss_axi_i[7]),
        .O(ss_enc_out[0]));
  LUT6 #(
    .INIT(64'h8080800080000000)) 
    \ss_enc_out[0]_INST_0_i_1 
       (.I0(ss_axi_i[6]),
        .I1(ss_axi_i[4]),
        .I2(ss_axi_i[2]),
        .I3(ss_axi_i[1]),
        .I4(ss_axi_i[3]),
        .I5(ss_axi_i[5]),
        .O(\ss_enc_out[0]_INST_0_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF17FFFFFFFFFF)) 
    \ss_enc_out[1]_INST_0 
       (.I0(ss_axi_i[0]),
        .I1(ss_axi_i[3]),
        .I2(ss_axi_i[4]),
        .I3(\ss_enc_out[1]_INST_0_i_1_n_0 ),
        .I4(\ss_enc_out[1]_INST_0_i_2_n_0 ),
        .I5(ss_axi_i[7]),
        .O(ss_enc_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \ss_enc_out[1]_INST_0_i_1 
       (.I0(ss_axi_i[1]),
        .I1(ss_axi_i[2]),
        .O(\ss_enc_out[1]_INST_0_i_1_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \ss_enc_out[1]_INST_0_i_2 
       (.I0(ss_axi_i[5]),
        .I1(ss_axi_i[6]),
        .O(\ss_enc_out[1]_INST_0_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hBFFF)) 
    \ss_enc_out[2]_INST_0 
       (.I0(\ss_enc_out[2]_INST_0_i_1_n_0 ),
        .I1(ss_axi_i[5]),
        .I2(ss_axi_i[6]),
        .I3(ss_axi_i[7]),
        .O(ss_enc_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h777F7FFF)) 
    \ss_enc_out[2]_INST_0_i_1 
       (.I0(ss_axi_i[3]),
        .I1(ss_axi_i[4]),
        .I2(ss_axi_i[0]),
        .I3(ss_axi_i[2]),
        .I4(ss_axi_i[1]),
        .O(\ss_enc_out[2]_INST_0_i_1_n_0 ));
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
