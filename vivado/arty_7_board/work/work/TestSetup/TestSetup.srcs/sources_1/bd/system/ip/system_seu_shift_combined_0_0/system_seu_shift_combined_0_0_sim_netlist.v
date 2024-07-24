// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 16:56:08 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_seu_shift_combined_0_0/system_seu_shift_combined_0_0_sim_netlist.v
// Design      : system_seu_shift_combined_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "system_seu_shift_combined_0_0,seu_shift_combined,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "seu_shift_combined,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module system_seu_shift_combined_0_0
   (clk_in,
    data_in,
    mode,
    data_out,
    data_outTMR);
  input clk_in;
  input data_in;
  input mode;
  output data_out;
  output data_outTMR;

  (* IBUF_LOW_PWR *) wire clk_in;
  wire data_in;
  wire data_outTMR;
  wire mode;

  assign data_out = data_outTMR;
  system_seu_shift_combined_0_0_seu_shift_combined inst
       (.clk_in(clk_in),
        .data_in(data_in),
        .data_outTMR(data_outTMR),
        .mode(mode));
endmodule

(* ORIG_REF_NAME = "seu_shift_combined" *) 
module system_seu_shift_combined_0_0_seu_shift_combined
   (data_outTMR,
    clk_in,
    mode,
    data_in);
  output data_outTMR;
  input clk_in;
  input mode;
  input data_in;

  wire clk;
  wire clk_in;
  wire data_in;
  wire data_outTMR;
  wire mode;

  system_seu_shift_combined_0_0_seu_shift_reg U_1
       (.clk(clk),
        .data_in(data_in),
        .data_outTMR(data_outTMR),
        .mode(mode));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* XILINX_LEGACY_PRIM = "IBUFG" *) 
  IBUF #(
    .IOSTANDARD("DEFAULT")) 
    clkbuf
       (.I(clk_in),
        .O(clk));
endmodule

(* ORIG_REF_NAME = "seu_shift_reg" *) 
module system_seu_shift_combined_0_0_seu_shift_reg
   (data_outTMR,
    mode,
    data_in,
    clk);
  output data_outTMR;
  input mode;
  input data_in;
  input clk;

  wire clk;
  wire data_in;
  wire data_outTMR;
  wire mode;
  wire \shiftreg_reg[1024]_srl32_n_0 ;
  wire \shiftreg_reg[1056]_srl32_n_1 ;
  wire \shiftreg_reg[1088]_srl32_n_1 ;
  wire \shiftreg_reg[1120]_srl32_n_1 ;
  wire \shiftreg_reg[1152]_srl32_n_0 ;
  wire \shiftreg_reg[1184]_srl32_n_1 ;
  wire \shiftreg_reg[1216]_srl32_n_1 ;
  wire \shiftreg_reg[1248]_srl32_n_1 ;
  wire \shiftreg_reg[1280]_srl32_n_0 ;
  wire \shiftreg_reg[128]_srl32_n_0 ;
  wire \shiftreg_reg[1312]_srl32_n_1 ;
  wire \shiftreg_reg[1344]_srl32_n_1 ;
  wire \shiftreg_reg[1376]_srl32_n_1 ;
  wire \shiftreg_reg[1408]_srl32_n_0 ;
  wire \shiftreg_reg[1440]_srl32_n_1 ;
  wire \shiftreg_reg[1472]_srl32_n_1 ;
  wire \shiftreg_reg[1504]_srl32_n_1 ;
  wire \shiftreg_reg[1536]_srl32_n_0 ;
  wire \shiftreg_reg[1568]_srl32_n_1 ;
  wire \shiftreg_reg[1600]_srl32_n_1 ;
  wire \shiftreg_reg[160]_srl32_n_1 ;
  wire \shiftreg_reg[1632]_srl32_n_1 ;
  wire \shiftreg_reg[1664]_srl32_n_0 ;
  wire \shiftreg_reg[1696]_srl32_n_1 ;
  wire \shiftreg_reg[1728]_srl32_n_1 ;
  wire \shiftreg_reg[1760]_srl32_n_1 ;
  wire \shiftreg_reg[1792]_srl32_n_0 ;
  wire \shiftreg_reg[1824]_srl32_n_1 ;
  wire \shiftreg_reg[1856]_srl32_n_1 ;
  wire \shiftreg_reg[1888]_srl32_n_1 ;
  wire \shiftreg_reg[1920]_srl32_n_0 ;
  wire \shiftreg_reg[192]_srl32_n_1 ;
  wire \shiftreg_reg[1952]_srl32_n_1 ;
  wire \shiftreg_reg[1984]_srl32_n_1 ;
  wire \shiftreg_reg[2016]_srl32_n_1 ;
  wire \shiftreg_reg[2048]_srl32_n_0 ;
  wire \shiftreg_reg[2080]_srl32_n_1 ;
  wire \shiftreg_reg[2112]_srl32_n_1 ;
  wire \shiftreg_reg[2144]_srl32_n_1 ;
  wire \shiftreg_reg[2176]_srl32_n_0 ;
  wire \shiftreg_reg[2208]_srl32_n_1 ;
  wire \shiftreg_reg[2240]_srl32_n_1 ;
  wire \shiftreg_reg[224]_srl32_n_1 ;
  wire \shiftreg_reg[2272]_srl32_n_1 ;
  wire \shiftreg_reg[2304]_srl32_n_0 ;
  wire \shiftreg_reg[2336]_srl32_n_1 ;
  wire \shiftreg_reg[2368]_srl32_n_1 ;
  wire \shiftreg_reg[2400]_srl32_n_1 ;
  wire \shiftreg_reg[2432]_srl32_n_0 ;
  wire \shiftreg_reg[2464]_srl32_n_1 ;
  wire \shiftreg_reg[2496]_srl32_n_1 ;
  wire \shiftreg_reg[2528]_srl32_n_1 ;
  wire \shiftreg_reg[2560]_srl32_n_0 ;
  wire \shiftreg_reg[256]_srl32_n_0 ;
  wire \shiftreg_reg[2592]_srl32_n_1 ;
  wire \shiftreg_reg[2624]_srl32_n_1 ;
  wire \shiftreg_reg[2656]_srl32_n_1 ;
  wire \shiftreg_reg[2688]_srl32_n_0 ;
  wire \shiftreg_reg[2720]_srl32_n_1 ;
  wire \shiftreg_reg[2752]_srl32_n_1 ;
  wire \shiftreg_reg[2784]_srl32_n_1 ;
  wire \shiftreg_reg[2816]_srl32_n_0 ;
  wire \shiftreg_reg[2848]_srl32_n_1 ;
  wire \shiftreg_reg[2880]_srl32_n_1 ;
  wire \shiftreg_reg[288]_srl32_n_1 ;
  wire \shiftreg_reg[2912]_srl32_n_1 ;
  wire \shiftreg_reg[2944]_srl32_n_0 ;
  wire \shiftreg_reg[2976]_srl32_n_1 ;
  wire \shiftreg_reg[2998]_srl22_n_0 ;
  wire \shiftreg_reg[320]_srl32_n_1 ;
  wire \shiftreg_reg[32]_srl32_n_1 ;
  wire \shiftreg_reg[352]_srl32_n_1 ;
  wire \shiftreg_reg[384]_srl32_n_0 ;
  wire \shiftreg_reg[416]_srl32_n_1 ;
  wire \shiftreg_reg[448]_srl32_n_1 ;
  wire \shiftreg_reg[480]_srl32_n_1 ;
  wire \shiftreg_reg[512]_srl32_n_0 ;
  wire \shiftreg_reg[544]_srl32_n_1 ;
  wire \shiftreg_reg[576]_srl32_n_1 ;
  wire \shiftreg_reg[608]_srl32_n_1 ;
  wire \shiftreg_reg[640]_srl32_n_0 ;
  wire \shiftreg_reg[64]_srl32_n_1 ;
  wire \shiftreg_reg[672]_srl32_n_1 ;
  wire \shiftreg_reg[704]_srl32_n_1 ;
  wire \shiftreg_reg[736]_srl32_n_1 ;
  wire \shiftreg_reg[768]_srl32_n_0 ;
  wire \shiftreg_reg[800]_srl32_n_1 ;
  wire \shiftreg_reg[832]_srl32_n_1 ;
  wire \shiftreg_reg[864]_srl32_n_1 ;
  wire \shiftreg_reg[896]_srl32_n_0 ;
  wire \shiftreg_reg[928]_srl32_n_1 ;
  wire \shiftreg_reg[960]_srl32_n_1 ;
  wire \shiftreg_reg[96]_srl32_n_1 ;
  wire \shiftreg_reg[992]_srl32_n_1 ;
  wire \shiftreg_reg_n_0_[0] ;
  wire \NLW_shiftreg_reg[1024]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1056]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1088]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1120]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1152]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1184]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1216]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1248]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1280]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[128]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1312]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1344]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1376]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1408]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1440]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1472]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1504]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1536]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1568]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1600]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[160]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1632]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1664]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1696]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1728]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1760]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1792]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1824]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1856]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1888]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1920]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[192]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1952]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[1984]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2016]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2048]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2080]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2112]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2144]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2176]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2208]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2240]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[224]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2272]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2304]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2336]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2368]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2400]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2432]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2464]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2496]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2528]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2560]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[256]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2592]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2624]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2656]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2688]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2720]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2752]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2784]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2816]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2848]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2880]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[288]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2912]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2944]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2976]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[2998]_srl22_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[320]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[32]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[352]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[384]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[416]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[448]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[480]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[512]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[544]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[576]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[608]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[640]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[64]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[672]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[704]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[736]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[768]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[800]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[832]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[864]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[896]_srl32_Q31_UNCONNECTED ;
  wire \NLW_shiftreg_reg[928]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[960]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[96]_srl32_Q_UNCONNECTED ;
  wire \NLW_shiftreg_reg[992]_srl32_Q_UNCONNECTED ;

  FDRE \shiftreg_reg[0] 
       (.C(clk),
        .CE(mode),
        .D(data_in),
        .Q(\shiftreg_reg_n_0_[0] ),
        .R(1'b0));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1024]_srl32 " *) 
  SRLC32E \shiftreg_reg[1024]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[992]_srl32_n_1 ),
        .Q(\shiftreg_reg[1024]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1024]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1056]_srl32 " *) 
  SRLC32E \shiftreg_reg[1056]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1024]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1056]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1056]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1088]_srl32 " *) 
  SRLC32E \shiftreg_reg[1088]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1056]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1088]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1088]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1120]_srl32 " *) 
  SRLC32E \shiftreg_reg[1120]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1088]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1120]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1120]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1152]_srl32 " *) 
  SRLC32E \shiftreg_reg[1152]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1120]_srl32_n_1 ),
        .Q(\shiftreg_reg[1152]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1152]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1184]_srl32 " *) 
  SRLC32E \shiftreg_reg[1184]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1152]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1184]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1184]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1216]_srl32 " *) 
  SRLC32E \shiftreg_reg[1216]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1184]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1216]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1216]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1248]_srl32 " *) 
  SRLC32E \shiftreg_reg[1248]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1216]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1248]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1248]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1280]_srl32 " *) 
  SRLC32E \shiftreg_reg[1280]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1248]_srl32_n_1 ),
        .Q(\shiftreg_reg[1280]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1280]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[128]_srl32 " *) 
  SRLC32E \shiftreg_reg[128]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[96]_srl32_n_1 ),
        .Q(\shiftreg_reg[128]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[128]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1312]_srl32 " *) 
  SRLC32E \shiftreg_reg[1312]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1280]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1312]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1312]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1344]_srl32 " *) 
  SRLC32E \shiftreg_reg[1344]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1312]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1344]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1344]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1376]_srl32 " *) 
  SRLC32E \shiftreg_reg[1376]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1344]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1376]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1376]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1408]_srl32 " *) 
  SRLC32E \shiftreg_reg[1408]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1376]_srl32_n_1 ),
        .Q(\shiftreg_reg[1408]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1408]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1440]_srl32 " *) 
  SRLC32E \shiftreg_reg[1440]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1408]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1440]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1440]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1472]_srl32 " *) 
  SRLC32E \shiftreg_reg[1472]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1440]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1472]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1472]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1504]_srl32 " *) 
  SRLC32E \shiftreg_reg[1504]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1472]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1504]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1504]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1536]_srl32 " *) 
  SRLC32E \shiftreg_reg[1536]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1504]_srl32_n_1 ),
        .Q(\shiftreg_reg[1536]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1536]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1568]_srl32 " *) 
  SRLC32E \shiftreg_reg[1568]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1536]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1568]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1568]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1600]_srl32 " *) 
  SRLC32E \shiftreg_reg[1600]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1568]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1600]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1600]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[160]_srl32 " *) 
  SRLC32E \shiftreg_reg[160]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[128]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[160]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[160]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1632]_srl32 " *) 
  SRLC32E \shiftreg_reg[1632]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1600]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1632]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1632]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1664]_srl32 " *) 
  SRLC32E \shiftreg_reg[1664]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1632]_srl32_n_1 ),
        .Q(\shiftreg_reg[1664]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1664]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1696]_srl32 " *) 
  SRLC32E \shiftreg_reg[1696]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1664]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1696]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1696]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1728]_srl32 " *) 
  SRLC32E \shiftreg_reg[1728]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1696]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1728]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1728]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1760]_srl32 " *) 
  SRLC32E \shiftreg_reg[1760]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1728]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1760]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1760]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1792]_srl32 " *) 
  SRLC32E \shiftreg_reg[1792]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1760]_srl32_n_1 ),
        .Q(\shiftreg_reg[1792]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1792]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1824]_srl32 " *) 
  SRLC32E \shiftreg_reg[1824]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1792]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1824]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1824]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1856]_srl32 " *) 
  SRLC32E \shiftreg_reg[1856]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1824]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1856]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1856]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1888]_srl32 " *) 
  SRLC32E \shiftreg_reg[1888]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1856]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1888]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1888]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1920]_srl32 " *) 
  SRLC32E \shiftreg_reg[1920]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1888]_srl32_n_1 ),
        .Q(\shiftreg_reg[1920]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[1920]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[192]_srl32 " *) 
  SRLC32E \shiftreg_reg[192]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[160]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[192]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[192]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1952]_srl32 " *) 
  SRLC32E \shiftreg_reg[1952]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1920]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[1952]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1952]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[1984]_srl32 " *) 
  SRLC32E \shiftreg_reg[1984]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1952]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[1984]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[1984]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2016]_srl32 " *) 
  SRLC32E \shiftreg_reg[2016]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[1984]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2016]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2016]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2048]_srl32 " *) 
  SRLC32E \shiftreg_reg[2048]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2016]_srl32_n_1 ),
        .Q(\shiftreg_reg[2048]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2048]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2080]_srl32 " *) 
  SRLC32E \shiftreg_reg[2080]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2048]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2080]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2080]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2112]_srl32 " *) 
  SRLC32E \shiftreg_reg[2112]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2080]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2112]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2112]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2144]_srl32 " *) 
  SRLC32E \shiftreg_reg[2144]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2112]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2144]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2144]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2176]_srl32 " *) 
  SRLC32E \shiftreg_reg[2176]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2144]_srl32_n_1 ),
        .Q(\shiftreg_reg[2176]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2176]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2208]_srl32 " *) 
  SRLC32E \shiftreg_reg[2208]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2176]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2208]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2208]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2240]_srl32 " *) 
  SRLC32E \shiftreg_reg[2240]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2208]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2240]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2240]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[224]_srl32 " *) 
  SRLC32E \shiftreg_reg[224]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[192]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[224]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[224]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2272]_srl32 " *) 
  SRLC32E \shiftreg_reg[2272]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2240]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2272]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2272]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2304]_srl32 " *) 
  SRLC32E \shiftreg_reg[2304]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2272]_srl32_n_1 ),
        .Q(\shiftreg_reg[2304]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2304]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2336]_srl32 " *) 
  SRLC32E \shiftreg_reg[2336]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2304]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2336]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2336]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2368]_srl32 " *) 
  SRLC32E \shiftreg_reg[2368]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2336]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2368]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2368]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2400]_srl32 " *) 
  SRLC32E \shiftreg_reg[2400]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2368]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2400]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2400]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2432]_srl32 " *) 
  SRLC32E \shiftreg_reg[2432]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2400]_srl32_n_1 ),
        .Q(\shiftreg_reg[2432]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2432]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2464]_srl32 " *) 
  SRLC32E \shiftreg_reg[2464]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2432]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2464]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2464]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2496]_srl32 " *) 
  SRLC32E \shiftreg_reg[2496]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2464]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2496]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2496]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2528]_srl32 " *) 
  SRLC32E \shiftreg_reg[2528]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2496]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2528]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2528]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2560]_srl32 " *) 
  SRLC32E \shiftreg_reg[2560]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2528]_srl32_n_1 ),
        .Q(\shiftreg_reg[2560]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2560]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[256]_srl32 " *) 
  SRLC32E \shiftreg_reg[256]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[224]_srl32_n_1 ),
        .Q(\shiftreg_reg[256]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[256]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2592]_srl32 " *) 
  SRLC32E \shiftreg_reg[2592]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2560]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2592]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2592]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2624]_srl32 " *) 
  SRLC32E \shiftreg_reg[2624]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2592]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2624]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2624]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2656]_srl32 " *) 
  SRLC32E \shiftreg_reg[2656]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2624]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2656]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2656]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2688]_srl32 " *) 
  SRLC32E \shiftreg_reg[2688]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2656]_srl32_n_1 ),
        .Q(\shiftreg_reg[2688]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2688]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2720]_srl32 " *) 
  SRLC32E \shiftreg_reg[2720]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2688]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2720]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2720]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2752]_srl32 " *) 
  SRLC32E \shiftreg_reg[2752]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2720]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2752]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2752]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2784]_srl32 " *) 
  SRLC32E \shiftreg_reg[2784]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2752]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2784]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2784]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2816]_srl32 " *) 
  SRLC32E \shiftreg_reg[2816]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2784]_srl32_n_1 ),
        .Q(\shiftreg_reg[2816]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2816]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2848]_srl32 " *) 
  SRLC32E \shiftreg_reg[2848]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2816]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2848]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2848]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2880]_srl32 " *) 
  SRLC32E \shiftreg_reg[2880]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2848]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2880]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2880]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[288]_srl32 " *) 
  SRLC32E \shiftreg_reg[288]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[256]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[288]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[288]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2912]_srl32 " *) 
  SRLC32E \shiftreg_reg[2912]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2880]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[2912]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2912]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2944]_srl32 " *) 
  SRLC32E \shiftreg_reg[2944]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2912]_srl32_n_1 ),
        .Q(\shiftreg_reg[2944]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[2944]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2976]_srl32 " *) 
  SRLC32E \shiftreg_reg[2976]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2944]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[2976]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[2976]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[2998]_srl22 " *) 
  SRLC32E \shiftreg_reg[2998]_srl22 
       (.A({1'b1,1'b0,1'b1,1'b0,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[2976]_srl32_n_1 ),
        .Q(\shiftreg_reg[2998]_srl22_n_0 ),
        .Q31(\NLW_shiftreg_reg[2998]_srl22_Q31_UNCONNECTED ));
  FDRE \shiftreg_reg[2999] 
       (.C(clk),
        .CE(mode),
        .D(\shiftreg_reg[2998]_srl22_n_0 ),
        .Q(data_outTMR),
        .R(1'b0));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[320]_srl32 " *) 
  SRLC32E \shiftreg_reg[320]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[288]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[320]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[320]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[32]_srl32 " *) 
  SRLC32E \shiftreg_reg[32]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg_n_0_[0] ),
        .Q(\NLW_shiftreg_reg[32]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[32]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[352]_srl32 " *) 
  SRLC32E \shiftreg_reg[352]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[320]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[352]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[352]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[384]_srl32 " *) 
  SRLC32E \shiftreg_reg[384]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[352]_srl32_n_1 ),
        .Q(\shiftreg_reg[384]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[384]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[416]_srl32 " *) 
  SRLC32E \shiftreg_reg[416]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[384]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[416]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[416]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[448]_srl32 " *) 
  SRLC32E \shiftreg_reg[448]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[416]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[448]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[448]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[480]_srl32 " *) 
  SRLC32E \shiftreg_reg[480]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[448]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[480]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[480]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[512]_srl32 " *) 
  SRLC32E \shiftreg_reg[512]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[480]_srl32_n_1 ),
        .Q(\shiftreg_reg[512]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[512]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[544]_srl32 " *) 
  SRLC32E \shiftreg_reg[544]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[512]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[544]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[544]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[576]_srl32 " *) 
  SRLC32E \shiftreg_reg[576]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[544]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[576]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[576]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[608]_srl32 " *) 
  SRLC32E \shiftreg_reg[608]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[576]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[608]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[608]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[640]_srl32 " *) 
  SRLC32E \shiftreg_reg[640]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[608]_srl32_n_1 ),
        .Q(\shiftreg_reg[640]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[640]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[64]_srl32 " *) 
  SRLC32E \shiftreg_reg[64]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[32]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[64]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[64]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[672]_srl32 " *) 
  SRLC32E \shiftreg_reg[672]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[640]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[672]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[672]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[704]_srl32 " *) 
  SRLC32E \shiftreg_reg[704]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[672]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[704]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[704]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[736]_srl32 " *) 
  SRLC32E \shiftreg_reg[736]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[704]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[736]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[736]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[768]_srl32 " *) 
  SRLC32E \shiftreg_reg[768]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[736]_srl32_n_1 ),
        .Q(\shiftreg_reg[768]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[768]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[800]_srl32 " *) 
  SRLC32E \shiftreg_reg[800]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[768]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[800]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[800]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[832]_srl32 " *) 
  SRLC32E \shiftreg_reg[832]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[800]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[832]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[832]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[864]_srl32 " *) 
  SRLC32E \shiftreg_reg[864]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[832]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[864]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[864]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[896]_srl32 " *) 
  SRLC32E \shiftreg_reg[896]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[864]_srl32_n_1 ),
        .Q(\shiftreg_reg[896]_srl32_n_0 ),
        .Q31(\NLW_shiftreg_reg[896]_srl32_Q31_UNCONNECTED ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[928]_srl32 " *) 
  SRLC32E \shiftreg_reg[928]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[896]_srl32_n_0 ),
        .Q(\NLW_shiftreg_reg[928]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[928]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[960]_srl32 " *) 
  SRLC32E \shiftreg_reg[960]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[928]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[960]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[960]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[96]_srl32 " *) 
  SRLC32E \shiftreg_reg[96]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[64]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[96]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[96]_srl32_n_1 ));
  (* srl_bus_name = "\inst/U_1/shiftreg_reg " *) 
  (* srl_name = "\inst/U_1/shiftreg_reg[992]_srl32 " *) 
  SRLC32E \shiftreg_reg[992]_srl32 
       (.A({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CE(mode),
        .CLK(clk),
        .D(\shiftreg_reg[960]_srl32_n_1 ),
        .Q(\NLW_shiftreg_reg[992]_srl32_Q_UNCONNECTED ),
        .Q31(\shiftreg_reg[992]_srl32_n_1 ));
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
