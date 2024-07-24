// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
// Date        : Wed May 24 16:54:03 2023
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ system_scb_testmaster_0_0_sim_netlist.v
// Design      : system_scb_testmaster_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35ticsg324-1L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_control_unit
   (S_AXI_AWREADY,
    S_AXI_WREADY,
    S_AXI_ARREADY,
    S_AXI_BVALID,
    S_AXI_RVALID,
    Q,
    \rx_nb_bytes_fb_reg[3] ,
    \tx_byte1_fb_reg[7] ,
    \tx_byte0_fb_reg[7] ,
    tx_start_f,
    \tx_byte5_fb_reg[7] ,
    \tx_byte4_fb_reg[7] ,
    \tx_byte3_fb_reg[7] ,
    \tx_byte2_fb_reg[7] ,
    \tx_byte9_fb_reg[7] ,
    \tx_byte8_fb_reg[7] ,
    \tx_byte7_fb_reg[7] ,
    \tx_byte6_fb_reg[7] ,
    \tx_byte13_fb_reg[7] ,
    \tx_byte12_fb_reg[7] ,
    \tx_byte11_fb_reg[7] ,
    \tx_byte10_fb_reg[7] ,
    \tx_byte15_fb_reg[7] ,
    \tx_byte14_fb_reg[7] ,
    rx_start_f,
    \S_AXI_RDATA_reg[8]_0 ,
    \S_AXI_RDATA_reg[9]_0 ,
    \S_AXI_RDATA_reg[10]_0 ,
    \S_AXI_RDATA_reg[11]_0 ,
    \S_AXI_RDATA_reg[12]_0 ,
    S_AXI_RDATA,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    \rx_byte15_f_reg[12] ,
    \rx_byte14_f_reg[12] ,
    \rx_bytes_sent_f_reg[3] ,
    S_AXI_ARVALID,
    \axi_araddr_reg[5]_0 ,
    \axi_araddr_reg[5]_1 ,
    \axi_araddr_reg[5]_2 ,
    \axi_araddr_reg[5]_3 ,
    \axi_araddr_reg[5]_4 ,
    done_f,
    \axi_araddr_reg[4]_0 ,
    \rx_byte5_f_reg[0] ,
    \rx_byte1_f_reg[12] ,
    \rx_byte0_f_reg[12] ,
    \axi_araddr_reg[4]_1 ,
    \rx_byte5_f_reg[1] ,
    \axi_araddr_reg[4]_2 ,
    \rx_byte5_f_reg[2] ,
    \axi_araddr_reg[4]_3 ,
    \rx_byte5_f_reg[3] ,
    \tx_bytes_sent_f_reg[3] ,
    \axi_araddr_reg[4]_4 ,
    \rx_byte5_f_reg[4] ,
    \axi_araddr_reg[4]_5 ,
    \rx_byte5_f_reg[5] ,
    \axi_araddr_reg[4]_6 ,
    \rx_byte5_f_reg[6] ,
    \axi_araddr_reg[4]_7 ,
    \rx_byte5_f_reg[7] ,
    S_AXI_BREADY,
    S_AXI_RREADY,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARESETN_0,
    S_AXI_ARESETN_1,
    S_AXI_ARESETN_2,
    S_AXI_ARESETN_3,
    S_AXI_ARESETN_4,
    S_AXI_ARADDR,
    S_AXI_ARESETN_5);
  output S_AXI_AWREADY;
  output S_AXI_WREADY;
  output S_AXI_ARREADY;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  output [3:0]Q;
  output [14:0]\rx_nb_bytes_fb_reg[3] ;
  output [7:0]\tx_byte1_fb_reg[7] ;
  output [7:0]\tx_byte0_fb_reg[7] ;
  output tx_start_f;
  output [7:0]\tx_byte5_fb_reg[7] ;
  output [7:0]\tx_byte4_fb_reg[7] ;
  output [7:0]\tx_byte3_fb_reg[7] ;
  output [7:0]\tx_byte2_fb_reg[7] ;
  output [7:0]\tx_byte9_fb_reg[7] ;
  output [7:0]\tx_byte8_fb_reg[7] ;
  output [7:0]\tx_byte7_fb_reg[7] ;
  output [7:0]\tx_byte6_fb_reg[7] ;
  output [7:0]\tx_byte13_fb_reg[7] ;
  output [7:0]\tx_byte12_fb_reg[7] ;
  output [7:0]\tx_byte11_fb_reg[7] ;
  output [7:0]\tx_byte10_fb_reg[7] ;
  output [7:0]\tx_byte15_fb_reg[7] ;
  output [7:0]\tx_byte14_fb_reg[7] ;
  output rx_start_f;
  output \S_AXI_RDATA_reg[8]_0 ;
  output \S_AXI_RDATA_reg[9]_0 ;
  output \S_AXI_RDATA_reg[10]_0 ;
  output \S_AXI_RDATA_reg[11]_0 ;
  output \S_AXI_RDATA_reg[12]_0 ;
  output [19:0]S_AXI_RDATA;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input [12:0]\rx_byte15_f_reg[12] ;
  input [12:0]\rx_byte14_f_reg[12] ;
  input [3:0]\rx_bytes_sent_f_reg[3] ;
  input S_AXI_ARVALID;
  input \axi_araddr_reg[5]_0 ;
  input \axi_araddr_reg[5]_1 ;
  input \axi_araddr_reg[5]_2 ;
  input \axi_araddr_reg[5]_3 ;
  input \axi_araddr_reg[5]_4 ;
  input done_f;
  input \axi_araddr_reg[4]_0 ;
  input \rx_byte5_f_reg[0] ;
  input [12:0]\rx_byte1_f_reg[12] ;
  input [12:0]\rx_byte0_f_reg[12] ;
  input \axi_araddr_reg[4]_1 ;
  input \rx_byte5_f_reg[1] ;
  input \axi_araddr_reg[4]_2 ;
  input \rx_byte5_f_reg[2] ;
  input \axi_araddr_reg[4]_3 ;
  input \rx_byte5_f_reg[3] ;
  input [3:0]\tx_bytes_sent_f_reg[3] ;
  input \axi_araddr_reg[4]_4 ;
  input \rx_byte5_f_reg[4] ;
  input \axi_araddr_reg[4]_5 ;
  input \rx_byte5_f_reg[5] ;
  input \axi_araddr_reg[4]_6 ;
  input \rx_byte5_f_reg[6] ;
  input \axi_araddr_reg[4]_7 ;
  input \rx_byte5_f_reg[7] ;
  input S_AXI_BREADY;
  input S_AXI_RREADY;
  input [7:0]S_AXI_AWADDR;
  input [19:0]S_AXI_WDATA;
  input S_AXI_ARESETN_0;
  input S_AXI_ARESETN_1;
  input S_AXI_ARESETN_2;
  input S_AXI_ARESETN_3;
  input S_AXI_ARESETN_4;
  input [7:0]S_AXI_ARADDR;
  input S_AXI_ARESETN_5;

  wire [3:0]Q;
  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARESETN_1;
  wire S_AXI_ARESETN_2;
  wire S_AXI_ARESETN_3;
  wire S_AXI_ARESETN_4;
  wire S_AXI_ARESETN_5;
  wire S_AXI_ARREADY;
  wire S_AXI_ARREADY_i_1_n_0;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWREADY_i_1_n_0;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire S_AXI_BVALID_i_1_n_0;
  wire [19:0]S_AXI_RDATA;
  wire \S_AXI_RDATA[0]_i_10_n_0 ;
  wire \S_AXI_RDATA[0]_i_11_n_0 ;
  wire \S_AXI_RDATA[0]_i_12_n_0 ;
  wire \S_AXI_RDATA[0]_i_13_n_0 ;
  wire \S_AXI_RDATA[0]_i_1_n_0 ;
  wire \S_AXI_RDATA[0]_i_4_n_0 ;
  wire \S_AXI_RDATA[0]_i_9_n_0 ;
  wire \S_AXI_RDATA[10]_i_1_n_0 ;
  wire \S_AXI_RDATA[10]_i_2_n_0 ;
  wire \S_AXI_RDATA[10]_i_4_n_0 ;
  wire \S_AXI_RDATA[11]_i_1_n_0 ;
  wire \S_AXI_RDATA[11]_i_2_n_0 ;
  wire \S_AXI_RDATA[11]_i_4_n_0 ;
  wire \S_AXI_RDATA[12]_i_1_n_0 ;
  wire \S_AXI_RDATA[12]_i_2_n_0 ;
  wire \S_AXI_RDATA[12]_i_4_n_0 ;
  wire \S_AXI_RDATA[12]_i_5_n_0 ;
  wire \S_AXI_RDATA[13]_i_1_n_0 ;
  wire \S_AXI_RDATA[13]_i_2_n_0 ;
  wire \S_AXI_RDATA[14]_i_1_n_0 ;
  wire \S_AXI_RDATA[14]_i_2_n_0 ;
  wire \S_AXI_RDATA[15]_i_1_n_0 ;
  wire \S_AXI_RDATA[15]_i_2_n_0 ;
  wire \S_AXI_RDATA[16]_i_1_n_0 ;
  wire \S_AXI_RDATA[16]_i_2_n_0 ;
  wire \S_AXI_RDATA[17]_i_1_n_0 ;
  wire \S_AXI_RDATA[17]_i_2_n_0 ;
  wire \S_AXI_RDATA[18]_i_1_n_0 ;
  wire \S_AXI_RDATA[18]_i_2_n_0 ;
  wire \S_AXI_RDATA[19]_i_1_n_0 ;
  wire \S_AXI_RDATA[19]_i_2_n_0 ;
  wire \S_AXI_RDATA[1]_i_10_n_0 ;
  wire \S_AXI_RDATA[1]_i_11_n_0 ;
  wire \S_AXI_RDATA[1]_i_12_n_0 ;
  wire \S_AXI_RDATA[1]_i_13_n_0 ;
  wire \S_AXI_RDATA[1]_i_1_n_0 ;
  wire \S_AXI_RDATA[1]_i_4_n_0 ;
  wire \S_AXI_RDATA[1]_i_9_n_0 ;
  wire \S_AXI_RDATA[2]_i_10_n_0 ;
  wire \S_AXI_RDATA[2]_i_12_n_0 ;
  wire \S_AXI_RDATA[2]_i_13_n_0 ;
  wire \S_AXI_RDATA[2]_i_14_n_0 ;
  wire \S_AXI_RDATA[2]_i_1_n_0 ;
  wire \S_AXI_RDATA[2]_i_2_n_0 ;
  wire \S_AXI_RDATA[2]_i_3_n_0 ;
  wire \S_AXI_RDATA[2]_i_7_n_0 ;
  wire \S_AXI_RDATA[3]_i_10_n_0 ;
  wire \S_AXI_RDATA[3]_i_12_n_0 ;
  wire \S_AXI_RDATA[3]_i_13_n_0 ;
  wire \S_AXI_RDATA[3]_i_14_n_0 ;
  wire \S_AXI_RDATA[3]_i_1_n_0 ;
  wire \S_AXI_RDATA[3]_i_2_n_0 ;
  wire \S_AXI_RDATA[3]_i_3_n_0 ;
  wire \S_AXI_RDATA[3]_i_7_n_0 ;
  wire \S_AXI_RDATA[4]_i_10_n_0 ;
  wire \S_AXI_RDATA[4]_i_11_n_0 ;
  wire \S_AXI_RDATA[4]_i_12_n_0 ;
  wire \S_AXI_RDATA[4]_i_13_n_0 ;
  wire \S_AXI_RDATA[4]_i_1_n_0 ;
  wire \S_AXI_RDATA[4]_i_4_n_0 ;
  wire \S_AXI_RDATA[4]_i_9_n_0 ;
  wire \S_AXI_RDATA[5]_i_10_n_0 ;
  wire \S_AXI_RDATA[5]_i_11_n_0 ;
  wire \S_AXI_RDATA[5]_i_12_n_0 ;
  wire \S_AXI_RDATA[5]_i_13_n_0 ;
  wire \S_AXI_RDATA[5]_i_1_n_0 ;
  wire \S_AXI_RDATA[5]_i_4_n_0 ;
  wire \S_AXI_RDATA[5]_i_9_n_0 ;
  wire \S_AXI_RDATA[6]_i_10_n_0 ;
  wire \S_AXI_RDATA[6]_i_11_n_0 ;
  wire \S_AXI_RDATA[6]_i_12_n_0 ;
  wire \S_AXI_RDATA[6]_i_13_n_0 ;
  wire \S_AXI_RDATA[6]_i_1_n_0 ;
  wire \S_AXI_RDATA[6]_i_4_n_0 ;
  wire \S_AXI_RDATA[6]_i_9_n_0 ;
  wire \S_AXI_RDATA[7]_i_10_n_0 ;
  wire \S_AXI_RDATA[7]_i_11_n_0 ;
  wire \S_AXI_RDATA[7]_i_12_n_0 ;
  wire \S_AXI_RDATA[7]_i_13_n_0 ;
  wire \S_AXI_RDATA[7]_i_1_n_0 ;
  wire \S_AXI_RDATA[7]_i_4_n_0 ;
  wire \S_AXI_RDATA[7]_i_9_n_0 ;
  wire \S_AXI_RDATA[8]_i_1_n_0 ;
  wire \S_AXI_RDATA[8]_i_2_n_0 ;
  wire \S_AXI_RDATA[8]_i_4_n_0 ;
  wire \S_AXI_RDATA[9]_i_1_n_0 ;
  wire \S_AXI_RDATA[9]_i_2_n_0 ;
  wire \S_AXI_RDATA[9]_i_4_n_0 ;
  wire \S_AXI_RDATA_reg[0]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[0]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[0]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[0]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[0]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[10]_0 ;
  wire \S_AXI_RDATA_reg[11]_0 ;
  wire \S_AXI_RDATA_reg[12]_0 ;
  wire \S_AXI_RDATA_reg[1]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[1]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[1]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[1]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[1]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[2]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[2]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[3]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[3]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[4]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[4]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[4]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[4]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[4]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[5]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[5]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[5]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[5]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[5]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[6]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[6]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[6]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[6]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[6]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[7]_i_2_n_0 ;
  wire \S_AXI_RDATA_reg[7]_i_3_n_0 ;
  wire \S_AXI_RDATA_reg[7]_i_5_n_0 ;
  wire \S_AXI_RDATA_reg[7]_i_6_n_0 ;
  wire \S_AXI_RDATA_reg[7]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[8]_0 ;
  wire \S_AXI_RDATA_reg[9]_0 ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire S_AXI_RVALID_i_1_n_0;
  wire [19:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WREADY_i_1_n_0;
  wire S_AXI_WVALID;
  wire \axi_araddr[9]_i_1_n_0 ;
  wire \axi_araddr_reg[4]_0 ;
  wire \axi_araddr_reg[4]_1 ;
  wire \axi_araddr_reg[4]_2 ;
  wire \axi_araddr_reg[4]_3 ;
  wire \axi_araddr_reg[4]_4 ;
  wire \axi_araddr_reg[4]_5 ;
  wire \axi_araddr_reg[4]_6 ;
  wire \axi_araddr_reg[4]_7 ;
  wire \axi_araddr_reg[5]_0 ;
  wire \axi_araddr_reg[5]_1 ;
  wire \axi_araddr_reg[5]_2 ;
  wire \axi_araddr_reg[5]_3 ;
  wire \axi_araddr_reg[5]_4 ;
  wire \axi_araddr_reg_n_0_[8] ;
  wire \axi_araddr_reg_n_0_[9] ;
  wire [16:16]ctrl_reg;
  wire \ctrl_reg[0]_i_1_n_0 ;
  wire \ctrl_reg[16]_i_4_n_0 ;
  wire \ctrl_reg[1]_i_1_n_0 ;
  wire done_f;
  wire [4:0]loc_waddr;
  wire [2:0]p_0_in;
  wire read_en;
  wire read_en_i_1_n_0;
  wire [12:0]\rx_byte0_f_reg[12] ;
  wire [12:0]\rx_byte14_f_reg[12] ;
  wire [12:0]\rx_byte15_f_reg[12] ;
  wire [12:0]\rx_byte1_f_reg[12] ;
  wire \rx_byte5_f_reg[0] ;
  wire \rx_byte5_f_reg[1] ;
  wire \rx_byte5_f_reg[2] ;
  wire \rx_byte5_f_reg[3] ;
  wire \rx_byte5_f_reg[4] ;
  wire \rx_byte5_f_reg[5] ;
  wire \rx_byte5_f_reg[6] ;
  wire \rx_byte5_f_reg[7] ;
  wire [3:0]\rx_bytes_sent_f_reg[3] ;
  wire [14:0]\rx_nb_bytes_fb_reg[3] ;
  wire rx_start_f;
  wire [5:4]sel0;
  wire [7:0]\tx_byte0_fb_reg[7] ;
  wire [7:0]\tx_byte10_fb_reg[7] ;
  wire [7:0]\tx_byte11_fb_reg[7] ;
  wire [7:0]\tx_byte12_fb_reg[7] ;
  wire [7:0]\tx_byte13_fb_reg[7] ;
  wire [7:0]\tx_byte14_fb_reg[7] ;
  wire [7:0]\tx_byte15_fb_reg[7] ;
  wire [7:0]\tx_byte1_fb_reg[7] ;
  wire [7:0]\tx_byte2_fb_reg[7] ;
  wire [7:0]\tx_byte3_fb_reg[7] ;
  wire [7:0]\tx_byte4_fb_reg[7] ;
  wire [7:0]\tx_byte5_fb_reg[7] ;
  wire [7:0]\tx_byte6_fb_reg[7] ;
  wire [7:0]\tx_byte7_fb_reg[7] ;
  wire [7:0]\tx_byte8_fb_reg[7] ;
  wire [7:0]\tx_byte9_fb_reg[7] ;
  wire tx_byte_reg;
  wire \tx_byte_reg[0][7]_i_2_n_0 ;
  wire \tx_byte_reg[0][7]_i_3_n_0 ;
  wire \tx_byte_reg[10][7]_i_1_n_0 ;
  wire \tx_byte_reg[10][7]_i_2_n_0 ;
  wire \tx_byte_reg[11][7]_i_1_n_0 ;
  wire \tx_byte_reg[11][7]_i_2_n_0 ;
  wire \tx_byte_reg[12][7]_i_1_n_0 ;
  wire \tx_byte_reg[13][7]_i_1_n_0 ;
  wire \tx_byte_reg[14][7]_i_1_n_0 ;
  wire \tx_byte_reg[15][7]_i_1_n_0 ;
  wire \tx_byte_reg[15][7]_i_2_n_0 ;
  wire \tx_byte_reg[1][7]_i_1_n_0 ;
  wire \tx_byte_reg[2][7]_i_1_n_0 ;
  wire \tx_byte_reg[3][7]_i_1_n_0 ;
  wire \tx_byte_reg[4][7]_i_1_n_0 ;
  wire \tx_byte_reg[5][7]_i_1_n_0 ;
  wire \tx_byte_reg[5][7]_i_2_n_0 ;
  wire \tx_byte_reg[6][7]_i_1_n_0 ;
  wire \tx_byte_reg[6][7]_i_2_n_0 ;
  wire \tx_byte_reg[7][7]_i_1_n_0 ;
  wire \tx_byte_reg[7][7]_i_2_n_0 ;
  wire \tx_byte_reg[8][7]_i_1_n_0 ;
  wire \tx_byte_reg[9][7]_i_1_n_0 ;
  wire [3:0]\tx_bytes_sent_f_reg[3] ;
  wire tx_start_f;
  wire write_en__2;

  LUT2 #(
    .INIT(4'h2)) 
    S_AXI_ARREADY_i_1
       (.I0(read_en),
        .I1(S_AXI_ARREADY),
        .O(S_AXI_ARREADY_i_1_n_0));
  FDCE S_AXI_ARREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_ARREADY_i_1_n_0),
        .Q(S_AXI_ARREADY));
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_AWREADY_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_AWREADY),
        .O(S_AXI_AWREADY_i_1_n_0));
  FDCE S_AXI_AWREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWREADY_i_1_n_0),
        .Q(S_AXI_AWREADY));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    S_AXI_BVALID_i_1
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .I4(S_AXI_BREADY),
        .I5(S_AXI_BVALID),
        .O(S_AXI_BVALID_i_1_n_0));
  FDCE S_AXI_BVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_BVALID_i_1_n_0),
        .Q(S_AXI_BVALID));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[0]_i_1 
       (.I0(\S_AXI_RDATA_reg[0]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[0]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[0]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [0]),
        .I1(\tx_byte4_fb_reg[7] [0]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [0]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [0]),
        .O(\S_AXI_RDATA[0]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [0]),
        .I1(\tx_byte8_fb_reg[7] [0]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [0]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [0]),
        .O(\S_AXI_RDATA[0]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [0]),
        .I1(\tx_byte12_fb_reg[7] [0]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [0]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [0]),
        .O(\S_AXI_RDATA[0]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_13 
       (.I0(\rx_byte1_f_reg[12] [0]),
        .I1(\rx_byte0_f_reg[12] [0]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [0]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [0]),
        .O(\S_AXI_RDATA[0]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[0]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [0]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [0]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[0]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [0]),
        .I1(\tx_byte0_fb_reg[7] [0]),
        .I2(Q[1]),
        .I3(done_f),
        .I4(Q[0]),
        .I5(tx_start_f),
        .O(\S_AXI_RDATA[0]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[10]_i_1 
       (.I0(\S_AXI_RDATA[10]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_araddr_reg[5]_2 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[10]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \S_AXI_RDATA[10]_i_2 
       (.I0(Q[2]),
        .I1(\rx_nb_bytes_fb_reg[3] [5]),
        .I2(Q[0]),
        .I3(\rx_bytes_sent_f_reg[3] [2]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[10]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[10]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [10]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [10]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[10]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \S_AXI_RDATA[10]_i_8 
       (.I0(Q[1]),
        .I1(\rx_byte0_f_reg[12] [10]),
        .I2(Q[0]),
        .I3(\rx_byte1_f_reg[12] [10]),
        .O(\S_AXI_RDATA_reg[10]_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[11]_i_1 
       (.I0(\S_AXI_RDATA[11]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_araddr_reg[5]_1 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[11]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \S_AXI_RDATA[11]_i_2 
       (.I0(Q[2]),
        .I1(\rx_nb_bytes_fb_reg[3] [6]),
        .I2(Q[0]),
        .I3(\rx_bytes_sent_f_reg[3] [3]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[11]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [11]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [11]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[11]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \S_AXI_RDATA[11]_i_8 
       (.I0(Q[1]),
        .I1(\rx_byte0_f_reg[12] [11]),
        .I2(Q[0]),
        .I3(\rx_byte1_f_reg[12] [11]),
        .O(\S_AXI_RDATA_reg[11]_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[12]_i_1 
       (.I0(\S_AXI_RDATA[12]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_araddr_reg[5]_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[12]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00000010)) 
    \S_AXI_RDATA[12]_i_2 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(\rx_nb_bytes_fb_reg[3] [7]),
        .I3(Q[1]),
        .I4(Q[3]),
        .O(\S_AXI_RDATA[12]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[12]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [12]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [12]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[12]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \S_AXI_RDATA[12]_i_5 
       (.I0(\axi_araddr_reg_n_0_[8] ),
        .I1(\axi_araddr_reg_n_0_[9] ),
        .O(\S_AXI_RDATA[12]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \S_AXI_RDATA[12]_i_9 
       (.I0(Q[1]),
        .I1(\rx_byte0_f_reg[12] [12]),
        .I2(Q[0]),
        .I3(\rx_byte1_f_reg[12] [12]),
        .O(\S_AXI_RDATA_reg[12]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[13]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[13]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[13]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [8]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[13]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[14]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[14]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[14]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [9]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[14]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[15]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[15]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[15]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[15]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [10]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[15]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[16]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[16]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[16]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[16]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [11]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[16]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[17]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[17]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[17]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[17]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [12]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[17]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[18]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[18]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[18]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[18]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [13]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[18]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h0004)) 
    \S_AXI_RDATA[19]_i_1 
       (.I0(sel0[5]),
        .I1(\S_AXI_RDATA[19]_i_2_n_0 ),
        .I2(\axi_araddr_reg_n_0_[9] ),
        .I3(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[19]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000010)) 
    \S_AXI_RDATA[19]_i_2 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(\rx_nb_bytes_fb_reg[3] [14]),
        .I3(Q[0]),
        .I4(Q[2]),
        .I5(sel0[4]),
        .O(\S_AXI_RDATA[19]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[1]_i_1 
       (.I0(\S_AXI_RDATA_reg[1]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[1]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[1]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [1]),
        .I1(\tx_byte4_fb_reg[7] [1]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [1]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [1]),
        .O(\S_AXI_RDATA[1]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [1]),
        .I1(\tx_byte8_fb_reg[7] [1]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [1]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [1]),
        .O(\S_AXI_RDATA[1]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [1]),
        .I1(\tx_byte12_fb_reg[7] [1]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [1]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [1]),
        .O(\S_AXI_RDATA[1]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_13 
       (.I0(\rx_byte1_f_reg[12] [1]),
        .I1(\rx_byte0_f_reg[12] [1]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [1]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [1]),
        .O(\S_AXI_RDATA[1]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[1]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [1]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [1]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[1]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hA0A0CFC0)) 
    \S_AXI_RDATA[1]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [1]),
        .I1(\tx_byte0_fb_reg[7] [1]),
        .I2(Q[1]),
        .I3(rx_start_f),
        .I4(Q[0]),
        .O(\S_AXI_RDATA[1]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \S_AXI_RDATA[2]_i_1 
       (.I0(\S_AXI_RDATA[2]_i_2_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(\S_AXI_RDATA[2]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[9] ),
        .I5(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_10 
       (.I0(\rx_byte1_f_reg[12] [2]),
        .I1(\rx_byte0_f_reg[12] [2]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [2]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [2]),
        .O(\S_AXI_RDATA[2]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_12 
       (.I0(\tx_byte9_fb_reg[7] [2]),
        .I1(\tx_byte8_fb_reg[7] [2]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [2]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [2]),
        .O(\S_AXI_RDATA[2]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_13 
       (.I0(\tx_byte13_fb_reg[7] [2]),
        .I1(\tx_byte12_fb_reg[7] [2]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [2]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [2]),
        .O(\S_AXI_RDATA[2]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_14 
       (.I0(\tx_byte5_fb_reg[7] [2]),
        .I1(\tx_byte4_fb_reg[7] [2]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [2]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [2]),
        .O(\S_AXI_RDATA[2]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_2 
       (.I0(\axi_araddr_reg[4]_2 ),
        .I1(\S_AXI_RDATA_reg[2]_i_5_n_0 ),
        .I2(sel0[4]),
        .I3(\S_AXI_RDATA_reg[2]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\S_AXI_RDATA[2]_i_7_n_0 ),
        .O(\S_AXI_RDATA[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[2]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [2]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [2]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \S_AXI_RDATA[2]_i_7 
       (.I0(\S_AXI_RDATA[2]_i_14_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\tx_byte0_fb_reg[7] [2]),
        .I4(Q[0]),
        .I5(\tx_byte1_fb_reg[7] [2]),
        .O(\S_AXI_RDATA[2]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000002E22)) 
    \S_AXI_RDATA[3]_i_1 
       (.I0(\S_AXI_RDATA[3]_i_2_n_0 ),
        .I1(sel0[5]),
        .I2(sel0[4]),
        .I3(\S_AXI_RDATA[3]_i_3_n_0 ),
        .I4(\axi_araddr_reg_n_0_[9] ),
        .I5(\axi_araddr_reg_n_0_[8] ),
        .O(\S_AXI_RDATA[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_10 
       (.I0(\rx_byte1_f_reg[12] [3]),
        .I1(\rx_byte0_f_reg[12] [3]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [3]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [3]),
        .O(\S_AXI_RDATA[3]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_12 
       (.I0(\tx_byte9_fb_reg[7] [3]),
        .I1(\tx_byte8_fb_reg[7] [3]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [3]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [3]),
        .O(\S_AXI_RDATA[3]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_13 
       (.I0(\tx_byte13_fb_reg[7] [3]),
        .I1(\tx_byte12_fb_reg[7] [3]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [3]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [3]),
        .O(\S_AXI_RDATA[3]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_14 
       (.I0(\tx_byte5_fb_reg[7] [3]),
        .I1(\tx_byte4_fb_reg[7] [3]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [3]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [3]),
        .O(\S_AXI_RDATA[3]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_2 
       (.I0(\axi_araddr_reg[4]_3 ),
        .I1(\S_AXI_RDATA_reg[3]_i_5_n_0 ),
        .I2(sel0[4]),
        .I3(\S_AXI_RDATA_reg[3]_i_6_n_0 ),
        .I4(Q[3]),
        .I5(\S_AXI_RDATA[3]_i_7_n_0 ),
        .O(\S_AXI_RDATA[3]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[3]_i_3 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [3]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [3]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[3]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hB8B8B8888888B888)) 
    \S_AXI_RDATA[3]_i_7 
       (.I0(\S_AXI_RDATA[3]_i_14_n_0 ),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(\tx_byte0_fb_reg[7] [3]),
        .I4(Q[0]),
        .I5(\tx_byte1_fb_reg[7] [3]),
        .O(\S_AXI_RDATA[3]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[4]_i_1 
       (.I0(\S_AXI_RDATA_reg[4]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[4]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[4]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [4]),
        .I1(\tx_byte4_fb_reg[7] [4]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [4]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [4]),
        .O(\S_AXI_RDATA[4]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [4]),
        .I1(\tx_byte8_fb_reg[7] [4]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [4]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [4]),
        .O(\S_AXI_RDATA[4]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [4]),
        .I1(\tx_byte12_fb_reg[7] [4]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [4]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [4]),
        .O(\S_AXI_RDATA[4]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_13 
       (.I0(\rx_byte1_f_reg[12] [4]),
        .I1(\rx_byte0_f_reg[12] [4]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [4]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [4]),
        .O(\S_AXI_RDATA[4]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[4]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [4]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [4]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[4]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'hAFC0A0C0)) 
    \S_AXI_RDATA[4]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [4]),
        .I1(\tx_byte0_fb_reg[7] [4]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(\tx_bytes_sent_f_reg[3] [0]),
        .O(\S_AXI_RDATA[4]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[5]_i_1 
       (.I0(\S_AXI_RDATA_reg[5]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[5]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[5]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [5]),
        .I1(\tx_byte4_fb_reg[7] [5]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [5]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [5]),
        .O(\S_AXI_RDATA[5]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [5]),
        .I1(\tx_byte8_fb_reg[7] [5]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [5]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [5]),
        .O(\S_AXI_RDATA[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [5]),
        .I1(\tx_byte12_fb_reg[7] [5]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [5]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [5]),
        .O(\S_AXI_RDATA[5]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_13 
       (.I0(\rx_byte1_f_reg[12] [5]),
        .I1(\rx_byte0_f_reg[12] [5]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [5]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [5]),
        .O(\S_AXI_RDATA[5]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[5]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [5]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [5]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [5]),
        .I1(\tx_byte0_fb_reg[7] [5]),
        .I2(Q[1]),
        .I3(\tx_bytes_sent_f_reg[3] [1]),
        .I4(Q[0]),
        .I5(\rx_nb_bytes_fb_reg[3] [0]),
        .O(\S_AXI_RDATA[5]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[6]_i_1 
       (.I0(\S_AXI_RDATA_reg[6]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[6]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[6]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [6]),
        .I1(\tx_byte4_fb_reg[7] [6]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [6]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [6]),
        .O(\S_AXI_RDATA[6]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [6]),
        .I1(\tx_byte8_fb_reg[7] [6]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [6]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [6]),
        .O(\S_AXI_RDATA[6]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [6]),
        .I1(\tx_byte12_fb_reg[7] [6]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [6]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [6]),
        .O(\S_AXI_RDATA[6]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_13 
       (.I0(\rx_byte1_f_reg[12] [6]),
        .I1(\rx_byte0_f_reg[12] [6]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [6]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [6]),
        .O(\S_AXI_RDATA[6]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[6]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [6]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [6]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [6]),
        .I1(\tx_byte0_fb_reg[7] [6]),
        .I2(Q[1]),
        .I3(\tx_bytes_sent_f_reg[3] [2]),
        .I4(Q[0]),
        .I5(\rx_nb_bytes_fb_reg[3] [1]),
        .O(\S_AXI_RDATA[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[7]_i_1 
       (.I0(\S_AXI_RDATA_reg[7]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\S_AXI_RDATA_reg[7]_i_3_n_0 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[7]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_10 
       (.I0(\tx_byte5_fb_reg[7] [7]),
        .I1(\tx_byte4_fb_reg[7] [7]),
        .I2(Q[1]),
        .I3(\tx_byte3_fb_reg[7] [7]),
        .I4(Q[0]),
        .I5(\tx_byte2_fb_reg[7] [7]),
        .O(\S_AXI_RDATA[7]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_11 
       (.I0(\tx_byte9_fb_reg[7] [7]),
        .I1(\tx_byte8_fb_reg[7] [7]),
        .I2(Q[1]),
        .I3(\tx_byte7_fb_reg[7] [7]),
        .I4(Q[0]),
        .I5(\tx_byte6_fb_reg[7] [7]),
        .O(\S_AXI_RDATA[7]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_12 
       (.I0(\tx_byte13_fb_reg[7] [7]),
        .I1(\tx_byte12_fb_reg[7] [7]),
        .I2(Q[1]),
        .I3(\tx_byte11_fb_reg[7] [7]),
        .I4(Q[0]),
        .I5(\tx_byte10_fb_reg[7] [7]),
        .O(\S_AXI_RDATA[7]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_13 
       (.I0(\rx_byte1_f_reg[12] [7]),
        .I1(\rx_byte0_f_reg[12] [7]),
        .I2(Q[1]),
        .I3(\tx_byte15_fb_reg[7] [7]),
        .I4(Q[0]),
        .I5(\tx_byte14_fb_reg[7] [7]),
        .O(\S_AXI_RDATA[7]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[7]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [7]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [7]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[7]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_9 
       (.I0(\tx_byte1_fb_reg[7] [7]),
        .I1(\tx_byte0_fb_reg[7] [7]),
        .I2(Q[1]),
        .I3(\tx_bytes_sent_f_reg[3] [3]),
        .I4(Q[0]),
        .I5(\rx_nb_bytes_fb_reg[3] [2]),
        .O(\S_AXI_RDATA[7]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[8]_i_1 
       (.I0(\S_AXI_RDATA[8]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_araddr_reg[5]_4 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[8]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \S_AXI_RDATA[8]_i_2 
       (.I0(Q[2]),
        .I1(\rx_nb_bytes_fb_reg[3] [3]),
        .I2(Q[0]),
        .I3(\rx_bytes_sent_f_reg[3] [0]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[8]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[8]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [8]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [8]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[8]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \S_AXI_RDATA[8]_i_8 
       (.I0(Q[1]),
        .I1(\rx_byte0_f_reg[12] [8]),
        .I2(Q[0]),
        .I3(\rx_byte1_f_reg[12] [8]),
        .O(\S_AXI_RDATA_reg[8]_0 ));
  LUT6 #(
    .INIT(64'h0000000033E200E2)) 
    \S_AXI_RDATA[9]_i_1 
       (.I0(\S_AXI_RDATA[9]_i_2_n_0 ),
        .I1(sel0[4]),
        .I2(\axi_araddr_reg[5]_3 ),
        .I3(sel0[5]),
        .I4(\S_AXI_RDATA[9]_i_4_n_0 ),
        .I5(\S_AXI_RDATA[12]_i_5_n_0 ),
        .O(\S_AXI_RDATA[9]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000005404)) 
    \S_AXI_RDATA[9]_i_2 
       (.I0(Q[2]),
        .I1(\rx_nb_bytes_fb_reg[3] [4]),
        .I2(Q[0]),
        .I3(\rx_bytes_sent_f_reg[3] [1]),
        .I4(Q[1]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[9]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000010111000)) 
    \S_AXI_RDATA[9]_i_4 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(\rx_byte15_f_reg[12] [9]),
        .I3(Q[0]),
        .I4(\rx_byte14_f_reg[12] [9]),
        .I5(Q[3]),
        .O(\S_AXI_RDATA[9]_i_4_n_0 ));
  LUT4 #(
    .INIT(16'hA808)) 
    \S_AXI_RDATA[9]_i_8 
       (.I0(Q[1]),
        .I1(\rx_byte0_f_reg[12] [9]),
        .I2(Q[0]),
        .I3(\rx_byte1_f_reg[12] [9]),
        .O(\S_AXI_RDATA_reg[9]_0 ));
  FDCE \S_AXI_RDATA_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[0]_i_1_n_0 ),
        .Q(S_AXI_RDATA[0]));
  MUXF8 \S_AXI_RDATA_reg[0]_i_2 
       (.I0(\S_AXI_RDATA_reg[0]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[0]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[0]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[0]_i_3 
       (.I0(\S_AXI_RDATA_reg[0]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_0 ),
        .O(\S_AXI_RDATA_reg[0]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[0]_i_5 
       (.I0(\S_AXI_RDATA[0]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[0]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[0]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[0]_i_6 
       (.I0(\S_AXI_RDATA[0]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[0]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[0]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[0]_i_7 
       (.I0(\S_AXI_RDATA[0]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[0] ),
        .O(\S_AXI_RDATA_reg[0]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[10]_i_1_n_0 ),
        .Q(S_AXI_RDATA[10]));
  FDCE \S_AXI_RDATA_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[11]_i_1_n_0 ),
        .Q(S_AXI_RDATA[11]));
  FDCE \S_AXI_RDATA_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[12]_i_1_n_0 ),
        .Q(S_AXI_RDATA[12]));
  FDCE \S_AXI_RDATA_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[13]_i_1_n_0 ),
        .Q(S_AXI_RDATA[13]));
  FDCE \S_AXI_RDATA_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[14]_i_1_n_0 ),
        .Q(S_AXI_RDATA[14]));
  FDCE \S_AXI_RDATA_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[15]_i_1_n_0 ),
        .Q(S_AXI_RDATA[15]));
  FDCE \S_AXI_RDATA_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[16]_i_1_n_0 ),
        .Q(S_AXI_RDATA[16]));
  FDCE \S_AXI_RDATA_reg[17] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[17]_i_1_n_0 ),
        .Q(S_AXI_RDATA[17]));
  FDCE \S_AXI_RDATA_reg[18] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[18]_i_1_n_0 ),
        .Q(S_AXI_RDATA[18]));
  FDCE \S_AXI_RDATA_reg[19] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[19]_i_1_n_0 ),
        .Q(S_AXI_RDATA[19]));
  FDCE \S_AXI_RDATA_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[1]_i_1_n_0 ),
        .Q(S_AXI_RDATA[1]));
  MUXF8 \S_AXI_RDATA_reg[1]_i_2 
       (.I0(\S_AXI_RDATA_reg[1]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[1]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[1]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[1]_i_3 
       (.I0(\S_AXI_RDATA_reg[1]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_1 ),
        .O(\S_AXI_RDATA_reg[1]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[1]_i_5 
       (.I0(\S_AXI_RDATA[1]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[1]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[1]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[1]_i_6 
       (.I0(\S_AXI_RDATA[1]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[1]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[1]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[1]_i_7 
       (.I0(\S_AXI_RDATA[1]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[1] ),
        .O(\S_AXI_RDATA_reg[1]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[2]_i_1_n_0 ),
        .Q(S_AXI_RDATA[2]));
  MUXF7 \S_AXI_RDATA_reg[2]_i_5 
       (.I0(\S_AXI_RDATA[2]_i_10_n_0 ),
        .I1(\rx_byte5_f_reg[2] ),
        .O(\S_AXI_RDATA_reg[2]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[2]_i_6 
       (.I0(\S_AXI_RDATA[2]_i_12_n_0 ),
        .I1(\S_AXI_RDATA[2]_i_13_n_0 ),
        .O(\S_AXI_RDATA_reg[2]_i_6_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[3]_i_1_n_0 ),
        .Q(S_AXI_RDATA[3]));
  MUXF7 \S_AXI_RDATA_reg[3]_i_5 
       (.I0(\S_AXI_RDATA[3]_i_10_n_0 ),
        .I1(\rx_byte5_f_reg[3] ),
        .O(\S_AXI_RDATA_reg[3]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[3]_i_6 
       (.I0(\S_AXI_RDATA[3]_i_12_n_0 ),
        .I1(\S_AXI_RDATA[3]_i_13_n_0 ),
        .O(\S_AXI_RDATA_reg[3]_i_6_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[4]_i_1_n_0 ),
        .Q(S_AXI_RDATA[4]));
  MUXF8 \S_AXI_RDATA_reg[4]_i_2 
       (.I0(\S_AXI_RDATA_reg[4]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[4]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[4]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[4]_i_3 
       (.I0(\S_AXI_RDATA_reg[4]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_4 ),
        .O(\S_AXI_RDATA_reg[4]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[4]_i_5 
       (.I0(\S_AXI_RDATA[4]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[4]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[4]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[4]_i_6 
       (.I0(\S_AXI_RDATA[4]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[4]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[4]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[4]_i_7 
       (.I0(\S_AXI_RDATA[4]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[4] ),
        .O(\S_AXI_RDATA_reg[4]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[5]_i_1_n_0 ),
        .Q(S_AXI_RDATA[5]));
  MUXF8 \S_AXI_RDATA_reg[5]_i_2 
       (.I0(\S_AXI_RDATA_reg[5]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[5]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[5]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[5]_i_3 
       (.I0(\S_AXI_RDATA_reg[5]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_5 ),
        .O(\S_AXI_RDATA_reg[5]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[5]_i_5 
       (.I0(\S_AXI_RDATA[5]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[5]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[5]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[5]_i_6 
       (.I0(\S_AXI_RDATA[5]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[5]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[5]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[5]_i_7 
       (.I0(\S_AXI_RDATA[5]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[5] ),
        .O(\S_AXI_RDATA_reg[5]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[6]_i_1_n_0 ),
        .Q(S_AXI_RDATA[6]));
  MUXF8 \S_AXI_RDATA_reg[6]_i_2 
       (.I0(\S_AXI_RDATA_reg[6]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[6]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[6]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[6]_i_3 
       (.I0(\S_AXI_RDATA_reg[6]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_6 ),
        .O(\S_AXI_RDATA_reg[6]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[6]_i_5 
       (.I0(\S_AXI_RDATA[6]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[6]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[6]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[6]_i_6 
       (.I0(\S_AXI_RDATA[6]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[6]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[6]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[6]_i_7 
       (.I0(\S_AXI_RDATA[6]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[6] ),
        .O(\S_AXI_RDATA_reg[6]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[7]_i_1_n_0 ),
        .Q(S_AXI_RDATA[7]));
  MUXF8 \S_AXI_RDATA_reg[7]_i_2 
       (.I0(\S_AXI_RDATA_reg[7]_i_5_n_0 ),
        .I1(\S_AXI_RDATA_reg[7]_i_6_n_0 ),
        .O(\S_AXI_RDATA_reg[7]_i_2_n_0 ),
        .S(Q[3]));
  MUXF8 \S_AXI_RDATA_reg[7]_i_3 
       (.I0(\S_AXI_RDATA_reg[7]_i_7_n_0 ),
        .I1(\axi_araddr_reg[4]_7 ),
        .O(\S_AXI_RDATA_reg[7]_i_3_n_0 ),
        .S(Q[3]));
  MUXF7 \S_AXI_RDATA_reg[7]_i_5 
       (.I0(\S_AXI_RDATA[7]_i_9_n_0 ),
        .I1(\S_AXI_RDATA[7]_i_10_n_0 ),
        .O(\S_AXI_RDATA_reg[7]_i_5_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[7]_i_6 
       (.I0(\S_AXI_RDATA[7]_i_11_n_0 ),
        .I1(\S_AXI_RDATA[7]_i_12_n_0 ),
        .O(\S_AXI_RDATA_reg[7]_i_6_n_0 ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[7]_i_7 
       (.I0(\S_AXI_RDATA[7]_i_13_n_0 ),
        .I1(\rx_byte5_f_reg[7] ),
        .O(\S_AXI_RDATA_reg[7]_i_7_n_0 ),
        .S(Q[2]));
  FDCE \S_AXI_RDATA_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[8]_i_1_n_0 ),
        .Q(S_AXI_RDATA[8]));
  FDCE \S_AXI_RDATA_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(read_en),
        .CLR(S_AXI_ARESETN),
        .D(\S_AXI_RDATA[9]_i_1_n_0 ),
        .Q(S_AXI_RDATA[9]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'h0F88)) 
    S_AXI_RVALID_i_1
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .I2(S_AXI_RREADY),
        .I3(S_AXI_RVALID),
        .O(S_AXI_RVALID_i_1_n_0));
  FDCE S_AXI_RVALID_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_RVALID_i_1_n_0),
        .Q(S_AXI_RVALID));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h08)) 
    S_AXI_WREADY_i_1
       (.I0(S_AXI_WVALID),
        .I1(S_AXI_AWVALID),
        .I2(S_AXI_WREADY),
        .O(S_AXI_WREADY_i_1_n_0));
  FDCE S_AXI_WREADY_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_WREADY_i_1_n_0),
        .Q(S_AXI_WREADY));
  LUT2 #(
    .INIT(4'h2)) 
    \axi_araddr[9]_i_1 
       (.I0(S_AXI_ARVALID),
        .I1(S_AXI_ARREADY),
        .O(\axi_araddr[9]_i_1_n_0 ));
  FDCE \axi_araddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_ARADDR[0]),
        .Q(Q[0]));
  FDCE \axi_araddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_ARADDR[1]),
        .Q(Q[1]));
  FDCE \axi_araddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_ARADDR[2]),
        .Q(Q[2]));
  FDCE \axi_araddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_ARADDR[3]),
        .Q(Q[3]));
  FDCE \axi_araddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_5),
        .D(S_AXI_ARADDR[4]),
        .Q(sel0[4]));
  FDCE \axi_araddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_5),
        .D(S_AXI_ARADDR[5]),
        .Q(sel0[5]));
  FDCE \axi_araddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_5),
        .D(S_AXI_ARADDR[6]),
        .Q(\axi_araddr_reg_n_0_[8] ));
  FDCE \axi_araddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(\axi_araddr[9]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_5),
        .D(S_AXI_ARADDR[7]),
        .Q(\axi_araddr_reg_n_0_[9] ));
  FDCE \axi_awaddr_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[0]),
        .Q(loc_waddr[0]));
  FDCE \axi_awaddr_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[1]),
        .Q(loc_waddr[1]));
  FDCE \axi_awaddr_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[2]),
        .Q(loc_waddr[2]));
  FDCE \axi_awaddr_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[3]),
        .Q(loc_waddr[3]));
  FDCE \axi_awaddr_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[4]),
        .Q(loc_waddr[4]));
  FDCE \axi_awaddr_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[5]),
        .Q(p_0_in[2]));
  FDCE \axi_awaddr_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[6]),
        .Q(p_0_in[1]));
  FDCE \axi_awaddr_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(S_AXI_AWREADY_i_1_n_0),
        .CLR(S_AXI_ARESETN),
        .D(S_AXI_AWADDR[7]),
        .Q(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ctrl_reg[0]_i_1 
       (.I0(S_AXI_WDATA[0]),
        .I1(tx_start_f),
        .I2(ctrl_reg),
        .O(\ctrl_reg[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000002)) 
    \ctrl_reg[16]_i_1 
       (.I0(write_en__2),
        .I1(\ctrl_reg[16]_i_4_n_0 ),
        .I2(loc_waddr[4]),
        .I3(p_0_in[0]),
        .I4(p_0_in[2]),
        .I5(p_0_in[1]),
        .O(ctrl_reg));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \ctrl_reg[16]_i_3 
       (.I0(S_AXI_WREADY),
        .I1(S_AXI_WVALID),
        .I2(S_AXI_AWREADY),
        .I3(S_AXI_AWVALID),
        .O(write_en__2));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \ctrl_reg[16]_i_4 
       (.I0(loc_waddr[2]),
        .I1(loc_waddr[3]),
        .I2(loc_waddr[0]),
        .I3(loc_waddr[1]),
        .O(\ctrl_reg[16]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'h20)) 
    \ctrl_reg[1]_i_1 
       (.I0(S_AXI_WDATA[1]),
        .I1(rx_start_f),
        .I2(ctrl_reg),
        .O(\ctrl_reg[1]_i_1_n_0 ));
  FDCE \ctrl_reg_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_3),
        .D(\ctrl_reg[0]_i_1_n_0 ),
        .Q(tx_start_f));
  FDCE \ctrl_reg_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[13]),
        .Q(\rx_nb_bytes_fb_reg[3] [8]));
  FDCE \ctrl_reg_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[14]),
        .Q(\rx_nb_bytes_fb_reg[3] [9]));
  FDCE \ctrl_reg_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[15]),
        .Q(\rx_nb_bytes_fb_reg[3] [10]));
  FDCE \ctrl_reg_reg[13] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[16]),
        .Q(\rx_nb_bytes_fb_reg[3] [11]));
  FDCE \ctrl_reg_reg[14] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[17]),
        .Q(\rx_nb_bytes_fb_reg[3] [12]));
  FDCE \ctrl_reg_reg[15] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[18]),
        .Q(\rx_nb_bytes_fb_reg[3] [13]));
  FDCE \ctrl_reg_reg[16] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[19]),
        .Q(\rx_nb_bytes_fb_reg[3] [14]));
  FDCE \ctrl_reg_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_3),
        .D(\ctrl_reg[1]_i_1_n_0 ),
        .Q(rx_start_f));
  FDCE \ctrl_reg_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\rx_nb_bytes_fb_reg[3] [0]));
  FDCE \ctrl_reg_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\rx_nb_bytes_fb_reg[3] [1]));
  FDCE \ctrl_reg_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\rx_nb_bytes_fb_reg[3] [2]));
  FDCE \ctrl_reg_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[8]),
        .Q(\rx_nb_bytes_fb_reg[3] [3]));
  FDCE \ctrl_reg_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[9]),
        .Q(\rx_nb_bytes_fb_reg[3] [4]));
  FDCE \ctrl_reg_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[10]),
        .Q(\rx_nb_bytes_fb_reg[3] [5]));
  FDCE \ctrl_reg_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[11]),
        .Q(\rx_nb_bytes_fb_reg[3] [6]));
  FDCE \ctrl_reg_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(ctrl_reg),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[12]),
        .Q(\rx_nb_bytes_fb_reg[3] [7]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h04)) 
    read_en_i_1
       (.I0(S_AXI_ARREADY),
        .I1(S_AXI_ARVALID),
        .I2(read_en),
        .O(read_en_i_1_n_0));
  FDCE read_en_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(read_en_i_1_n_0),
        .Q(read_en));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[0][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[1]),
        .I3(loc_waddr[2]),
        .I4(loc_waddr[0]),
        .I5(\tx_byte_reg[0][7]_i_3_n_0 ),
        .O(tx_byte_reg));
  LUT3 #(
    .INIT(8'hFE)) 
    \tx_byte_reg[0][7]_i_2 
       (.I0(p_0_in[1]),
        .I1(p_0_in[2]),
        .I2(p_0_in[0]),
        .O(\tx_byte_reg[0][7]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_byte_reg[0][7]_i_3 
       (.I0(loc_waddr[3]),
        .I1(loc_waddr[4]),
        .O(\tx_byte_reg[0][7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \tx_byte_reg[10][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[2]),
        .I3(loc_waddr[0]),
        .I4(loc_waddr[3]),
        .I5(\tx_byte_reg[10][7]_i_2_n_0 ),
        .O(\tx_byte_reg[10][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_byte_reg[10][7]_i_2 
       (.I0(loc_waddr[1]),
        .I1(loc_waddr[4]),
        .O(\tx_byte_reg[10][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \tx_byte_reg[11][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[1]),
        .I3(loc_waddr[2]),
        .I4(loc_waddr[0]),
        .I5(\tx_byte_reg[11][7]_i_2_n_0 ),
        .O(\tx_byte_reg[11][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_byte_reg[11][7]_i_2 
       (.I0(loc_waddr[4]),
        .I1(loc_waddr[3]),
        .O(\tx_byte_reg[11][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000002000000)) 
    \tx_byte_reg[12][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[0]),
        .I3(loc_waddr[1]),
        .I4(loc_waddr[2]),
        .I5(\tx_byte_reg[11][7]_i_2_n_0 ),
        .O(\tx_byte_reg[12][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0002000000000000)) 
    \tx_byte_reg[13][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[4]),
        .I3(\tx_byte_reg[5][7]_i_2_n_0 ),
        .I4(loc_waddr[3]),
        .I5(loc_waddr[2]),
        .O(\tx_byte_reg[13][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[14][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[4]),
        .I3(\tx_byte_reg[6][7]_i_2_n_0 ),
        .I4(loc_waddr[3]),
        .I5(loc_waddr[0]),
        .O(\tx_byte_reg[14][7]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \tx_byte_reg[15][7]_i_1 
       (.I0(write_en__2),
        .I1(p_0_in[1]),
        .I2(p_0_in[2]),
        .I3(p_0_in[0]),
        .I4(\tx_byte_reg[15][7]_i_2_n_0 ),
        .O(\tx_byte_reg[15][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \tx_byte_reg[15][7]_i_2 
       (.I0(loc_waddr[0]),
        .I1(loc_waddr[2]),
        .I2(loc_waddr[4]),
        .I3(loc_waddr[3]),
        .I4(loc_waddr[1]),
        .O(\tx_byte_reg[15][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \tx_byte_reg[1][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[0]),
        .I3(loc_waddr[2]),
        .I4(loc_waddr[1]),
        .I5(\tx_byte_reg[0][7]_i_3_n_0 ),
        .O(\tx_byte_reg[1][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[2][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[2]),
        .I3(loc_waddr[0]),
        .I4(loc_waddr[1]),
        .I5(\tx_byte_reg[0][7]_i_3_n_0 ),
        .O(\tx_byte_reg[2][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \tx_byte_reg[3][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[0]),
        .I3(loc_waddr[1]),
        .I4(loc_waddr[2]),
        .I5(\tx_byte_reg[0][7]_i_3_n_0 ),
        .O(\tx_byte_reg[3][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000200000)) 
    \tx_byte_reg[4][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[1]),
        .I3(loc_waddr[0]),
        .I4(loc_waddr[2]),
        .I5(\tx_byte_reg[0][7]_i_3_n_0 ),
        .O(\tx_byte_reg[4][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \tx_byte_reg[5][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[3]),
        .I3(\tx_byte_reg[5][7]_i_2_n_0 ),
        .I4(loc_waddr[4]),
        .I5(loc_waddr[2]),
        .O(\tx_byte_reg[5][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \tx_byte_reg[5][7]_i_2 
       (.I0(loc_waddr[1]),
        .I1(loc_waddr[0]),
        .O(\tx_byte_reg[5][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[6][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[3]),
        .I3(\tx_byte_reg[6][7]_i_2_n_0 ),
        .I4(loc_waddr[0]),
        .I5(loc_waddr[4]),
        .O(\tx_byte_reg[6][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \tx_byte_reg[6][7]_i_2 
       (.I0(loc_waddr[2]),
        .I1(loc_waddr[1]),
        .O(\tx_byte_reg[6][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[7][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[0]),
        .I3(\tx_byte_reg[7][7]_i_2_n_0 ),
        .I4(loc_waddr[1]),
        .I5(loc_waddr[4]),
        .O(\tx_byte_reg[7][7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \tx_byte_reg[7][7]_i_2 
       (.I0(loc_waddr[2]),
        .I1(loc_waddr[3]),
        .O(\tx_byte_reg[7][7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \tx_byte_reg[8][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[1]),
        .I3(\tx_byte_reg[7][7]_i_2_n_0 ),
        .I4(loc_waddr[0]),
        .I5(loc_waddr[4]),
        .O(\tx_byte_reg[8][7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000200000000)) 
    \tx_byte_reg[9][7]_i_1 
       (.I0(write_en__2),
        .I1(\tx_byte_reg[0][7]_i_2_n_0 ),
        .I2(loc_waddr[2]),
        .I3(\tx_byte_reg[5][7]_i_2_n_0 ),
        .I4(loc_waddr[4]),
        .I5(loc_waddr[3]),
        .O(\tx_byte_reg[9][7]_i_1_n_0 ));
  FDCE \tx_byte_reg_reg[0][0] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte0_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[0][1] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte0_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[0][2] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte0_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[0][3] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte0_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[0][4] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte0_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[0][5] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte0_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[0][6] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte0_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[0][7] 
       (.C(S_AXI_ACLK),
        .CE(tx_byte_reg),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte0_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[10][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte10_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[10][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte10_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[10][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte10_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[10][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte10_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[10][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte10_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[10][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte10_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[10][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte10_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[10][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[10][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte10_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[11][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte11_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[11][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte11_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[11][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte11_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[11][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte11_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[11][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte11_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[11][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte11_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[11][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte11_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[11][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[11][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte11_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[12][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte12_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[12][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte12_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[12][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte12_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[12][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte12_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[12][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte12_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[12][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte12_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[12][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte12_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[12][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[12][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte12_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[13][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte13_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[13][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte13_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[13][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte13_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[13][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte13_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[13][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte13_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[13][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte13_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[13][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte13_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[13][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[13][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte13_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[14][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte14_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[14][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte14_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[14][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte14_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[14][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte14_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[14][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte14_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[14][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte14_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[14][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte14_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[14][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[14][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte14_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[15][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte15_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[15][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte15_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[15][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte15_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[15][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte15_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[15][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte15_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[15][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte15_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[15][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte15_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[15][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[15][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte15_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[1][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte1_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[1][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte1_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[1][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte1_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[1][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte1_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[1][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte1_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[1][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte1_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[1][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte1_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[1][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[1][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte1_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[2][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte2_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[2][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte2_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[2][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte2_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[2][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte2_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[2][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte2_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[2][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte2_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[2][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte2_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[2][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[2][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte2_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[3][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte3_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[3][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte3_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[3][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte3_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[3][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte3_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[3][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte3_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[3][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte3_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[3][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte3_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[3][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[3][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte3_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[4][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte4_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[4][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte4_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[4][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte4_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[4][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte4_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[4][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte4_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[4][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte4_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[4][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte4_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[4][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[4][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte4_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[5][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte5_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[5][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte5_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[5][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte5_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[5][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte5_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[5][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte5_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[5][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte5_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[5][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte5_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[5][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[5][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte5_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[6][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte6_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[6][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte6_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[6][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte6_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[6][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte6_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[6][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte6_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[6][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte6_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[6][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte6_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[6][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[6][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte6_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[7][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte7_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[7][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte7_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[7][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte7_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[7][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte7_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[7][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte7_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[7][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte7_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[7][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte7_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[7][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[7][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte7_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[8][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte8_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[8][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte8_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[8][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte8_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[8][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte8_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[8][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte8_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[8][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte8_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[8][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte8_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[8][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[8][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte8_fb_reg[7] [7]));
  FDCE \tx_byte_reg_reg[9][0] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_3),
        .D(S_AXI_WDATA[0]),
        .Q(\tx_byte9_fb_reg[7] [0]));
  FDCE \tx_byte_reg_reg[9][1] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[1]),
        .Q(\tx_byte9_fb_reg[7] [1]));
  FDCE \tx_byte_reg_reg[9][2] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_4),
        .D(S_AXI_WDATA[2]),
        .Q(\tx_byte9_fb_reg[7] [2]));
  FDCE \tx_byte_reg_reg[9][3] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[3]),
        .Q(\tx_byte9_fb_reg[7] [3]));
  FDCE \tx_byte_reg_reg[9][4] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_2),
        .D(S_AXI_WDATA[4]),
        .Q(\tx_byte9_fb_reg[7] [4]));
  FDCE \tx_byte_reg_reg[9][5] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[5]),
        .Q(\tx_byte9_fb_reg[7] [5]));
  FDCE \tx_byte_reg_reg[9][6] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_1),
        .D(S_AXI_WDATA[6]),
        .Q(\tx_byte9_fb_reg[7] [6]));
  FDCE \tx_byte_reg_reg[9][7] 
       (.C(S_AXI_ACLK),
        .CE(\tx_byte_reg[9][7]_i_1_n_0 ),
        .CLR(S_AXI_ARESETN_0),
        .D(S_AXI_WDATA[7]),
        .Q(\tx_byte9_fb_reg[7] [7]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_counter
   (Q,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[1] ,
    load_counter,
    out,
    E,
    CLK,
    S_AXI_ARESETN,
    D);
  output [0:0]Q;
  output \FSM_sequential_current_state_reg[0] ;
  output \FSM_sequential_current_state_reg[1] ;
  input load_counter;
  input [1:0]out;
  input [0:0]E;
  input CLK;
  input S_AXI_ARESETN;
  input [0:0]D;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[1] ;
  wire [0:0]Q;
  wire S_AXI_ARESETN;
  wire \counter[1]_i_1_n_0 ;
  wire \counter[2]_i_1_n_0 ;
  wire \counter[3]_i_1_n_0 ;
  wire [3:1]counter_reg__0;
  wire load_counter;
  wire [1:0]out;

  LUT6 #(
    .INIT(64'h2222222222222226)) 
    \FSM_sequential_current_state[1]_i_4 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(counter_reg__0[3]),
        .I3(counter_reg__0[2]),
        .I4(Q),
        .I5(counter_reg__0[1]),
        .O(\FSM_sequential_current_state_reg[1] ));
  LUT5 #(
    .INIT(32'h00000002)) 
    \FSM_sequential_current_state[1]_i_7 
       (.I0(out[0]),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(Q),
        .I4(counter_reg__0[1]),
        .O(\FSM_sequential_current_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'hEB)) 
    \counter[1]_i_1 
       (.I0(load_counter),
        .I1(counter_reg__0[1]),
        .I2(Q),
        .O(\counter[1]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h00A9)) 
    \counter[2]_i_1 
       (.I0(counter_reg__0[2]),
        .I1(Q),
        .I2(counter_reg__0[1]),
        .I3(load_counter),
        .O(\counter[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEEEEEEEB)) 
    \counter[3]_i_1 
       (.I0(load_counter),
        .I1(counter_reg__0[3]),
        .I2(counter_reg__0[2]),
        .I3(counter_reg__0[1]),
        .I4(Q),
        .O(\counter[3]_i_1_n_0 ));
  FDPE \counter_reg[0] 
       (.C(CLK),
        .CE(E),
        .D(D),
        .PRE(S_AXI_ARESETN),
        .Q(Q));
  FDPE \counter_reg[1] 
       (.C(CLK),
        .CE(E),
        .D(\counter[1]_i_1_n_0 ),
        .PRE(S_AXI_ARESETN),
        .Q(counter_reg__0[1]));
  FDCE \counter_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(S_AXI_ARESETN),
        .D(\counter[2]_i_1_n_0 ),
        .Q(counter_reg__0[2]));
  FDPE \counter_reg[3] 
       (.C(CLK),
        .CE(E),
        .D(\counter[3]_i_1_n_0 ),
        .PRE(S_AXI_ARESETN),
        .Q(counter_reg__0[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_byte_counter
   (rx_allbytes,
    Q,
    \rx_byte15_sb_reg[0] ,
    \rx_byte11_sb_reg[0] ,
    \rx_byte7_sb_reg[0] ,
    \rx_byte3_sb_reg[0] ,
    nb_p1_0,
    \rx_byte13_sb_reg[12] ,
    \rx_byte9_sb_reg[12] ,
    \rx_byte12_sb_reg[12] ,
    E,
    \rx_byte1_sb_reg[12] ,
    \rx_byte2_sb_reg[12] ,
    \rx_byte4_sb_reg[12] ,
    \rx_byte5_sb_reg[12] ,
    \rx_byte6_sb_reg[12] ,
    \rx_byte8_sb_reg[12] ,
    \rx_byte10_sb_reg[12] ,
    \rx_byte14_sb_reg[12] ,
    \rx_nb_bytes_s_reg[1] ,
    CLK,
    S_AXI_ARESETN,
    rx_bytecnt_clear,
    \syndrom_reg[1] ,
    S_AXI_ARESETN_0);
  output rx_allbytes;
  output [3:0]Q;
  output [0:0]\rx_byte15_sb_reg[0] ;
  output [0:0]\rx_byte11_sb_reg[0] ;
  output [0:0]\rx_byte7_sb_reg[0] ;
  output [0:0]\rx_byte3_sb_reg[0] ;
  output [0:0]nb_p1_0;
  output [0:0]\rx_byte13_sb_reg[12] ;
  output [0:0]\rx_byte9_sb_reg[12] ;
  output [0:0]\rx_byte12_sb_reg[12] ;
  output [0:0]E;
  output [0:0]\rx_byte1_sb_reg[12] ;
  output [0:0]\rx_byte2_sb_reg[12] ;
  output [0:0]\rx_byte4_sb_reg[12] ;
  output [0:0]\rx_byte5_sb_reg[12] ;
  output [0:0]\rx_byte6_sb_reg[12] ;
  output [0:0]\rx_byte8_sb_reg[12] ;
  output [0:0]\rx_byte10_sb_reg[12] ;
  output [0:0]\rx_byte14_sb_reg[12] ;
  input \rx_nb_bytes_s_reg[1] ;
  input CLK;
  input S_AXI_ARESETN;
  input rx_bytecnt_clear;
  input [0:0]\syndrom_reg[1] ;
  input S_AXI_ARESETN_0;

  wire CLK;
  wire [0:0]E;
  wire [3:0]Q;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire [0:0]nb_p1_0;
  wire \number[0]_i_1__0_n_0 ;
  wire \number[1]_i_1__0_n_0 ;
  wire \number[2]_i_1__0_n_0 ;
  wire \number[3]_i_2__0_n_0 ;
  wire rx_allbytes;
  wire [0:0]\rx_byte10_sb_reg[12] ;
  wire [0:0]\rx_byte11_sb_reg[0] ;
  wire [0:0]\rx_byte12_sb_reg[12] ;
  wire [0:0]\rx_byte13_sb_reg[12] ;
  wire [0:0]\rx_byte14_sb_reg[12] ;
  wire [0:0]\rx_byte15_sb_reg[0] ;
  wire [0:0]\rx_byte1_sb_reg[12] ;
  wire [0:0]\rx_byte2_sb_reg[12] ;
  wire [0:0]\rx_byte3_sb_reg[0] ;
  wire [0:0]\rx_byte4_sb_reg[12] ;
  wire [0:0]\rx_byte5_sb_reg[12] ;
  wire [0:0]\rx_byte6_sb_reg[12] ;
  wire [0:0]\rx_byte7_sb_reg[0] ;
  wire [0:0]\rx_byte8_sb_reg[12] ;
  wire [0:0]\rx_byte9_sb_reg[12] ;
  wire rx_bytecnt_clear;
  wire \rx_nb_bytes_s_reg[1] ;
  wire [0:0]\syndrom_reg[1] ;

  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    atlimit_i_3__0
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(nb_p1_0));
  FDCE atlimit_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\rx_nb_bytes_s_reg[1] ),
        .Q(rx_allbytes));
  LUT2 #(
    .INIT(4'h1)) 
    \number[0]_i_1__0 
       (.I0(Q[0]),
        .I1(rx_bytecnt_clear),
        .O(\number[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \number[1]_i_1__0 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(rx_bytecnt_clear),
        .O(\number[1]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \number[2]_i_1__0 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(rx_bytecnt_clear),
        .O(\number[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \number[3]_i_2__0 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(rx_bytecnt_clear),
        .O(\number[3]_i_2__0_n_0 ));
  FDCE \number_reg[0] 
       (.C(CLK),
        .CE(\syndrom_reg[1] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[0]_i_1__0_n_0 ),
        .Q(Q[0]));
  FDCE \number_reg[1] 
       (.C(CLK),
        .CE(\syndrom_reg[1] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[1]_i_1__0_n_0 ),
        .Q(Q[1]));
  FDCE \number_reg[2] 
       (.C(CLK),
        .CE(\syndrom_reg[1] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[2]_i_1__0_n_0 ),
        .Q(Q[2]));
  FDCE \number_reg[3] 
       (.C(CLK),
        .CE(\syndrom_reg[1] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[3]_i_2__0_n_0 ),
        .Q(Q[3]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_byte0_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(E));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_byte10_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[3]),
        .O(\rx_byte10_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \rx_byte11_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\rx_byte11_sb_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_byte12_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\rx_byte12_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_byte13_sb[12]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\rx_byte13_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    \rx_byte14_sb[12]_i_1 
       (.I0(Q[2]),
        .I1(Q[0]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\rx_byte14_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \rx_byte15_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\rx_byte15_sb_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_byte1_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\rx_byte1_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_byte2_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .O(\rx_byte2_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    \rx_byte3_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(Q[2]),
        .O(\rx_byte3_sb_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_byte4_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(\rx_byte4_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_byte5_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .O(\rx_byte5_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_byte6_sb[12]_i_1 
       (.I0(Q[3]),
        .I1(Q[0]),
        .I2(Q[1]),
        .I3(Q[2]),
        .O(\rx_byte6_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    \rx_byte7_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(\rx_byte7_sb_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT4 #(
    .INIT(16'h0010)) 
    \rx_byte8_sb[12]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[3]),
        .I3(Q[1]),
        .O(\rx_byte8_sb_reg[12] ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    \rx_byte9_sb[12]_i_1 
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[3]),
        .O(\rx_byte9_sb_reg[12] ));
endmodule

(* ORIG_REF_NAME = "byte_counter" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_byte_counter_0
   (tx_allbytes,
    Q,
    \FSM_sequential_current_state_reg[0] ,
    nb_p1,
    \tx_nb_bytes_s_reg[1] ,
    CLK,
    S_AXI_ARESETN,
    tx_bytecnt_clear,
    D,
    E,
    S_AXI_ARESETN_0);
  output tx_allbytes;
  output [3:0]Q;
  output \FSM_sequential_current_state_reg[0] ;
  output [0:0]nb_p1;
  input \tx_nb_bytes_s_reg[1] ;
  input CLK;
  input S_AXI_ARESETN;
  input tx_bytecnt_clear;
  input [0:0]D;
  input [0:0]E;
  input S_AXI_ARESETN_0;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire [3:0]Q;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire [0:0]nb_p1;
  wire \number[0]_i_1_n_0 ;
  wire \number[1]_i_1_n_0 ;
  wire \number[2]_i_1_n_0 ;
  wire \number[3]_i_2_n_0 ;
  wire tx_allbytes;
  wire tx_bytecnt_clear;
  wire \tx_nb_bytes_s_reg[1] ;

  LUT2 #(
    .INIT(4'h1)) 
    \FSM_sequential_current_state[0]_i_5 
       (.I0(tx_allbytes),
        .I1(D),
        .O(\FSM_sequential_current_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    atlimit_i_3
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[3]),
        .O(nb_p1));
  FDCE atlimit_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\tx_nb_bytes_s_reg[1] ),
        .Q(tx_allbytes));
  LUT2 #(
    .INIT(4'h1)) 
    \number[0]_i_1 
       (.I0(Q[0]),
        .I1(tx_bytecnt_clear),
        .O(\number[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \number[1]_i_1 
       (.I0(Q[1]),
        .I1(Q[0]),
        .I2(tx_bytecnt_clear),
        .O(\number[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \number[2]_i_1 
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(tx_bytecnt_clear),
        .O(\number[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \number[3]_i_2 
       (.I0(Q[3]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(tx_bytecnt_clear),
        .O(\number[3]_i_2_n_0 ));
  FDCE \number_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[0]_i_1_n_0 ),
        .Q(Q[0]));
  FDCE \number_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[1]_i_1_n_0 ),
        .Q(Q[1]));
  FDCE \number_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \number_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(S_AXI_ARESETN_0),
        .D(\number[3]_i_2_n_0 ),
        .Q(Q[3]));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider
   (E,
    clkdiv1000_reg_0,
    CLK,
    sdas_dec_reg,
    S_AXI_ARESETN,
    S_AXI_ACLK,
    S_AXI_ARESETN_0,
    sdas);
  output [0:0]E;
  output [0:0]clkdiv1000_reg_0;
  output CLK;
  output sdas_dec_reg;
  input S_AXI_ARESETN;
  input S_AXI_ACLK;
  input S_AXI_ARESETN_0;
  input sdas;

  wire CLK;
  wire [0:0]E;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire [0:0]clkdiv1000_reg_0;
  wire clkdiv500_i_1_n_0;
  wire clkdiv500_i_4_n_0;
  wire \cnt[0]_i_1_n_0 ;
  wire \cnt[1]_i_1_n_0 ;
  wire \cnt[2]_i_1_n_0 ;
  wire \cnt[3]_i_1_n_0 ;
  wire \cnt[4]_i_1_n_0 ;
  wire \cnt[5]_i_1_n_0 ;
  wire \cnt[5]_i_2_n_0 ;
  wire \cnt[6]_i_1_n_0 ;
  wire \cnt[7]_i_1_n_0 ;
  wire \cnt[7]_i_2_n_0 ;
  wire [7:0]cnt_reg__0;
  wire load;
  wire sdas;
  wire sdas_dec_reg;

  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT1 #(
    .INIT(2'h1)) 
    clkdiv1000_i_1
       (.I0(E),
        .O(clkdiv1000_reg_0));
  FDCE clkdiv1000_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(clkdiv1000_reg_0),
        .Q(E));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h6)) 
    clkdiv500_i_1
       (.I0(load),
        .I1(CLK),
        .O(clkdiv500_i_1_n_0));
  LUT4 #(
    .INIT(16'h8000)) 
    clkdiv500_i_3
       (.I0(clkdiv500_i_4_n_0),
        .I1(cnt_reg__0[5]),
        .I2(cnt_reg__0[3]),
        .I3(cnt_reg__0[4]),
        .O(load));
  LUT5 #(
    .INIT(32'hFE000000)) 
    clkdiv500_i_4
       (.I0(cnt_reg__0[0]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[6]),
        .I4(cnt_reg__0[7]),
        .O(clkdiv500_i_4_n_0));
  FDCE clkdiv500_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(clkdiv500_i_1_n_0),
        .Q(CLK));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \cnt[0]_i_1 
       (.I0(cnt_reg__0[0]),
        .I1(load),
        .O(\cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[1]_i_1 
       (.I0(cnt_reg__0[1]),
        .I1(cnt_reg__0[0]),
        .I2(load),
        .O(\cnt[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt[2]_i_1 
       (.I0(cnt_reg__0[2]),
        .I1(cnt_reg__0[1]),
        .I2(cnt_reg__0[0]),
        .I3(load),
        .O(\cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT5 #(
    .INIT(32'h00006AAA)) 
    \cnt[3]_i_1 
       (.I0(cnt_reg__0[3]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(load),
        .O(\cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000006AAAAAAA)) 
    \cnt[4]_i_1 
       (.I0(cnt_reg__0[4]),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[2]),
        .I5(load),
        .O(\cnt[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[5]_i_1 
       (.I0(cnt_reg__0[5]),
        .I1(\cnt[5]_i_2_n_0 ),
        .I2(load),
        .O(\cnt[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h80000000)) 
    \cnt[5]_i_2 
       (.I0(cnt_reg__0[4]),
        .I1(cnt_reg__0[2]),
        .I2(cnt_reg__0[0]),
        .I3(cnt_reg__0[1]),
        .I4(cnt_reg__0[3]),
        .O(\cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT3 #(
    .INIT(8'h06)) 
    \cnt[6]_i_1 
       (.I0(cnt_reg__0[6]),
        .I1(\cnt[7]_i_2_n_0 ),
        .I2(load),
        .O(\cnt[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h006A)) 
    \cnt[7]_i_1 
       (.I0(cnt_reg__0[7]),
        .I1(cnt_reg__0[6]),
        .I2(\cnt[7]_i_2_n_0 ),
        .I3(load),
        .O(\cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \cnt[7]_i_2 
       (.I0(cnt_reg__0[5]),
        .I1(cnt_reg__0[3]),
        .I2(cnt_reg__0[1]),
        .I3(cnt_reg__0[0]),
        .I4(cnt_reg__0[2]),
        .I5(cnt_reg__0[4]),
        .O(\cnt[7]_i_2_n_0 ));
  FDCE \cnt_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[0]_i_1_n_0 ),
        .Q(cnt_reg__0[0]));
  FDCE \cnt_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[1]_i_1_n_0 ),
        .Q(cnt_reg__0[1]));
  FDCE \cnt_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[2]_i_1_n_0 ),
        .Q(cnt_reg__0[2]));
  FDCE \cnt_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[3]_i_1_n_0 ),
        .Q(cnt_reg__0[3]));
  FDCE \cnt_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[4]_i_1_n_0 ),
        .Q(cnt_reg__0[4]));
  FDCE \cnt_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[5]_i_1_n_0 ),
        .Q(cnt_reg__0[5]));
  FDCE \cnt_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[6]_i_1_n_0 ),
        .Q(cnt_reg__0[6]));
  FDCE \cnt_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(\cnt[7]_i_1_n_0 ),
        .Q(cnt_reg__0[7]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h9)) 
    sdas_dec_i_1
       (.I0(sdas),
        .I1(E),
        .O(sdas_dec_reg));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_domain_crossing
   (\rx_byte12_sb_reg[5]_0 ,
    done_f,
    \tx_byte2_sb_reg[1]_0 ,
    rx_start_s,
    \tx_byte8_s_reg[4]_0 ,
    tx_start_s,
    \rx_byte0_fb_reg[8]_0 ,
    \rx_byte6_f_reg[0]_0 ,
    \rx_nb_bytes_fb_reg[3]_0 ,
    \tx_byte9_sb_reg[7]_0 ,
    \tx_byte7_fb_reg[5]_0 ,
    \tx_byte5_fb_reg[3]_0 ,
    \rx_byte12_f_reg[2]_0 ,
    \rx_byte6_sb_reg[7]_0 ,
    \S_AXI_RDATA_reg[0] ,
    \S_AXI_RDATA_reg[0]_0 ,
    \S_AXI_RDATA_reg[1] ,
    \S_AXI_RDATA_reg[1]_0 ,
    \S_AXI_RDATA_reg[2] ,
    \S_AXI_RDATA_reg[2]_0 ,
    \S_AXI_RDATA_reg[3] ,
    \S_AXI_RDATA_reg[3]_0 ,
    \S_AXI_RDATA_reg[4] ,
    \S_AXI_RDATA_reg[4]_0 ,
    \S_AXI_RDATA_reg[5] ,
    \S_AXI_RDATA_reg[5]_0 ,
    \S_AXI_RDATA_reg[6] ,
    \S_AXI_RDATA_reg[6]_0 ,
    \S_AXI_RDATA_reg[7] ,
    \S_AXI_RDATA_reg[7]_0 ,
    \S_AXI_RDATA_reg[8] ,
    \S_AXI_RDATA_reg[9] ,
    \S_AXI_RDATA_reg[10] ,
    \S_AXI_RDATA_reg[11] ,
    \S_AXI_RDATA_reg[12] ,
    atlimit_reg,
    atlimit_reg_0,
    tx_byte,
    \shift_reg_reg[10] ,
    \shift_reg_reg[10]_0 ,
    \shift_reg_reg[12] ,
    \shift_reg_reg[12]_0 ,
    \shift_reg_reg[16] ,
    \shift_reg_reg[16]_0 ,
    \shift_reg_reg[18] ,
    \shift_reg_reg[18]_0 ,
    \shift_reg_reg[22] ,
    \shift_reg_reg[22]_0 ,
    \shift_reg_reg[24] ,
    \shift_reg_reg[24]_0 ,
    \S_AXI_RDATA_reg[11]_0 ,
    \S_AXI_RDATA_reg[7]_1 ,
    \S_AXI_RDATA_reg[12]_0 ,
    \S_AXI_RDATA_reg[12]_1 ,
    \S_AXI_RDATA_reg[12]_2 ,
    \S_AXI_RDATA_reg[12]_3 ,
    \shift_reg_reg[24]_1 ,
    done_s,
    CLK,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    Q,
    \axi_araddr_reg[3] ,
    \axi_araddr_reg[3]_0 ,
    \axi_araddr_reg[3]_1 ,
    \axi_araddr_reg[3]_2 ,
    \axi_araddr_reg[3]_3 ,
    nb_p1,
    \number_reg[3] ,
    nb_p1_0,
    \number_reg[3]_0 ,
    rx_start_f,
    tx_start_f,
    S_AXI_ARESETN_0,
    E,
    D,
    \number_reg[3]_1 ,
    \number_reg[3]_2 ,
    \number_reg[0] ,
    \number_reg[3]_3 ,
    \number_reg[3]_4 ,
    \number_reg[3]_5 ,
    \number_reg[0]_0 ,
    \number_reg[0]_1 ,
    \number_reg[1] ,
    \number_reg[0]_2 ,
    \number_reg[0]_3 ,
    \number_reg[0]_4 ,
    \number_reg[2] ,
    \number_reg[2]_0 ,
    \number_reg[0]_5 ,
    \ctrl_reg_reg[16] ,
    \tx_byte_reg_reg[0][7] ,
    \tx_byte_reg_reg[1][7] ,
    \tx_byte_reg_reg[2][7] ,
    \tx_byte_reg_reg[3][7] ,
    \tx_byte_reg_reg[4][7] ,
    \tx_byte_reg_reg[5][7] ,
    \tx_byte_reg_reg[6][7] ,
    \tx_byte_reg_reg[7][7] ,
    \tx_byte_reg_reg[8][7] ,
    \tx_byte_reg_reg[9][7] ,
    \tx_byte_reg_reg[10][7] ,
    \tx_byte_reg_reg[11][7] ,
    \tx_byte_reg_reg[12][7] ,
    \tx_byte_reg_reg[13][7] ,
    \tx_byte_reg_reg[14][7] ,
    \tx_byte_reg_reg[15][7] );
  output \rx_byte12_sb_reg[5]_0 ;
  output done_f;
  output \tx_byte2_sb_reg[1]_0 ;
  output rx_start_s;
  output \tx_byte8_s_reg[4]_0 ;
  output tx_start_s;
  output \rx_byte0_fb_reg[8]_0 ;
  output \rx_byte6_f_reg[0]_0 ;
  output \rx_nb_bytes_fb_reg[3]_0 ;
  output \tx_byte9_sb_reg[7]_0 ;
  output \tx_byte7_fb_reg[5]_0 ;
  output \tx_byte5_fb_reg[3]_0 ;
  output \rx_byte12_f_reg[2]_0 ;
  output \rx_byte6_sb_reg[7]_0 ;
  output \S_AXI_RDATA_reg[0] ;
  output \S_AXI_RDATA_reg[0]_0 ;
  output \S_AXI_RDATA_reg[1] ;
  output \S_AXI_RDATA_reg[1]_0 ;
  output \S_AXI_RDATA_reg[2] ;
  output \S_AXI_RDATA_reg[2]_0 ;
  output \S_AXI_RDATA_reg[3] ;
  output \S_AXI_RDATA_reg[3]_0 ;
  output \S_AXI_RDATA_reg[4] ;
  output \S_AXI_RDATA_reg[4]_0 ;
  output \S_AXI_RDATA_reg[5] ;
  output \S_AXI_RDATA_reg[5]_0 ;
  output \S_AXI_RDATA_reg[6] ;
  output \S_AXI_RDATA_reg[6]_0 ;
  output \S_AXI_RDATA_reg[7] ;
  output \S_AXI_RDATA_reg[7]_0 ;
  output \S_AXI_RDATA_reg[8] ;
  output \S_AXI_RDATA_reg[9] ;
  output \S_AXI_RDATA_reg[10] ;
  output \S_AXI_RDATA_reg[11] ;
  output \S_AXI_RDATA_reg[12] ;
  output atlimit_reg;
  output atlimit_reg_0;
  output [7:0]tx_byte;
  output \shift_reg_reg[10] ;
  output \shift_reg_reg[10]_0 ;
  output \shift_reg_reg[12] ;
  output \shift_reg_reg[12]_0 ;
  output \shift_reg_reg[16] ;
  output \shift_reg_reg[16]_0 ;
  output \shift_reg_reg[18] ;
  output \shift_reg_reg[18]_0 ;
  output \shift_reg_reg[22] ;
  output \shift_reg_reg[22]_0 ;
  output \shift_reg_reg[24] ;
  output \shift_reg_reg[24]_0 ;
  output [3:0]\S_AXI_RDATA_reg[11]_0 ;
  output [3:0]\S_AXI_RDATA_reg[7]_1 ;
  output [12:0]\S_AXI_RDATA_reg[12]_0 ;
  output [12:0]\S_AXI_RDATA_reg[12]_1 ;
  output [12:0]\S_AXI_RDATA_reg[12]_2 ;
  output [12:0]\S_AXI_RDATA_reg[12]_3 ;
  output [6:0]\shift_reg_reg[24]_1 ;
  input done_s;
  input CLK;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [3:0]Q;
  input \axi_araddr_reg[3] ;
  input \axi_araddr_reg[3]_0 ;
  input \axi_araddr_reg[3]_1 ;
  input \axi_araddr_reg[3]_2 ;
  input \axi_araddr_reg[3]_3 ;
  input [0:0]nb_p1;
  input [3:0]\number_reg[3] ;
  input [0:0]nb_p1_0;
  input [3:0]\number_reg[3]_0 ;
  input rx_start_f;
  input tx_start_f;
  input S_AXI_ARESETN_0;
  input [0:0]E;
  input [12:0]D;
  input [0:0]\number_reg[3]_1 ;
  input [0:0]\number_reg[3]_2 ;
  input [0:0]\number_reg[0] ;
  input [0:0]\number_reg[3]_3 ;
  input [0:0]\number_reg[3]_4 ;
  input [0:0]\number_reg[3]_5 ;
  input [0:0]\number_reg[0]_0 ;
  input [0:0]\number_reg[0]_1 ;
  input [0:0]\number_reg[1] ;
  input [0:0]\number_reg[0]_2 ;
  input [0:0]\number_reg[0]_3 ;
  input [0:0]\number_reg[0]_4 ;
  input [0:0]\number_reg[2] ;
  input [0:0]\number_reg[2]_0 ;
  input [0:0]\number_reg[0]_5 ;
  input [14:0]\ctrl_reg_reg[16] ;
  input [7:0]\tx_byte_reg_reg[0][7] ;
  input [7:0]\tx_byte_reg_reg[1][7] ;
  input [7:0]\tx_byte_reg_reg[2][7] ;
  input [7:0]\tx_byte_reg_reg[3][7] ;
  input [7:0]\tx_byte_reg_reg[4][7] ;
  input [7:0]\tx_byte_reg_reg[5][7] ;
  input [7:0]\tx_byte_reg_reg[6][7] ;
  input [7:0]\tx_byte_reg_reg[7][7] ;
  input [7:0]\tx_byte_reg_reg[8][7] ;
  input [7:0]\tx_byte_reg_reg[9][7] ;
  input [7:0]\tx_byte_reg_reg[10][7] ;
  input [7:0]\tx_byte_reg_reg[11][7] ;
  input [7:0]\tx_byte_reg_reg[12][7] ;
  input [7:0]\tx_byte_reg_reg[13][7] ;
  input [7:0]\tx_byte_reg_reg[14][7] ;
  input [7:0]\tx_byte_reg_reg[15][7] ;

  wire CLK;
  wire [12:0]D;
  wire [0:0]E;
  wire [3:0]Q;
  wire S_AXI_ACLK;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire \S_AXI_RDATA[0]_i_15_n_0 ;
  wire \S_AXI_RDATA[0]_i_16_n_0 ;
  wire \S_AXI_RDATA[10]_i_5_n_0 ;
  wire \S_AXI_RDATA[10]_i_6_n_0 ;
  wire \S_AXI_RDATA[10]_i_7_n_0 ;
  wire \S_AXI_RDATA[11]_i_5_n_0 ;
  wire \S_AXI_RDATA[11]_i_6_n_0 ;
  wire \S_AXI_RDATA[11]_i_7_n_0 ;
  wire \S_AXI_RDATA[12]_i_6_n_0 ;
  wire \S_AXI_RDATA[12]_i_7_n_0 ;
  wire \S_AXI_RDATA[12]_i_8_n_0 ;
  wire \S_AXI_RDATA[1]_i_15_n_0 ;
  wire \S_AXI_RDATA[1]_i_16_n_0 ;
  wire \S_AXI_RDATA[2]_i_8_n_0 ;
  wire \S_AXI_RDATA[2]_i_9_n_0 ;
  wire \S_AXI_RDATA[3]_i_8_n_0 ;
  wire \S_AXI_RDATA[3]_i_9_n_0 ;
  wire \S_AXI_RDATA[4]_i_15_n_0 ;
  wire \S_AXI_RDATA[4]_i_16_n_0 ;
  wire \S_AXI_RDATA[5]_i_15_n_0 ;
  wire \S_AXI_RDATA[5]_i_16_n_0 ;
  wire \S_AXI_RDATA[6]_i_15_n_0 ;
  wire \S_AXI_RDATA[6]_i_16_n_0 ;
  wire \S_AXI_RDATA[7]_i_15_n_0 ;
  wire \S_AXI_RDATA[7]_i_16_n_0 ;
  wire \S_AXI_RDATA[8]_i_5_n_0 ;
  wire \S_AXI_RDATA[8]_i_6_n_0 ;
  wire \S_AXI_RDATA[8]_i_7_n_0 ;
  wire \S_AXI_RDATA[9]_i_5_n_0 ;
  wire \S_AXI_RDATA[9]_i_6_n_0 ;
  wire \S_AXI_RDATA[9]_i_7_n_0 ;
  wire \S_AXI_RDATA_reg[0] ;
  wire \S_AXI_RDATA_reg[0]_0 ;
  wire \S_AXI_RDATA_reg[10] ;
  wire \S_AXI_RDATA_reg[11] ;
  wire [3:0]\S_AXI_RDATA_reg[11]_0 ;
  wire \S_AXI_RDATA_reg[12] ;
  wire [12:0]\S_AXI_RDATA_reg[12]_0 ;
  wire [12:0]\S_AXI_RDATA_reg[12]_1 ;
  wire [12:0]\S_AXI_RDATA_reg[12]_2 ;
  wire [12:0]\S_AXI_RDATA_reg[12]_3 ;
  wire \S_AXI_RDATA_reg[1] ;
  wire \S_AXI_RDATA_reg[1]_0 ;
  wire \S_AXI_RDATA_reg[2] ;
  wire \S_AXI_RDATA_reg[2]_0 ;
  wire \S_AXI_RDATA_reg[3] ;
  wire \S_AXI_RDATA_reg[3]_0 ;
  wire \S_AXI_RDATA_reg[4] ;
  wire \S_AXI_RDATA_reg[4]_0 ;
  wire \S_AXI_RDATA_reg[5] ;
  wire \S_AXI_RDATA_reg[5]_0 ;
  wire \S_AXI_RDATA_reg[6] ;
  wire \S_AXI_RDATA_reg[6]_0 ;
  wire \S_AXI_RDATA_reg[7] ;
  wire \S_AXI_RDATA_reg[7]_0 ;
  wire [3:0]\S_AXI_RDATA_reg[7]_1 ;
  wire \S_AXI_RDATA_reg[8] ;
  wire \S_AXI_RDATA_reg[9] ;
  wire atlimit_i_2__0_n_0;
  wire atlimit_i_2_n_0;
  wire atlimit_reg;
  wire atlimit_reg_0;
  wire \axi_araddr_reg[3] ;
  wire \axi_araddr_reg[3]_0 ;
  wire \axi_araddr_reg[3]_1 ;
  wire \axi_araddr_reg[3]_2 ;
  wire \axi_araddr_reg[3]_3 ;
  wire [14:0]\ctrl_reg_reg[16] ;
  wire done_f;
  wire done_fb;
  wire done_s;
  wire done_sb;
  wire [0:0]nb_p1;
  wire [0:0]nb_p1_0;
  wire [0:0]\number_reg[0] ;
  wire [0:0]\number_reg[0]_0 ;
  wire [0:0]\number_reg[0]_1 ;
  wire [0:0]\number_reg[0]_2 ;
  wire [0:0]\number_reg[0]_3 ;
  wire [0:0]\number_reg[0]_4 ;
  wire [0:0]\number_reg[0]_5 ;
  wire [0:0]\number_reg[1] ;
  wire [0:0]\number_reg[2] ;
  wire [0:0]\number_reg[2]_0 ;
  wire [3:0]\number_reg[3] ;
  wire [3:0]\number_reg[3]_0 ;
  wire [0:0]\number_reg[3]_1 ;
  wire [0:0]\number_reg[3]_2 ;
  wire [0:0]\number_reg[3]_3 ;
  wire [0:0]\number_reg[3]_4 ;
  wire [0:0]\number_reg[3]_5 ;
  wire [12:0]rx_byte0_fb;
  wire \rx_byte0_fb_reg[8]_0 ;
  wire [12:0]rx_byte0_sb;
  wire [12:0]rx_byte10_f;
  wire [12:0]rx_byte10_fb;
  wire [12:0]rx_byte10_sb;
  wire [12:0]rx_byte11_f;
  wire [12:0]rx_byte11_fb;
  wire [12:0]rx_byte11_sb;
  wire [12:0]rx_byte12_f;
  wire \rx_byte12_f_reg[2]_0 ;
  wire [12:0]rx_byte12_fb;
  wire [12:0]rx_byte12_sb;
  wire \rx_byte12_sb_reg[5]_0 ;
  wire [12:0]rx_byte13_f;
  wire [12:0]rx_byte13_fb;
  wire [12:0]rx_byte13_sb;
  wire [12:0]rx_byte14_fb;
  wire [12:0]rx_byte14_sb;
  wire [12:0]rx_byte15_fb;
  wire [12:0]rx_byte15_sb;
  wire [12:0]rx_byte1_fb;
  wire [12:0]rx_byte1_sb;
  wire [12:0]rx_byte2_f;
  wire [12:0]rx_byte2_fb;
  wire [12:0]rx_byte2_sb;
  wire [12:0]rx_byte3_f;
  wire [12:0]rx_byte3_fb;
  wire [12:0]rx_byte3_sb;
  wire [12:0]rx_byte4_f;
  wire [12:0]rx_byte4_fb;
  wire [12:0]rx_byte4_sb;
  wire [12:0]rx_byte5_f;
  wire [12:0]rx_byte5_fb;
  wire [12:0]rx_byte5_sb;
  wire [12:0]rx_byte6_f;
  wire \rx_byte6_f_reg[0]_0 ;
  wire [12:0]rx_byte6_fb;
  wire [12:0]rx_byte6_sb;
  wire \rx_byte6_sb_reg[7]_0 ;
  wire [12:0]rx_byte7_f;
  wire [12:0]rx_byte7_fb;
  wire [12:0]rx_byte7_sb;
  wire [12:0]rx_byte8_f;
  wire [12:0]rx_byte8_fb;
  wire [12:0]rx_byte8_sb;
  wire [12:0]rx_byte9_f;
  wire [12:0]rx_byte9_fb;
  wire [12:0]rx_byte9_sb;
  wire [3:0]rx_bytes_sent_fb;
  wire [3:0]rx_bytes_sent_sb;
  wire [3:0]rx_nb_bytes_fb;
  wire \rx_nb_bytes_fb_reg[3]_0 ;
  wire [3:0]rx_nb_bytes_s;
  wire [3:0]rx_nb_bytes_sb;
  wire rx_start_f;
  wire rx_start_fb_i_1_n_0;
  wire rx_start_fb_reg_n_0;
  wire rx_start_fc;
  wire rx_start_fcb;
  wire rx_start_s;
  wire rx_start_sb;
  wire rx_start_sb2;
  wire \shift_reg[10]_i_6_n_0 ;
  wire \shift_reg[10]_i_7_n_0 ;
  wire \shift_reg[10]_i_8_n_0 ;
  wire \shift_reg[10]_i_9_n_0 ;
  wire \shift_reg[12]_i_6_n_0 ;
  wire \shift_reg[12]_i_7_n_0 ;
  wire \shift_reg[12]_i_8_n_0 ;
  wire \shift_reg[12]_i_9_n_0 ;
  wire \shift_reg[14]_i_6_n_0 ;
  wire \shift_reg[14]_i_7_n_0 ;
  wire \shift_reg[14]_i_8_n_0 ;
  wire \shift_reg[14]_i_9_n_0 ;
  wire \shift_reg[16]_i_6_n_0 ;
  wire \shift_reg[16]_i_7_n_0 ;
  wire \shift_reg[16]_i_8_n_0 ;
  wire \shift_reg[16]_i_9_n_0 ;
  wire \shift_reg[18]_i_6_n_0 ;
  wire \shift_reg[18]_i_7_n_0 ;
  wire \shift_reg[18]_i_8_n_0 ;
  wire \shift_reg[18]_i_9_n_0 ;
  wire \shift_reg[20]_i_6_n_0 ;
  wire \shift_reg[20]_i_7_n_0 ;
  wire \shift_reg[20]_i_8_n_0 ;
  wire \shift_reg[20]_i_9_n_0 ;
  wire \shift_reg[22]_i_10_n_0 ;
  wire \shift_reg[22]_i_11_n_0 ;
  wire \shift_reg[22]_i_8_n_0 ;
  wire \shift_reg[22]_i_9_n_0 ;
  wire \shift_reg[24]_i_12_n_0 ;
  wire \shift_reg[24]_i_13_n_0 ;
  wire \shift_reg[24]_i_14_n_0 ;
  wire \shift_reg[24]_i_15_n_0 ;
  wire \shift_reg_reg[10] ;
  wire \shift_reg_reg[10]_0 ;
  wire \shift_reg_reg[12] ;
  wire \shift_reg_reg[12]_0 ;
  wire \shift_reg_reg[14]_i_4_n_0 ;
  wire \shift_reg_reg[14]_i_5_n_0 ;
  wire \shift_reg_reg[16] ;
  wire \shift_reg_reg[16]_0 ;
  wire \shift_reg_reg[18] ;
  wire \shift_reg_reg[18]_0 ;
  wire \shift_reg_reg[20]_i_4_n_0 ;
  wire \shift_reg_reg[20]_i_5_n_0 ;
  wire \shift_reg_reg[22] ;
  wire \shift_reg_reg[22]_0 ;
  wire \shift_reg_reg[24] ;
  wire \shift_reg_reg[24]_0 ;
  wire [6:0]\shift_reg_reg[24]_1 ;
  wire [6:0]slave_addr_fb;
  wire [6:0]slave_addr_sb;
  wire [7:0]tx_byte;
  wire [7:0]tx_byte0_fb;
  wire [7:0]tx_byte0_s;
  wire [7:0]tx_byte0_sb;
  wire [7:0]tx_byte10_fb;
  wire [7:0]tx_byte10_s;
  wire [7:0]tx_byte10_sb;
  wire [7:0]tx_byte11_fb;
  wire [7:0]tx_byte11_s;
  wire [7:0]tx_byte11_sb;
  wire [7:0]tx_byte12_fb;
  wire [7:0]tx_byte12_s;
  wire [7:0]tx_byte12_sb;
  wire [7:0]tx_byte13_fb;
  wire [7:0]tx_byte13_s;
  wire [7:0]tx_byte13_sb;
  wire [7:0]tx_byte14_fb;
  wire [7:0]tx_byte14_s;
  wire [7:0]tx_byte14_sb;
  wire [7:0]tx_byte15_fb;
  wire [7:0]tx_byte15_s;
  wire [7:0]tx_byte15_sb;
  wire [7:0]tx_byte1_fb;
  wire [7:0]tx_byte1_s;
  wire [7:0]tx_byte1_sb;
  wire [7:0]tx_byte2_fb;
  wire [7:0]tx_byte2_s;
  wire [7:0]tx_byte2_sb;
  wire \tx_byte2_sb_reg[1]_0 ;
  wire [7:0]tx_byte3_fb;
  wire [7:0]tx_byte3_s;
  wire [7:0]tx_byte3_sb;
  wire [7:0]tx_byte4_fb;
  wire [7:0]tx_byte4_s;
  wire [7:0]tx_byte4_sb;
  wire [7:0]tx_byte5_fb;
  wire \tx_byte5_fb_reg[3]_0 ;
  wire [7:0]tx_byte5_s;
  wire [7:0]tx_byte5_sb;
  wire [7:0]tx_byte6_fb;
  wire [7:0]tx_byte6_s;
  wire [7:0]tx_byte6_sb;
  wire [7:0]tx_byte7_fb;
  wire \tx_byte7_fb_reg[5]_0 ;
  wire [7:0]tx_byte7_s;
  wire [7:0]tx_byte7_sb;
  wire [7:0]tx_byte8_fb;
  wire [7:0]tx_byte8_s;
  wire \tx_byte8_s_reg[4]_0 ;
  wire [7:0]tx_byte8_sb;
  wire [7:0]tx_byte9_fb;
  wire [7:0]tx_byte9_s;
  wire [7:0]tx_byte9_sb;
  wire \tx_byte9_sb_reg[7]_0 ;
  wire [7:0]\tx_byte_reg_reg[0][7] ;
  wire [7:0]\tx_byte_reg_reg[10][7] ;
  wire [7:0]\tx_byte_reg_reg[11][7] ;
  wire [7:0]\tx_byte_reg_reg[12][7] ;
  wire [7:0]\tx_byte_reg_reg[13][7] ;
  wire [7:0]\tx_byte_reg_reg[14][7] ;
  wire [7:0]\tx_byte_reg_reg[15][7] ;
  wire [7:0]\tx_byte_reg_reg[1][7] ;
  wire [7:0]\tx_byte_reg_reg[2][7] ;
  wire [7:0]\tx_byte_reg_reg[3][7] ;
  wire [7:0]\tx_byte_reg_reg[4][7] ;
  wire [7:0]\tx_byte_reg_reg[5][7] ;
  wire [7:0]\tx_byte_reg_reg[6][7] ;
  wire [7:0]\tx_byte_reg_reg[7][7] ;
  wire [7:0]\tx_byte_reg_reg[8][7] ;
  wire [7:0]\tx_byte_reg_reg[9][7] ;
  wire [3:0]tx_bytes_sent_fb;
  wire [3:0]tx_bytes_sent_sb;
  wire [3:0]tx_nb_bytes_fb;
  wire [3:0]tx_nb_bytes_s;
  wire [3:0]tx_nb_bytes_sb;
  wire tx_start_f;
  wire tx_start_fb_i_1_n_0;
  wire tx_start_fb_reg_n_0;
  wire tx_start_fc;
  wire tx_start_fcb;
  wire tx_start_s;
  wire tx_start_sb;
  wire tx_start_sb2;

  LUT1 #(
    .INIT(2'h1)) 
    S_AXI_ARREADY_i_2
       (.I0(S_AXI_ARESETN),
        .O(\rx_byte0_fb_reg[8]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_14 
       (.I0(rx_byte5_f[0]),
        .I1(rx_byte4_f[0]),
        .I2(Q[1]),
        .I3(rx_byte3_f[0]),
        .I4(Q[0]),
        .I5(rx_byte2_f[0]),
        .O(\S_AXI_RDATA_reg[0]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_15 
       (.I0(rx_byte9_f[0]),
        .I1(rx_byte8_f[0]),
        .I2(Q[1]),
        .I3(rx_byte7_f[0]),
        .I4(Q[0]),
        .I5(rx_byte6_f[0]),
        .O(\S_AXI_RDATA[0]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[0]_i_16 
       (.I0(rx_byte13_f[0]),
        .I1(rx_byte12_f[0]),
        .I2(Q[1]),
        .I3(rx_byte11_f[0]),
        .I4(Q[0]),
        .I5(rx_byte10_f[0]),
        .O(\S_AXI_RDATA[0]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_3 
       (.I0(\S_AXI_RDATA[10]_i_5_n_0 ),
        .I1(\S_AXI_RDATA[10]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\S_AXI_RDATA[10]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\axi_araddr_reg[3]_1 ),
        .O(\S_AXI_RDATA_reg[10] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_5 
       (.I0(rx_byte13_f[10]),
        .I1(rx_byte12_f[10]),
        .I2(Q[1]),
        .I3(rx_byte11_f[10]),
        .I4(Q[0]),
        .I5(rx_byte10_f[10]),
        .O(\S_AXI_RDATA[10]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_6 
       (.I0(rx_byte9_f[10]),
        .I1(rx_byte8_f[10]),
        .I2(Q[1]),
        .I3(rx_byte7_f[10]),
        .I4(Q[0]),
        .I5(rx_byte6_f[10]),
        .O(\S_AXI_RDATA[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[10]_i_7 
       (.I0(rx_byte5_f[10]),
        .I1(rx_byte4_f[10]),
        .I2(Q[1]),
        .I3(rx_byte3_f[10]),
        .I4(Q[0]),
        .I5(rx_byte2_f[10]),
        .O(\S_AXI_RDATA[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_3 
       (.I0(\S_AXI_RDATA[11]_i_5_n_0 ),
        .I1(\S_AXI_RDATA[11]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\S_AXI_RDATA[11]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\axi_araddr_reg[3]_2 ),
        .O(\S_AXI_RDATA_reg[11] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_5 
       (.I0(rx_byte13_f[11]),
        .I1(rx_byte12_f[11]),
        .I2(Q[1]),
        .I3(rx_byte11_f[11]),
        .I4(Q[0]),
        .I5(rx_byte10_f[11]),
        .O(\S_AXI_RDATA[11]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_6 
       (.I0(rx_byte9_f[11]),
        .I1(rx_byte8_f[11]),
        .I2(Q[1]),
        .I3(rx_byte7_f[11]),
        .I4(Q[0]),
        .I5(rx_byte6_f[11]),
        .O(\S_AXI_RDATA[11]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[11]_i_7 
       (.I0(rx_byte5_f[11]),
        .I1(rx_byte4_f[11]),
        .I2(Q[1]),
        .I3(rx_byte3_f[11]),
        .I4(Q[0]),
        .I5(rx_byte2_f[11]),
        .O(\S_AXI_RDATA[11]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_3 
       (.I0(\S_AXI_RDATA[12]_i_6_n_0 ),
        .I1(\S_AXI_RDATA[12]_i_7_n_0 ),
        .I2(Q[3]),
        .I3(\S_AXI_RDATA[12]_i_8_n_0 ),
        .I4(Q[2]),
        .I5(\axi_araddr_reg[3]_3 ),
        .O(\S_AXI_RDATA_reg[12] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_6 
       (.I0(rx_byte13_f[12]),
        .I1(rx_byte12_f[12]),
        .I2(Q[1]),
        .I3(rx_byte11_f[12]),
        .I4(Q[0]),
        .I5(rx_byte10_f[12]),
        .O(\S_AXI_RDATA[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_7 
       (.I0(rx_byte9_f[12]),
        .I1(rx_byte8_f[12]),
        .I2(Q[1]),
        .I3(rx_byte7_f[12]),
        .I4(Q[0]),
        .I5(rx_byte6_f[12]),
        .O(\S_AXI_RDATA[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[12]_i_8 
       (.I0(rx_byte5_f[12]),
        .I1(rx_byte4_f[12]),
        .I2(Q[1]),
        .I3(rx_byte3_f[12]),
        .I4(Q[0]),
        .I5(rx_byte2_f[12]),
        .O(\S_AXI_RDATA[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_14 
       (.I0(rx_byte5_f[1]),
        .I1(rx_byte4_f[1]),
        .I2(Q[1]),
        .I3(rx_byte3_f[1]),
        .I4(Q[0]),
        .I5(rx_byte2_f[1]),
        .O(\S_AXI_RDATA_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_15 
       (.I0(rx_byte9_f[1]),
        .I1(rx_byte8_f[1]),
        .I2(Q[1]),
        .I3(rx_byte7_f[1]),
        .I4(Q[0]),
        .I5(rx_byte6_f[1]),
        .O(\S_AXI_RDATA[1]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[1]_i_16 
       (.I0(rx_byte13_f[1]),
        .I1(rx_byte12_f[1]),
        .I2(Q[1]),
        .I3(rx_byte11_f[1]),
        .I4(Q[0]),
        .I5(rx_byte10_f[1]),
        .O(\S_AXI_RDATA[1]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_11 
       (.I0(rx_byte5_f[2]),
        .I1(rx_byte4_f[2]),
        .I2(Q[1]),
        .I3(rx_byte3_f[2]),
        .I4(Q[0]),
        .I5(rx_byte2_f[2]),
        .O(\S_AXI_RDATA_reg[2]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_8 
       (.I0(rx_byte9_f[2]),
        .I1(rx_byte8_f[2]),
        .I2(Q[1]),
        .I3(rx_byte7_f[2]),
        .I4(Q[0]),
        .I5(rx_byte6_f[2]),
        .O(\S_AXI_RDATA[2]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[2]_i_9 
       (.I0(rx_byte13_f[2]),
        .I1(rx_byte12_f[2]),
        .I2(Q[1]),
        .I3(rx_byte11_f[2]),
        .I4(Q[0]),
        .I5(rx_byte10_f[2]),
        .O(\S_AXI_RDATA[2]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_11 
       (.I0(rx_byte5_f[3]),
        .I1(rx_byte4_f[3]),
        .I2(Q[1]),
        .I3(rx_byte3_f[3]),
        .I4(Q[0]),
        .I5(rx_byte2_f[3]),
        .O(\S_AXI_RDATA_reg[3]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_8 
       (.I0(rx_byte9_f[3]),
        .I1(rx_byte8_f[3]),
        .I2(Q[1]),
        .I3(rx_byte7_f[3]),
        .I4(Q[0]),
        .I5(rx_byte6_f[3]),
        .O(\S_AXI_RDATA[3]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[3]_i_9 
       (.I0(rx_byte13_f[3]),
        .I1(rx_byte12_f[3]),
        .I2(Q[1]),
        .I3(rx_byte11_f[3]),
        .I4(Q[0]),
        .I5(rx_byte10_f[3]),
        .O(\S_AXI_RDATA[3]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_14 
       (.I0(rx_byte5_f[4]),
        .I1(rx_byte4_f[4]),
        .I2(Q[1]),
        .I3(rx_byte3_f[4]),
        .I4(Q[0]),
        .I5(rx_byte2_f[4]),
        .O(\S_AXI_RDATA_reg[4]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_15 
       (.I0(rx_byte9_f[4]),
        .I1(rx_byte8_f[4]),
        .I2(Q[1]),
        .I3(rx_byte7_f[4]),
        .I4(Q[0]),
        .I5(rx_byte6_f[4]),
        .O(\S_AXI_RDATA[4]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[4]_i_16 
       (.I0(rx_byte13_f[4]),
        .I1(rx_byte12_f[4]),
        .I2(Q[1]),
        .I3(rx_byte11_f[4]),
        .I4(Q[0]),
        .I5(rx_byte10_f[4]),
        .O(\S_AXI_RDATA[4]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_14 
       (.I0(rx_byte5_f[5]),
        .I1(rx_byte4_f[5]),
        .I2(Q[1]),
        .I3(rx_byte3_f[5]),
        .I4(Q[0]),
        .I5(rx_byte2_f[5]),
        .O(\S_AXI_RDATA_reg[5]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_15 
       (.I0(rx_byte9_f[5]),
        .I1(rx_byte8_f[5]),
        .I2(Q[1]),
        .I3(rx_byte7_f[5]),
        .I4(Q[0]),
        .I5(rx_byte6_f[5]),
        .O(\S_AXI_RDATA[5]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[5]_i_16 
       (.I0(rx_byte13_f[5]),
        .I1(rx_byte12_f[5]),
        .I2(Q[1]),
        .I3(rx_byte11_f[5]),
        .I4(Q[0]),
        .I5(rx_byte10_f[5]),
        .O(\S_AXI_RDATA[5]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_14 
       (.I0(rx_byte5_f[6]),
        .I1(rx_byte4_f[6]),
        .I2(Q[1]),
        .I3(rx_byte3_f[6]),
        .I4(Q[0]),
        .I5(rx_byte2_f[6]),
        .O(\S_AXI_RDATA_reg[6]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_15 
       (.I0(rx_byte9_f[6]),
        .I1(rx_byte8_f[6]),
        .I2(Q[1]),
        .I3(rx_byte7_f[6]),
        .I4(Q[0]),
        .I5(rx_byte6_f[6]),
        .O(\S_AXI_RDATA[6]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[6]_i_16 
       (.I0(rx_byte13_f[6]),
        .I1(rx_byte12_f[6]),
        .I2(Q[1]),
        .I3(rx_byte11_f[6]),
        .I4(Q[0]),
        .I5(rx_byte10_f[6]),
        .O(\S_AXI_RDATA[6]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_14 
       (.I0(rx_byte5_f[7]),
        .I1(rx_byte4_f[7]),
        .I2(Q[1]),
        .I3(rx_byte3_f[7]),
        .I4(Q[0]),
        .I5(rx_byte2_f[7]),
        .O(\S_AXI_RDATA_reg[7]_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_15 
       (.I0(rx_byte9_f[7]),
        .I1(rx_byte8_f[7]),
        .I2(Q[1]),
        .I3(rx_byte7_f[7]),
        .I4(Q[0]),
        .I5(rx_byte6_f[7]),
        .O(\S_AXI_RDATA[7]_i_15_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[7]_i_16 
       (.I0(rx_byte13_f[7]),
        .I1(rx_byte12_f[7]),
        .I2(Q[1]),
        .I3(rx_byte11_f[7]),
        .I4(Q[0]),
        .I5(rx_byte10_f[7]),
        .O(\S_AXI_RDATA[7]_i_16_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_3 
       (.I0(\S_AXI_RDATA[8]_i_5_n_0 ),
        .I1(\S_AXI_RDATA[8]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\S_AXI_RDATA[8]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\axi_araddr_reg[3] ),
        .O(\S_AXI_RDATA_reg[8] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_5 
       (.I0(rx_byte13_f[8]),
        .I1(rx_byte12_f[8]),
        .I2(Q[1]),
        .I3(rx_byte11_f[8]),
        .I4(Q[0]),
        .I5(rx_byte10_f[8]),
        .O(\S_AXI_RDATA[8]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_6 
       (.I0(rx_byte9_f[8]),
        .I1(rx_byte8_f[8]),
        .I2(Q[1]),
        .I3(rx_byte7_f[8]),
        .I4(Q[0]),
        .I5(rx_byte6_f[8]),
        .O(\S_AXI_RDATA[8]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[8]_i_7 
       (.I0(rx_byte5_f[8]),
        .I1(rx_byte4_f[8]),
        .I2(Q[1]),
        .I3(rx_byte3_f[8]),
        .I4(Q[0]),
        .I5(rx_byte2_f[8]),
        .O(\S_AXI_RDATA[8]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_3 
       (.I0(\S_AXI_RDATA[9]_i_5_n_0 ),
        .I1(\S_AXI_RDATA[9]_i_6_n_0 ),
        .I2(Q[3]),
        .I3(\S_AXI_RDATA[9]_i_7_n_0 ),
        .I4(Q[2]),
        .I5(\axi_araddr_reg[3]_0 ),
        .O(\S_AXI_RDATA_reg[9] ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_5 
       (.I0(rx_byte13_f[9]),
        .I1(rx_byte12_f[9]),
        .I2(Q[1]),
        .I3(rx_byte11_f[9]),
        .I4(Q[0]),
        .I5(rx_byte10_f[9]),
        .O(\S_AXI_RDATA[9]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_6 
       (.I0(rx_byte9_f[9]),
        .I1(rx_byte8_f[9]),
        .I2(Q[1]),
        .I3(rx_byte7_f[9]),
        .I4(Q[0]),
        .I5(rx_byte6_f[9]),
        .O(\S_AXI_RDATA[9]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \S_AXI_RDATA[9]_i_7 
       (.I0(rx_byte5_f[9]),
        .I1(rx_byte4_f[9]),
        .I2(Q[1]),
        .I3(rx_byte3_f[9]),
        .I4(Q[0]),
        .I5(rx_byte2_f[9]),
        .O(\S_AXI_RDATA[9]_i_7_n_0 ));
  MUXF7 \S_AXI_RDATA_reg[0]_i_8 
       (.I0(\S_AXI_RDATA[0]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[0]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[0] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[1]_i_8 
       (.I0(\S_AXI_RDATA[1]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[1]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[1] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[2]_i_4 
       (.I0(\S_AXI_RDATA[2]_i_8_n_0 ),
        .I1(\S_AXI_RDATA[2]_i_9_n_0 ),
        .O(\S_AXI_RDATA_reg[2] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[3]_i_4 
       (.I0(\S_AXI_RDATA[3]_i_8_n_0 ),
        .I1(\S_AXI_RDATA[3]_i_9_n_0 ),
        .O(\S_AXI_RDATA_reg[3] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[4]_i_8 
       (.I0(\S_AXI_RDATA[4]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[4]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[4] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[5]_i_8 
       (.I0(\S_AXI_RDATA[5]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[5]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[5] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[6]_i_8 
       (.I0(\S_AXI_RDATA[6]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[6]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[6] ),
        .S(Q[2]));
  MUXF7 \S_AXI_RDATA_reg[7]_i_8 
       (.I0(\S_AXI_RDATA[7]_i_15_n_0 ),
        .I1(\S_AXI_RDATA[7]_i_16_n_0 ),
        .O(\S_AXI_RDATA_reg[7] ),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'h888888882222222F)) 
    atlimit_i_1
       (.I0(atlimit_i_2_n_0),
        .I1(nb_p1),
        .I2(tx_nb_bytes_s[1]),
        .I3(tx_nb_bytes_s[0]),
        .I4(tx_nb_bytes_s[2]),
        .I5(tx_nb_bytes_s[3]),
        .O(atlimit_reg));
  LUT6 #(
    .INIT(64'h888888882222222F)) 
    atlimit_i_1__0
       (.I0(atlimit_i_2__0_n_0),
        .I1(nb_p1_0),
        .I2(rx_nb_bytes_s[1]),
        .I3(rx_nb_bytes_s[0]),
        .I4(rx_nb_bytes_s[2]),
        .I5(rx_nb_bytes_s[3]),
        .O(atlimit_reg_0));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    atlimit_i_2
       (.I0(tx_nb_bytes_s[0]),
        .I1(tx_nb_bytes_s[2]),
        .I2(\number_reg[3] [2]),
        .I3(\number_reg[3] [1]),
        .I4(\number_reg[3] [0]),
        .I5(tx_nb_bytes_s[1]),
        .O(atlimit_i_2_n_0));
  LUT6 #(
    .INIT(64'h0041820014000082)) 
    atlimit_i_2__0
       (.I0(rx_nb_bytes_s[0]),
        .I1(rx_nb_bytes_s[2]),
        .I2(\number_reg[3]_0 [2]),
        .I3(\number_reg[3]_0 [1]),
        .I4(\number_reg[3]_0 [0]),
        .I5(rx_nb_bytes_s[1]),
        .O(atlimit_i_2__0_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    \axi_araddr[9]_i_2 
       (.I0(S_AXI_ARESETN),
        .O(\tx_byte8_s_reg[4]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    clkdiv1000_i_2
       (.I0(S_AXI_ARESETN),
        .O(\rx_byte12_sb_reg[5]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_reg[16]_i_2 
       (.I0(S_AXI_ARESETN),
        .O(\rx_nb_bytes_fb_reg[3]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_reg[1]_i_2 
       (.I0(S_AXI_ARESETN),
        .O(\tx_byte2_sb_reg[1]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_reg[2]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\tx_byte7_fb_reg[5]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \ctrl_reg[4]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\tx_byte9_sb_reg[7]_0 ));
  FDCE done_f_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(done_fb),
        .Q(done_f));
  FDCE done_fb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(done_sb),
        .Q(done_fb));
  FDCE done_sb_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(done_s),
        .Q(done_sb));
  FDCE \rx_byte0_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_fb[0]),
        .Q(\S_AXI_RDATA_reg[12]_0 [0]));
  FDCE \rx_byte0_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte0_fb[10]),
        .Q(\S_AXI_RDATA_reg[12]_0 [10]));
  FDCE \rx_byte0_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte0_fb[11]),
        .Q(\S_AXI_RDATA_reg[12]_0 [11]));
  FDCE \rx_byte0_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte0_fb[12]),
        .Q(\S_AXI_RDATA_reg[12]_0 [12]));
  FDCE \rx_byte0_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte0_fb[1]),
        .Q(\S_AXI_RDATA_reg[12]_0 [1]));
  FDCE \rx_byte0_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte0_fb[2]),
        .Q(\S_AXI_RDATA_reg[12]_0 [2]));
  FDCE \rx_byte0_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte0_fb[3]),
        .Q(\S_AXI_RDATA_reg[12]_0 [3]));
  FDCE \rx_byte0_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_fb[4]),
        .Q(\S_AXI_RDATA_reg[12]_0 [4]));
  FDCE \rx_byte0_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte0_fb[5]),
        .Q(\S_AXI_RDATA_reg[12]_0 [5]));
  FDCE \rx_byte0_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte0_fb[6]),
        .Q(\S_AXI_RDATA_reg[12]_0 [6]));
  FDCE \rx_byte0_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte0_fb[7]),
        .Q(\S_AXI_RDATA_reg[12]_0 [7]));
  FDCE \rx_byte0_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_fb[8]),
        .Q(\S_AXI_RDATA_reg[12]_0 [8]));
  FDCE \rx_byte0_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte0_fb[9]),
        .Q(\S_AXI_RDATA_reg[12]_0 [9]));
  FDCE \rx_byte0_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_sb[0]),
        .Q(rx_byte0_fb[0]));
  FDCE \rx_byte0_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte0_sb[10]),
        .Q(rx_byte0_fb[10]));
  FDCE \rx_byte0_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte0_sb[11]),
        .Q(rx_byte0_fb[11]));
  FDCE \rx_byte0_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte0_sb[12]),
        .Q(rx_byte0_fb[12]));
  FDCE \rx_byte0_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte0_sb[1]),
        .Q(rx_byte0_fb[1]));
  FDCE \rx_byte0_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte0_sb[2]),
        .Q(rx_byte0_fb[2]));
  FDCE \rx_byte0_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte0_sb[3]),
        .Q(rx_byte0_fb[3]));
  FDCE \rx_byte0_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_sb[4]),
        .Q(rx_byte0_fb[4]));
  FDCE \rx_byte0_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte0_sb[5]),
        .Q(rx_byte0_fb[5]));
  FDCE \rx_byte0_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte0_sb[6]),
        .Q(rx_byte0_fb[6]));
  FDCE \rx_byte0_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte0_sb[7]),
        .Q(rx_byte0_fb[7]));
  FDCE \rx_byte0_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte0_sb[8]),
        .Q(rx_byte0_fb[8]));
  FDCE \rx_byte0_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte0_sb[9]),
        .Q(rx_byte0_fb[9]));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_byte0_sb[11]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\rx_byte6_sb_reg[7]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_byte0_sb[7]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\rx_byte12_f_reg[2]_0 ));
  FDCE \rx_byte0_sb_reg[0] 
       (.C(CLK),
        .CE(E),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte0_sb[0]));
  FDCE \rx_byte0_sb_reg[10] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte0_sb[10]));
  FDCE \rx_byte0_sb_reg[11] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte0_sb[11]));
  FDCE \rx_byte0_sb_reg[12] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte0_sb[12]));
  FDCE \rx_byte0_sb_reg[1] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte0_sb[1]));
  FDCE \rx_byte0_sb_reg[2] 
       (.C(CLK),
        .CE(E),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte0_sb[2]));
  FDCE \rx_byte0_sb_reg[3] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte0_sb[3]));
  FDCE \rx_byte0_sb_reg[4] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte0_sb[4]));
  FDCE \rx_byte0_sb_reg[5] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte0_sb[5]));
  FDCE \rx_byte0_sb_reg[6] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte0_sb[6]));
  FDCE \rx_byte0_sb_reg[7] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte0_sb[7]));
  FDCE \rx_byte0_sb_reg[8] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte0_sb[8]));
  FDCE \rx_byte0_sb_reg[9] 
       (.C(CLK),
        .CE(E),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte0_sb[9]));
  FDCE \rx_byte10_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte10_fb[0]),
        .Q(rx_byte10_f[0]));
  FDCE \rx_byte10_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte10_fb[10]),
        .Q(rx_byte10_f[10]));
  FDCE \rx_byte10_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte10_fb[11]),
        .Q(rx_byte10_f[11]));
  FDCE \rx_byte10_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte10_fb[12]),
        .Q(rx_byte10_f[12]));
  FDCE \rx_byte10_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte10_fb[1]),
        .Q(rx_byte10_f[1]));
  FDCE \rx_byte10_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte10_fb[2]),
        .Q(rx_byte10_f[2]));
  FDCE \rx_byte10_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte10_fb[3]),
        .Q(rx_byte10_f[3]));
  FDCE \rx_byte10_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte10_fb[4]),
        .Q(rx_byte10_f[4]));
  FDCE \rx_byte10_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte10_fb[5]),
        .Q(rx_byte10_f[5]));
  FDCE \rx_byte10_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte10_fb[6]),
        .Q(rx_byte10_f[6]));
  FDCE \rx_byte10_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte10_fb[7]),
        .Q(rx_byte10_f[7]));
  FDCE \rx_byte10_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte10_fb[8]),
        .Q(rx_byte10_f[8]));
  FDCE \rx_byte10_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte10_fb[9]),
        .Q(rx_byte10_f[9]));
  FDCE \rx_byte10_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte10_sb[0]),
        .Q(rx_byte10_fb[0]));
  FDCE \rx_byte10_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte10_sb[10]),
        .Q(rx_byte10_fb[10]));
  FDCE \rx_byte10_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte10_sb[11]),
        .Q(rx_byte10_fb[11]));
  FDCE \rx_byte10_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte10_sb[12]),
        .Q(rx_byte10_fb[12]));
  FDCE \rx_byte10_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte10_sb[1]),
        .Q(rx_byte10_fb[1]));
  FDCE \rx_byte10_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte10_sb[2]),
        .Q(rx_byte10_fb[2]));
  FDCE \rx_byte10_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte10_sb[3]),
        .Q(rx_byte10_fb[3]));
  FDCE \rx_byte10_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte10_sb[4]),
        .Q(rx_byte10_fb[4]));
  FDCE \rx_byte10_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte10_sb[5]),
        .Q(rx_byte10_fb[5]));
  FDCE \rx_byte10_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte10_sb[6]),
        .Q(rx_byte10_fb[6]));
  FDCE \rx_byte10_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte10_sb[7]),
        .Q(rx_byte10_fb[7]));
  FDCE \rx_byte10_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte10_sb[8]),
        .Q(rx_byte10_fb[8]));
  FDCE \rx_byte10_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte10_sb[9]),
        .Q(rx_byte10_fb[9]));
  FDCE \rx_byte10_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte10_sb[0]));
  FDCE \rx_byte10_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte10_sb[10]));
  FDCE \rx_byte10_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte10_sb[11]));
  FDCE \rx_byte10_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte10_sb[12]));
  FDCE \rx_byte10_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte10_sb[1]));
  FDCE \rx_byte10_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte10_sb[2]));
  FDCE \rx_byte10_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte10_sb[3]));
  FDCE \rx_byte10_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte10_sb[4]));
  FDCE \rx_byte10_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte10_sb[5]));
  FDCE \rx_byte10_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte10_sb[6]));
  FDCE \rx_byte10_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte10_sb[7]));
  FDCE \rx_byte10_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte10_sb[8]));
  FDCE \rx_byte10_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte10_sb[9]));
  FDCE \rx_byte11_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte11_fb[0]),
        .Q(rx_byte11_f[0]));
  FDCE \rx_byte11_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte11_fb[10]),
        .Q(rx_byte11_f[10]));
  FDCE \rx_byte11_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte11_fb[11]),
        .Q(rx_byte11_f[11]));
  FDCE \rx_byte11_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte11_fb[12]),
        .Q(rx_byte11_f[12]));
  FDCE \rx_byte11_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte11_fb[1]),
        .Q(rx_byte11_f[1]));
  FDCE \rx_byte11_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte11_fb[2]),
        .Q(rx_byte11_f[2]));
  FDCE \rx_byte11_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte11_fb[3]),
        .Q(rx_byte11_f[3]));
  FDCE \rx_byte11_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte11_fb[4]),
        .Q(rx_byte11_f[4]));
  FDCE \rx_byte11_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte11_fb[5]),
        .Q(rx_byte11_f[5]));
  FDCE \rx_byte11_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte11_fb[6]),
        .Q(rx_byte11_f[6]));
  FDCE \rx_byte11_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte11_fb[7]),
        .Q(rx_byte11_f[7]));
  FDCE \rx_byte11_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte11_fb[8]),
        .Q(rx_byte11_f[8]));
  FDCE \rx_byte11_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte11_fb[9]),
        .Q(rx_byte11_f[9]));
  FDCE \rx_byte11_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte11_sb[0]),
        .Q(rx_byte11_fb[0]));
  FDCE \rx_byte11_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte11_sb[10]),
        .Q(rx_byte11_fb[10]));
  FDCE \rx_byte11_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte11_sb[11]),
        .Q(rx_byte11_fb[11]));
  FDCE \rx_byte11_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte11_sb[12]),
        .Q(rx_byte11_fb[12]));
  FDCE \rx_byte11_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte11_sb[1]),
        .Q(rx_byte11_fb[1]));
  FDCE \rx_byte11_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte11_sb[2]),
        .Q(rx_byte11_fb[2]));
  FDCE \rx_byte11_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte11_sb[3]),
        .Q(rx_byte11_fb[3]));
  FDCE \rx_byte11_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte11_sb[4]),
        .Q(rx_byte11_fb[4]));
  FDCE \rx_byte11_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte11_sb[5]),
        .Q(rx_byte11_fb[5]));
  FDCE \rx_byte11_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte11_sb[6]),
        .Q(rx_byte11_fb[6]));
  FDCE \rx_byte11_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte11_sb[7]),
        .Q(rx_byte11_fb[7]));
  FDCE \rx_byte11_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte11_sb[8]),
        .Q(rx_byte11_fb[8]));
  FDCE \rx_byte11_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte11_sb[9]),
        .Q(rx_byte11_fb[9]));
  FDCE \rx_byte11_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte11_sb[0]));
  FDCE \rx_byte11_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte11_sb[10]));
  FDCE \rx_byte11_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte11_sb[11]));
  FDCE \rx_byte11_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte11_sb[12]));
  FDCE \rx_byte11_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte11_sb[1]));
  FDCE \rx_byte11_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte11_sb[2]));
  FDCE \rx_byte11_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte11_sb[3]));
  FDCE \rx_byte11_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte11_sb[4]));
  FDCE \rx_byte11_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte11_sb[5]));
  FDCE \rx_byte11_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte11_sb[6]));
  FDCE \rx_byte11_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte11_sb[7]));
  FDCE \rx_byte11_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte11_sb[8]));
  FDCE \rx_byte11_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte11_sb[9]));
  FDCE \rx_byte12_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte12_fb[0]),
        .Q(rx_byte12_f[0]));
  FDCE \rx_byte12_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte12_fb[10]),
        .Q(rx_byte12_f[10]));
  FDCE \rx_byte12_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte12_fb[11]),
        .Q(rx_byte12_f[11]));
  FDCE \rx_byte12_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte12_fb[12]),
        .Q(rx_byte12_f[12]));
  FDCE \rx_byte12_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte12_fb[1]),
        .Q(rx_byte12_f[1]));
  FDCE \rx_byte12_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte12_fb[2]),
        .Q(rx_byte12_f[2]));
  FDCE \rx_byte12_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte12_fb[3]),
        .Q(rx_byte12_f[3]));
  FDCE \rx_byte12_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte12_fb[4]),
        .Q(rx_byte12_f[4]));
  FDCE \rx_byte12_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte12_fb[5]),
        .Q(rx_byte12_f[5]));
  FDCE \rx_byte12_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte12_fb[6]),
        .Q(rx_byte12_f[6]));
  FDCE \rx_byte12_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte12_fb[7]),
        .Q(rx_byte12_f[7]));
  FDCE \rx_byte12_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte12_fb[8]),
        .Q(rx_byte12_f[8]));
  FDCE \rx_byte12_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte12_fb[9]),
        .Q(rx_byte12_f[9]));
  FDCE \rx_byte12_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte12_sb[0]),
        .Q(rx_byte12_fb[0]));
  FDCE \rx_byte12_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte12_sb[10]),
        .Q(rx_byte12_fb[10]));
  FDCE \rx_byte12_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte12_sb[11]),
        .Q(rx_byte12_fb[11]));
  FDCE \rx_byte12_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte12_sb[12]),
        .Q(rx_byte12_fb[12]));
  FDCE \rx_byte12_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte12_sb[1]),
        .Q(rx_byte12_fb[1]));
  FDCE \rx_byte12_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte12_sb[2]),
        .Q(rx_byte12_fb[2]));
  FDCE \rx_byte12_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte12_sb[3]),
        .Q(rx_byte12_fb[3]));
  FDCE \rx_byte12_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte12_sb[4]),
        .Q(rx_byte12_fb[4]));
  FDCE \rx_byte12_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte12_sb[5]),
        .Q(rx_byte12_fb[5]));
  FDCE \rx_byte12_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte12_sb[6]),
        .Q(rx_byte12_fb[6]));
  FDCE \rx_byte12_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte12_sb[7]),
        .Q(rx_byte12_fb[7]));
  FDCE \rx_byte12_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte12_sb[8]),
        .Q(rx_byte12_fb[8]));
  FDCE \rx_byte12_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte12_sb[9]),
        .Q(rx_byte12_fb[9]));
  FDCE \rx_byte12_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte12_sb[0]));
  FDCE \rx_byte12_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte12_sb[10]));
  FDCE \rx_byte12_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte12_sb[11]));
  FDCE \rx_byte12_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte12_sb[12]));
  FDCE \rx_byte12_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte12_sb[1]));
  FDCE \rx_byte12_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte12_sb[2]));
  FDCE \rx_byte12_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte12_sb[3]));
  FDCE \rx_byte12_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte12_sb[4]));
  FDCE \rx_byte12_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[5]),
        .Q(rx_byte12_sb[5]));
  FDCE \rx_byte12_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte12_sb[6]));
  FDCE \rx_byte12_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte12_sb[7]));
  FDCE \rx_byte12_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte12_sb[8]));
  FDCE \rx_byte12_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_4 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte12_sb[9]));
  FDCE \rx_byte13_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte13_fb[0]),
        .Q(rx_byte13_f[0]));
  FDCE \rx_byte13_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte13_fb[10]),
        .Q(rx_byte13_f[10]));
  FDCE \rx_byte13_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte13_fb[11]),
        .Q(rx_byte13_f[11]));
  FDCE \rx_byte13_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte13_fb[12]),
        .Q(rx_byte13_f[12]));
  FDCE \rx_byte13_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte13_fb[1]),
        .Q(rx_byte13_f[1]));
  FDCE \rx_byte13_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte13_fb[2]),
        .Q(rx_byte13_f[2]));
  FDCE \rx_byte13_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte13_fb[3]),
        .Q(rx_byte13_f[3]));
  FDCE \rx_byte13_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte13_fb[4]),
        .Q(rx_byte13_f[4]));
  FDCE \rx_byte13_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte13_fb[5]),
        .Q(rx_byte13_f[5]));
  FDCE \rx_byte13_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte13_fb[6]),
        .Q(rx_byte13_f[6]));
  FDCE \rx_byte13_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte13_fb[7]),
        .Q(rx_byte13_f[7]));
  FDCE \rx_byte13_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte13_fb[8]),
        .Q(rx_byte13_f[8]));
  FDCE \rx_byte13_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte13_fb[9]),
        .Q(rx_byte13_f[9]));
  FDCE \rx_byte13_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte13_sb[0]),
        .Q(rx_byte13_fb[0]));
  FDCE \rx_byte13_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte13_sb[10]),
        .Q(rx_byte13_fb[10]));
  FDCE \rx_byte13_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte13_sb[11]),
        .Q(rx_byte13_fb[11]));
  FDCE \rx_byte13_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte13_sb[12]),
        .Q(rx_byte13_fb[12]));
  FDCE \rx_byte13_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte13_sb[1]),
        .Q(rx_byte13_fb[1]));
  FDCE \rx_byte13_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte13_sb[2]),
        .Q(rx_byte13_fb[2]));
  FDCE \rx_byte13_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte13_sb[3]),
        .Q(rx_byte13_fb[3]));
  FDCE \rx_byte13_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte13_sb[4]),
        .Q(rx_byte13_fb[4]));
  FDCE \rx_byte13_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte13_sb[5]),
        .Q(rx_byte13_fb[5]));
  FDCE \rx_byte13_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte13_sb[6]),
        .Q(rx_byte13_fb[6]));
  FDCE \rx_byte13_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte13_sb[7]),
        .Q(rx_byte13_fb[7]));
  FDCE \rx_byte13_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte13_sb[8]),
        .Q(rx_byte13_fb[8]));
  FDCE \rx_byte13_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte13_sb[9]),
        .Q(rx_byte13_fb[9]));
  FDCE \rx_byte13_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte13_sb[0]));
  FDCE \rx_byte13_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte13_sb[10]));
  FDCE \rx_byte13_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte13_sb[11]));
  FDCE \rx_byte13_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte13_sb[12]));
  FDCE \rx_byte13_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte13_sb[1]));
  FDCE \rx_byte13_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte13_sb[2]));
  FDCE \rx_byte13_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte13_sb[3]));
  FDCE \rx_byte13_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte13_sb[4]));
  FDCE \rx_byte13_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[5]),
        .Q(rx_byte13_sb[5]));
  FDCE \rx_byte13_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte13_sb[6]));
  FDCE \rx_byte13_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte13_sb[7]));
  FDCE \rx_byte13_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte13_sb[8]));
  FDCE \rx_byte13_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[2] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte13_sb[9]));
  FDCE \rx_byte14_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte14_fb[0]),
        .Q(\S_AXI_RDATA_reg[12]_2 [0]));
  FDCE \rx_byte14_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte14_fb[10]),
        .Q(\S_AXI_RDATA_reg[12]_2 [10]));
  FDCE \rx_byte14_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[11]),
        .Q(\S_AXI_RDATA_reg[12]_2 [11]));
  FDCE \rx_byte14_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[12]),
        .Q(\S_AXI_RDATA_reg[12]_2 [12]));
  FDCE \rx_byte14_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[1]),
        .Q(\S_AXI_RDATA_reg[12]_2 [1]));
  FDCE \rx_byte14_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte14_fb[2]),
        .Q(\S_AXI_RDATA_reg[12]_2 [2]));
  FDCE \rx_byte14_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[3]),
        .Q(\S_AXI_RDATA_reg[12]_2 [3]));
  FDCE \rx_byte14_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte14_fb[4]),
        .Q(\S_AXI_RDATA_reg[12]_2 [4]));
  FDCE \rx_byte14_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[5]),
        .Q(\S_AXI_RDATA_reg[12]_2 [5]));
  FDCE \rx_byte14_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte14_fb[6]),
        .Q(\S_AXI_RDATA_reg[12]_2 [6]));
  FDCE \rx_byte14_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[7]),
        .Q(\S_AXI_RDATA_reg[12]_2 [7]));
  FDCE \rx_byte14_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte14_fb[8]),
        .Q(\S_AXI_RDATA_reg[12]_2 [8]));
  FDCE \rx_byte14_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte14_fb[9]),
        .Q(\S_AXI_RDATA_reg[12]_2 [9]));
  FDCE \rx_byte14_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte14_sb[0]),
        .Q(rx_byte14_fb[0]));
  FDCE \rx_byte14_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte14_sb[10]),
        .Q(rx_byte14_fb[10]));
  FDCE \rx_byte14_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte14_sb[11]),
        .Q(rx_byte14_fb[11]));
  FDCE \rx_byte14_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte14_sb[12]),
        .Q(rx_byte14_fb[12]));
  FDCE \rx_byte14_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte14_sb[1]),
        .Q(rx_byte14_fb[1]));
  FDCE \rx_byte14_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte14_sb[2]),
        .Q(rx_byte14_fb[2]));
  FDCE \rx_byte14_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte14_sb[3]),
        .Q(rx_byte14_fb[3]));
  FDCE \rx_byte14_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte14_sb[4]),
        .Q(rx_byte14_fb[4]));
  FDCE \rx_byte14_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte14_sb[5]),
        .Q(rx_byte14_fb[5]));
  FDCE \rx_byte14_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte14_sb[6]),
        .Q(rx_byte14_fb[6]));
  FDCE \rx_byte14_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte14_sb[7]),
        .Q(rx_byte14_fb[7]));
  FDCE \rx_byte14_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte14_sb[8]),
        .Q(rx_byte14_fb[8]));
  FDCE \rx_byte14_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte14_sb[9]),
        .Q(rx_byte14_fb[9]));
  FDCE \rx_byte14_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte14_sb[0]));
  FDCE \rx_byte14_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte14_sb[10]));
  FDCE \rx_byte14_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte14_sb[11]));
  FDCE \rx_byte14_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte14_sb[12]));
  FDCE \rx_byte14_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte14_sb[1]));
  FDCE \rx_byte14_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte14_sb[2]));
  FDCE \rx_byte14_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte14_sb[3]));
  FDCE \rx_byte14_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte14_sb[4]));
  FDCE \rx_byte14_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[5]),
        .Q(rx_byte14_sb[5]));
  FDCE \rx_byte14_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte14_sb[6]));
  FDCE \rx_byte14_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte14_sb[7]));
  FDCE \rx_byte14_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte14_sb[8]));
  FDCE \rx_byte14_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[2]_0 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte14_sb[9]));
  FDCE \rx_byte15_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte15_fb[0]),
        .Q(\S_AXI_RDATA_reg[12]_3 [0]));
  FDCE \rx_byte15_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte15_fb[10]),
        .Q(\S_AXI_RDATA_reg[12]_3 [10]));
  FDCE \rx_byte15_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[11]),
        .Q(\S_AXI_RDATA_reg[12]_3 [11]));
  FDCE \rx_byte15_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[12]),
        .Q(\S_AXI_RDATA_reg[12]_3 [12]));
  FDCE \rx_byte15_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[1]),
        .Q(\S_AXI_RDATA_reg[12]_3 [1]));
  FDCE \rx_byte15_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte15_fb[2]),
        .Q(\S_AXI_RDATA_reg[12]_3 [2]));
  FDCE \rx_byte15_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[3]),
        .Q(\S_AXI_RDATA_reg[12]_3 [3]));
  FDCE \rx_byte15_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte15_fb[4]),
        .Q(\S_AXI_RDATA_reg[12]_3 [4]));
  FDCE \rx_byte15_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[5]),
        .Q(\S_AXI_RDATA_reg[12]_3 [5]));
  FDCE \rx_byte15_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte15_fb[6]),
        .Q(\S_AXI_RDATA_reg[12]_3 [6]));
  FDCE \rx_byte15_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[7]),
        .Q(\S_AXI_RDATA_reg[12]_3 [7]));
  FDCE \rx_byte15_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte15_fb[8]),
        .Q(\S_AXI_RDATA_reg[12]_3 [8]));
  FDCE \rx_byte15_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte15_fb[9]),
        .Q(\S_AXI_RDATA_reg[12]_3 [9]));
  FDCE \rx_byte15_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte15_sb[0]),
        .Q(rx_byte15_fb[0]));
  FDCE \rx_byte15_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte15_sb[10]),
        .Q(rx_byte15_fb[10]));
  FDCE \rx_byte15_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_byte15_sb[11]),
        .Q(rx_byte15_fb[11]));
  FDCE \rx_byte15_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte15_sb[12]),
        .Q(rx_byte15_fb[12]));
  FDCE \rx_byte15_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte15_sb[1]),
        .Q(rx_byte15_fb[1]));
  FDCE \rx_byte15_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte15_sb[2]),
        .Q(rx_byte15_fb[2]));
  FDCE \rx_byte15_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte15_sb[3]),
        .Q(rx_byte15_fb[3]));
  FDCE \rx_byte15_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte15_sb[4]),
        .Q(rx_byte15_fb[4]));
  FDCE \rx_byte15_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte15_sb[5]),
        .Q(rx_byte15_fb[5]));
  FDCE \rx_byte15_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte15_sb[6]),
        .Q(rx_byte15_fb[6]));
  FDCE \rx_byte15_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte15_sb[7]),
        .Q(rx_byte15_fb[7]));
  FDCE \rx_byte15_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte15_sb[8]),
        .Q(rx_byte15_fb[8]));
  FDCE \rx_byte15_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte15_sb[9]),
        .Q(rx_byte15_fb[9]));
  FDCE \rx_byte15_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte15_sb[0]));
  FDCE \rx_byte15_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte15_sb[10]));
  FDCE \rx_byte15_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte15_sb[11]));
  FDCE \rx_byte15_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte15_sb[12]));
  FDCE \rx_byte15_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte15_sb[1]));
  FDCE \rx_byte15_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte15_sb[2]));
  FDCE \rx_byte15_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte15_sb[3]));
  FDCE \rx_byte15_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte15_sb[4]));
  FDCE \rx_byte15_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[5]),
        .Q(rx_byte15_sb[5]));
  FDCE \rx_byte15_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte15_sb[6]));
  FDCE \rx_byte15_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte15_sb[7]));
  FDCE \rx_byte15_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte15_sb[8]));
  FDCE \rx_byte15_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_5 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte15_sb[9]));
  FDCE \rx_byte1_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_fb[0]),
        .Q(\S_AXI_RDATA_reg[12]_1 [0]));
  FDCE \rx_byte1_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte1_fb[10]),
        .Q(\S_AXI_RDATA_reg[12]_1 [10]));
  FDCE \rx_byte1_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte1_fb[11]),
        .Q(\S_AXI_RDATA_reg[12]_1 [11]));
  FDCE \rx_byte1_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte1_fb[12]),
        .Q(\S_AXI_RDATA_reg[12]_1 [12]));
  FDCE \rx_byte1_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte1_fb[1]),
        .Q(\S_AXI_RDATA_reg[12]_1 [1]));
  FDCE \rx_byte1_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte1_fb[2]),
        .Q(\S_AXI_RDATA_reg[12]_1 [2]));
  FDCE \rx_byte1_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte1_fb[3]),
        .Q(\S_AXI_RDATA_reg[12]_1 [3]));
  FDCE \rx_byte1_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_fb[4]),
        .Q(\S_AXI_RDATA_reg[12]_1 [4]));
  FDCE \rx_byte1_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte1_fb[5]),
        .Q(\S_AXI_RDATA_reg[12]_1 [5]));
  FDCE \rx_byte1_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte1_fb[6]),
        .Q(\S_AXI_RDATA_reg[12]_1 [6]));
  FDCE \rx_byte1_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte1_fb[7]),
        .Q(\S_AXI_RDATA_reg[12]_1 [7]));
  FDCE \rx_byte1_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_fb[8]),
        .Q(\S_AXI_RDATA_reg[12]_1 [8]));
  FDCE \rx_byte1_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte1_fb[9]),
        .Q(\S_AXI_RDATA_reg[12]_1 [9]));
  FDCE \rx_byte1_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_sb[0]),
        .Q(rx_byte1_fb[0]));
  FDCE \rx_byte1_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte1_sb[10]),
        .Q(rx_byte1_fb[10]));
  FDCE \rx_byte1_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte1_sb[11]),
        .Q(rx_byte1_fb[11]));
  FDCE \rx_byte1_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte1_sb[12]),
        .Q(rx_byte1_fb[12]));
  FDCE \rx_byte1_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte1_sb[1]),
        .Q(rx_byte1_fb[1]));
  FDCE \rx_byte1_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte1_sb[2]),
        .Q(rx_byte1_fb[2]));
  FDCE \rx_byte1_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte1_sb[3]),
        .Q(rx_byte1_fb[3]));
  FDCE \rx_byte1_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_sb[4]),
        .Q(rx_byte1_fb[4]));
  FDCE \rx_byte1_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte1_sb[5]),
        .Q(rx_byte1_fb[5]));
  FDCE \rx_byte1_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte1_sb[6]),
        .Q(rx_byte1_fb[6]));
  FDCE \rx_byte1_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte1_sb[7]),
        .Q(rx_byte1_fb[7]));
  FDCE \rx_byte1_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte1_sb[8]),
        .Q(rx_byte1_fb[8]));
  FDCE \rx_byte1_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte1_sb[9]),
        .Q(rx_byte1_fb[9]));
  FDCE \rx_byte1_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte1_sb[0]));
  FDCE \rx_byte1_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte1_sb[10]));
  FDCE \rx_byte1_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte1_sb[11]));
  FDCE \rx_byte1_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte1_sb[12]));
  FDCE \rx_byte1_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte1_sb[1]));
  FDCE \rx_byte1_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte1_sb[2]));
  FDCE \rx_byte1_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte1_sb[3]));
  FDCE \rx_byte1_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte1_sb[4]));
  FDCE \rx_byte1_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte1_sb[5]));
  FDCE \rx_byte1_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte1_sb[6]));
  FDCE \rx_byte1_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte1_sb[7]));
  FDCE \rx_byte1_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte1_sb[8]));
  FDCE \rx_byte1_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[3]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte1_sb[9]));
  FDCE \rx_byte2_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_fb[0]),
        .Q(rx_byte2_f[0]));
  FDCE \rx_byte2_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte2_fb[10]),
        .Q(rx_byte2_f[10]));
  FDCE \rx_byte2_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte2_fb[11]),
        .Q(rx_byte2_f[11]));
  FDCE \rx_byte2_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte2_fb[12]),
        .Q(rx_byte2_f[12]));
  FDCE \rx_byte2_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte2_fb[1]),
        .Q(rx_byte2_f[1]));
  FDCE \rx_byte2_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte2_fb[2]),
        .Q(rx_byte2_f[2]));
  FDCE \rx_byte2_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte2_fb[3]),
        .Q(rx_byte2_f[3]));
  FDCE \rx_byte2_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_fb[4]),
        .Q(rx_byte2_f[4]));
  FDCE \rx_byte2_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte2_fb[5]),
        .Q(rx_byte2_f[5]));
  FDCE \rx_byte2_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte2_fb[6]),
        .Q(rx_byte2_f[6]));
  FDCE \rx_byte2_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte2_fb[7]),
        .Q(rx_byte2_f[7]));
  FDCE \rx_byte2_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_fb[8]),
        .Q(rx_byte2_f[8]));
  FDCE \rx_byte2_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte2_fb[9]),
        .Q(rx_byte2_f[9]));
  FDCE \rx_byte2_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_sb[0]),
        .Q(rx_byte2_fb[0]));
  FDCE \rx_byte2_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte2_sb[10]),
        .Q(rx_byte2_fb[10]));
  FDCE \rx_byte2_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte2_sb[11]),
        .Q(rx_byte2_fb[11]));
  FDCE \rx_byte2_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte2_sb[12]),
        .Q(rx_byte2_fb[12]));
  FDCE \rx_byte2_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte2_sb[1]),
        .Q(rx_byte2_fb[1]));
  FDCE \rx_byte2_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte2_sb[2]),
        .Q(rx_byte2_fb[2]));
  FDCE \rx_byte2_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte2_sb[3]),
        .Q(rx_byte2_fb[3]));
  FDCE \rx_byte2_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_sb[4]),
        .Q(rx_byte2_fb[4]));
  FDCE \rx_byte2_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte2_sb[5]),
        .Q(rx_byte2_fb[5]));
  FDCE \rx_byte2_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte2_sb[6]),
        .Q(rx_byte2_fb[6]));
  FDCE \rx_byte2_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte2_sb[7]),
        .Q(rx_byte2_fb[7]));
  FDCE \rx_byte2_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte2_sb[8]),
        .Q(rx_byte2_fb[8]));
  FDCE \rx_byte2_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte2_sb[9]),
        .Q(rx_byte2_fb[9]));
  FDCE \rx_byte2_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte2_sb[0]));
  FDCE \rx_byte2_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte2_sb[10]));
  FDCE \rx_byte2_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte2_sb[11]));
  FDCE \rx_byte2_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte2_sb[12]));
  FDCE \rx_byte2_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte2_sb[1]));
  FDCE \rx_byte2_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte2_sb[2]));
  FDCE \rx_byte2_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte2_sb[3]));
  FDCE \rx_byte2_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte2_sb[4]));
  FDCE \rx_byte2_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte2_sb[5]));
  FDCE \rx_byte2_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte2_sb[6]));
  FDCE \rx_byte2_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte2_sb[7]));
  FDCE \rx_byte2_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte2_sb[8]));
  FDCE \rx_byte2_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[3]_2 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte2_sb[9]));
  FDCE \rx_byte3_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_fb[0]),
        .Q(rx_byte3_f[0]));
  FDCE \rx_byte3_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte3_fb[10]),
        .Q(rx_byte3_f[10]));
  FDCE \rx_byte3_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte3_fb[11]),
        .Q(rx_byte3_f[11]));
  FDCE \rx_byte3_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte3_fb[12]),
        .Q(rx_byte3_f[12]));
  FDCE \rx_byte3_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte3_fb[1]),
        .Q(rx_byte3_f[1]));
  FDCE \rx_byte3_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte3_fb[2]),
        .Q(rx_byte3_f[2]));
  FDCE \rx_byte3_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte3_fb[3]),
        .Q(rx_byte3_f[3]));
  FDCE \rx_byte3_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_fb[4]),
        .Q(rx_byte3_f[4]));
  FDCE \rx_byte3_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte3_fb[5]),
        .Q(rx_byte3_f[5]));
  FDCE \rx_byte3_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte3_fb[6]),
        .Q(rx_byte3_f[6]));
  FDCE \rx_byte3_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte3_fb[7]),
        .Q(rx_byte3_f[7]));
  FDCE \rx_byte3_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_fb[8]),
        .Q(rx_byte3_f[8]));
  FDCE \rx_byte3_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte3_fb[9]),
        .Q(rx_byte3_f[9]));
  FDCE \rx_byte3_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_sb[0]),
        .Q(rx_byte3_fb[0]));
  FDCE \rx_byte3_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte3_sb[10]),
        .Q(rx_byte3_fb[10]));
  FDCE \rx_byte3_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte3_sb[11]),
        .Q(rx_byte3_fb[11]));
  FDCE \rx_byte3_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte3_sb[12]),
        .Q(rx_byte3_fb[12]));
  FDCE \rx_byte3_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte3_sb[1]),
        .Q(rx_byte3_fb[1]));
  FDCE \rx_byte3_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte3_sb[2]),
        .Q(rx_byte3_fb[2]));
  FDCE \rx_byte3_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte3_sb[3]),
        .Q(rx_byte3_fb[3]));
  FDCE \rx_byte3_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_sb[4]),
        .Q(rx_byte3_fb[4]));
  FDCE \rx_byte3_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte3_sb[5]),
        .Q(rx_byte3_fb[5]));
  FDCE \rx_byte3_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte3_sb[6]),
        .Q(rx_byte3_fb[6]));
  FDCE \rx_byte3_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte3_sb[7]),
        .Q(rx_byte3_fb[7]));
  FDCE \rx_byte3_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte3_sb[8]),
        .Q(rx_byte3_fb[8]));
  FDCE \rx_byte3_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte3_sb[9]),
        .Q(rx_byte3_fb[9]));
  FDCE \rx_byte3_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte3_sb[0]));
  FDCE \rx_byte3_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte3_sb[10]));
  FDCE \rx_byte3_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte3_sb[11]));
  FDCE \rx_byte3_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte3_sb[12]));
  FDCE \rx_byte3_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte3_sb[1]));
  FDCE \rx_byte3_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte3_sb[2]));
  FDCE \rx_byte3_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte3_sb[3]));
  FDCE \rx_byte3_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte3_sb[4]));
  FDCE \rx_byte3_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte3_sb[5]));
  FDCE \rx_byte3_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte3_sb[6]));
  FDCE \rx_byte3_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte3_sb[7]));
  FDCE \rx_byte3_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte3_sb[8]));
  FDCE \rx_byte3_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte3_sb[9]));
  FDCE \rx_byte4_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_fb[0]),
        .Q(rx_byte4_f[0]));
  FDCE \rx_byte4_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte4_fb[10]),
        .Q(rx_byte4_f[10]));
  FDCE \rx_byte4_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte4_fb[11]),
        .Q(rx_byte4_f[11]));
  FDCE \rx_byte4_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte4_fb[12]),
        .Q(rx_byte4_f[12]));
  FDCE \rx_byte4_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte4_fb[1]),
        .Q(rx_byte4_f[1]));
  FDCE \rx_byte4_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte4_fb[2]),
        .Q(rx_byte4_f[2]));
  FDCE \rx_byte4_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte4_fb[3]),
        .Q(rx_byte4_f[3]));
  FDCE \rx_byte4_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_fb[4]),
        .Q(rx_byte4_f[4]));
  FDCE \rx_byte4_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte4_fb[5]),
        .Q(rx_byte4_f[5]));
  FDCE \rx_byte4_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte4_fb[6]),
        .Q(rx_byte4_f[6]));
  FDCE \rx_byte4_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte4_fb[7]),
        .Q(rx_byte4_f[7]));
  FDCE \rx_byte4_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_fb[8]),
        .Q(rx_byte4_f[8]));
  FDCE \rx_byte4_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte4_fb[9]),
        .Q(rx_byte4_f[9]));
  FDCE \rx_byte4_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_sb[0]),
        .Q(rx_byte4_fb[0]));
  FDCE \rx_byte4_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte4_sb[10]),
        .Q(rx_byte4_fb[10]));
  FDCE \rx_byte4_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte4_sb[11]),
        .Q(rx_byte4_fb[11]));
  FDCE \rx_byte4_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte4_sb[12]),
        .Q(rx_byte4_fb[12]));
  FDCE \rx_byte4_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte4_sb[1]),
        .Q(rx_byte4_fb[1]));
  FDCE \rx_byte4_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte4_sb[2]),
        .Q(rx_byte4_fb[2]));
  FDCE \rx_byte4_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte4_sb[3]),
        .Q(rx_byte4_fb[3]));
  FDCE \rx_byte4_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_sb[4]),
        .Q(rx_byte4_fb[4]));
  FDCE \rx_byte4_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte4_sb[5]),
        .Q(rx_byte4_fb[5]));
  FDCE \rx_byte4_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte4_sb[6]),
        .Q(rx_byte4_fb[6]));
  FDCE \rx_byte4_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte4_sb[7]),
        .Q(rx_byte4_fb[7]));
  FDCE \rx_byte4_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte4_sb[8]),
        .Q(rx_byte4_fb[8]));
  FDCE \rx_byte4_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte4_sb[9]),
        .Q(rx_byte4_fb[9]));
  FDCE \rx_byte4_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte4_sb[0]));
  FDCE \rx_byte4_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte4_sb[10]));
  FDCE \rx_byte4_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte4_sb[11]));
  FDCE \rx_byte4_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte4_sb[12]));
  FDCE \rx_byte4_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte4_sb[1]));
  FDCE \rx_byte4_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte4_sb[2]));
  FDCE \rx_byte4_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte4_sb[3]));
  FDCE \rx_byte4_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte4_sb[4]));
  FDCE \rx_byte4_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte4_sb[5]));
  FDCE \rx_byte4_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte4_sb[6]));
  FDCE \rx_byte4_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte4_sb[7]));
  FDCE \rx_byte4_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte4_sb[8]));
  FDCE \rx_byte4_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[3]_3 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte4_sb[9]));
  FDCE \rx_byte5_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_fb[0]),
        .Q(rx_byte5_f[0]));
  FDCE \rx_byte5_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte5_fb[10]),
        .Q(rx_byte5_f[10]));
  FDCE \rx_byte5_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte5_fb[11]),
        .Q(rx_byte5_f[11]));
  FDCE \rx_byte5_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte5_fb[12]),
        .Q(rx_byte5_f[12]));
  FDCE \rx_byte5_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte5_fb[1]),
        .Q(rx_byte5_f[1]));
  FDCE \rx_byte5_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte5_fb[2]),
        .Q(rx_byte5_f[2]));
  FDCE \rx_byte5_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte5_fb[3]),
        .Q(rx_byte5_f[3]));
  FDCE \rx_byte5_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_fb[4]),
        .Q(rx_byte5_f[4]));
  FDCE \rx_byte5_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte5_fb[5]),
        .Q(rx_byte5_f[5]));
  FDCE \rx_byte5_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte5_fb[6]),
        .Q(rx_byte5_f[6]));
  FDCE \rx_byte5_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte5_fb[7]),
        .Q(rx_byte5_f[7]));
  FDCE \rx_byte5_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_fb[8]),
        .Q(rx_byte5_f[8]));
  FDCE \rx_byte5_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte5_fb[9]),
        .Q(rx_byte5_f[9]));
  FDCE \rx_byte5_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_sb[0]),
        .Q(rx_byte5_fb[0]));
  FDCE \rx_byte5_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte5_sb[10]),
        .Q(rx_byte5_fb[10]));
  FDCE \rx_byte5_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte5_sb[11]),
        .Q(rx_byte5_fb[11]));
  FDCE \rx_byte5_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte5_sb[12]),
        .Q(rx_byte5_fb[12]));
  FDCE \rx_byte5_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte5_sb[1]),
        .Q(rx_byte5_fb[1]));
  FDCE \rx_byte5_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte5_sb[2]),
        .Q(rx_byte5_fb[2]));
  FDCE \rx_byte5_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte5_sb[3]),
        .Q(rx_byte5_fb[3]));
  FDCE \rx_byte5_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_sb[4]),
        .Q(rx_byte5_fb[4]));
  FDCE \rx_byte5_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte5_sb[5]),
        .Q(rx_byte5_fb[5]));
  FDCE \rx_byte5_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte5_sb[6]),
        .Q(rx_byte5_fb[6]));
  FDCE \rx_byte5_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte5_sb[7]),
        .Q(rx_byte5_fb[7]));
  FDCE \rx_byte5_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte5_sb[8]),
        .Q(rx_byte5_fb[8]));
  FDCE \rx_byte5_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte5_sb[9]),
        .Q(rx_byte5_fb[9]));
  FDCE \rx_byte5_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte5_sb[0]));
  FDCE \rx_byte5_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte5_sb[10]));
  FDCE \rx_byte5_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte5_sb[11]));
  FDCE \rx_byte5_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte5_sb[12]));
  FDCE \rx_byte5_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte5_sb[1]));
  FDCE \rx_byte5_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte5_sb[2]));
  FDCE \rx_byte5_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte5_sb[3]));
  FDCE \rx_byte5_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte5_sb[4]));
  FDCE \rx_byte5_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte5_sb[5]));
  FDCE \rx_byte5_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte5_sb[6]));
  FDCE \rx_byte5_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[7]),
        .Q(rx_byte5_sb[7]));
  FDCE \rx_byte5_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte5_sb[8]));
  FDCE \rx_byte5_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[3]_4 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte5_sb[9]));
  FDCE \rx_byte6_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte6_fb[0]),
        .Q(rx_byte6_f[0]));
  FDCE \rx_byte6_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte6_fb[10]),
        .Q(rx_byte6_f[10]));
  FDCE \rx_byte6_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte6_fb[11]),
        .Q(rx_byte6_f[11]));
  FDCE \rx_byte6_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte6_fb[12]),
        .Q(rx_byte6_f[12]));
  FDCE \rx_byte6_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte6_fb[1]),
        .Q(rx_byte6_f[1]));
  FDCE \rx_byte6_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte6_fb[2]),
        .Q(rx_byte6_f[2]));
  FDCE \rx_byte6_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte6_fb[3]),
        .Q(rx_byte6_f[3]));
  FDCE \rx_byte6_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte6_fb[4]),
        .Q(rx_byte6_f[4]));
  FDCE \rx_byte6_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte6_fb[5]),
        .Q(rx_byte6_f[5]));
  FDCE \rx_byte6_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte6_fb[6]),
        .Q(rx_byte6_f[6]));
  FDCE \rx_byte6_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte6_fb[7]),
        .Q(rx_byte6_f[7]));
  FDCE \rx_byte6_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte6_fb[8]),
        .Q(rx_byte6_f[8]));
  FDCE \rx_byte6_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte6_fb[9]),
        .Q(rx_byte6_f[9]));
  FDCE \rx_byte6_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte6_sb[0]),
        .Q(rx_byte6_fb[0]));
  FDCE \rx_byte6_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte6_sb[10]),
        .Q(rx_byte6_fb[10]));
  FDCE \rx_byte6_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte6_sb[11]),
        .Q(rx_byte6_fb[11]));
  FDCE \rx_byte6_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte6_sb[12]),
        .Q(rx_byte6_fb[12]));
  FDCE \rx_byte6_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte6_sb[1]),
        .Q(rx_byte6_fb[1]));
  FDCE \rx_byte6_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte6_sb[2]),
        .Q(rx_byte6_fb[2]));
  FDCE \rx_byte6_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte6_sb[3]),
        .Q(rx_byte6_fb[3]));
  FDCE \rx_byte6_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte6_sb[4]),
        .Q(rx_byte6_fb[4]));
  FDCE \rx_byte6_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte6_sb[5]),
        .Q(rx_byte6_fb[5]));
  FDCE \rx_byte6_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte6_sb[6]),
        .Q(rx_byte6_fb[6]));
  FDCE \rx_byte6_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte6_sb[7]),
        .Q(rx_byte6_fb[7]));
  FDCE \rx_byte6_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte6_sb[8]),
        .Q(rx_byte6_fb[8]));
  FDCE \rx_byte6_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte6_sb[9]),
        .Q(rx_byte6_fb[9]));
  FDCE \rx_byte6_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte6_sb[0]));
  FDCE \rx_byte6_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte6_sb[10]));
  FDCE \rx_byte6_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte6_sb[11]));
  FDCE \rx_byte6_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte6_sb[12]));
  FDCE \rx_byte6_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte6_sb[1]));
  FDCE \rx_byte6_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte6_sb[2]));
  FDCE \rx_byte6_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte6_sb[3]));
  FDCE \rx_byte6_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte6_sb[4]));
  FDCE \rx_byte6_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte6_sb[5]));
  FDCE \rx_byte6_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte6_sb[6]));
  FDCE \rx_byte6_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte6_sb[7]));
  FDCE \rx_byte6_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte6_sb[8]));
  FDCE \rx_byte6_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[3]_5 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte6_sb[9]));
  FDCE \rx_byte7_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte7_fb[0]),
        .Q(rx_byte7_f[0]));
  FDCE \rx_byte7_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte7_fb[10]),
        .Q(rx_byte7_f[10]));
  FDCE \rx_byte7_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte7_fb[11]),
        .Q(rx_byte7_f[11]));
  FDCE \rx_byte7_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte7_fb[12]),
        .Q(rx_byte7_f[12]));
  FDCE \rx_byte7_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte7_fb[1]),
        .Q(rx_byte7_f[1]));
  FDCE \rx_byte7_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte7_fb[2]),
        .Q(rx_byte7_f[2]));
  FDCE \rx_byte7_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte7_fb[3]),
        .Q(rx_byte7_f[3]));
  FDCE \rx_byte7_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte7_fb[4]),
        .Q(rx_byte7_f[4]));
  FDCE \rx_byte7_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte7_fb[5]),
        .Q(rx_byte7_f[5]));
  FDCE \rx_byte7_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte7_fb[6]),
        .Q(rx_byte7_f[6]));
  FDCE \rx_byte7_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte7_fb[7]),
        .Q(rx_byte7_f[7]));
  FDCE \rx_byte7_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte7_fb[8]),
        .Q(rx_byte7_f[8]));
  FDCE \rx_byte7_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte7_fb[9]),
        .Q(rx_byte7_f[9]));
  FDCE \rx_byte7_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte7_sb[0]),
        .Q(rx_byte7_fb[0]));
  FDCE \rx_byte7_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte7_sb[10]),
        .Q(rx_byte7_fb[10]));
  FDCE \rx_byte7_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte7_sb[11]),
        .Q(rx_byte7_fb[11]));
  FDCE \rx_byte7_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte7_sb[12]),
        .Q(rx_byte7_fb[12]));
  FDCE \rx_byte7_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte7_sb[1]),
        .Q(rx_byte7_fb[1]));
  FDCE \rx_byte7_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte7_sb[2]),
        .Q(rx_byte7_fb[2]));
  FDCE \rx_byte7_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte7_sb[3]),
        .Q(rx_byte7_fb[3]));
  FDCE \rx_byte7_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte7_sb[4]),
        .Q(rx_byte7_fb[4]));
  FDCE \rx_byte7_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte7_sb[5]),
        .Q(rx_byte7_fb[5]));
  FDCE \rx_byte7_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte7_sb[6]),
        .Q(rx_byte7_fb[6]));
  FDCE \rx_byte7_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte7_sb[7]),
        .Q(rx_byte7_fb[7]));
  FDCE \rx_byte7_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte7_sb[8]),
        .Q(rx_byte7_fb[8]));
  FDCE \rx_byte7_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte7_sb[9]),
        .Q(rx_byte7_fb[9]));
  FDCE \rx_byte7_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte7_sb[0]));
  FDCE \rx_byte7_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte7_sb[10]));
  FDCE \rx_byte7_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte7_sb[11]));
  FDCE \rx_byte7_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte7_sb[12]));
  FDCE \rx_byte7_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte7_sb[1]));
  FDCE \rx_byte7_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte7_sb[2]));
  FDCE \rx_byte7_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte7_sb[3]));
  FDCE \rx_byte7_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte7_sb[4]));
  FDCE \rx_byte7_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte7_sb[5]));
  FDCE \rx_byte7_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte7_sb[6]));
  FDCE \rx_byte7_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte7_sb[7]));
  FDCE \rx_byte7_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte7_sb[8]));
  FDCE \rx_byte7_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_0 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte7_sb[9]));
  FDCE \rx_byte8_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte8_fb[0]),
        .Q(rx_byte8_f[0]));
  FDCE \rx_byte8_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte8_fb[10]),
        .Q(rx_byte8_f[10]));
  FDCE \rx_byte8_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte8_fb[11]),
        .Q(rx_byte8_f[11]));
  FDCE \rx_byte8_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte8_fb[12]),
        .Q(rx_byte8_f[12]));
  FDCE \rx_byte8_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte8_fb[1]),
        .Q(rx_byte8_f[1]));
  FDCE \rx_byte8_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte8_fb[2]),
        .Q(rx_byte8_f[2]));
  FDCE \rx_byte8_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte8_fb[3]),
        .Q(rx_byte8_f[3]));
  FDCE \rx_byte8_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte8_fb[4]),
        .Q(rx_byte8_f[4]));
  FDCE \rx_byte8_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte8_fb[5]),
        .Q(rx_byte8_f[5]));
  FDCE \rx_byte8_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte8_fb[6]),
        .Q(rx_byte8_f[6]));
  FDCE \rx_byte8_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte8_fb[7]),
        .Q(rx_byte8_f[7]));
  FDCE \rx_byte8_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte8_fb[8]),
        .Q(rx_byte8_f[8]));
  FDCE \rx_byte8_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte8_fb[9]),
        .Q(rx_byte8_f[9]));
  FDCE \rx_byte8_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte8_sb[0]),
        .Q(rx_byte8_fb[0]));
  FDCE \rx_byte8_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte8_sb[10]),
        .Q(rx_byte8_fb[10]));
  FDCE \rx_byte8_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte8_sb[11]),
        .Q(rx_byte8_fb[11]));
  FDCE \rx_byte8_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte8_sb[12]),
        .Q(rx_byte8_fb[12]));
  FDCE \rx_byte8_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte8_sb[1]),
        .Q(rx_byte8_fb[1]));
  FDCE \rx_byte8_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte8_sb[2]),
        .Q(rx_byte8_fb[2]));
  FDCE \rx_byte8_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte8_sb[3]),
        .Q(rx_byte8_fb[3]));
  FDCE \rx_byte8_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte8_sb[4]),
        .Q(rx_byte8_fb[4]));
  FDCE \rx_byte8_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte8_sb[5]),
        .Q(rx_byte8_fb[5]));
  FDCE \rx_byte8_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte8_sb[6]),
        .Q(rx_byte8_fb[6]));
  FDCE \rx_byte8_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte8_sb[7]),
        .Q(rx_byte8_fb[7]));
  FDCE \rx_byte8_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte8_sb[8]),
        .Q(rx_byte8_fb[8]));
  FDCE \rx_byte8_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte8_sb[9]),
        .Q(rx_byte8_fb[9]));
  FDCE \rx_byte8_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte8_sb[0]));
  FDCE \rx_byte8_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte8_sb[10]));
  FDCE \rx_byte8_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte8_sb[11]));
  FDCE \rx_byte8_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte8_sb[12]));
  FDCE \rx_byte8_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte8_sb[1]));
  FDCE \rx_byte8_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte8_sb[2]));
  FDCE \rx_byte8_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte8_sb[3]));
  FDCE \rx_byte8_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte8_sb[4]));
  FDCE \rx_byte8_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte8_sb[5]));
  FDCE \rx_byte8_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte8_sb[6]));
  FDCE \rx_byte8_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte8_sb[7]));
  FDCE \rx_byte8_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte8_sb[8]));
  FDCE \rx_byte8_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[0]_1 ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte8_sb[9]));
  FDCE \rx_byte9_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte9_fb[0]),
        .Q(rx_byte9_f[0]));
  FDCE \rx_byte9_f_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte9_fb[10]),
        .Q(rx_byte9_f[10]));
  FDCE \rx_byte9_f_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte9_fb[11]),
        .Q(rx_byte9_f[11]));
  FDCE \rx_byte9_f_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte9_fb[12]),
        .Q(rx_byte9_f[12]));
  FDCE \rx_byte9_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(rx_byte9_fb[1]),
        .Q(rx_byte9_f[1]));
  FDCE \rx_byte9_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte9_fb[2]),
        .Q(rx_byte9_f[2]));
  FDCE \rx_byte9_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(rx_byte9_fb[3]),
        .Q(rx_byte9_f[3]));
  FDCE \rx_byte9_f_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte9_fb[4]),
        .Q(rx_byte9_f[4]));
  FDCE \rx_byte9_f_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(rx_byte9_fb[5]),
        .Q(rx_byte9_f[5]));
  FDCE \rx_byte9_f_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte9_fb[6]),
        .Q(rx_byte9_f[6]));
  FDCE \rx_byte9_f_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte9_fb[7]),
        .Q(rx_byte9_f[7]));
  FDCE \rx_byte9_f_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte9_fb[8]),
        .Q(rx_byte9_f[8]));
  FDCE \rx_byte9_f_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_byte9_fb[9]),
        .Q(rx_byte9_f[9]));
  FDCE \rx_byte9_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte9_sb[0]),
        .Q(rx_byte9_fb[0]));
  FDCE \rx_byte9_fb_reg[10] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte9_sb[10]),
        .Q(rx_byte9_fb[10]));
  FDCE \rx_byte9_fb_reg[11] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte9_sb[11]),
        .Q(rx_byte9_fb[11]));
  FDCE \rx_byte9_fb_reg[12] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte9_sb[12]),
        .Q(rx_byte9_fb[12]));
  FDCE \rx_byte9_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_byte9_sb[1]),
        .Q(rx_byte9_fb[1]));
  FDCE \rx_byte9_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_byte9_sb[2]),
        .Q(rx_byte9_fb[2]));
  FDCE \rx_byte9_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte9_sb[3]),
        .Q(rx_byte9_fb[3]));
  FDCE \rx_byte9_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte9_sb[4]),
        .Q(rx_byte9_fb[4]));
  FDCE \rx_byte9_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte9_sb[5]),
        .Q(rx_byte9_fb[5]));
  FDCE \rx_byte9_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(rx_byte9_sb[6]),
        .Q(rx_byte9_fb[6]));
  FDCE \rx_byte9_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(rx_byte9_sb[7]),
        .Q(rx_byte9_fb[7]));
  FDCE \rx_byte9_fb_reg[8] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(rx_byte9_sb[8]),
        .Q(rx_byte9_fb[8]));
  FDCE \rx_byte9_fb_reg[9] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_byte9_sb[9]),
        .Q(rx_byte9_fb[9]));
  FDCE \rx_byte9_sb_reg[0] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(D[0]),
        .Q(rx_byte9_sb[0]));
  FDCE \rx_byte9_sb_reg[10] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[10]),
        .Q(rx_byte9_sb[10]));
  FDCE \rx_byte9_sb_reg[11] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[11]),
        .Q(rx_byte9_sb[11]));
  FDCE \rx_byte9_sb_reg[12] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[12]),
        .Q(rx_byte9_sb[12]));
  FDCE \rx_byte9_sb_reg[1] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(D[1]),
        .Q(rx_byte9_sb[1]));
  FDCE \rx_byte9_sb_reg[2] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(D[2]),
        .Q(rx_byte9_sb[2]));
  FDCE \rx_byte9_sb_reg[3] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[3]),
        .Q(rx_byte9_sb[3]));
  FDCE \rx_byte9_sb_reg[4] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[4]),
        .Q(rx_byte9_sb[4]));
  FDCE \rx_byte9_sb_reg[5] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[5]),
        .Q(rx_byte9_sb[5]));
  FDCE \rx_byte9_sb_reg[6] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte12_f_reg[2]_0 ),
        .D(D[6]),
        .Q(rx_byte9_sb[6]));
  FDCE \rx_byte9_sb_reg[7] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[7]),
        .Q(rx_byte9_sb[7]));
  FDCE \rx_byte9_sb_reg[8] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_sb_reg[7]_0 ),
        .D(D[8]),
        .Q(rx_byte9_sb[8]));
  FDCE \rx_byte9_sb_reg[9] 
       (.C(CLK),
        .CE(\number_reg[1] ),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(D[9]),
        .Q(rx_byte9_sb[9]));
  FDCE \rx_bytes_sent_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_fb[0]),
        .Q(\S_AXI_RDATA_reg[11]_0 [0]));
  FDCE \rx_bytes_sent_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_fb[1]),
        .Q(\S_AXI_RDATA_reg[11]_0 [1]));
  FDCE \rx_bytes_sent_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_fb[2]),
        .Q(\S_AXI_RDATA_reg[11]_0 [2]));
  FDCE \rx_bytes_sent_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_fb[3]),
        .Q(\S_AXI_RDATA_reg[11]_0 [3]));
  FDCE \rx_bytes_sent_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_sb[0]),
        .Q(rx_bytes_sent_fb[0]));
  FDCE \rx_bytes_sent_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_sb[1]),
        .Q(rx_bytes_sent_fb[1]));
  FDCE \rx_bytes_sent_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_sb[2]),
        .Q(rx_bytes_sent_fb[2]));
  FDCE \rx_bytes_sent_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN_0),
        .D(rx_bytes_sent_sb[3]),
        .Q(rx_bytes_sent_fb[3]));
  LUT1 #(
    .INIT(2'h1)) 
    \rx_bytes_sent_sb[3]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\rx_byte6_f_reg[0]_0 ));
  FDCE \rx_bytes_sent_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(\number_reg[3]_0 [0]),
        .Q(rx_bytes_sent_sb[0]));
  FDCE \rx_bytes_sent_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(\number_reg[3]_0 [1]),
        .Q(rx_bytes_sent_sb[1]));
  FDCE \rx_bytes_sent_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(\number_reg[3]_0 [2]),
        .Q(rx_bytes_sent_sb[2]));
  FDCE \rx_bytes_sent_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(\number_reg[3]_0 [3]),
        .Q(rx_bytes_sent_sb[3]));
  FDCE \rx_nb_bytes_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [11]),
        .Q(rx_nb_bytes_fb[0]));
  FDCE \rx_nb_bytes_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [12]),
        .Q(rx_nb_bytes_fb[1]));
  FDCE \rx_nb_bytes_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [13]),
        .Q(rx_nb_bytes_fb[2]));
  FDCE \rx_nb_bytes_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [14]),
        .Q(rx_nb_bytes_fb[3]));
  FDCE \rx_nb_bytes_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_nb_bytes_sb[0]),
        .Q(rx_nb_bytes_s[0]));
  FDCE \rx_nb_bytes_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_nb_bytes_sb[1]),
        .Q(rx_nb_bytes_s[1]));
  FDCE \rx_nb_bytes_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_nb_bytes_sb[2]),
        .Q(rx_nb_bytes_s[2]));
  FDCE \rx_nb_bytes_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte6_f_reg[0]_0 ),
        .D(rx_nb_bytes_sb[3]),
        .Q(rx_nb_bytes_s[3]));
  FDCE \rx_nb_bytes_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_nb_bytes_fb[0]),
        .Q(rx_nb_bytes_sb[0]));
  FDCE \rx_nb_bytes_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_nb_bytes_fb[1]),
        .Q(rx_nb_bytes_sb[1]));
  FDCE \rx_nb_bytes_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_nb_bytes_fb[2]),
        .Q(rx_nb_bytes_sb[2]));
  FDCE \rx_nb_bytes_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(rx_nb_bytes_fb[3]),
        .Q(rx_nb_bytes_sb[3]));
  LUT3 #(
    .INIT(8'h54)) 
    rx_start_fb_i_1
       (.I0(rx_start_fc),
        .I1(rx_start_f),
        .I2(rx_start_fb_reg_n_0),
        .O(rx_start_fb_i_1_n_0));
  FDCE rx_start_fb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_start_fb_i_1_n_0),
        .Q(rx_start_fb_reg_n_0));
  FDCE rx_start_fc_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(rx_start_fcb),
        .Q(rx_start_fc));
  FDCE rx_start_fcb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(rx_start_s),
        .Q(rx_start_fcb));
  FDCE rx_start_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_start_sb2),
        .Q(rx_start_s));
  FDCE rx_start_sb2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(rx_start_sb),
        .Q(rx_start_sb2));
  FDCE rx_start_sb_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(rx_start_fb_reg_n_0),
        .Q(rx_start_sb));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[10]_i_6 
       (.I0(tx_byte3_s[0]),
        .I1(tx_byte2_s[0]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[0]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[0]),
        .O(\shift_reg[10]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[10]_i_7 
       (.I0(tx_byte7_s[0]),
        .I1(tx_byte6_s[0]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[0]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[0]),
        .O(\shift_reg[10]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[10]_i_8 
       (.I0(tx_byte11_s[0]),
        .I1(tx_byte10_s[0]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[0]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[0]),
        .O(\shift_reg[10]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[10]_i_9 
       (.I0(tx_byte15_s[0]),
        .I1(tx_byte14_s[0]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[0]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[0]),
        .O(\shift_reg[10]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[12]_i_6 
       (.I0(tx_byte3_s[1]),
        .I1(tx_byte2_s[1]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[1]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[1]),
        .O(\shift_reg[12]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[12]_i_7 
       (.I0(tx_byte7_s[1]),
        .I1(tx_byte6_s[1]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[1]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[1]),
        .O(\shift_reg[12]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[12]_i_8 
       (.I0(tx_byte11_s[1]),
        .I1(tx_byte10_s[1]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[1]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[1]),
        .O(\shift_reg[12]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[12]_i_9 
       (.I0(tx_byte15_s[1]),
        .I1(tx_byte14_s[1]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[1]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[1]),
        .O(\shift_reg[12]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[14]_i_6 
       (.I0(tx_byte3_s[2]),
        .I1(tx_byte2_s[2]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[2]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[2]),
        .O(\shift_reg[14]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[14]_i_7 
       (.I0(tx_byte7_s[2]),
        .I1(tx_byte6_s[2]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[2]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[2]),
        .O(\shift_reg[14]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[14]_i_8 
       (.I0(tx_byte11_s[2]),
        .I1(tx_byte10_s[2]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[2]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[2]),
        .O(\shift_reg[14]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[14]_i_9 
       (.I0(tx_byte15_s[2]),
        .I1(tx_byte14_s[2]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[2]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[2]),
        .O(\shift_reg[14]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[16]_i_6 
       (.I0(tx_byte3_s[3]),
        .I1(tx_byte2_s[3]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[3]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[3]),
        .O(\shift_reg[16]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[16]_i_7 
       (.I0(tx_byte7_s[3]),
        .I1(tx_byte6_s[3]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[3]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[3]),
        .O(\shift_reg[16]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[16]_i_8 
       (.I0(tx_byte11_s[3]),
        .I1(tx_byte10_s[3]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[3]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[3]),
        .O(\shift_reg[16]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[16]_i_9 
       (.I0(tx_byte15_s[3]),
        .I1(tx_byte14_s[3]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[3]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[3]),
        .O(\shift_reg[16]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[18]_i_6 
       (.I0(tx_byte3_s[4]),
        .I1(tx_byte2_s[4]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[4]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[4]),
        .O(\shift_reg[18]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[18]_i_7 
       (.I0(tx_byte7_s[4]),
        .I1(tx_byte6_s[4]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[4]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[4]),
        .O(\shift_reg[18]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[18]_i_8 
       (.I0(tx_byte11_s[4]),
        .I1(tx_byte10_s[4]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[4]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[4]),
        .O(\shift_reg[18]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[18]_i_9 
       (.I0(tx_byte15_s[4]),
        .I1(tx_byte14_s[4]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[4]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[4]),
        .O(\shift_reg[18]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[20]_i_6 
       (.I0(tx_byte3_s[5]),
        .I1(tx_byte2_s[5]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[5]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[5]),
        .O(\shift_reg[20]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[20]_i_7 
       (.I0(tx_byte7_s[5]),
        .I1(tx_byte6_s[5]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[5]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[5]),
        .O(\shift_reg[20]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[20]_i_8 
       (.I0(tx_byte11_s[5]),
        .I1(tx_byte10_s[5]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[5]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[5]),
        .O(\shift_reg[20]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[20]_i_9 
       (.I0(tx_byte15_s[5]),
        .I1(tx_byte14_s[5]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[5]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[5]),
        .O(\shift_reg[20]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[22]_i_10 
       (.I0(tx_byte11_s[6]),
        .I1(tx_byte10_s[6]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[6]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[6]),
        .O(\shift_reg[22]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[22]_i_11 
       (.I0(tx_byte15_s[6]),
        .I1(tx_byte14_s[6]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[6]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[6]),
        .O(\shift_reg[22]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[22]_i_8 
       (.I0(tx_byte3_s[6]),
        .I1(tx_byte2_s[6]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[6]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[6]),
        .O(\shift_reg[22]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[22]_i_9 
       (.I0(tx_byte7_s[6]),
        .I1(tx_byte6_s[6]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[6]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[6]),
        .O(\shift_reg[22]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[24]_i_12 
       (.I0(tx_byte3_s[7]),
        .I1(tx_byte2_s[7]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte1_s[7]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte0_s[7]),
        .O(\shift_reg[24]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[24]_i_13 
       (.I0(tx_byte7_s[7]),
        .I1(tx_byte6_s[7]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte5_s[7]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte4_s[7]),
        .O(\shift_reg[24]_i_13_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[24]_i_14 
       (.I0(tx_byte11_s[7]),
        .I1(tx_byte10_s[7]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte9_s[7]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte8_s[7]),
        .O(\shift_reg[24]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hAFA0CFCFAFA0C0C0)) 
    \shift_reg[24]_i_15 
       (.I0(tx_byte15_s[7]),
        .I1(tx_byte14_s[7]),
        .I2(\number_reg[3] [1]),
        .I3(tx_byte13_s[7]),
        .I4(\number_reg[3] [0]),
        .I5(tx_byte12_s[7]),
        .O(\shift_reg[24]_i_15_n_0 ));
  MUXF8 \shift_reg_reg[10]_i_3 
       (.I0(\shift_reg_reg[10] ),
        .I1(\shift_reg_reg[10]_0 ),
        .O(tx_byte[0]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[10]_i_4 
       (.I0(\shift_reg[10]_i_6_n_0 ),
        .I1(\shift_reg[10]_i_7_n_0 ),
        .O(\shift_reg_reg[10] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[10]_i_5 
       (.I0(\shift_reg[10]_i_8_n_0 ),
        .I1(\shift_reg[10]_i_9_n_0 ),
        .O(\shift_reg_reg[10]_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[12]_i_3 
       (.I0(\shift_reg_reg[12] ),
        .I1(\shift_reg_reg[12]_0 ),
        .O(tx_byte[1]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[12]_i_4 
       (.I0(\shift_reg[12]_i_6_n_0 ),
        .I1(\shift_reg[12]_i_7_n_0 ),
        .O(\shift_reg_reg[12] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[12]_i_5 
       (.I0(\shift_reg[12]_i_8_n_0 ),
        .I1(\shift_reg[12]_i_9_n_0 ),
        .O(\shift_reg_reg[12]_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[14]_i_3 
       (.I0(\shift_reg_reg[14]_i_4_n_0 ),
        .I1(\shift_reg_reg[14]_i_5_n_0 ),
        .O(tx_byte[2]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[14]_i_4 
       (.I0(\shift_reg[14]_i_6_n_0 ),
        .I1(\shift_reg[14]_i_7_n_0 ),
        .O(\shift_reg_reg[14]_i_4_n_0 ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[14]_i_5 
       (.I0(\shift_reg[14]_i_8_n_0 ),
        .I1(\shift_reg[14]_i_9_n_0 ),
        .O(\shift_reg_reg[14]_i_5_n_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[16]_i_3 
       (.I0(\shift_reg_reg[16] ),
        .I1(\shift_reg_reg[16]_0 ),
        .O(tx_byte[3]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[16]_i_4 
       (.I0(\shift_reg[16]_i_6_n_0 ),
        .I1(\shift_reg[16]_i_7_n_0 ),
        .O(\shift_reg_reg[16] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[16]_i_5 
       (.I0(\shift_reg[16]_i_8_n_0 ),
        .I1(\shift_reg[16]_i_9_n_0 ),
        .O(\shift_reg_reg[16]_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[18]_i_3 
       (.I0(\shift_reg_reg[18] ),
        .I1(\shift_reg_reg[18]_0 ),
        .O(tx_byte[4]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[18]_i_4 
       (.I0(\shift_reg[18]_i_6_n_0 ),
        .I1(\shift_reg[18]_i_7_n_0 ),
        .O(\shift_reg_reg[18] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[18]_i_5 
       (.I0(\shift_reg[18]_i_8_n_0 ),
        .I1(\shift_reg[18]_i_9_n_0 ),
        .O(\shift_reg_reg[18]_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[20]_i_3 
       (.I0(\shift_reg_reg[20]_i_4_n_0 ),
        .I1(\shift_reg_reg[20]_i_5_n_0 ),
        .O(tx_byte[5]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[20]_i_4 
       (.I0(\shift_reg[20]_i_6_n_0 ),
        .I1(\shift_reg[20]_i_7_n_0 ),
        .O(\shift_reg_reg[20]_i_4_n_0 ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[20]_i_5 
       (.I0(\shift_reg[20]_i_8_n_0 ),
        .I1(\shift_reg[20]_i_9_n_0 ),
        .O(\shift_reg_reg[20]_i_5_n_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[22]_i_5 
       (.I0(\shift_reg_reg[22] ),
        .I1(\shift_reg_reg[22]_0 ),
        .O(tx_byte[6]),
        .S(\number_reg[3] [3]));
  MUXF7 \shift_reg_reg[22]_i_6 
       (.I0(\shift_reg[22]_i_8_n_0 ),
        .I1(\shift_reg[22]_i_9_n_0 ),
        .O(\shift_reg_reg[22] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[22]_i_7 
       (.I0(\shift_reg[22]_i_10_n_0 ),
        .I1(\shift_reg[22]_i_11_n_0 ),
        .O(\shift_reg_reg[22]_0 ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[24]_i_10 
       (.I0(\shift_reg[24]_i_12_n_0 ),
        .I1(\shift_reg[24]_i_13_n_0 ),
        .O(\shift_reg_reg[24] ),
        .S(\number_reg[3] [2]));
  MUXF7 \shift_reg_reg[24]_i_11 
       (.I0(\shift_reg[24]_i_14_n_0 ),
        .I1(\shift_reg[24]_i_15_n_0 ),
        .O(\shift_reg_reg[24]_0 ),
        .S(\number_reg[3] [2]));
  MUXF8 \shift_reg_reg[24]_i_8 
       (.I0(\shift_reg_reg[24] ),
        .I1(\shift_reg_reg[24]_0 ),
        .O(tx_byte[7]),
        .S(\number_reg[3] [3]));
  FDCE \slave_addr_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\ctrl_reg_reg[16] [0]),
        .Q(slave_addr_fb[0]));
  FDCE \slave_addr_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\ctrl_reg_reg[16] [1]),
        .Q(slave_addr_fb[1]));
  FDCE \slave_addr_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\ctrl_reg_reg[16] [2]),
        .Q(slave_addr_fb[2]));
  FDCE \slave_addr_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [3]),
        .Q(slave_addr_fb[3]));
  FDCE \slave_addr_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [4]),
        .Q(slave_addr_fb[4]));
  FDCE \slave_addr_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [5]),
        .Q(slave_addr_fb[5]));
  FDCE \slave_addr_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [6]),
        .Q(slave_addr_fb[6]));
  FDCE \slave_addr_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(slave_addr_sb[0]),
        .Q(\shift_reg_reg[24]_1 [0]));
  FDCE \slave_addr_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(slave_addr_sb[1]),
        .Q(\shift_reg_reg[24]_1 [1]));
  FDCE \slave_addr_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(slave_addr_sb[2]),
        .Q(\shift_reg_reg[24]_1 [2]));
  FDCE \slave_addr_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(slave_addr_sb[3]),
        .Q(\shift_reg_reg[24]_1 [3]));
  FDCE \slave_addr_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(slave_addr_sb[4]),
        .Q(\shift_reg_reg[24]_1 [4]));
  FDCE \slave_addr_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(slave_addr_sb[5]),
        .Q(\shift_reg_reg[24]_1 [5]));
  FDCE \slave_addr_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(slave_addr_sb[6]),
        .Q(\shift_reg_reg[24]_1 [6]));
  FDCE \slave_addr_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(slave_addr_fb[0]),
        .Q(slave_addr_sb[0]));
  FDCE \slave_addr_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(slave_addr_fb[1]),
        .Q(slave_addr_sb[1]));
  FDCE \slave_addr_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(slave_addr_fb[2]),
        .Q(slave_addr_sb[2]));
  FDCE \slave_addr_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(slave_addr_fb[3]),
        .Q(slave_addr_sb[3]));
  FDCE \slave_addr_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(slave_addr_fb[4]),
        .Q(slave_addr_sb[4]));
  FDCE \slave_addr_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(slave_addr_fb[5]),
        .Q(slave_addr_sb[5]));
  FDCE \slave_addr_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(slave_addr_fb[6]),
        .Q(slave_addr_sb[6]));
  FDCE \tx_byte0_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[0][7] [0]),
        .Q(tx_byte0_fb[0]));
  FDCE \tx_byte0_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[0][7] [1]),
        .Q(tx_byte0_fb[1]));
  FDCE \tx_byte0_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[0][7] [2]),
        .Q(tx_byte0_fb[2]));
  FDCE \tx_byte0_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[0][7] [3]),
        .Q(tx_byte0_fb[3]));
  FDCE \tx_byte0_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[0][7] [4]),
        .Q(tx_byte0_fb[4]));
  FDCE \tx_byte0_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[0][7] [5]),
        .Q(tx_byte0_fb[5]));
  FDCE \tx_byte0_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[0][7] [6]),
        .Q(tx_byte0_fb[6]));
  FDCE \tx_byte0_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[0][7] [7]),
        .Q(tx_byte0_fb[7]));
  FDCE \tx_byte0_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte0_sb[0]),
        .Q(tx_byte0_s[0]));
  FDCE \tx_byte0_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte0_sb[1]),
        .Q(tx_byte0_s[1]));
  FDCE \tx_byte0_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte0_sb[2]),
        .Q(tx_byte0_s[2]));
  FDCE \tx_byte0_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte0_sb[3]),
        .Q(tx_byte0_s[3]));
  FDCE \tx_byte0_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte0_sb[4]),
        .Q(tx_byte0_s[4]));
  FDCE \tx_byte0_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte0_sb[5]),
        .Q(tx_byte0_s[5]));
  FDCE \tx_byte0_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte0_sb[6]),
        .Q(tx_byte0_s[6]));
  FDCE \tx_byte0_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte0_sb[7]),
        .Q(tx_byte0_s[7]));
  FDCE \tx_byte0_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte0_fb[0]),
        .Q(tx_byte0_sb[0]));
  FDCE \tx_byte0_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte0_fb[1]),
        .Q(tx_byte0_sb[1]));
  FDCE \tx_byte0_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte0_fb[2]),
        .Q(tx_byte0_sb[2]));
  FDCE \tx_byte0_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte0_fb[3]),
        .Q(tx_byte0_sb[3]));
  FDCE \tx_byte0_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte0_fb[4]),
        .Q(tx_byte0_sb[4]));
  FDCE \tx_byte0_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte0_fb[5]),
        .Q(tx_byte0_sb[5]));
  FDCE \tx_byte0_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte0_fb[6]),
        .Q(tx_byte0_sb[6]));
  FDCE \tx_byte0_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte0_fb[7]),
        .Q(tx_byte0_sb[7]));
  FDCE \tx_byte10_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[10][7] [0]),
        .Q(tx_byte10_fb[0]));
  FDCE \tx_byte10_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[10][7] [1]),
        .Q(tx_byte10_fb[1]));
  FDCE \tx_byte10_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[10][7] [2]),
        .Q(tx_byte10_fb[2]));
  FDCE \tx_byte10_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[10][7] [3]),
        .Q(tx_byte10_fb[3]));
  FDCE \tx_byte10_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[10][7] [4]),
        .Q(tx_byte10_fb[4]));
  FDCE \tx_byte10_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[10][7] [5]),
        .Q(tx_byte10_fb[5]));
  FDCE \tx_byte10_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[10][7] [6]),
        .Q(tx_byte10_fb[6]));
  FDCE \tx_byte10_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[10][7] [7]),
        .Q(tx_byte10_fb[7]));
  FDCE \tx_byte10_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte10_sb[0]),
        .Q(tx_byte10_s[0]));
  FDCE \tx_byte10_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte10_sb[1]),
        .Q(tx_byte10_s[1]));
  FDCE \tx_byte10_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte10_sb[2]),
        .Q(tx_byte10_s[2]));
  FDCE \tx_byte10_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte10_sb[3]),
        .Q(tx_byte10_s[3]));
  FDCE \tx_byte10_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte10_sb[4]),
        .Q(tx_byte10_s[4]));
  FDCE \tx_byte10_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte10_sb[5]),
        .Q(tx_byte10_s[5]));
  FDCE \tx_byte10_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte10_sb[6]),
        .Q(tx_byte10_s[6]));
  FDCE \tx_byte10_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte10_sb[7]),
        .Q(tx_byte10_s[7]));
  FDCE \tx_byte10_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte10_fb[0]),
        .Q(tx_byte10_sb[0]));
  FDCE \tx_byte10_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte10_fb[1]),
        .Q(tx_byte10_sb[1]));
  FDCE \tx_byte10_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte10_fb[2]),
        .Q(tx_byte10_sb[2]));
  FDCE \tx_byte10_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte10_fb[3]),
        .Q(tx_byte10_sb[3]));
  FDCE \tx_byte10_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte10_fb[4]),
        .Q(tx_byte10_sb[4]));
  FDCE \tx_byte10_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte10_fb[5]),
        .Q(tx_byte10_sb[5]));
  FDCE \tx_byte10_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte10_fb[6]),
        .Q(tx_byte10_sb[6]));
  FDCE \tx_byte10_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte10_fb[7]),
        .Q(tx_byte10_sb[7]));
  FDCE \tx_byte11_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[11][7] [0]),
        .Q(tx_byte11_fb[0]));
  FDCE \tx_byte11_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[11][7] [1]),
        .Q(tx_byte11_fb[1]));
  FDCE \tx_byte11_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[11][7] [2]),
        .Q(tx_byte11_fb[2]));
  FDCE \tx_byte11_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[11][7] [3]),
        .Q(tx_byte11_fb[3]));
  FDCE \tx_byte11_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[11][7] [4]),
        .Q(tx_byte11_fb[4]));
  FDCE \tx_byte11_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[11][7] [5]),
        .Q(tx_byte11_fb[5]));
  FDCE \tx_byte11_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[11][7] [6]),
        .Q(tx_byte11_fb[6]));
  FDCE \tx_byte11_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[11][7] [7]),
        .Q(tx_byte11_fb[7]));
  FDCE \tx_byte11_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte11_sb[0]),
        .Q(tx_byte11_s[0]));
  FDCE \tx_byte11_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte11_sb[1]),
        .Q(tx_byte11_s[1]));
  FDCE \tx_byte11_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte11_sb[2]),
        .Q(tx_byte11_s[2]));
  FDCE \tx_byte11_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte11_sb[3]),
        .Q(tx_byte11_s[3]));
  FDCE \tx_byte11_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte11_sb[4]),
        .Q(tx_byte11_s[4]));
  FDCE \tx_byte11_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte11_sb[5]),
        .Q(tx_byte11_s[5]));
  FDCE \tx_byte11_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte11_sb[6]),
        .Q(tx_byte11_s[6]));
  FDCE \tx_byte11_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte11_sb[7]),
        .Q(tx_byte11_s[7]));
  FDCE \tx_byte11_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte11_fb[0]),
        .Q(tx_byte11_sb[0]));
  FDCE \tx_byte11_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte11_fb[1]),
        .Q(tx_byte11_sb[1]));
  FDCE \tx_byte11_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte11_fb[2]),
        .Q(tx_byte11_sb[2]));
  FDCE \tx_byte11_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte11_fb[3]),
        .Q(tx_byte11_sb[3]));
  FDCE \tx_byte11_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte11_fb[4]),
        .Q(tx_byte11_sb[4]));
  FDCE \tx_byte11_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte11_fb[5]),
        .Q(tx_byte11_sb[5]));
  FDCE \tx_byte11_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte11_fb[6]),
        .Q(tx_byte11_sb[6]));
  FDCE \tx_byte11_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte11_fb[7]),
        .Q(tx_byte11_sb[7]));
  FDCE \tx_byte12_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[12][7] [0]),
        .Q(tx_byte12_fb[0]));
  FDCE \tx_byte12_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[12][7] [1]),
        .Q(tx_byte12_fb[1]));
  FDCE \tx_byte12_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[12][7] [2]),
        .Q(tx_byte12_fb[2]));
  FDCE \tx_byte12_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[12][7] [3]),
        .Q(tx_byte12_fb[3]));
  FDCE \tx_byte12_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[12][7] [4]),
        .Q(tx_byte12_fb[4]));
  FDCE \tx_byte12_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[12][7] [5]),
        .Q(tx_byte12_fb[5]));
  FDCE \tx_byte12_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[12][7] [6]),
        .Q(tx_byte12_fb[6]));
  FDCE \tx_byte12_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[12][7] [7]),
        .Q(tx_byte12_fb[7]));
  FDCE \tx_byte12_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte12_sb[0]),
        .Q(tx_byte12_s[0]));
  FDCE \tx_byte12_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte12_sb[1]),
        .Q(tx_byte12_s[1]));
  FDCE \tx_byte12_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte12_sb[2]),
        .Q(tx_byte12_s[2]));
  FDCE \tx_byte12_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte12_sb[3]),
        .Q(tx_byte12_s[3]));
  FDCE \tx_byte12_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte12_sb[4]),
        .Q(tx_byte12_s[4]));
  FDCE \tx_byte12_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte12_sb[5]),
        .Q(tx_byte12_s[5]));
  FDCE \tx_byte12_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte12_sb[6]),
        .Q(tx_byte12_s[6]));
  FDCE \tx_byte12_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte12_sb[7]),
        .Q(tx_byte12_s[7]));
  FDCE \tx_byte12_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte12_fb[0]),
        .Q(tx_byte12_sb[0]));
  FDCE \tx_byte12_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte12_fb[1]),
        .Q(tx_byte12_sb[1]));
  FDCE \tx_byte12_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte12_fb[2]),
        .Q(tx_byte12_sb[2]));
  FDCE \tx_byte12_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte12_fb[3]),
        .Q(tx_byte12_sb[3]));
  FDCE \tx_byte12_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte12_fb[4]),
        .Q(tx_byte12_sb[4]));
  FDCE \tx_byte12_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte12_fb[5]),
        .Q(tx_byte12_sb[5]));
  FDCE \tx_byte12_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte12_fb[6]),
        .Q(tx_byte12_sb[6]));
  FDCE \tx_byte12_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte12_fb[7]),
        .Q(tx_byte12_sb[7]));
  FDCE \tx_byte13_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[13][7] [0]),
        .Q(tx_byte13_fb[0]));
  FDCE \tx_byte13_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[13][7] [1]),
        .Q(tx_byte13_fb[1]));
  FDCE \tx_byte13_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[13][7] [2]),
        .Q(tx_byte13_fb[2]));
  FDCE \tx_byte13_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[13][7] [3]),
        .Q(tx_byte13_fb[3]));
  FDCE \tx_byte13_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[13][7] [4]),
        .Q(tx_byte13_fb[4]));
  FDCE \tx_byte13_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[13][7] [5]),
        .Q(tx_byte13_fb[5]));
  FDCE \tx_byte13_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[13][7] [6]),
        .Q(tx_byte13_fb[6]));
  FDCE \tx_byte13_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[13][7] [7]),
        .Q(tx_byte13_fb[7]));
  FDCE \tx_byte13_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte13_sb[0]),
        .Q(tx_byte13_s[0]));
  FDCE \tx_byte13_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte13_sb[1]),
        .Q(tx_byte13_s[1]));
  FDCE \tx_byte13_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte13_sb[2]),
        .Q(tx_byte13_s[2]));
  FDCE \tx_byte13_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte13_sb[3]),
        .Q(tx_byte13_s[3]));
  FDCE \tx_byte13_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte13_sb[4]),
        .Q(tx_byte13_s[4]));
  FDCE \tx_byte13_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte13_sb[5]),
        .Q(tx_byte13_s[5]));
  FDCE \tx_byte13_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte13_sb[6]),
        .Q(tx_byte13_s[6]));
  FDCE \tx_byte13_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte13_sb[7]),
        .Q(tx_byte13_s[7]));
  FDCE \tx_byte13_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte13_fb[0]),
        .Q(tx_byte13_sb[0]));
  FDCE \tx_byte13_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte13_fb[1]),
        .Q(tx_byte13_sb[1]));
  FDCE \tx_byte13_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte13_fb[2]),
        .Q(tx_byte13_sb[2]));
  FDCE \tx_byte13_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte13_fb[3]),
        .Q(tx_byte13_sb[3]));
  FDCE \tx_byte13_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte13_fb[4]),
        .Q(tx_byte13_sb[4]));
  FDCE \tx_byte13_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte13_fb[5]),
        .Q(tx_byte13_sb[5]));
  FDCE \tx_byte13_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte13_fb[6]),
        .Q(tx_byte13_sb[6]));
  FDCE \tx_byte13_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte13_fb[7]),
        .Q(tx_byte13_sb[7]));
  FDCE \tx_byte14_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[14][7] [0]),
        .Q(tx_byte14_fb[0]));
  FDCE \tx_byte14_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[14][7] [1]),
        .Q(tx_byte14_fb[1]));
  FDCE \tx_byte14_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[14][7] [2]),
        .Q(tx_byte14_fb[2]));
  FDCE \tx_byte14_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[14][7] [3]),
        .Q(tx_byte14_fb[3]));
  FDCE \tx_byte14_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[14][7] [4]),
        .Q(tx_byte14_fb[4]));
  FDCE \tx_byte14_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[14][7] [5]),
        .Q(tx_byte14_fb[5]));
  FDCE \tx_byte14_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[14][7] [6]),
        .Q(tx_byte14_fb[6]));
  FDCE \tx_byte14_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[14][7] [7]),
        .Q(tx_byte14_fb[7]));
  FDCE \tx_byte14_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte14_sb[0]),
        .Q(tx_byte14_s[0]));
  FDCE \tx_byte14_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte14_sb[1]),
        .Q(tx_byte14_s[1]));
  FDCE \tx_byte14_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte14_sb[2]),
        .Q(tx_byte14_s[2]));
  FDCE \tx_byte14_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte14_sb[3]),
        .Q(tx_byte14_s[3]));
  FDCE \tx_byte14_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte14_sb[4]),
        .Q(tx_byte14_s[4]));
  FDCE \tx_byte14_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte14_sb[5]),
        .Q(tx_byte14_s[5]));
  FDCE \tx_byte14_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte14_sb[6]),
        .Q(tx_byte14_s[6]));
  FDCE \tx_byte14_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte14_sb[7]),
        .Q(tx_byte14_s[7]));
  FDCE \tx_byte14_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte14_fb[0]),
        .Q(tx_byte14_sb[0]));
  FDCE \tx_byte14_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte14_fb[1]),
        .Q(tx_byte14_sb[1]));
  FDCE \tx_byte14_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte14_fb[2]),
        .Q(tx_byte14_sb[2]));
  FDCE \tx_byte14_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte14_fb[3]),
        .Q(tx_byte14_sb[3]));
  FDCE \tx_byte14_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte14_fb[4]),
        .Q(tx_byte14_sb[4]));
  FDCE \tx_byte14_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte14_fb[5]),
        .Q(tx_byte14_sb[5]));
  FDCE \tx_byte14_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte14_fb[6]),
        .Q(tx_byte14_sb[6]));
  FDCE \tx_byte14_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte14_fb[7]),
        .Q(tx_byte14_sb[7]));
  FDCE \tx_byte15_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[15][7] [0]),
        .Q(tx_byte15_fb[0]));
  FDCE \tx_byte15_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[15][7] [1]),
        .Q(tx_byte15_fb[1]));
  FDCE \tx_byte15_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[15][7] [2]),
        .Q(tx_byte15_fb[2]));
  FDCE \tx_byte15_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[15][7] [3]),
        .Q(tx_byte15_fb[3]));
  FDCE \tx_byte15_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[15][7] [4]),
        .Q(tx_byte15_fb[4]));
  FDCE \tx_byte15_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[15][7] [5]),
        .Q(tx_byte15_fb[5]));
  FDCE \tx_byte15_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[15][7] [6]),
        .Q(tx_byte15_fb[6]));
  FDCE \tx_byte15_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[15][7] [7]),
        .Q(tx_byte15_fb[7]));
  FDCE \tx_byte15_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte15_sb[0]),
        .Q(tx_byte15_s[0]));
  FDCE \tx_byte15_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte15_sb[1]),
        .Q(tx_byte15_s[1]));
  FDCE \tx_byte15_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte15_sb[2]),
        .Q(tx_byte15_s[2]));
  FDCE \tx_byte15_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte15_sb[3]),
        .Q(tx_byte15_s[3]));
  FDCE \tx_byte15_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte15_sb[4]),
        .Q(tx_byte15_s[4]));
  FDCE \tx_byte15_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte15_sb[5]),
        .Q(tx_byte15_s[5]));
  FDCE \tx_byte15_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte15_sb[6]),
        .Q(tx_byte15_s[6]));
  FDCE \tx_byte15_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte15_sb[7]),
        .Q(tx_byte15_s[7]));
  FDCE \tx_byte15_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte15_fb[0]),
        .Q(tx_byte15_sb[0]));
  FDCE \tx_byte15_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte15_fb[1]),
        .Q(tx_byte15_sb[1]));
  FDCE \tx_byte15_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte15_fb[2]),
        .Q(tx_byte15_sb[2]));
  FDCE \tx_byte15_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte15_fb[3]),
        .Q(tx_byte15_sb[3]));
  FDCE \tx_byte15_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte15_fb[4]),
        .Q(tx_byte15_sb[4]));
  FDCE \tx_byte15_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte15_fb[5]),
        .Q(tx_byte15_sb[5]));
  FDCE \tx_byte15_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte15_fb[6]),
        .Q(tx_byte15_sb[6]));
  FDCE \tx_byte15_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_byte15_fb[7]),
        .Q(tx_byte15_sb[7]));
  FDCE \tx_byte1_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[1][7] [0]),
        .Q(tx_byte1_fb[0]));
  FDCE \tx_byte1_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[1][7] [1]),
        .Q(tx_byte1_fb[1]));
  FDCE \tx_byte1_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[1][7] [2]),
        .Q(tx_byte1_fb[2]));
  FDCE \tx_byte1_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[1][7] [3]),
        .Q(tx_byte1_fb[3]));
  FDCE \tx_byte1_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[1][7] [4]),
        .Q(tx_byte1_fb[4]));
  FDCE \tx_byte1_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[1][7] [5]),
        .Q(tx_byte1_fb[5]));
  FDCE \tx_byte1_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[1][7] [6]),
        .Q(tx_byte1_fb[6]));
  FDCE \tx_byte1_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[1][7] [7]),
        .Q(tx_byte1_fb[7]));
  FDCE \tx_byte1_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte1_sb[0]),
        .Q(tx_byte1_s[0]));
  FDCE \tx_byte1_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte1_sb[1]),
        .Q(tx_byte1_s[1]));
  FDCE \tx_byte1_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte1_sb[2]),
        .Q(tx_byte1_s[2]));
  FDCE \tx_byte1_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte1_sb[3]),
        .Q(tx_byte1_s[3]));
  FDCE \tx_byte1_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte1_sb[4]),
        .Q(tx_byte1_s[4]));
  FDCE \tx_byte1_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte1_sb[5]),
        .Q(tx_byte1_s[5]));
  FDCE \tx_byte1_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte1_sb[6]),
        .Q(tx_byte1_s[6]));
  FDCE \tx_byte1_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte1_sb[7]),
        .Q(tx_byte1_s[7]));
  FDCE \tx_byte1_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte1_fb[0]),
        .Q(tx_byte1_sb[0]));
  FDCE \tx_byte1_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte1_fb[1]),
        .Q(tx_byte1_sb[1]));
  FDCE \tx_byte1_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte1_fb[2]),
        .Q(tx_byte1_sb[2]));
  FDCE \tx_byte1_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte1_fb[3]),
        .Q(tx_byte1_sb[3]));
  FDCE \tx_byte1_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte1_fb[4]),
        .Q(tx_byte1_sb[4]));
  FDCE \tx_byte1_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte1_fb[5]),
        .Q(tx_byte1_sb[5]));
  FDCE \tx_byte1_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte1_fb[6]),
        .Q(tx_byte1_sb[6]));
  FDCE \tx_byte1_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte1_fb[7]),
        .Q(tx_byte1_sb[7]));
  FDCE \tx_byte2_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[2][7] [0]),
        .Q(tx_byte2_fb[0]));
  FDCE \tx_byte2_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[2][7] [1]),
        .Q(tx_byte2_fb[1]));
  FDCE \tx_byte2_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[2][7] [2]),
        .Q(tx_byte2_fb[2]));
  FDCE \tx_byte2_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[2][7] [3]),
        .Q(tx_byte2_fb[3]));
  FDCE \tx_byte2_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[2][7] [4]),
        .Q(tx_byte2_fb[4]));
  FDCE \tx_byte2_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[2][7] [5]),
        .Q(tx_byte2_fb[5]));
  FDCE \tx_byte2_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[2][7] [6]),
        .Q(tx_byte2_fb[6]));
  FDCE \tx_byte2_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[2][7] [7]),
        .Q(tx_byte2_fb[7]));
  FDCE \tx_byte2_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte2_sb[0]),
        .Q(tx_byte2_s[0]));
  FDCE \tx_byte2_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte2_sb[1]),
        .Q(tx_byte2_s[1]));
  FDCE \tx_byte2_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte2_sb[2]),
        .Q(tx_byte2_s[2]));
  FDCE \tx_byte2_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte2_sb[3]),
        .Q(tx_byte2_s[3]));
  FDCE \tx_byte2_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte2_sb[4]),
        .Q(tx_byte2_s[4]));
  FDCE \tx_byte2_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte2_sb[5]),
        .Q(tx_byte2_s[5]));
  FDCE \tx_byte2_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte2_sb[6]),
        .Q(tx_byte2_s[6]));
  FDCE \tx_byte2_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte2_sb[7]),
        .Q(tx_byte2_s[7]));
  FDCE \tx_byte2_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte2_fb[0]),
        .Q(tx_byte2_sb[0]));
  FDCE \tx_byte2_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte2_fb[1]),
        .Q(tx_byte2_sb[1]));
  FDCE \tx_byte2_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte2_fb[2]),
        .Q(tx_byte2_sb[2]));
  FDCE \tx_byte2_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte2_fb[3]),
        .Q(tx_byte2_sb[3]));
  FDCE \tx_byte2_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte2_fb[4]),
        .Q(tx_byte2_sb[4]));
  FDCE \tx_byte2_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte2_fb[5]),
        .Q(tx_byte2_sb[5]));
  FDCE \tx_byte2_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte2_fb[6]),
        .Q(tx_byte2_sb[6]));
  FDCE \tx_byte2_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte2_fb[7]),
        .Q(tx_byte2_sb[7]));
  FDCE \tx_byte3_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[3][7] [0]),
        .Q(tx_byte3_fb[0]));
  FDCE \tx_byte3_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[3][7] [1]),
        .Q(tx_byte3_fb[1]));
  FDCE \tx_byte3_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[3][7] [2]),
        .Q(tx_byte3_fb[2]));
  FDCE \tx_byte3_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[3][7] [3]),
        .Q(tx_byte3_fb[3]));
  FDCE \tx_byte3_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[3][7] [4]),
        .Q(tx_byte3_fb[4]));
  FDCE \tx_byte3_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[3][7] [5]),
        .Q(tx_byte3_fb[5]));
  FDCE \tx_byte3_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[3][7] [6]),
        .Q(tx_byte3_fb[6]));
  FDCE \tx_byte3_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[3][7] [7]),
        .Q(tx_byte3_fb[7]));
  FDCE \tx_byte3_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte3_sb[0]),
        .Q(tx_byte3_s[0]));
  FDCE \tx_byte3_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte3_sb[1]),
        .Q(tx_byte3_s[1]));
  FDCE \tx_byte3_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte3_sb[2]),
        .Q(tx_byte3_s[2]));
  FDCE \tx_byte3_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte3_sb[3]),
        .Q(tx_byte3_s[3]));
  FDCE \tx_byte3_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte3_sb[4]),
        .Q(tx_byte3_s[4]));
  FDCE \tx_byte3_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte3_sb[5]),
        .Q(tx_byte3_s[5]));
  FDCE \tx_byte3_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte3_sb[6]),
        .Q(tx_byte3_s[6]));
  FDCE \tx_byte3_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte3_sb[7]),
        .Q(tx_byte3_s[7]));
  FDCE \tx_byte3_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte3_fb[0]),
        .Q(tx_byte3_sb[0]));
  FDCE \tx_byte3_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte3_fb[1]),
        .Q(tx_byte3_sb[1]));
  FDCE \tx_byte3_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte3_fb[2]),
        .Q(tx_byte3_sb[2]));
  FDCE \tx_byte3_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte3_fb[3]),
        .Q(tx_byte3_sb[3]));
  FDCE \tx_byte3_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte3_fb[4]),
        .Q(tx_byte3_sb[4]));
  FDCE \tx_byte3_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte3_fb[5]),
        .Q(tx_byte3_sb[5]));
  FDCE \tx_byte3_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte3_fb[6]),
        .Q(tx_byte3_sb[6]));
  FDCE \tx_byte3_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte3_fb[7]),
        .Q(tx_byte3_sb[7]));
  FDCE \tx_byte4_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[4][7] [0]),
        .Q(tx_byte4_fb[0]));
  FDCE \tx_byte4_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[4][7] [1]),
        .Q(tx_byte4_fb[1]));
  FDCE \tx_byte4_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[4][7] [2]),
        .Q(tx_byte4_fb[2]));
  FDCE \tx_byte4_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[4][7] [3]),
        .Q(tx_byte4_fb[3]));
  FDCE \tx_byte4_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[4][7] [4]),
        .Q(tx_byte4_fb[4]));
  FDCE \tx_byte4_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[4][7] [5]),
        .Q(tx_byte4_fb[5]));
  FDCE \tx_byte4_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[4][7] [6]),
        .Q(tx_byte4_fb[6]));
  FDCE \tx_byte4_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[4][7] [7]),
        .Q(tx_byte4_fb[7]));
  FDCE \tx_byte4_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte4_sb[0]),
        .Q(tx_byte4_s[0]));
  FDCE \tx_byte4_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte4_sb[1]),
        .Q(tx_byte4_s[1]));
  FDCE \tx_byte4_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte4_sb[2]),
        .Q(tx_byte4_s[2]));
  FDCE \tx_byte4_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte4_sb[3]),
        .Q(tx_byte4_s[3]));
  FDCE \tx_byte4_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte4_sb[4]),
        .Q(tx_byte4_s[4]));
  FDCE \tx_byte4_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte4_sb[5]),
        .Q(tx_byte4_s[5]));
  FDCE \tx_byte4_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte4_sb[6]),
        .Q(tx_byte4_s[6]));
  FDCE \tx_byte4_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte4_sb[7]),
        .Q(tx_byte4_s[7]));
  FDCE \tx_byte4_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte4_fb[0]),
        .Q(tx_byte4_sb[0]));
  FDCE \tx_byte4_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte4_fb[1]),
        .Q(tx_byte4_sb[1]));
  FDCE \tx_byte4_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte4_fb[2]),
        .Q(tx_byte4_sb[2]));
  FDCE \tx_byte4_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte4_fb[3]),
        .Q(tx_byte4_sb[3]));
  FDCE \tx_byte4_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte4_fb[4]),
        .Q(tx_byte4_sb[4]));
  FDCE \tx_byte4_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte4_fb[5]),
        .Q(tx_byte4_sb[5]));
  FDCE \tx_byte4_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte4_fb[6]),
        .Q(tx_byte4_sb[6]));
  FDCE \tx_byte4_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte4_fb[7]),
        .Q(tx_byte4_sb[7]));
  FDCE \tx_byte5_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[5][7] [0]),
        .Q(tx_byte5_fb[0]));
  FDCE \tx_byte5_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[5][7] [1]),
        .Q(tx_byte5_fb[1]));
  FDCE \tx_byte5_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[5][7] [2]),
        .Q(tx_byte5_fb[2]));
  FDCE \tx_byte5_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[5][7] [3]),
        .Q(tx_byte5_fb[3]));
  FDCE \tx_byte5_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[5][7] [4]),
        .Q(tx_byte5_fb[4]));
  FDCE \tx_byte5_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[5][7] [5]),
        .Q(tx_byte5_fb[5]));
  FDCE \tx_byte5_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[5][7] [6]),
        .Q(tx_byte5_fb[6]));
  FDCE \tx_byte5_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[5][7] [7]),
        .Q(tx_byte5_fb[7]));
  FDCE \tx_byte5_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte5_sb[0]),
        .Q(tx_byte5_s[0]));
  FDCE \tx_byte5_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte5_sb[1]),
        .Q(tx_byte5_s[1]));
  FDCE \tx_byte5_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte5_sb[2]),
        .Q(tx_byte5_s[2]));
  FDCE \tx_byte5_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte5_sb[3]),
        .Q(tx_byte5_s[3]));
  FDCE \tx_byte5_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte5_sb[4]),
        .Q(tx_byte5_s[4]));
  FDCE \tx_byte5_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte5_sb[5]),
        .Q(tx_byte5_s[5]));
  FDCE \tx_byte5_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte5_sb[6]),
        .Q(tx_byte5_s[6]));
  FDCE \tx_byte5_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte5_sb[7]),
        .Q(tx_byte5_s[7]));
  FDCE \tx_byte5_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte5_fb[0]),
        .Q(tx_byte5_sb[0]));
  FDCE \tx_byte5_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte5_fb[1]),
        .Q(tx_byte5_sb[1]));
  FDCE \tx_byte5_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte5_fb[2]),
        .Q(tx_byte5_sb[2]));
  FDCE \tx_byte5_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte5_fb[3]),
        .Q(tx_byte5_sb[3]));
  FDCE \tx_byte5_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte5_fb[4]),
        .Q(tx_byte5_sb[4]));
  FDCE \tx_byte5_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte5_fb[5]),
        .Q(tx_byte5_sb[5]));
  FDCE \tx_byte5_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte5_fb[6]),
        .Q(tx_byte5_sb[6]));
  FDCE \tx_byte5_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte5_fb[7]),
        .Q(tx_byte5_sb[7]));
  FDCE \tx_byte6_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[6][7] [0]),
        .Q(tx_byte6_fb[0]));
  FDCE \tx_byte6_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[6][7] [1]),
        .Q(tx_byte6_fb[1]));
  FDCE \tx_byte6_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[6][7] [2]),
        .Q(tx_byte6_fb[2]));
  FDCE \tx_byte6_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[6][7] [3]),
        .Q(tx_byte6_fb[3]));
  FDCE \tx_byte6_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[6][7] [4]),
        .Q(tx_byte6_fb[4]));
  FDCE \tx_byte6_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[6][7] [5]),
        .Q(tx_byte6_fb[5]));
  FDCE \tx_byte6_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[6][7] [6]),
        .Q(tx_byte6_fb[6]));
  FDCE \tx_byte6_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[6][7] [7]),
        .Q(tx_byte6_fb[7]));
  FDCE \tx_byte6_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte6_sb[0]),
        .Q(tx_byte6_s[0]));
  FDCE \tx_byte6_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte6_sb[1]),
        .Q(tx_byte6_s[1]));
  FDCE \tx_byte6_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte6_sb[2]),
        .Q(tx_byte6_s[2]));
  FDCE \tx_byte6_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte6_sb[3]),
        .Q(tx_byte6_s[3]));
  FDCE \tx_byte6_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte6_sb[4]),
        .Q(tx_byte6_s[4]));
  FDCE \tx_byte6_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte6_sb[5]),
        .Q(tx_byte6_s[5]));
  FDCE \tx_byte6_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte6_sb[6]),
        .Q(tx_byte6_s[6]));
  FDCE \tx_byte6_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte6_sb[7]),
        .Q(tx_byte6_s[7]));
  FDCE \tx_byte6_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte6_fb[0]),
        .Q(tx_byte6_sb[0]));
  FDCE \tx_byte6_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte6_fb[1]),
        .Q(tx_byte6_sb[1]));
  FDCE \tx_byte6_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte6_fb[2]),
        .Q(tx_byte6_sb[2]));
  FDCE \tx_byte6_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte6_fb[3]),
        .Q(tx_byte6_sb[3]));
  FDCE \tx_byte6_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte6_fb[4]),
        .Q(tx_byte6_sb[4]));
  FDCE \tx_byte6_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte6_fb[5]),
        .Q(tx_byte6_sb[5]));
  FDCE \tx_byte6_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte6_fb[6]),
        .Q(tx_byte6_sb[6]));
  FDCE \tx_byte6_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte6_fb[7]),
        .Q(tx_byte6_sb[7]));
  FDCE \tx_byte7_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[7][7] [0]),
        .Q(tx_byte7_fb[0]));
  FDCE \tx_byte7_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[7][7] [1]),
        .Q(tx_byte7_fb[1]));
  FDCE \tx_byte7_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[7][7] [2]),
        .Q(tx_byte7_fb[2]));
  FDCE \tx_byte7_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[7][7] [3]),
        .Q(tx_byte7_fb[3]));
  FDCE \tx_byte7_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[7][7] [4]),
        .Q(tx_byte7_fb[4]));
  FDCE \tx_byte7_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[7][7] [5]),
        .Q(tx_byte7_fb[5]));
  FDCE \tx_byte7_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[7][7] [6]),
        .Q(tx_byte7_fb[6]));
  FDCE \tx_byte7_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[7][7] [7]),
        .Q(tx_byte7_fb[7]));
  FDCE \tx_byte7_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte7_sb[0]),
        .Q(tx_byte7_s[0]));
  FDCE \tx_byte7_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte7_sb[1]),
        .Q(tx_byte7_s[1]));
  FDCE \tx_byte7_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte7_sb[2]),
        .Q(tx_byte7_s[2]));
  FDCE \tx_byte7_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte7_sb[3]),
        .Q(tx_byte7_s[3]));
  FDCE \tx_byte7_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte7_sb[4]),
        .Q(tx_byte7_s[4]));
  FDCE \tx_byte7_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte7_sb[5]),
        .Q(tx_byte7_s[5]));
  FDCE \tx_byte7_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte7_sb[6]),
        .Q(tx_byte7_s[6]));
  FDCE \tx_byte7_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte7_sb[7]),
        .Q(tx_byte7_s[7]));
  FDCE \tx_byte7_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte7_fb[0]),
        .Q(tx_byte7_sb[0]));
  FDCE \tx_byte7_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte7_fb[1]),
        .Q(tx_byte7_sb[1]));
  FDCE \tx_byte7_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte7_fb[2]),
        .Q(tx_byte7_sb[2]));
  FDCE \tx_byte7_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte7_fb[3]),
        .Q(tx_byte7_sb[3]));
  FDCE \tx_byte7_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte7_fb[4]),
        .Q(tx_byte7_sb[4]));
  FDCE \tx_byte7_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte7_fb[5]),
        .Q(tx_byte7_sb[5]));
  FDCE \tx_byte7_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte7_fb[6]),
        .Q(tx_byte7_sb[6]));
  FDCE \tx_byte7_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte7_fb[7]),
        .Q(tx_byte7_sb[7]));
  FDCE \tx_byte8_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[8][7] [0]),
        .Q(tx_byte8_fb[0]));
  FDCE \tx_byte8_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[8][7] [1]),
        .Q(tx_byte8_fb[1]));
  FDCE \tx_byte8_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[8][7] [2]),
        .Q(tx_byte8_fb[2]));
  FDCE \tx_byte8_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[8][7] [3]),
        .Q(tx_byte8_fb[3]));
  FDCE \tx_byte8_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[8][7] [4]),
        .Q(tx_byte8_fb[4]));
  FDCE \tx_byte8_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[8][7] [5]),
        .Q(tx_byte8_fb[5]));
  FDCE \tx_byte8_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[8][7] [6]),
        .Q(tx_byte8_fb[6]));
  FDCE \tx_byte8_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[8][7] [7]),
        .Q(tx_byte8_fb[7]));
  FDCE \tx_byte8_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte8_sb[0]),
        .Q(tx_byte8_s[0]));
  FDCE \tx_byte8_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte8_sb[1]),
        .Q(tx_byte8_s[1]));
  FDCE \tx_byte8_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte8_sb[2]),
        .Q(tx_byte8_s[2]));
  FDCE \tx_byte8_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte8_sb[3]),
        .Q(tx_byte8_s[3]));
  FDCE \tx_byte8_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte8_sb[4]),
        .Q(tx_byte8_s[4]));
  FDCE \tx_byte8_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte8_sb[5]),
        .Q(tx_byte8_s[5]));
  FDCE \tx_byte8_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte8_sb[6]),
        .Q(tx_byte8_s[6]));
  FDCE \tx_byte8_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte8_sb[7]),
        .Q(tx_byte8_s[7]));
  FDCE \tx_byte8_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte8_fb[0]),
        .Q(tx_byte8_sb[0]));
  FDCE \tx_byte8_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte8_fb[1]),
        .Q(tx_byte8_sb[1]));
  FDCE \tx_byte8_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte8_fb[2]),
        .Q(tx_byte8_sb[2]));
  FDCE \tx_byte8_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte8_fb[3]),
        .Q(tx_byte8_sb[3]));
  FDCE \tx_byte8_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte8_fb[4]),
        .Q(tx_byte8_sb[4]));
  FDCE \tx_byte8_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte8_fb[5]),
        .Q(tx_byte8_sb[5]));
  FDCE \tx_byte8_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte8_fb[6]),
        .Q(tx_byte8_sb[6]));
  FDCE \tx_byte8_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte8_fb[7]),
        .Q(tx_byte8_sb[7]));
  FDCE \tx_byte9_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(\tx_byte_reg_reg[9][7] [0]),
        .Q(tx_byte9_fb[0]));
  FDCE \tx_byte9_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[9][7] [1]),
        .Q(tx_byte9_fb[1]));
  FDCE \tx_byte9_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[9][7] [2]),
        .Q(tx_byte9_fb[2]));
  FDCE \tx_byte9_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[9][7] [3]),
        .Q(tx_byte9_fb[3]));
  FDCE \tx_byte9_fb_reg[4] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(\tx_byte_reg_reg[9][7] [4]),
        .Q(tx_byte9_fb[4]));
  FDCE \tx_byte9_fb_reg[5] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[9][7] [5]),
        .Q(tx_byte9_fb[5]));
  FDCE \tx_byte9_fb_reg[6] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(\tx_byte_reg_reg[9][7] [6]),
        .Q(tx_byte9_fb[6]));
  FDCE \tx_byte9_fb_reg[7] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\tx_byte_reg_reg[9][7] [7]),
        .Q(tx_byte9_fb[7]));
  FDCE \tx_byte9_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte9_sb[0]),
        .Q(tx_byte9_s[0]));
  FDCE \tx_byte9_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte9_sb[1]),
        .Q(tx_byte9_s[1]));
  FDCE \tx_byte9_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte9_sb[2]),
        .Q(tx_byte9_s[2]));
  FDCE \tx_byte9_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte9_sb[3]),
        .Q(tx_byte9_s[3]));
  FDCE \tx_byte9_s_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_byte9_sb[4]),
        .Q(tx_byte9_s[4]));
  FDCE \tx_byte9_s_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte9_sb[5]),
        .Q(tx_byte9_s[5]));
  FDCE \tx_byte9_s_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte9_sb[6]),
        .Q(tx_byte9_s[6]));
  FDCE \tx_byte9_s_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_byte9_sb[7]),
        .Q(tx_byte9_s[7]));
  FDCE \tx_byte9_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_byte9_fb[0]),
        .Q(tx_byte9_sb[0]));
  FDCE \tx_byte9_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte9_fb[1]),
        .Q(tx_byte9_sb[1]));
  FDCE \tx_byte9_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte5_fb_reg[3]_0 ),
        .D(tx_byte9_fb[2]),
        .Q(tx_byte9_sb[2]));
  FDCE \tx_byte9_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte9_fb[3]),
        .Q(tx_byte9_sb[3]));
  FDCE \tx_byte9_sb_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte7_fb_reg[5]_0 ),
        .D(tx_byte9_fb[4]),
        .Q(tx_byte9_sb[4]));
  FDCE \tx_byte9_sb_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte9_fb[5]),
        .Q(tx_byte9_sb[5]));
  FDCE \tx_byte9_sb_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte9_fb[6]),
        .Q(tx_byte9_sb[6]));
  FDCE \tx_byte9_sb_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte9_sb_reg[7]_0 ),
        .D(tx_byte9_fb[7]),
        .Q(tx_byte9_sb[7]));
  LUT1 #(
    .INIT(2'h1)) 
    \tx_byte_reg[0][3]_i_1 
       (.I0(S_AXI_ARESETN),
        .O(\tx_byte5_fb_reg[3]_0 ));
  FDCE \tx_bytes_sent_f_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_fb[0]),
        .Q(\S_AXI_RDATA_reg[7]_1 [0]));
  FDCE \tx_bytes_sent_f_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_fb[1]),
        .Q(\S_AXI_RDATA_reg[7]_1 [1]));
  FDCE \tx_bytes_sent_f_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_fb[2]),
        .Q(\S_AXI_RDATA_reg[7]_1 [2]));
  FDCE \tx_bytes_sent_f_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_fb[3]),
        .Q(\S_AXI_RDATA_reg[7]_1 [3]));
  FDCE \tx_bytes_sent_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_sb[0]),
        .Q(tx_bytes_sent_fb[0]));
  FDCE \tx_bytes_sent_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_sb[1]),
        .Q(tx_bytes_sent_fb[1]));
  FDCE \tx_bytes_sent_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_sb[2]),
        .Q(tx_bytes_sent_fb[2]));
  FDCE \tx_bytes_sent_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_byte0_fb_reg[8]_0 ),
        .D(tx_bytes_sent_sb[3]),
        .Q(tx_bytes_sent_fb[3]));
  FDCE \tx_bytes_sent_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(\number_reg[3] [0]),
        .Q(tx_bytes_sent_sb[0]));
  FDCE \tx_bytes_sent_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(\number_reg[3] [1]),
        .Q(tx_bytes_sent_sb[1]));
  FDCE \tx_bytes_sent_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(\number_reg[3] [2]),
        .Q(tx_bytes_sent_sb[2]));
  FDCE \tx_bytes_sent_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(\number_reg[3] [3]),
        .Q(tx_bytes_sent_sb[3]));
  FDCE \tx_nb_bytes_fb_reg[0] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [7]),
        .Q(tx_nb_bytes_fb[0]));
  FDCE \tx_nb_bytes_fb_reg[1] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [8]),
        .Q(tx_nb_bytes_fb[1]));
  FDCE \tx_nb_bytes_fb_reg[2] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [9]),
        .Q(tx_nb_bytes_fb[2]));
  FDCE \tx_nb_bytes_fb_reg[3] 
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(\ctrl_reg_reg[16] [10]),
        .Q(tx_nb_bytes_fb[3]));
  FDCE \tx_nb_bytes_s_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_nb_bytes_sb[0]),
        .Q(tx_nb_bytes_s[0]));
  FDCE \tx_nb_bytes_s_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_nb_bytes_sb[1]),
        .Q(tx_nb_bytes_s[1]));
  FDCE \tx_nb_bytes_s_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_nb_bytes_sb[2]),
        .Q(tx_nb_bytes_s[2]));
  FDCE \tx_nb_bytes_s_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_nb_bytes_sb[3]),
        .Q(tx_nb_bytes_s[3]));
  FDCE \tx_nb_bytes_sb_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_nb_bytes_fb[0]),
        .Q(tx_nb_bytes_sb[0]));
  FDCE \tx_nb_bytes_sb_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_nb_bytes_fb[1]),
        .Q(tx_nb_bytes_sb[1]));
  FDCE \tx_nb_bytes_sb_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_nb_bytes_fb[2]),
        .Q(tx_nb_bytes_sb[2]));
  FDCE \tx_nb_bytes_sb_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_nb_bytes_fb_reg[3]_0 ),
        .D(tx_nb_bytes_fb[3]),
        .Q(tx_nb_bytes_sb[3]));
  LUT3 #(
    .INIT(8'h54)) 
    tx_start_fb_i_1
       (.I0(tx_start_fc),
        .I1(tx_start_f),
        .I2(tx_start_fb_reg_n_0),
        .O(tx_start_fb_i_1_n_0));
  FDCE tx_start_fb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_start_fb_i_1_n_0),
        .Q(tx_start_fb_reg_n_0));
  FDCE tx_start_fc_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_start_fcb),
        .Q(tx_start_fc));
  FDCE tx_start_fcb_reg
       (.C(S_AXI_ACLK),
        .CE(1'b1),
        .CLR(\tx_byte8_s_reg[4]_0 ),
        .D(tx_start_s),
        .Q(tx_start_fcb));
  FDCE tx_start_s_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_start_sb2),
        .Q(tx_start_s));
  FDCE tx_start_sb2_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\rx_byte12_sb_reg[5]_0 ),
        .D(tx_start_sb),
        .Q(tx_start_sb2));
  FDCE tx_start_sb_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(\tx_byte2_sb_reg[1]_0 ),
        .D(tx_start_fb_reg_n_0),
        .Q(tx_start_sb));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hc_generator
   (\shift_reg_reg[5] ,
    \shift_reg_reg[5]_0 ,
    \shift_reg_reg[3] ,
    \shift_reg_reg[3]_0 ,
    \shift_reg_reg[4] ,
    \shift_reg_reg[4]_0 ,
    \FSM_sequential_current_state_reg[2] ,
    out,
    \FSM_sequential_current_state_reg[0] ,
    \FSM_sequential_current_state_reg[3] ,
    \FSM_sequential_current_state_reg[2]_0 ,
    \FSM_sequential_current_state_reg[2]_1 ,
    \FSM_sequential_current_state_reg[2]_2 ,
    \FSM_sequential_current_state_reg[2]_3 ,
    \FSM_sequential_current_state_reg[2]_4 );
  output \shift_reg_reg[5] ;
  output \shift_reg_reg[5]_0 ;
  output \shift_reg_reg[3] ;
  output \shift_reg_reg[3]_0 ;
  output \shift_reg_reg[4] ;
  output \shift_reg_reg[4]_0 ;
  input \FSM_sequential_current_state_reg[2] ;
  input [1:0]out;
  input \FSM_sequential_current_state_reg[0] ;
  input \FSM_sequential_current_state_reg[3] ;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input \FSM_sequential_current_state_reg[2]_1 ;
  input \FSM_sequential_current_state_reg[2]_2 ;
  input \FSM_sequential_current_state_reg[2]_3 ;
  input \FSM_sequential_current_state_reg[2]_4 ;

  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire \FSM_sequential_current_state_reg[2]_1 ;
  wire \FSM_sequential_current_state_reg[2]_2 ;
  wire \FSM_sequential_current_state_reg[2]_3 ;
  wire \FSM_sequential_current_state_reg[2]_4 ;
  wire \FSM_sequential_current_state_reg[3] ;
  wire [1:0]out;
  wire \shift_reg_reg[3] ;
  wire \shift_reg_reg[3]_0 ;
  wire \shift_reg_reg[4] ;
  wire \shift_reg_reg[4]_0 ;
  wire \shift_reg_reg[5] ;
  wire \shift_reg_reg[5]_0 ;

  LUT6 #(
    .INIT(64'hEDDEDEEDDEEDEDDE)) 
    \shift_reg[3]_i_3 
       (.I0(\FSM_sequential_current_state_reg[2]_1 ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[2]_2 ),
        .I3(\FSM_sequential_current_state_reg[2]_3 ),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\FSM_sequential_current_state_reg[2]_4 ),
        .O(\shift_reg_reg[3] ));
  LUT6 #(
    .INIT(64'h1221211221121221)) 
    \shift_reg[3]_i_4 
       (.I0(\FSM_sequential_current_state_reg[2]_1 ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[2]_2 ),
        .I3(\FSM_sequential_current_state_reg[2]_3 ),
        .I4(\FSM_sequential_current_state_reg[2] ),
        .I5(\FSM_sequential_current_state_reg[2]_4 ),
        .O(\shift_reg_reg[3]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'hEDDEDEED)) 
    \shift_reg[4]_i_2 
       (.I0(\FSM_sequential_current_state_reg[2]_2 ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[2]_3 ),
        .I3(\FSM_sequential_current_state_reg[2] ),
        .I4(\FSM_sequential_current_state_reg[2]_4 ),
        .O(\shift_reg_reg[4] ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT5 #(
    .INIT(32'h12212112)) 
    \shift_reg[4]_i_3 
       (.I0(\FSM_sequential_current_state_reg[2]_2 ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[2]_3 ),
        .I3(\FSM_sequential_current_state_reg[2] ),
        .I4(\FSM_sequential_current_state_reg[2]_4 ),
        .O(\shift_reg_reg[4]_0 ));
  LUT6 #(
    .INIT(64'h1211122221222111)) 
    \shift_reg[6]_i_2 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(out[0]),
        .I4(\FSM_sequential_current_state_reg[3] ),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(\shift_reg_reg[5] ));
  LUT6 #(
    .INIT(64'hEDEEEDDDDEDDDEEE)) 
    \shift_reg[6]_i_3 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(out[1]),
        .I2(\FSM_sequential_current_state_reg[0] ),
        .I3(out[0]),
        .I4(\FSM_sequential_current_state_reg[3] ),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(\shift_reg_reg[5]_0 ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_fsm
   (out,
    E,
    \shift_reg_reg[9] ,
    D,
    \syndrom_reg[3] ,
    \shift_reg_reg[5] ,
    \shift_reg_reg[3] ,
    \shift_reg_reg[3]_0 ,
    \shift_reg_reg[3]_1 ,
    \shift_reg_reg[5]_0 ,
    \shift_reg_reg[3]_2 ,
    \shift_reg_reg[5]_1 ,
    \shift_reg_reg[5]_2 ,
    done_s,
    tx_bytecnt_clear,
    rx_bytecnt_clear,
    \number_reg[3] ,
    load_counter,
    clear_syndrom,
    \shift_reg_reg[24] ,
    \number_reg[3]_0 ,
    tx_start_reg,
    rx_start_reg,
    clkdiv1000_reg,
    Q,
    atlimit_reg,
    \counter_reg[0] ,
    \syndrom_reg[2] ,
    sdas_dec_reg,
    tx_allbytes,
    tx_byte,
    \slave_addr_s_reg[6] ,
    \number_reg[2] ,
    \number_reg[3]_1 ,
    \number_reg[2]_0 ,
    \number_reg[2]_1 ,
    \number_reg[2]_2 ,
    \number_reg[2]_3 ,
    \number_reg[2]_4 ,
    \number_reg[2]_5 ,
    \number_reg[2]_6 ,
    \number_reg[2]_7 ,
    \number_reg[2]_8 ,
    \number_reg[2]_9 ,
    \number_reg[2]_10 ,
    \FSM_sequential_current_state_reg[0]_0 ,
    atlimit_reg_0,
    tx_start,
    rx_start,
    \FSM_sequential_current_state_reg[1]_0 ,
    \FSM_sequential_current_state_reg[0]_1 ,
    \FSM_sequential_current_state_reg[4]_0 ,
    \FSM_sequential_current_state_reg[4]_1 ,
    \shift_reg_reg[2] ,
    \FSM_sequential_current_state_reg[4]_2 ,
    \FSM_sequential_current_state_reg[4]_3 ,
    \FSM_sequential_current_state_reg[4]_4 ,
    \FSM_sequential_current_state_reg[4]_5 ,
    tx_start_s,
    rx_start_s,
    CLK,
    S_AXI_ARESETN);
  output [3:0]out;
  output [0:0]E;
  output \shift_reg_reg[9] ;
  output [0:0]D;
  output [2:0]\syndrom_reg[3] ;
  output \shift_reg_reg[5] ;
  output \shift_reg_reg[3] ;
  output \shift_reg_reg[3]_0 ;
  output \shift_reg_reg[3]_1 ;
  output \shift_reg_reg[5]_0 ;
  output \shift_reg_reg[3]_2 ;
  output \shift_reg_reg[5]_1 ;
  output \shift_reg_reg[5]_2 ;
  output done_s;
  output tx_bytecnt_clear;
  output rx_bytecnt_clear;
  output \number_reg[3] ;
  output load_counter;
  output clear_syndrom;
  output [24:0]\shift_reg_reg[24] ;
  output [0:0]\number_reg[3]_0 ;
  output tx_start_reg;
  output rx_start_reg;
  input [0:0]clkdiv1000_reg;
  input [22:0]Q;
  input atlimit_reg;
  input [0:0]\counter_reg[0] ;
  input [2:0]\syndrom_reg[2] ;
  input [0:0]sdas_dec_reg;
  input tx_allbytes;
  input [7:0]tx_byte;
  input [6:0]\slave_addr_s_reg[6] ;
  input \number_reg[2] ;
  input [0:0]\number_reg[3]_1 ;
  input \number_reg[2]_0 ;
  input \number_reg[2]_1 ;
  input \number_reg[2]_2 ;
  input \number_reg[2]_3 ;
  input \number_reg[2]_4 ;
  input \number_reg[2]_5 ;
  input \number_reg[2]_6 ;
  input \number_reg[2]_7 ;
  input \number_reg[2]_8 ;
  input \number_reg[2]_9 ;
  input \number_reg[2]_10 ;
  input \FSM_sequential_current_state_reg[0]_0 ;
  input atlimit_reg_0;
  input tx_start;
  input rx_start;
  input \FSM_sequential_current_state_reg[1]_0 ;
  input \FSM_sequential_current_state_reg[0]_1 ;
  input \FSM_sequential_current_state_reg[4]_0 ;
  input \FSM_sequential_current_state_reg[4]_1 ;
  input \shift_reg_reg[2] ;
  input \FSM_sequential_current_state_reg[4]_2 ;
  input \FSM_sequential_current_state_reg[4]_3 ;
  input \FSM_sequential_current_state_reg[4]_4 ;
  input \FSM_sequential_current_state_reg[4]_5 ;
  input tx_start_s;
  input rx_start_s;
  input CLK;
  input S_AXI_ARESETN;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state[0]_i_2_n_0 ;
  wire \FSM_sequential_current_state[0]_i_3_n_0 ;
  wire \FSM_sequential_current_state[0]_i_4_n_0 ;
  wire \FSM_sequential_current_state[0]_i_6_n_0 ;
  wire \FSM_sequential_current_state[1]_i_2_n_0 ;
  wire \FSM_sequential_current_state[1]_i_3_n_0 ;
  wire \FSM_sequential_current_state[1]_i_5_n_0 ;
  wire \FSM_sequential_current_state[1]_i_6_n_0 ;
  wire \FSM_sequential_current_state[2]_i_2_n_0 ;
  wire \FSM_sequential_current_state[2]_i_3_n_0 ;
  wire \FSM_sequential_current_state[2]_i_4_n_0 ;
  wire \FSM_sequential_current_state[3]_i_1_n_0 ;
  wire \FSM_sequential_current_state[3]_i_2_n_0 ;
  wire \FSM_sequential_current_state[3]_i_3_n_0 ;
  wire \FSM_sequential_current_state[3]_i_4_n_0 ;
  wire \FSM_sequential_current_state[4]_i_1_n_0 ;
  wire \FSM_sequential_current_state[4]_i_2_n_0 ;
  wire \FSM_sequential_current_state[4]_i_3_n_0 ;
  wire \FSM_sequential_current_state_reg[0]_0 ;
  wire \FSM_sequential_current_state_reg[0]_1 ;
  wire \FSM_sequential_current_state_reg[0]_i_1_n_0 ;
  wire \FSM_sequential_current_state_reg[1]_0 ;
  wire \FSM_sequential_current_state_reg[1]_i_1_n_0 ;
  wire \FSM_sequential_current_state_reg[2]_i_1_n_0 ;
  wire \FSM_sequential_current_state_reg[4]_0 ;
  wire \FSM_sequential_current_state_reg[4]_1 ;
  wire \FSM_sequential_current_state_reg[4]_2 ;
  wire \FSM_sequential_current_state_reg[4]_3 ;
  wire \FSM_sequential_current_state_reg[4]_4 ;
  wire \FSM_sequential_current_state_reg[4]_5 ;
  wire [22:0]Q;
  wire S_AXI_ARESETN;
  wire atlimit_reg;
  wire atlimit_reg_0;
  wire clear_syndrom;
  wire [0:0]clkdiv1000_reg;
  wire [0:0]\counter_reg[0] ;
  (* RTL_KEEP = "yes" *) wire [3:3]current_state;
  wire [7:0]data;
  wire done_s;
  wire load_ack;
  wire load_counter;
  wire load_data;
  wire \number[3]_i_4__0_n_0 ;
  wire \number[3]_i_5_n_0 ;
  wire \number_reg[2] ;
  wire \number_reg[2]_0 ;
  wire \number_reg[2]_1 ;
  wire \number_reg[2]_10 ;
  wire \number_reg[2]_2 ;
  wire \number_reg[2]_3 ;
  wire \number_reg[2]_4 ;
  wire \number_reg[2]_5 ;
  wire \number_reg[2]_6 ;
  wire \number_reg[2]_7 ;
  wire \number_reg[2]_8 ;
  wire \number_reg[2]_9 ;
  wire \number_reg[3] ;
  wire [0:0]\number_reg[3]_0 ;
  wire [0:0]\number_reg[3]_1 ;
  (* RTL_KEEP = "yes" *) wire [3:0]out;
  wire rx_bytecnt_clear;
  wire rx_start;
  wire rx_start_i_2_n_0;
  wire rx_start_i_3_n_0;
  wire rx_start_reg;
  wire rx_start_s;
  wire [0:0]sdas_dec_reg;
  wire \shift_reg[22]_i_3_n_0 ;
  wire \shift_reg[23]_i_2_n_0 ;
  wire \shift_reg[24]_i_2_n_0 ;
  wire \shift_reg[24]_i_3_n_0 ;
  wire \shift_reg[24]_i_7_n_0 ;
  wire \shift_reg[24]_i_9_n_0 ;
  wire \shift_reg[2]_i_2_n_0 ;
  wire \shift_reg[3]_i_6_n_0 ;
  wire \shift_reg[4]_i_4_n_0 ;
  wire \shift_reg[4]_i_8_n_0 ;
  wire \shift_reg[5]_i_2_n_0 ;
  wire \shift_reg[6]_i_10_n_0 ;
  wire \shift_reg[6]_i_11_n_0 ;
  wire \shift_reg[6]_i_4_n_0 ;
  wire \shift_reg[6]_i_9_n_0 ;
  wire \shift_reg[7]_i_2_n_0 ;
  wire \shift_reg[8]_i_2_n_0 ;
  wire [24:0]\shift_reg_reg[24] ;
  wire \shift_reg_reg[2] ;
  wire \shift_reg_reg[3] ;
  wire \shift_reg_reg[3]_0 ;
  wire \shift_reg_reg[3]_1 ;
  wire \shift_reg_reg[3]_2 ;
  wire \shift_reg_reg[5] ;
  wire \shift_reg_reg[5]_0 ;
  wire \shift_reg_reg[5]_1 ;
  wire \shift_reg_reg[5]_2 ;
  wire \shift_reg_reg[9] ;
  wire [6:0]\slave_addr_s_reg[6] ;
  wire [2:0]\syndrom_reg[2] ;
  wire [2:0]\syndrom_reg[3] ;
  wire tx_allbytes;
  wire [7:0]tx_byte;
  wire tx_bytecnt_clear;
  wire tx_start;
  wire tx_start_i_2_n_0;
  wire tx_start_reg;
  wire tx_start_s;

  LUT6 #(
    .INIT(64'hB0BFFFFFB0BF0000)) 
    \FSM_sequential_current_state[0]_i_2 
       (.I0(sdas_dec_reg),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state_reg[0]_0 ),
        .I4(out[2]),
        .I5(\FSM_sequential_current_state[0]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033470047)) 
    \FSM_sequential_current_state[0]_i_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(out[1]),
        .I4(\FSM_sequential_current_state_reg[0]_1 ),
        .I5(current_state),
        .O(\FSM_sequential_current_state[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h707FFFFF707F0000)) 
    \FSM_sequential_current_state[0]_i_4 
       (.I0(atlimit_reg_0),
        .I1(out[0]),
        .I2(out[1]),
        .I3(\FSM_sequential_current_state_reg[0]_0 ),
        .I4(current_state),
        .I5(\FSM_sequential_current_state[0]_i_6_n_0 ),
        .O(\FSM_sequential_current_state[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h5702FEFE)) 
    \FSM_sequential_current_state[0]_i_6 
       (.I0(out[1]),
        .I1(tx_start),
        .I2(rx_start),
        .I3(clkdiv1000_reg),
        .I4(out[0]),
        .O(\FSM_sequential_current_state[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'hCDC8CDCDCDC8C8C8)) 
    \FSM_sequential_current_state[1]_i_2 
       (.I0(out[2]),
        .I1(\FSM_sequential_current_state_reg[1]_0 ),
        .I2(current_state),
        .I3(\FSM_sequential_current_state[1]_i_5_n_0 ),
        .I4(out[1]),
        .I5(\FSM_sequential_current_state[1]_i_6_n_0 ),
        .O(\FSM_sequential_current_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000033B800B8)) 
    \FSM_sequential_current_state[1]_i_3 
       (.I0(out[0]),
        .I1(out[2]),
        .I2(\FSM_sequential_current_state_reg[0]_0 ),
        .I3(out[1]),
        .I4(\FSM_sequential_current_state_reg[0]_1 ),
        .I5(current_state),
        .O(\FSM_sequential_current_state[1]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'h1F)) 
    \FSM_sequential_current_state[1]_i_5 
       (.I0(tx_start),
        .I1(rx_start),
        .I2(out[0]),
        .O(\FSM_sequential_current_state[1]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_sequential_current_state[1]_i_6 
       (.I0(out[0]),
        .I1(clkdiv1000_reg),
        .O(\FSM_sequential_current_state[1]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hF7FFF700)) 
    \FSM_sequential_current_state[2]_i_2 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(sdas_dec_reg),
        .I3(out[2]),
        .I4(\FSM_sequential_current_state[2]_i_4_n_0 ),
        .O(\FSM_sequential_current_state[2]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h00002226)) 
    \FSM_sequential_current_state[2]_i_3 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(atlimit_reg),
        .I4(current_state),
        .O(\FSM_sequential_current_state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hBB88B88888888888)) 
    \FSM_sequential_current_state[2]_i_4 
       (.I0(\FSM_sequential_current_state[4]_i_3_n_0 ),
        .I1(current_state),
        .I2(rx_start),
        .I3(out[0]),
        .I4(tx_start),
        .I5(out[1]),
        .O(\FSM_sequential_current_state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h0000000022EE2E22)) 
    \FSM_sequential_current_state[3]_i_1 
       (.I0(\FSM_sequential_current_state[3]_i_2_n_0 ),
        .I1(out[2]),
        .I2(sdas_dec_reg),
        .I3(\FSM_sequential_current_state[3]_i_3_n_0 ),
        .I4(current_state),
        .I5(out[3]),
        .O(\FSM_sequential_current_state[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h47444444CCCCCCCC)) 
    \FSM_sequential_current_state[3]_i_2 
       (.I0(\FSM_sequential_current_state[3]_i_4_n_0 ),
        .I1(current_state),
        .I2(tx_start),
        .I3(out[0]),
        .I4(rx_start),
        .I5(out[1]),
        .O(\FSM_sequential_current_state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_sequential_current_state[3]_i_3 
       (.I0(out[0]),
        .I1(out[1]),
        .O(\FSM_sequential_current_state[3]_i_3_n_0 ));
  LUT3 #(
    .INIT(8'hA8)) 
    \FSM_sequential_current_state[3]_i_4 
       (.I0(out[0]),
        .I1(sdas_dec_reg),
        .I2(tx_allbytes),
        .O(\FSM_sequential_current_state[3]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'h3033300074CC74CC)) 
    \FSM_sequential_current_state[4]_i_1 
       (.I0(out[1]),
        .I1(out[3]),
        .I2(\FSM_sequential_current_state[4]_i_2_n_0 ),
        .I3(out[2]),
        .I4(\FSM_sequential_current_state[4]_i_3_n_0 ),
        .I5(current_state),
        .O(\FSM_sequential_current_state[4]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hC080)) 
    \FSM_sequential_current_state[4]_i_2 
       (.I0(current_state),
        .I1(out[1]),
        .I2(out[0]),
        .I3(sdas_dec_reg),
        .O(\FSM_sequential_current_state[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h80888080)) 
    \FSM_sequential_current_state[4]_i_3 
       (.I0(out[1]),
        .I1(out[0]),
        .I2(sdas_dec_reg),
        .I3(rx_start),
        .I4(tx_allbytes),
        .O(\FSM_sequential_current_state[4]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "IDLE:00000,WAIT_START:00001,START:00011,ADDRW_LD:00100,ADDRW_TX:00101,ADDRW_WAIT_ACK:00110,ADDRW_CHECK_ACK:00111,STOP:10110,LOAD_STOP:10101,TX_LD:01000,ADDRR_LD:01100,ADDRR_TX:01101,ADDRR_WAIT_ACK:01110,ADDRR_CHECK_ACK:01111,TX:01001,TX_WAIT_ACK:01010,TX_CHECK_ACK:01011,RX_START:10000,RX:10001,RX_SENDACK:10011,RX_PREP_ACK:10010,RX_SENDNACK:10100,LOAD_START:00010" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\FSM_sequential_current_state_reg[0]_i_1_n_0 ),
        .Q(out[0]));
  MUXF7 \FSM_sequential_current_state_reg[0]_i_1 
       (.I0(\FSM_sequential_current_state[0]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[0]_i_3_n_0 ),
        .O(\FSM_sequential_current_state_reg[0]_i_1_n_0 ),
        .S(out[3]));
  (* FSM_ENCODED_STATES = "IDLE:00000,WAIT_START:00001,START:00011,ADDRW_LD:00100,ADDRW_TX:00101,ADDRW_WAIT_ACK:00110,ADDRW_CHECK_ACK:00111,STOP:10110,LOAD_STOP:10101,TX_LD:01000,ADDRR_LD:01100,ADDRR_TX:01101,ADDRR_WAIT_ACK:01110,ADDRR_CHECK_ACK:01111,TX:01001,TX_WAIT_ACK:01010,TX_CHECK_ACK:01011,RX_START:10000,RX:10001,RX_SENDACK:10011,RX_PREP_ACK:10010,RX_SENDNACK:10100,LOAD_START:00010" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\FSM_sequential_current_state_reg[1]_i_1_n_0 ),
        .Q(out[1]));
  MUXF7 \FSM_sequential_current_state_reg[1]_i_1 
       (.I0(\FSM_sequential_current_state[1]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[1]_i_3_n_0 ),
        .O(\FSM_sequential_current_state_reg[1]_i_1_n_0 ),
        .S(out[3]));
  (* FSM_ENCODED_STATES = "IDLE:00000,WAIT_START:00001,START:00011,ADDRW_LD:00100,ADDRW_TX:00101,ADDRW_WAIT_ACK:00110,ADDRW_CHECK_ACK:00111,STOP:10110,LOAD_STOP:10101,TX_LD:01000,ADDRR_LD:01100,ADDRR_TX:01101,ADDRR_WAIT_ACK:01110,ADDRR_CHECK_ACK:01111,TX:01001,TX_WAIT_ACK:01010,TX_CHECK_ACK:01011,RX_START:10000,RX:10001,RX_SENDACK:10011,RX_PREP_ACK:10010,RX_SENDNACK:10100,LOAD_START:00010" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\FSM_sequential_current_state_reg[2]_i_1_n_0 ),
        .Q(out[2]));
  MUXF7 \FSM_sequential_current_state_reg[2]_i_1 
       (.I0(\FSM_sequential_current_state[2]_i_2_n_0 ),
        .I1(\FSM_sequential_current_state[2]_i_3_n_0 ),
        .O(\FSM_sequential_current_state_reg[2]_i_1_n_0 ),
        .S(out[3]));
  (* FSM_ENCODED_STATES = "IDLE:00000,WAIT_START:00001,START:00011,ADDRW_LD:00100,ADDRW_TX:00101,ADDRW_WAIT_ACK:00110,ADDRW_CHECK_ACK:00111,STOP:10110,LOAD_STOP:10101,TX_LD:01000,ADDRR_LD:01100,ADDRR_TX:01101,ADDRR_WAIT_ACK:01110,ADDRR_CHECK_ACK:01111,TX:01001,TX_WAIT_ACK:01010,TX_CHECK_ACK:01011,RX_START:10000,RX:10001,RX_SENDACK:10011,RX_PREP_ACK:10010,RX_SENDNACK:10100,LOAD_START:00010" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\FSM_sequential_current_state[3]_i_1_n_0 ),
        .Q(current_state));
  (* FSM_ENCODED_STATES = "IDLE:00000,WAIT_START:00001,START:00011,ADDRW_LD:00100,ADDRW_TX:00101,ADDRW_WAIT_ACK:00110,ADDRW_CHECK_ACK:00111,STOP:10110,LOAD_STOP:10101,TX_LD:01000,ADDRR_LD:01100,ADDRR_TX:01101,ADDRR_WAIT_ACK:01110,ADDRR_CHECK_ACK:01111,TX:01001,TX_WAIT_ACK:01010,TX_CHECK_ACK:01011,RX_START:10000,RX:10001,RX_SENDACK:10011,RX_PREP_ACK:10010,RX_SENDNACK:10100,LOAD_START:00010" *) 
  (* KEEP = "yes" *) 
  FDCE \FSM_sequential_current_state_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(S_AXI_ARESETN),
        .D(\FSM_sequential_current_state[4]_i_1_n_0 ),
        .Q(out[3]));
  LUT6 #(
    .INIT(64'hFFEFCFDFFFFFFFFF)) 
    \counter[0]_i_1 
       (.I0(current_state),
        .I1(out[1]),
        .I2(out[0]),
        .I3(out[2]),
        .I4(out[3]),
        .I5(\counter_reg[0] ),
        .O(D));
  LUT5 #(
    .INIT(32'hFFAFFF9F)) 
    \counter[3]_i_2 
       (.I0(out[3]),
        .I1(out[2]),
        .I2(out[0]),
        .I3(out[1]),
        .I4(current_state),
        .O(load_counter));
  LUT5 #(
    .INIT(32'h00000001)) 
    done_sb_i_1
       (.I0(out[2]),
        .I1(out[1]),
        .I2(out[0]),
        .I3(current_state),
        .I4(out[3]),
        .O(done_s));
  LUT6 #(
    .INIT(64'hAAAAAAAABAAAAAAA)) 
    \number[3]_i_1 
       (.I0(tx_bytecnt_clear),
        .I1(out[3]),
        .I2(current_state),
        .I3(\number[3]_i_4__0_n_0 ),
        .I4(out[1]),
        .I5(out[2]),
        .O(\number_reg[3]_0 ));
  LUT6 #(
    .INIT(64'h000000002222222E)) 
    \number[3]_i_3 
       (.I0(\number[3]_i_5_n_0 ),
        .I1(out[2]),
        .I2(current_state),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[3]),
        .O(tx_bytecnt_clear));
  LUT6 #(
    .INIT(64'h00000000222222E2)) 
    \number[3]_i_3__0 
       (.I0(\number[3]_i_5_n_0 ),
        .I1(out[2]),
        .I2(current_state),
        .I3(out[0]),
        .I4(out[1]),
        .I5(out[3]),
        .O(rx_bytecnt_clear));
  LUT5 #(
    .INIT(32'h00100000)) 
    \number[3]_i_4 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state),
        .I4(out[3]),
        .O(\number_reg[3] ));
  LUT2 #(
    .INIT(4'h2)) 
    \number[3]_i_4__0 
       (.I0(out[0]),
        .I1(sdas_dec_reg),
        .O(\number[3]_i_4__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000054)) 
    \number[3]_i_5 
       (.I0(out[1]),
        .I1(rx_start),
        .I2(tx_start),
        .I3(out[0]),
        .I4(current_state),
        .O(\number[3]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'hAABFFFBFAAAAAAAA)) 
    rx_start_i_1
       (.I0(rx_start_s),
        .I1(out[2]),
        .I2(rx_start_i_2_n_0),
        .I3(out[3]),
        .I4(rx_start_i_3_n_0),
        .I5(rx_start),
        .O(rx_start_reg));
  LUT3 #(
    .INIT(8'h10)) 
    rx_start_i_2
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state),
        .O(rx_start_i_2_n_0));
  LUT4 #(
    .INIT(16'h0400)) 
    rx_start_i_3
       (.I0(current_state),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .O(rx_start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \shift_reg[0]_i_1 
       (.I0(\shift_reg[22]_i_3_n_0 ),
        .I1(\shift_reg_reg[9] ),
        .I2(Q[0]),
        .O(\shift_reg_reg[24] [0]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[10]_i_1 
       (.I0(load_data),
        .I1(data[0]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[8]),
        .O(\shift_reg_reg[24] [10]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFCFEFF)) 
    \shift_reg[10]_i_2 
       (.I0(tx_byte[0]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state),
        .I4(out[2]),
        .I5(out[3]),
        .O(data[0]));
  LUT5 #(
    .INIT(32'hDDD0DDDD)) 
    \shift_reg[11]_i_1 
       (.I0(load_data),
        .I1(data[1]),
        .I2(Q[9]),
        .I3(\shift_reg_reg[9] ),
        .I4(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg_reg[24] [11]));
  LUT5 #(
    .INIT(32'h00000002)) 
    \shift_reg[11]_i_1__0 
       (.I0(out[3]),
        .I1(out[1]),
        .I2(current_state),
        .I3(out[2]),
        .I4(clkdiv1000_reg),
        .O(E));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[12]_i_1 
       (.I0(load_data),
        .I1(data[1]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[10]),
        .O(\shift_reg_reg[24] [12]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[12]_i_2 
       (.I0(tx_byte[1]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [0]),
        .I5(out[3]),
        .O(data[1]));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \shift_reg[13]_i_1 
       (.I0(Q[11]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(data[2]),
        .I4(load_data),
        .O(\shift_reg_reg[24] [13]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[14]_i_1 
       (.I0(load_data),
        .I1(data[2]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[12]),
        .O(\shift_reg_reg[24] [14]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[14]_i_2 
       (.I0(tx_byte[2]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [1]),
        .I5(out[3]),
        .O(data[2]));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \shift_reg[15]_i_1 
       (.I0(Q[13]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(data[3]),
        .I4(load_data),
        .O(\shift_reg_reg[24] [15]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[16]_i_1 
       (.I0(load_data),
        .I1(data[3]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[14]),
        .O(\shift_reg_reg[24] [16]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[16]_i_2 
       (.I0(tx_byte[3]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [2]),
        .I5(out[3]),
        .O(data[3]));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \shift_reg[17]_i_1 
       (.I0(Q[15]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(data[4]),
        .I4(load_data),
        .O(\shift_reg_reg[24] [17]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[18]_i_1 
       (.I0(load_data),
        .I1(data[4]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[16]),
        .O(\shift_reg_reg[24] [18]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[18]_i_2 
       (.I0(tx_byte[4]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [3]),
        .I5(out[3]),
        .O(data[4]));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \shift_reg[19]_i_1 
       (.I0(Q[17]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(data[5]),
        .I4(load_data),
        .O(\shift_reg_reg[24] [19]));
  LUT6 #(
    .INIT(64'h000000007DD7D77D)) 
    \shift_reg[1]_i_1 
       (.I0(load_data),
        .I1(data[0]),
        .I2(data[3]),
        .I3(data[6]),
        .I4(data[4]),
        .I5(\shift_reg_reg[24] [0]),
        .O(\shift_reg_reg[24] [1]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[20]_i_1 
       (.I0(load_data),
        .I1(data[5]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[18]),
        .O(\shift_reg_reg[24] [20]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[20]_i_2 
       (.I0(tx_byte[5]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [4]),
        .I5(out[3]),
        .O(data[5]));
  LUT5 #(
    .INIT(32'hDDD0DDDD)) 
    \shift_reg[21]_i_1 
       (.I0(load_data),
        .I1(data[6]),
        .I2(Q[19]),
        .I3(\shift_reg_reg[9] ),
        .I4(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg_reg[24] [21]));
  LUT5 #(
    .INIT(32'h22F22222)) 
    \shift_reg[22]_i_1 
       (.I0(load_data),
        .I1(data[6]),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(\shift_reg_reg[9] ),
        .I4(Q[20]),
        .O(\shift_reg_reg[24] [22]));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[22]_i_2 
       (.I0(tx_byte[6]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [5]),
        .I5(out[3]),
        .O(data[6]));
  LUT5 #(
    .INIT(32'hFFF7FCED)) 
    \shift_reg[22]_i_3 
       (.I0(out[2]),
        .I1(out[0]),
        .I2(out[1]),
        .I3(current_state),
        .I4(out[3]),
        .O(\shift_reg[22]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000200)) 
    \shift_reg[22]_i_4 
       (.I0(out[3]),
        .I1(current_state),
        .I2(out[0]),
        .I3(out[1]),
        .I4(out[2]),
        .O(\shift_reg_reg[9] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFEAE)) 
    \shift_reg[23]_i_1 
       (.I0(\shift_reg[23]_i_2_n_0 ),
        .I1(\shift_reg[24]_i_3_n_0 ),
        .I2(load_data),
        .I3(data[7]),
        .O(\shift_reg_reg[24] [23]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h00A8)) 
    \shift_reg[23]_i_2 
       (.I0(\shift_reg[22]_i_3_n_0 ),
        .I1(\shift_reg[24]_i_7_n_0 ),
        .I2(Q[21]),
        .I3(load_ack),
        .O(\shift_reg[23]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hAEFE)) 
    \shift_reg[24]_i_1 
       (.I0(\shift_reg[24]_i_2_n_0 ),
        .I1(\shift_reg[24]_i_3_n_0 ),
        .I2(load_data),
        .I3(data[7]),
        .O(\shift_reg_reg[24] [24]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8A88)) 
    \shift_reg[24]_i_2 
       (.I0(\shift_reg[22]_i_3_n_0 ),
        .I1(load_ack),
        .I2(\shift_reg[24]_i_7_n_0 ),
        .I3(Q[22]),
        .O(\shift_reg[24]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'h02000000)) 
    \shift_reg[24]_i_3 
       (.I0(out[3]),
        .I1(current_state),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .O(\shift_reg[24]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h00000302)) 
    \shift_reg[24]_i_4 
       (.I0(current_state),
        .I1(out[0]),
        .I2(out[1]),
        .I3(out[2]),
        .I4(out[3]),
        .O(load_data));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFEFCCEF)) 
    \shift_reg[24]_i_5 
       (.I0(tx_byte[7]),
        .I1(\shift_reg[24]_i_9_n_0 ),
        .I2(current_state),
        .I3(out[2]),
        .I4(\slave_addr_s_reg[6] [6]),
        .I5(out[3]),
        .O(data[7]));
  LUT6 #(
    .INIT(64'h0000004000000000)) 
    \shift_reg[24]_i_6 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(atlimit_reg),
        .I3(out[0]),
        .I4(current_state),
        .I5(out[3]),
        .O(load_ack));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \shift_reg[24]_i_7 
       (.I0(out[3]),
        .I1(current_state),
        .I2(out[1]),
        .I3(out[0]),
        .I4(out[2]),
        .I5(atlimit_reg),
        .O(\shift_reg[24]_i_7_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \shift_reg[24]_i_9 
       (.I0(out[1]),
        .I1(out[0]),
        .O(\shift_reg[24]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h82282882FFFFFFFF)) 
    \shift_reg[2]_i_1 
       (.I0(load_data),
        .I1(data[0]),
        .I2(data[3]),
        .I3(data[6]),
        .I4(data[4]),
        .I5(\shift_reg[2]_i_2_n_0 ),
        .O(\shift_reg_reg[24] [2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \shift_reg[2]_i_2 
       (.I0(Q[1]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hBBB888B8BBBBBBBB)) 
    \shift_reg[3]_i_1 
       (.I0(\shift_reg_reg[2] ),
        .I1(\shift_reg[22]_i_3_n_0 ),
        .I2(\FSM_sequential_current_state_reg[4]_2 ),
        .I3(data[5]),
        .I4(\FSM_sequential_current_state_reg[4]_3 ),
        .I5(load_data),
        .O(\shift_reg_reg[24] [3]));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \shift_reg[3]_i_5 
       (.I0(\shift_reg[3]_i_6_n_0 ),
        .I1(out[2]),
        .I2(\shift_reg[6]_i_10_n_0 ),
        .I3(\number_reg[2]_3 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_4 ),
        .O(\shift_reg_reg[3]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shift_reg[3]_i_6 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\slave_addr_s_reg[6] [0]),
        .O(\shift_reg[3]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h02088A2AFFFFFFFF)) 
    \shift_reg[4]_i_1 
       (.I0(load_data),
        .I1(data[5]),
        .I2(\FSM_sequential_current_state_reg[4]_4 ),
        .I3(data[1]),
        .I4(\FSM_sequential_current_state_reg[4]_5 ),
        .I5(\shift_reg[4]_i_4_n_0 ),
        .O(\shift_reg_reg[24] [4]));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \shift_reg[4]_i_4 
       (.I0(Q[2]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg[4]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFDFDFDF9F9F9FDF9)) 
    \shift_reg[4]_i_5 
       (.I0(out[2]),
        .I1(current_state),
        .I2(\shift_reg[24]_i_9_n_0 ),
        .I3(\number_reg[2]_1 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_2 ),
        .O(\shift_reg_reg[3] ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \shift_reg[4]_i_6 
       (.I0(\shift_reg[4]_i_8_n_0 ),
        .I1(out[2]),
        .I2(\shift_reg[6]_i_10_n_0 ),
        .I3(\number_reg[2]_5 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_6 ),
        .O(\shift_reg_reg[3]_1 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \shift_reg[4]_i_7 
       (.I0(\shift_reg_reg[5]_1 ),
        .I1(out[2]),
        .I2(\shift_reg[6]_i_10_n_0 ),
        .I3(\number_reg[2]_9 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_10 ),
        .O(\shift_reg_reg[3]_2 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shift_reg[4]_i_8 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\slave_addr_s_reg[6] [2]),
        .O(\shift_reg[4]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FDF775D5)) 
    \shift_reg[5]_i_1 
       (.I0(load_data),
        .I1(data[2]),
        .I2(\FSM_sequential_current_state_reg[4]_0 ),
        .I3(data[1]),
        .I4(\FSM_sequential_current_state_reg[4]_1 ),
        .I5(\shift_reg[5]_i_2_n_0 ),
        .O(\shift_reg_reg[24] [5]));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT3 #(
    .INIT(8'h02)) 
    \shift_reg[5]_i_2 
       (.I0(\shift_reg[22]_i_3_n_0 ),
        .I1(\shift_reg_reg[9] ),
        .I2(Q[3]),
        .O(\shift_reg[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h02088A2AFFFFFFFF)) 
    \shift_reg[6]_i_1 
       (.I0(load_data),
        .I1(data[2]),
        .I2(\FSM_sequential_current_state_reg[4]_0 ),
        .I3(data[1]),
        .I4(\FSM_sequential_current_state_reg[4]_1 ),
        .I5(\shift_reg[6]_i_4_n_0 ),
        .O(\shift_reg_reg[24] [6]));
  LUT3 #(
    .INIT(8'hEF)) 
    \shift_reg[6]_i_10 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(current_state),
        .O(\shift_reg[6]_i_10_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shift_reg[6]_i_11 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\slave_addr_s_reg[6] [3]),
        .O(\shift_reg[6]_i_11_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \shift_reg[6]_i_4 
       (.I0(Q[4]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg[6]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \shift_reg[6]_i_5 
       (.I0(\shift_reg[6]_i_9_n_0 ),
        .I1(out[2]),
        .I2(\shift_reg[6]_i_10_n_0 ),
        .I3(\number_reg[2] ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_0 ),
        .O(\shift_reg_reg[5] ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shift_reg[6]_i_6 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\slave_addr_s_reg[6] [5]),
        .O(\shift_reg_reg[5]_1 ));
  LUT6 #(
    .INIT(64'hFFFFFFFDFDFDFFFD)) 
    \shift_reg[6]_i_7 
       (.I0(current_state),
        .I1(out[1]),
        .I2(out[0]),
        .I3(\number_reg[2]_9 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_10 ),
        .O(\shift_reg_reg[5]_2 ));
  LUT6 #(
    .INIT(64'hBBBBBBB8B8B8BBB8)) 
    \shift_reg[6]_i_8 
       (.I0(\shift_reg[6]_i_11_n_0 ),
        .I1(out[2]),
        .I2(\shift_reg[6]_i_10_n_0 ),
        .I3(\number_reg[2]_7 ),
        .I4(\number_reg[3]_1 ),
        .I5(\number_reg[2]_8 ),
        .O(\shift_reg_reg[5]_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \shift_reg[6]_i_9 
       (.I0(out[0]),
        .I1(out[1]),
        .I2(\slave_addr_s_reg[6] [6]),
        .O(\shift_reg[6]_i_9_n_0 ));
  LUT6 #(
    .INIT(64'h000000007DD7D77D)) 
    \shift_reg[7]_i_1 
       (.I0(load_data),
        .I1(data[5]),
        .I2(data[2]),
        .I3(data[3]),
        .I4(data[7]),
        .I5(\shift_reg[7]_i_2_n_0 ),
        .O(\shift_reg_reg[24] [7]));
  LUT3 #(
    .INIT(8'h02)) 
    \shift_reg[7]_i_2 
       (.I0(\shift_reg[22]_i_3_n_0 ),
        .I1(\shift_reg_reg[9] ),
        .I2(Q[5]),
        .O(\shift_reg[7]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h82282882FFFFFFFF)) 
    \shift_reg[8]_i_1 
       (.I0(load_data),
        .I1(data[5]),
        .I2(data[2]),
        .I3(data[3]),
        .I4(data[7]),
        .I5(\shift_reg[8]_i_2_n_0 ),
        .O(\shift_reg_reg[24] [8]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    \shift_reg[8]_i_2 
       (.I0(Q[6]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .O(\shift_reg[8]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hEFE0EFEF)) 
    \shift_reg[9]_i_1 
       (.I0(Q[7]),
        .I1(\shift_reg_reg[9] ),
        .I2(\shift_reg[22]_i_3_n_0 ),
        .I3(data[0]),
        .I4(load_data),
        .O(\shift_reg_reg[24] [9]));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \syndrom[0]_i_1 
       (.I0(\syndrom_reg[2] [1]),
        .I1(sdas_dec_reg),
        .I2(out[3]),
        .I3(current_state),
        .I4(out[1]),
        .I5(out[2]),
        .O(\syndrom_reg[3] [0]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \syndrom[1]_i_1 
       (.I0(\syndrom_reg[2] [2]),
        .I1(out[3]),
        .I2(current_state),
        .I3(out[1]),
        .I4(out[2]),
        .O(\syndrom_reg[3] [1]));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \syndrom[2]_i_2 
       (.I0(out[2]),
        .I1(out[1]),
        .I2(current_state),
        .I3(out[3]),
        .O(clear_syndrom));
  LUT6 #(
    .INIT(64'h0000000000000060)) 
    \syndrom[3]_i_1 
       (.I0(sdas_dec_reg),
        .I1(\syndrom_reg[2] [0]),
        .I2(out[3]),
        .I3(current_state),
        .I4(out[1]),
        .I5(out[2]),
        .O(\syndrom_reg[3] [2]));
  LUT6 #(
    .INIT(64'hAABFFFBFAAAAAAAA)) 
    tx_start_i_1
       (.I0(tx_start_s),
        .I1(out[2]),
        .I2(tx_start_i_2_n_0),
        .I3(out[3]),
        .I4(rx_start_i_3_n_0),
        .I5(tx_start),
        .O(tx_start_reg));
  LUT3 #(
    .INIT(8'h01)) 
    tx_start_i_2
       (.I0(out[1]),
        .I1(out[0]),
        .I2(current_state),
        .O(tx_start_i_2_n_0));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_manchester_dec
   (D,
    clkdiv1000_reg,
    CLK,
    S_AXI_ARESETN);
  output [0:0]D;
  input clkdiv1000_reg;
  input CLK;
  input S_AXI_ARESETN;

  wire CLK;
  wire [0:0]D;
  wire S_AXI_ARESETN;
  wire clkdiv1000_reg;

  FDPE #(
    .IS_C_INVERTED(1'b1)) 
    sdas_dec_reg
       (.C(CLK),
        .CE(1'b1),
        .D(clkdiv1000_reg),
        .PRE(S_AXI_ARESETN),
        .Q(D));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_shift_reg
   (Q,
    \FSM_sequential_current_state_reg[2] ,
    \FSM_sequential_current_state_reg[0] ,
    \number_reg[3] ,
    \rx_byte0_sb_reg[12] ,
    D,
    clear_syndrom,
    rx_allbytes,
    out,
    E,
    rx_bytecnt_clear,
    \FSM_sequential_current_state_reg[2]_0 ,
    clkdiv1000_reg,
    sdas_dec_reg,
    CLK,
    S_AXI_ARESETN,
    \FSM_sequential_current_state_reg[4] ,
    S_AXI_ARESETN_0,
    S_AXI_ARESETN_1,
    S_AXI_ARESETN_2,
    S_AXI_ARESETN_3);
  output [2:0]Q;
  output \FSM_sequential_current_state_reg[2] ;
  output \FSM_sequential_current_state_reg[0] ;
  output [0:0]\number_reg[3] ;
  output [12:0]\rx_byte0_sb_reg[12] ;
  input [0:0]D;
  input clear_syndrom;
  input rx_allbytes;
  input [0:0]out;
  input [0:0]E;
  input rx_bytecnt_clear;
  input \FSM_sequential_current_state_reg[2]_0 ;
  input [0:0]clkdiv1000_reg;
  input [2:0]sdas_dec_reg;
  input CLK;
  input S_AXI_ARESETN;
  input [0:0]\FSM_sequential_current_state_reg[4] ;
  input S_AXI_ARESETN_0;
  input S_AXI_ARESETN_1;
  input S_AXI_ARESETN_2;
  input S_AXI_ARESETN_3;

  wire CLK;
  wire [0:0]D;
  wire [0:0]E;
  wire \FSM_sequential_current_state_reg[0] ;
  wire \FSM_sequential_current_state_reg[2] ;
  wire \FSM_sequential_current_state_reg[2]_0 ;
  wire [0:0]\FSM_sequential_current_state_reg[4] ;
  wire [2:0]Q;
  wire S_AXI_ARESETN;
  wire S_AXI_ARESETN_0;
  wire S_AXI_ARESETN_1;
  wire S_AXI_ARESETN_2;
  wire S_AXI_ARESETN_3;
  wire clear_syndrom;
  wire [0:0]clkdiv1000_reg;
  wire [0:0]\number_reg[3] ;
  wire [0:0]out;
  wire rx_allbytes;
  wire [12:0]\rx_byte0_sb_reg[12] ;
  wire rx_bytecnt_clear;
  wire [2:0]sdas_dec_reg;
  wire \syndrom[2]_i_1_n_0 ;
  wire \syndrom_reg_n_0_[3] ;

  LUT3 #(
    .INIT(8'h2E)) 
    \FSM_sequential_current_state[1]_i_8 
       (.I0(\FSM_sequential_current_state_reg[2] ),
        .I1(out),
        .I2(E),
        .O(\FSM_sequential_current_state_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \FSM_sequential_current_state[2]_i_5 
       (.I0(rx_allbytes),
        .I1(\syndrom_reg_n_0_[3] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(Q[1]),
        .O(\FSM_sequential_current_state_reg[2] ));
  LUT6 #(
    .INIT(64'hAAAAAAABAAAAAAAA)) 
    \number[3]_i_1__0 
       (.I0(rx_bytecnt_clear),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(\syndrom_reg_n_0_[3] ),
        .I5(\FSM_sequential_current_state_reg[2]_0 ),
        .O(\number_reg[3] ));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \rx_byte0_sb[12]_i_2 
       (.I0(\syndrom_reg_n_0_[3] ),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(\rx_byte0_sb_reg[12] [12]));
  FDCE \shift_reg_reg[0] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_3),
        .D(D),
        .Q(\rx_byte0_sb_reg[12] [0]));
  FDCE \shift_reg_reg[10] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\rx_byte0_sb_reg[12] [9]),
        .Q(\rx_byte0_sb_reg[12] [10]));
  FDCE \shift_reg_reg[11] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\rx_byte0_sb_reg[12] [10]),
        .Q(\rx_byte0_sb_reg[12] [11]));
  FDCE \shift_reg_reg[1] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_3),
        .D(\rx_byte0_sb_reg[12] [0]),
        .Q(\rx_byte0_sb_reg[12] [1]));
  FDCE \shift_reg_reg[2] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_2),
        .D(\rx_byte0_sb_reg[12] [1]),
        .Q(\rx_byte0_sb_reg[12] [2]));
  FDCE \shift_reg_reg[3] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_2),
        .D(\rx_byte0_sb_reg[12] [2]),
        .Q(\rx_byte0_sb_reg[12] [3]));
  FDCE \shift_reg_reg[4] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_1),
        .D(\rx_byte0_sb_reg[12] [3]),
        .Q(\rx_byte0_sb_reg[12] [4]));
  FDCE \shift_reg_reg[5] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_1),
        .D(\rx_byte0_sb_reg[12] [4]),
        .Q(\rx_byte0_sb_reg[12] [5]));
  FDCE \shift_reg_reg[6] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_1),
        .D(\rx_byte0_sb_reg[12] [5]),
        .Q(\rx_byte0_sb_reg[12] [6]));
  FDCE \shift_reg_reg[7] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_1),
        .D(\rx_byte0_sb_reg[12] [6]),
        .Q(\rx_byte0_sb_reg[12] [7]));
  FDCE \shift_reg_reg[8] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\rx_byte0_sb_reg[12] [7]),
        .Q(\rx_byte0_sb_reg[12] [8]));
  FDCE \shift_reg_reg[9] 
       (.C(CLK),
        .CE(\FSM_sequential_current_state_reg[4] ),
        .CLR(S_AXI_ARESETN_0),
        .D(\rx_byte0_sb_reg[12] [8]),
        .Q(\rx_byte0_sb_reg[12] [9]));
  LUT4 #(
    .INIT(16'h0096)) 
    \syndrom[2]_i_1 
       (.I0(D),
        .I1(\syndrom_reg_n_0_[3] ),
        .I2(Q[0]),
        .I3(clear_syndrom),
        .O(\syndrom[2]_i_1_n_0 ));
  FDCE \syndrom_reg[0] 
       (.C(CLK),
        .CE(clkdiv1000_reg),
        .CLR(S_AXI_ARESETN),
        .D(sdas_dec_reg[0]),
        .Q(Q[0]));
  FDCE \syndrom_reg[1] 
       (.C(CLK),
        .CE(clkdiv1000_reg),
        .CLR(S_AXI_ARESETN),
        .D(sdas_dec_reg[1]),
        .Q(Q[1]));
  FDCE \syndrom_reg[2] 
       (.C(CLK),
        .CE(clkdiv1000_reg),
        .CLR(S_AXI_ARESETN),
        .D(\syndrom[2]_i_1_n_0 ),
        .Q(Q[2]));
  FDCE \syndrom_reg[3] 
       (.C(CLK),
        .CE(clkdiv1000_reg),
        .CLR(S_AXI_ARESETN),
        .D(sdas_dec_reg[2]),
        .Q(\syndrom_reg_n_0_[3] ));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scb_testmaster
   (scl,
    sdas_dec,
    S_AXI_WREADY,
    S_AXI_AWREADY,
    Q,
    S_AXI_RDATA,
    CLK,
    sdam,
    S_AXI_BVALID,
    S_AXI_RVALID,
    S_AXI_WVALID,
    S_AXI_AWVALID,
    S_AXI_ARVALID,
    sdas,
    S_AXI_ACLK,
    S_AXI_ARESETN,
    S_AXI_AWADDR,
    S_AXI_WDATA,
    S_AXI_ARADDR,
    S_AXI_BREADY,
    S_AXI_RREADY);
  output scl;
  output sdas_dec;
  output S_AXI_WREADY;
  output S_AXI_AWREADY;
  output Q;
  output [19:0]S_AXI_RDATA;
  output CLK;
  output sdam;
  output S_AXI_BVALID;
  output S_AXI_RVALID;
  input S_AXI_WVALID;
  input S_AXI_AWVALID;
  input S_AXI_ARVALID;
  input sdas;
  input S_AXI_ACLK;
  input S_AXI_ARESETN;
  input [7:0]S_AXI_AWADDR;
  input [19:0]S_AXI_WDATA;
  input [7:0]S_AXI_ARADDR;
  input S_AXI_BREADY;
  input S_AXI_RREADY;

  wire CLK;
  wire Q;
  wire S_AXI_ACLK;
  wire [7:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARVALID;
  wire [7:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [19:0]S_AXI_RDATA;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [19:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire axi_control_unit_inst_n_154;
  wire axi_control_unit_inst_n_155;
  wire axi_control_unit_inst_n_156;
  wire axi_control_unit_inst_n_157;
  wire axi_control_unit_inst_n_158;
  wire bit_counter_inst_n_1;
  wire bit_counter_inst_n_2;
  wire clear_syndrom;
  wire clock_divider_inst_n_3;
  wire clock_domain_crossing_inst_n_0;
  wire clock_domain_crossing_inst_n_10;
  wire clock_domain_crossing_inst_n_11;
  wire clock_domain_crossing_inst_n_12;
  wire clock_domain_crossing_inst_n_13;
  wire clock_domain_crossing_inst_n_14;
  wire clock_domain_crossing_inst_n_15;
  wire clock_domain_crossing_inst_n_16;
  wire clock_domain_crossing_inst_n_17;
  wire clock_domain_crossing_inst_n_18;
  wire clock_domain_crossing_inst_n_19;
  wire clock_domain_crossing_inst_n_2;
  wire clock_domain_crossing_inst_n_20;
  wire clock_domain_crossing_inst_n_21;
  wire clock_domain_crossing_inst_n_22;
  wire clock_domain_crossing_inst_n_23;
  wire clock_domain_crossing_inst_n_24;
  wire clock_domain_crossing_inst_n_25;
  wire clock_domain_crossing_inst_n_26;
  wire clock_domain_crossing_inst_n_27;
  wire clock_domain_crossing_inst_n_28;
  wire clock_domain_crossing_inst_n_29;
  wire clock_domain_crossing_inst_n_30;
  wire clock_domain_crossing_inst_n_31;
  wire clock_domain_crossing_inst_n_32;
  wire clock_domain_crossing_inst_n_33;
  wire clock_domain_crossing_inst_n_34;
  wire clock_domain_crossing_inst_n_35;
  wire clock_domain_crossing_inst_n_36;
  wire clock_domain_crossing_inst_n_4;
  wire clock_domain_crossing_inst_n_45;
  wire clock_domain_crossing_inst_n_46;
  wire clock_domain_crossing_inst_n_47;
  wire clock_domain_crossing_inst_n_48;
  wire clock_domain_crossing_inst_n_49;
  wire clock_domain_crossing_inst_n_50;
  wire clock_domain_crossing_inst_n_51;
  wire clock_domain_crossing_inst_n_52;
  wire clock_domain_crossing_inst_n_53;
  wire clock_domain_crossing_inst_n_54;
  wire clock_domain_crossing_inst_n_55;
  wire clock_domain_crossing_inst_n_56;
  wire clock_domain_crossing_inst_n_6;
  wire clock_domain_crossing_inst_n_7;
  wire clock_domain_crossing_inst_n_8;
  wire clock_domain_crossing_inst_n_9;
  wire [0:0]counter_reg;
  wire done_f;
  wire done_s;
  wire hc_generator_inst_n_0;
  wire hc_generator_inst_n_1;
  wire hc_generator_inst_n_2;
  wire hc_generator_inst_n_3;
  wire hc_generator_inst_n_4;
  wire hc_generator_inst_n_5;
  wire load_counter;
  wire master_fsm_inst_n_0;
  wire master_fsm_inst_n_1;
  wire master_fsm_inst_n_10;
  wire master_fsm_inst_n_11;
  wire master_fsm_inst_n_12;
  wire master_fsm_inst_n_13;
  wire master_fsm_inst_n_14;
  wire master_fsm_inst_n_15;
  wire master_fsm_inst_n_16;
  wire master_fsm_inst_n_17;
  wire master_fsm_inst_n_2;
  wire master_fsm_inst_n_21;
  wire master_fsm_inst_n_24;
  wire master_fsm_inst_n_25;
  wire master_fsm_inst_n_26;
  wire master_fsm_inst_n_27;
  wire master_fsm_inst_n_28;
  wire master_fsm_inst_n_29;
  wire master_fsm_inst_n_3;
  wire master_fsm_inst_n_30;
  wire master_fsm_inst_n_31;
  wire master_fsm_inst_n_32;
  wire master_fsm_inst_n_33;
  wire master_fsm_inst_n_34;
  wire master_fsm_inst_n_35;
  wire master_fsm_inst_n_36;
  wire master_fsm_inst_n_37;
  wire master_fsm_inst_n_38;
  wire master_fsm_inst_n_39;
  wire master_fsm_inst_n_4;
  wire master_fsm_inst_n_40;
  wire master_fsm_inst_n_41;
  wire master_fsm_inst_n_42;
  wire master_fsm_inst_n_43;
  wire master_fsm_inst_n_44;
  wire master_fsm_inst_n_45;
  wire master_fsm_inst_n_46;
  wire master_fsm_inst_n_47;
  wire master_fsm_inst_n_48;
  wire master_fsm_inst_n_49;
  wire master_fsm_inst_n_5;
  wire master_fsm_inst_n_50;
  wire master_fsm_inst_n_51;
  wire master_fsm_inst_n_6;
  wire master_fsm_inst_n_7;
  wire master_fsm_inst_n_8;
  wire master_fsm_inst_n_9;
  wire [3:3]nb_p1;
  wire [3:3]nb_p1_0;
  wire p_0_in;
  wire [11:1]p_0_in_0;
  wire p_1_in;
  wire p_2_in;
  wire rx_allbytes;
  wire [12:0]rx_byte0_f;
  wire [12:0]rx_byte14_f;
  wire [12:0]rx_byte15_f;
  wire [12:0]rx_byte1_f;
  wire rx_byte_counter_inst_n_10;
  wire rx_byte_counter_inst_n_11;
  wire rx_byte_counter_inst_n_12;
  wire rx_byte_counter_inst_n_13;
  wire rx_byte_counter_inst_n_14;
  wire rx_byte_counter_inst_n_15;
  wire rx_byte_counter_inst_n_16;
  wire rx_byte_counter_inst_n_17;
  wire rx_byte_counter_inst_n_18;
  wire rx_byte_counter_inst_n_19;
  wire rx_byte_counter_inst_n_20;
  wire rx_byte_counter_inst_n_21;
  wire rx_byte_counter_inst_n_5;
  wire rx_byte_counter_inst_n_6;
  wire rx_byte_counter_inst_n_7;
  wire rx_byte_counter_inst_n_8;
  wire rx_bytecnt_clear;
  wire [3:0]rx_bytes_sent_f;
  wire [3:0]rx_bytes_sent_s;
  wire [3:0]rx_nb_bytes_f;
  wire rx_shift_reg_inst_n_2;
  wire rx_shift_reg_inst_n_3;
  wire rx_shift_reg_inst_n_4;
  wire rx_shift_reg_inst_n_5;
  wire rx_shift_reg_inst_n_7;
  wire rx_start;
  wire rx_start_f;
  wire rx_start_s;
  wire scl;
  wire sdam;
  wire sdas;
  wire sdas_dec;
  wire [3:0]sel0;
  wire [23:0]shift_reg;
  wire [6:0]slave_addr_f;
  wire [6:0]slave_addr_s;
  wire tx_allbytes;
  wire [7:0]tx_byte;
  wire [7:0]tx_byte0_f;
  wire [7:0]tx_byte10_f;
  wire [7:0]tx_byte11_f;
  wire [7:0]tx_byte12_f;
  wire [7:0]tx_byte13_f;
  wire [7:0]tx_byte14_f;
  wire [7:0]tx_byte15_f;
  wire [7:0]tx_byte1_f;
  wire [7:0]tx_byte2_f;
  wire [7:0]tx_byte3_f;
  wire [7:0]tx_byte4_f;
  wire [7:0]tx_byte5_f;
  wire [7:0]tx_byte6_f;
  wire [7:0]tx_byte7_f;
  wire [7:0]tx_byte8_f;
  wire [7:0]tx_byte9_f;
  wire tx_byte_counter_inst_n_5;
  wire tx_bytecnt_clear;
  wire [3:0]tx_bytes_sent_f;
  wire [3:0]tx_bytes_sent_s;
  wire [3:0]tx_nb_bytes_f;
  wire tx_shift_reg_inst_n_0;
  wire tx_shift_reg_inst_n_1;
  wire tx_start;
  wire tx_start_f;
  wire tx_start_s;
  wire valid_syndrom;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_axi_control_unit axi_control_unit_inst
       (.Q(sel0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_6),
        .S_AXI_ARESETN_0(clock_domain_crossing_inst_n_8),
        .S_AXI_ARESETN_1(clock_domain_crossing_inst_n_9),
        .S_AXI_ARESETN_2(clock_domain_crossing_inst_n_10),
        .S_AXI_ARESETN_3(clock_domain_crossing_inst_n_2),
        .S_AXI_ARESETN_4(clock_domain_crossing_inst_n_11),
        .S_AXI_ARESETN_5(clock_domain_crossing_inst_n_4),
        .S_AXI_ARREADY(Q),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(S_AXI_RDATA),
        .\S_AXI_RDATA_reg[10]_0 (axi_control_unit_inst_n_156),
        .\S_AXI_RDATA_reg[11]_0 (axi_control_unit_inst_n_157),
        .\S_AXI_RDATA_reg[12]_0 (axi_control_unit_inst_n_158),
        .\S_AXI_RDATA_reg[8]_0 (axi_control_unit_inst_n_154),
        .\S_AXI_RDATA_reg[9]_0 (axi_control_unit_inst_n_155),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .\axi_araddr_reg[4]_0 (clock_domain_crossing_inst_n_14),
        .\axi_araddr_reg[4]_1 (clock_domain_crossing_inst_n_16),
        .\axi_araddr_reg[4]_2 (clock_domain_crossing_inst_n_18),
        .\axi_araddr_reg[4]_3 (clock_domain_crossing_inst_n_20),
        .\axi_araddr_reg[4]_4 (clock_domain_crossing_inst_n_22),
        .\axi_araddr_reg[4]_5 (clock_domain_crossing_inst_n_24),
        .\axi_araddr_reg[4]_6 (clock_domain_crossing_inst_n_26),
        .\axi_araddr_reg[4]_7 (clock_domain_crossing_inst_n_28),
        .\axi_araddr_reg[5]_0 (clock_domain_crossing_inst_n_34),
        .\axi_araddr_reg[5]_1 (clock_domain_crossing_inst_n_33),
        .\axi_araddr_reg[5]_2 (clock_domain_crossing_inst_n_32),
        .\axi_araddr_reg[5]_3 (clock_domain_crossing_inst_n_31),
        .\axi_araddr_reg[5]_4 (clock_domain_crossing_inst_n_30),
        .done_f(done_f),
        .\rx_byte0_f_reg[12] (rx_byte0_f),
        .\rx_byte14_f_reg[12] (rx_byte14_f),
        .\rx_byte15_f_reg[12] (rx_byte15_f),
        .\rx_byte1_f_reg[12] (rx_byte1_f),
        .\rx_byte5_f_reg[0] (clock_domain_crossing_inst_n_15),
        .\rx_byte5_f_reg[1] (clock_domain_crossing_inst_n_17),
        .\rx_byte5_f_reg[2] (clock_domain_crossing_inst_n_19),
        .\rx_byte5_f_reg[3] (clock_domain_crossing_inst_n_21),
        .\rx_byte5_f_reg[4] (clock_domain_crossing_inst_n_23),
        .\rx_byte5_f_reg[5] (clock_domain_crossing_inst_n_25),
        .\rx_byte5_f_reg[6] (clock_domain_crossing_inst_n_27),
        .\rx_byte5_f_reg[7] (clock_domain_crossing_inst_n_29),
        .\rx_bytes_sent_f_reg[3] (rx_bytes_sent_f),
        .\rx_nb_bytes_fb_reg[3] ({rx_nb_bytes_f,tx_nb_bytes_f,slave_addr_f}),
        .rx_start_f(rx_start_f),
        .\tx_byte0_fb_reg[7] (tx_byte0_f),
        .\tx_byte10_fb_reg[7] (tx_byte10_f),
        .\tx_byte11_fb_reg[7] (tx_byte11_f),
        .\tx_byte12_fb_reg[7] (tx_byte12_f),
        .\tx_byte13_fb_reg[7] (tx_byte13_f),
        .\tx_byte14_fb_reg[7] (tx_byte14_f),
        .\tx_byte15_fb_reg[7] (tx_byte15_f),
        .\tx_byte1_fb_reg[7] (tx_byte1_f),
        .\tx_byte2_fb_reg[7] (tx_byte2_f),
        .\tx_byte3_fb_reg[7] (tx_byte3_f),
        .\tx_byte4_fb_reg[7] (tx_byte4_f),
        .\tx_byte5_fb_reg[7] (tx_byte5_f),
        .\tx_byte6_fb_reg[7] (tx_byte6_f),
        .\tx_byte7_fb_reg[7] (tx_byte7_f),
        .\tx_byte8_fb_reg[7] (tx_byte8_f),
        .\tx_byte9_fb_reg[7] (tx_byte9_f),
        .\tx_bytes_sent_f_reg[3] (tx_bytes_sent_f),
        .tx_start_f(tx_start_f));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_bit_counter bit_counter_inst
       (.CLK(CLK),
        .D(master_fsm_inst_n_6),
        .E(scl),
        .\FSM_sequential_current_state_reg[0] (bit_counter_inst_n_1),
        .\FSM_sequential_current_state_reg[1] (bit_counter_inst_n_2),
        .Q(counter_reg),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_4),
        .load_counter(load_counter),
        .out({master_fsm_inst_n_2,master_fsm_inst_n_3}));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_divider clock_divider_inst
       (.CLK(CLK),
        .E(scl),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_0),
        .S_AXI_ARESETN_0(tx_shift_reg_inst_n_0),
        .clkdiv1000_reg_0(p_0_in),
        .sdas(sdas),
        .sdas_dec_reg(clock_divider_inst_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_clock_domain_crossing clock_domain_crossing_inst
       (.CLK(CLK),
        .D({valid_syndrom,rx_shift_reg_inst_n_7,p_0_in_0}),
        .E(rx_byte_counter_inst_n_13),
        .Q(sel0),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARESETN_0(tx_shift_reg_inst_n_0),
        .\S_AXI_RDATA_reg[0] (clock_domain_crossing_inst_n_14),
        .\S_AXI_RDATA_reg[0]_0 (clock_domain_crossing_inst_n_15),
        .\S_AXI_RDATA_reg[10] (clock_domain_crossing_inst_n_32),
        .\S_AXI_RDATA_reg[11] (clock_domain_crossing_inst_n_33),
        .\S_AXI_RDATA_reg[11]_0 (rx_bytes_sent_f),
        .\S_AXI_RDATA_reg[12] (clock_domain_crossing_inst_n_34),
        .\S_AXI_RDATA_reg[12]_0 (rx_byte0_f),
        .\S_AXI_RDATA_reg[12]_1 (rx_byte1_f),
        .\S_AXI_RDATA_reg[12]_2 (rx_byte14_f),
        .\S_AXI_RDATA_reg[12]_3 (rx_byte15_f),
        .\S_AXI_RDATA_reg[1] (clock_domain_crossing_inst_n_16),
        .\S_AXI_RDATA_reg[1]_0 (clock_domain_crossing_inst_n_17),
        .\S_AXI_RDATA_reg[2] (clock_domain_crossing_inst_n_18),
        .\S_AXI_RDATA_reg[2]_0 (clock_domain_crossing_inst_n_19),
        .\S_AXI_RDATA_reg[3] (clock_domain_crossing_inst_n_20),
        .\S_AXI_RDATA_reg[3]_0 (clock_domain_crossing_inst_n_21),
        .\S_AXI_RDATA_reg[4] (clock_domain_crossing_inst_n_22),
        .\S_AXI_RDATA_reg[4]_0 (clock_domain_crossing_inst_n_23),
        .\S_AXI_RDATA_reg[5] (clock_domain_crossing_inst_n_24),
        .\S_AXI_RDATA_reg[5]_0 (clock_domain_crossing_inst_n_25),
        .\S_AXI_RDATA_reg[6] (clock_domain_crossing_inst_n_26),
        .\S_AXI_RDATA_reg[6]_0 (clock_domain_crossing_inst_n_27),
        .\S_AXI_RDATA_reg[7] (clock_domain_crossing_inst_n_28),
        .\S_AXI_RDATA_reg[7]_0 (clock_domain_crossing_inst_n_29),
        .\S_AXI_RDATA_reg[7]_1 (tx_bytes_sent_f),
        .\S_AXI_RDATA_reg[8] (clock_domain_crossing_inst_n_30),
        .\S_AXI_RDATA_reg[9] (clock_domain_crossing_inst_n_31),
        .atlimit_reg(clock_domain_crossing_inst_n_35),
        .atlimit_reg_0(clock_domain_crossing_inst_n_36),
        .\axi_araddr_reg[3] (axi_control_unit_inst_n_154),
        .\axi_araddr_reg[3]_0 (axi_control_unit_inst_n_155),
        .\axi_araddr_reg[3]_1 (axi_control_unit_inst_n_156),
        .\axi_araddr_reg[3]_2 (axi_control_unit_inst_n_157),
        .\axi_araddr_reg[3]_3 (axi_control_unit_inst_n_158),
        .\ctrl_reg_reg[16] ({rx_nb_bytes_f,tx_nb_bytes_f,slave_addr_f}),
        .done_f(done_f),
        .done_s(done_s),
        .nb_p1(nb_p1),
        .nb_p1_0(nb_p1_0),
        .\number_reg[0] (rx_byte_counter_inst_n_8),
        .\number_reg[0]_0 (rx_byte_counter_inst_n_7),
        .\number_reg[0]_1 (rx_byte_counter_inst_n_19),
        .\number_reg[0]_2 (rx_byte_counter_inst_n_20),
        .\number_reg[0]_3 (rx_byte_counter_inst_n_6),
        .\number_reg[0]_4 (rx_byte_counter_inst_n_12),
        .\number_reg[0]_5 (rx_byte_counter_inst_n_5),
        .\number_reg[1] (rx_byte_counter_inst_n_11),
        .\number_reg[2] (rx_byte_counter_inst_n_10),
        .\number_reg[2]_0 (rx_byte_counter_inst_n_21),
        .\number_reg[3] (tx_bytes_sent_s),
        .\number_reg[3]_0 (rx_bytes_sent_s),
        .\number_reg[3]_1 (rx_byte_counter_inst_n_14),
        .\number_reg[3]_2 (rx_byte_counter_inst_n_15),
        .\number_reg[3]_3 (rx_byte_counter_inst_n_16),
        .\number_reg[3]_4 (rx_byte_counter_inst_n_17),
        .\number_reg[3]_5 (rx_byte_counter_inst_n_18),
        .\rx_byte0_fb_reg[8]_0 (clock_domain_crossing_inst_n_6),
        .\rx_byte12_f_reg[2]_0 (clock_domain_crossing_inst_n_12),
        .\rx_byte12_sb_reg[5]_0 (clock_domain_crossing_inst_n_0),
        .\rx_byte6_f_reg[0]_0 (clock_domain_crossing_inst_n_7),
        .\rx_byte6_sb_reg[7]_0 (clock_domain_crossing_inst_n_13),
        .\rx_nb_bytes_fb_reg[3]_0 (clock_domain_crossing_inst_n_8),
        .rx_start_f(rx_start_f),
        .rx_start_s(rx_start_s),
        .\shift_reg_reg[10] (clock_domain_crossing_inst_n_45),
        .\shift_reg_reg[10]_0 (clock_domain_crossing_inst_n_46),
        .\shift_reg_reg[12] (clock_domain_crossing_inst_n_47),
        .\shift_reg_reg[12]_0 (clock_domain_crossing_inst_n_48),
        .\shift_reg_reg[16] (clock_domain_crossing_inst_n_49),
        .\shift_reg_reg[16]_0 (clock_domain_crossing_inst_n_50),
        .\shift_reg_reg[18] (clock_domain_crossing_inst_n_51),
        .\shift_reg_reg[18]_0 (clock_domain_crossing_inst_n_52),
        .\shift_reg_reg[22] (clock_domain_crossing_inst_n_53),
        .\shift_reg_reg[22]_0 (clock_domain_crossing_inst_n_54),
        .\shift_reg_reg[24] (clock_domain_crossing_inst_n_55),
        .\shift_reg_reg[24]_0 (clock_domain_crossing_inst_n_56),
        .\shift_reg_reg[24]_1 (slave_addr_s),
        .tx_byte(tx_byte),
        .\tx_byte2_sb_reg[1]_0 (clock_domain_crossing_inst_n_2),
        .\tx_byte5_fb_reg[3]_0 (clock_domain_crossing_inst_n_11),
        .\tx_byte7_fb_reg[5]_0 (clock_domain_crossing_inst_n_10),
        .\tx_byte8_s_reg[4]_0 (clock_domain_crossing_inst_n_4),
        .\tx_byte9_sb_reg[7]_0 (clock_domain_crossing_inst_n_9),
        .\tx_byte_reg_reg[0][7] (tx_byte0_f),
        .\tx_byte_reg_reg[10][7] (tx_byte10_f),
        .\tx_byte_reg_reg[11][7] (tx_byte11_f),
        .\tx_byte_reg_reg[12][7] (tx_byte12_f),
        .\tx_byte_reg_reg[13][7] (tx_byte13_f),
        .\tx_byte_reg_reg[14][7] (tx_byte14_f),
        .\tx_byte_reg_reg[15][7] (tx_byte15_f),
        .\tx_byte_reg_reg[1][7] (tx_byte1_f),
        .\tx_byte_reg_reg[2][7] (tx_byte2_f),
        .\tx_byte_reg_reg[3][7] (tx_byte3_f),
        .\tx_byte_reg_reg[4][7] (tx_byte4_f),
        .\tx_byte_reg_reg[5][7] (tx_byte5_f),
        .\tx_byte_reg_reg[6][7] (tx_byte6_f),
        .\tx_byte_reg_reg[7][7] (tx_byte7_f),
        .\tx_byte_reg_reg[8][7] (tx_byte8_f),
        .\tx_byte_reg_reg[9][7] (tx_byte9_f),
        .tx_start_f(tx_start_f),
        .tx_start_s(tx_start_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_hc_generator hc_generator_inst
       (.\FSM_sequential_current_state_reg[0] (master_fsm_inst_n_16),
        .\FSM_sequential_current_state_reg[2] (master_fsm_inst_n_10),
        .\FSM_sequential_current_state_reg[2]_0 (master_fsm_inst_n_14),
        .\FSM_sequential_current_state_reg[2]_1 (master_fsm_inst_n_12),
        .\FSM_sequential_current_state_reg[2]_2 (master_fsm_inst_n_11),
        .\FSM_sequential_current_state_reg[2]_3 (master_fsm_inst_n_13),
        .\FSM_sequential_current_state_reg[2]_4 (master_fsm_inst_n_15),
        .\FSM_sequential_current_state_reg[3] (master_fsm_inst_n_17),
        .out({master_fsm_inst_n_0,master_fsm_inst_n_1}),
        .\shift_reg_reg[3] (hc_generator_inst_n_2),
        .\shift_reg_reg[3]_0 (hc_generator_inst_n_3),
        .\shift_reg_reg[4] (hc_generator_inst_n_4),
        .\shift_reg_reg[4]_0 (hc_generator_inst_n_5),
        .\shift_reg_reg[5] (hc_generator_inst_n_0),
        .\shift_reg_reg[5]_0 (hc_generator_inst_n_1));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_fsm master_fsm_inst
       (.CLK(CLK),
        .D(master_fsm_inst_n_6),
        .E(master_fsm_inst_n_4),
        .\FSM_sequential_current_state_reg[0]_0 (bit_counter_inst_n_1),
        .\FSM_sequential_current_state_reg[0]_1 (rx_shift_reg_inst_n_4),
        .\FSM_sequential_current_state_reg[1]_0 (bit_counter_inst_n_2),
        .\FSM_sequential_current_state_reg[4]_0 (hc_generator_inst_n_0),
        .\FSM_sequential_current_state_reg[4]_1 (hc_generator_inst_n_1),
        .\FSM_sequential_current_state_reg[4]_2 (hc_generator_inst_n_2),
        .\FSM_sequential_current_state_reg[4]_3 (hc_generator_inst_n_3),
        .\FSM_sequential_current_state_reg[4]_4 (hc_generator_inst_n_4),
        .\FSM_sequential_current_state_reg[4]_5 (hc_generator_inst_n_5),
        .Q({shift_reg[23:3],shift_reg[1:0]}),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_4),
        .atlimit_reg(rx_shift_reg_inst_n_3),
        .atlimit_reg_0(tx_byte_counter_inst_n_5),
        .clear_syndrom(clear_syndrom),
        .clkdiv1000_reg(scl),
        .\counter_reg[0] (counter_reg),
        .done_s(done_s),
        .load_counter(load_counter),
        .\number_reg[2] (clock_domain_crossing_inst_n_55),
        .\number_reg[2]_0 (clock_domain_crossing_inst_n_56),
        .\number_reg[2]_1 (clock_domain_crossing_inst_n_45),
        .\number_reg[2]_10 (clock_domain_crossing_inst_n_54),
        .\number_reg[2]_2 (clock_domain_crossing_inst_n_46),
        .\number_reg[2]_3 (clock_domain_crossing_inst_n_47),
        .\number_reg[2]_4 (clock_domain_crossing_inst_n_48),
        .\number_reg[2]_5 (clock_domain_crossing_inst_n_49),
        .\number_reg[2]_6 (clock_domain_crossing_inst_n_50),
        .\number_reg[2]_7 (clock_domain_crossing_inst_n_51),
        .\number_reg[2]_8 (clock_domain_crossing_inst_n_52),
        .\number_reg[2]_9 (clock_domain_crossing_inst_n_53),
        .\number_reg[3] (master_fsm_inst_n_21),
        .\number_reg[3]_0 (master_fsm_inst_n_49),
        .\number_reg[3]_1 (tx_bytes_sent_s[3]),
        .out({master_fsm_inst_n_0,master_fsm_inst_n_1,master_fsm_inst_n_2,master_fsm_inst_n_3}),
        .rx_bytecnt_clear(rx_bytecnt_clear),
        .rx_start(rx_start),
        .rx_start_reg(master_fsm_inst_n_51),
        .rx_start_s(rx_start_s),
        .sdas_dec_reg(sdas_dec),
        .\shift_reg_reg[24] ({master_fsm_inst_n_24,master_fsm_inst_n_25,master_fsm_inst_n_26,master_fsm_inst_n_27,master_fsm_inst_n_28,master_fsm_inst_n_29,master_fsm_inst_n_30,master_fsm_inst_n_31,master_fsm_inst_n_32,master_fsm_inst_n_33,master_fsm_inst_n_34,master_fsm_inst_n_35,master_fsm_inst_n_36,master_fsm_inst_n_37,master_fsm_inst_n_38,master_fsm_inst_n_39,master_fsm_inst_n_40,master_fsm_inst_n_41,master_fsm_inst_n_42,master_fsm_inst_n_43,master_fsm_inst_n_44,master_fsm_inst_n_45,master_fsm_inst_n_46,master_fsm_inst_n_47,master_fsm_inst_n_48}),
        .\shift_reg_reg[2] (tx_shift_reg_inst_n_1),
        .\shift_reg_reg[3] (master_fsm_inst_n_11),
        .\shift_reg_reg[3]_0 (master_fsm_inst_n_12),
        .\shift_reg_reg[3]_1 (master_fsm_inst_n_13),
        .\shift_reg_reg[3]_2 (master_fsm_inst_n_15),
        .\shift_reg_reg[5] (master_fsm_inst_n_10),
        .\shift_reg_reg[5]_0 (master_fsm_inst_n_14),
        .\shift_reg_reg[5]_1 (master_fsm_inst_n_16),
        .\shift_reg_reg[5]_2 (master_fsm_inst_n_17),
        .\shift_reg_reg[9] (master_fsm_inst_n_5),
        .\slave_addr_s_reg[6] (slave_addr_s),
        .\syndrom_reg[2] ({p_2_in,p_1_in,rx_shift_reg_inst_n_2}),
        .\syndrom_reg[3] ({master_fsm_inst_n_7,master_fsm_inst_n_8,master_fsm_inst_n_9}),
        .tx_allbytes(tx_allbytes),
        .tx_byte(tx_byte),
        .tx_bytecnt_clear(tx_bytecnt_clear),
        .tx_start(tx_start),
        .tx_start_reg(master_fsm_inst_n_50),
        .tx_start_s(tx_start_s));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_master_manchester_dec master_manchester_dec_inst
       (.CLK(CLK),
        .D(sdas_dec),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_0),
        .clkdiv1000_reg(clock_divider_inst_n_3));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_byte_counter rx_byte_counter_inst
       (.CLK(CLK),
        .E(rx_byte_counter_inst_n_13),
        .Q(rx_bytes_sent_s),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_0),
        .S_AXI_ARESETN_0(clock_domain_crossing_inst_n_7),
        .nb_p1_0(nb_p1_0),
        .rx_allbytes(rx_allbytes),
        .\rx_byte10_sb_reg[12] (rx_byte_counter_inst_n_20),
        .\rx_byte11_sb_reg[0] (rx_byte_counter_inst_n_6),
        .\rx_byte12_sb_reg[12] (rx_byte_counter_inst_n_12),
        .\rx_byte13_sb_reg[12] (rx_byte_counter_inst_n_10),
        .\rx_byte14_sb_reg[12] (rx_byte_counter_inst_n_21),
        .\rx_byte15_sb_reg[0] (rx_byte_counter_inst_n_5),
        .\rx_byte1_sb_reg[12] (rx_byte_counter_inst_n_14),
        .\rx_byte2_sb_reg[12] (rx_byte_counter_inst_n_15),
        .\rx_byte3_sb_reg[0] (rx_byte_counter_inst_n_8),
        .\rx_byte4_sb_reg[12] (rx_byte_counter_inst_n_16),
        .\rx_byte5_sb_reg[12] (rx_byte_counter_inst_n_17),
        .\rx_byte6_sb_reg[12] (rx_byte_counter_inst_n_18),
        .\rx_byte7_sb_reg[0] (rx_byte_counter_inst_n_7),
        .\rx_byte8_sb_reg[12] (rx_byte_counter_inst_n_19),
        .\rx_byte9_sb_reg[12] (rx_byte_counter_inst_n_11),
        .rx_bytecnt_clear(rx_bytecnt_clear),
        .\rx_nb_bytes_s_reg[1] (clock_domain_crossing_inst_n_36),
        .\syndrom_reg[1] (rx_shift_reg_inst_n_5));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_rx_shift_reg rx_shift_reg_inst
       (.CLK(CLK),
        .D(sdas_dec),
        .E(scl),
        .\FSM_sequential_current_state_reg[0] (rx_shift_reg_inst_n_4),
        .\FSM_sequential_current_state_reg[2] (rx_shift_reg_inst_n_3),
        .\FSM_sequential_current_state_reg[2]_0 (master_fsm_inst_n_21),
        .\FSM_sequential_current_state_reg[4] (master_fsm_inst_n_4),
        .Q({p_2_in,p_1_in,rx_shift_reg_inst_n_2}),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_0),
        .S_AXI_ARESETN_0(clock_domain_crossing_inst_n_13),
        .S_AXI_ARESETN_1(clock_domain_crossing_inst_n_12),
        .S_AXI_ARESETN_2(clock_domain_crossing_inst_n_2),
        .S_AXI_ARESETN_3(clock_domain_crossing_inst_n_4),
        .clear_syndrom(clear_syndrom),
        .clkdiv1000_reg(p_0_in),
        .\number_reg[3] (rx_shift_reg_inst_n_5),
        .out(master_fsm_inst_n_3),
        .rx_allbytes(rx_allbytes),
        .\rx_byte0_sb_reg[12] ({valid_syndrom,rx_shift_reg_inst_n_7,p_0_in_0}),
        .rx_bytecnt_clear(rx_bytecnt_clear),
        .sdas_dec_reg({master_fsm_inst_n_7,master_fsm_inst_n_8,master_fsm_inst_n_9}));
  FDCE rx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(clock_domain_crossing_inst_n_0),
        .D(master_fsm_inst_n_51),
        .Q(rx_start));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_byte_counter_0 tx_byte_counter_inst
       (.CLK(CLK),
        .D(sdas_dec),
        .E(master_fsm_inst_n_49),
        .\FSM_sequential_current_state_reg[0] (tx_byte_counter_inst_n_5),
        .Q(tx_bytes_sent_s),
        .S_AXI_ARESETN(clock_domain_crossing_inst_n_0),
        .S_AXI_ARESETN_0(clock_domain_crossing_inst_n_4),
        .nb_p1(nb_p1),
        .tx_allbytes(tx_allbytes),
        .tx_bytecnt_clear(tx_bytecnt_clear),
        .\tx_nb_bytes_s_reg[1] (clock_domain_crossing_inst_n_35));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_shift_reg tx_shift_reg_inst
       (.CLK(CLK),
        .D({master_fsm_inst_n_24,master_fsm_inst_n_25,master_fsm_inst_n_26,master_fsm_inst_n_27,master_fsm_inst_n_28,master_fsm_inst_n_29,master_fsm_inst_n_30,master_fsm_inst_n_31,master_fsm_inst_n_32,master_fsm_inst_n_33,master_fsm_inst_n_34,master_fsm_inst_n_35,master_fsm_inst_n_36,master_fsm_inst_n_37,master_fsm_inst_n_38,master_fsm_inst_n_39,master_fsm_inst_n_40,master_fsm_inst_n_41,master_fsm_inst_n_42,master_fsm_inst_n_43,master_fsm_inst_n_44,master_fsm_inst_n_45,master_fsm_inst_n_46,master_fsm_inst_n_47,master_fsm_inst_n_48}),
        .\FSM_sequential_current_state_reg[4] (master_fsm_inst_n_5),
        .Q({sdam,shift_reg[23:3],shift_reg[1:0]}),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .\shift_reg_reg[24]_0 (tx_shift_reg_inst_n_0),
        .\shift_reg_reg[3]_0 (tx_shift_reg_inst_n_1));
  FDCE tx_start_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(clock_domain_crossing_inst_n_0),
        .D(master_fsm_inst_n_50),
        .Q(tx_start));
endmodule

(* CHECK_LICENSE_TYPE = "system_scb_testmaster_0_0,scb_testmaster,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "scb_testmaster,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (S_AXI_ACLK,
    S_AXI_ARADDR,
    S_AXI_ARESETN,
    S_AXI_ARVALID,
    S_AXI_AWADDR,
    S_AXI_AWVALID,
    S_AXI_BREADY,
    S_AXI_RREADY,
    S_AXI_WDATA,
    S_AXI_WSTRB,
    S_AXI_WVALID,
    sdas,
    S_AXI_ARREADY,
    S_AXI_AWREADY,
    S_AXI_BRESP,
    S_AXI_BVALID,
    S_AXI_RDATA,
    S_AXI_RRESP,
    S_AXI_RVALID,
    S_AXI_WREADY,
    scl,
    sclx2,
    sdam,
    sdas_dec);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S_AXI_ACLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ACLK, ASSOCIATED_BUSIF S_AXI, ASSOCIATED_RESET S_AXI_ARESETN, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1" *) input S_AXI_ACLK;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [9:0]S_AXI_ARADDR;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S_AXI_ARESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI_ARESETN, POLARITY ACTIVE_LOW" *) input S_AXI_ARESETN;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input S_AXI_ARVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [9:0]S_AXI_AWADDR;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input S_AXI_AWVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input S_AXI_BREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) input S_AXI_RREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [31:0]S_AXI_WDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [3:0]S_AXI_WSTRB;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input S_AXI_WVALID;
  input sdas;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output S_AXI_ARREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output S_AXI_AWREADY;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]S_AXI_BRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output S_AXI_BVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [31:0]S_AXI_RDATA;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]S_AXI_RRESP;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output S_AXI_RVALID;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 10, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) output S_AXI_WREADY;
  output scl;
  output sclx2;
  output sdam;
  output sdas_dec;

  wire \<const0> ;
  wire S_AXI_ACLK;
  wire [9:0]S_AXI_ARADDR;
  wire S_AXI_ARESETN;
  wire S_AXI_ARREADY;
  wire S_AXI_ARVALID;
  wire [9:0]S_AXI_AWADDR;
  wire S_AXI_AWREADY;
  wire S_AXI_AWVALID;
  wire S_AXI_BREADY;
  wire S_AXI_BVALID;
  wire [19:0]\^S_AXI_RDATA ;
  wire S_AXI_RREADY;
  wire S_AXI_RVALID;
  wire [31:0]S_AXI_WDATA;
  wire S_AXI_WREADY;
  wire S_AXI_WVALID;
  wire scl;
  wire sclx2;
  wire sdam;
  wire sdas;
  wire sdas_dec;

  assign S_AXI_BRESP[1] = \<const0> ;
  assign S_AXI_BRESP[0] = \<const0> ;
  assign S_AXI_RDATA[31] = \<const0> ;
  assign S_AXI_RDATA[30] = \<const0> ;
  assign S_AXI_RDATA[29] = \<const0> ;
  assign S_AXI_RDATA[28] = \<const0> ;
  assign S_AXI_RDATA[27] = \<const0> ;
  assign S_AXI_RDATA[26] = \<const0> ;
  assign S_AXI_RDATA[25] = \<const0> ;
  assign S_AXI_RDATA[24] = \<const0> ;
  assign S_AXI_RDATA[23] = \<const0> ;
  assign S_AXI_RDATA[22] = \<const0> ;
  assign S_AXI_RDATA[21] = \<const0> ;
  assign S_AXI_RDATA[20] = \<const0> ;
  assign S_AXI_RDATA[19:0] = \^S_AXI_RDATA [19:0];
  assign S_AXI_RRESP[1] = \<const0> ;
  assign S_AXI_RRESP[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_scb_testmaster inst
       (.CLK(sclx2),
        .Q(S_AXI_ARREADY),
        .S_AXI_ACLK(S_AXI_ACLK),
        .S_AXI_ARADDR(S_AXI_ARADDR[9:2]),
        .S_AXI_ARESETN(S_AXI_ARESETN),
        .S_AXI_ARVALID(S_AXI_ARVALID),
        .S_AXI_AWADDR(S_AXI_AWADDR[9:2]),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .S_AXI_AWVALID(S_AXI_AWVALID),
        .S_AXI_BREADY(S_AXI_BREADY),
        .S_AXI_BVALID(S_AXI_BVALID),
        .S_AXI_RDATA(\^S_AXI_RDATA ),
        .S_AXI_RREADY(S_AXI_RREADY),
        .S_AXI_RVALID(S_AXI_RVALID),
        .S_AXI_WDATA(S_AXI_WDATA[19:0]),
        .S_AXI_WREADY(S_AXI_WREADY),
        .S_AXI_WVALID(S_AXI_WVALID),
        .scl(scl),
        .sdam(sdam),
        .sdas(sdas),
        .sdas_dec(sdas_dec));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_tx_shift_reg
   (\shift_reg_reg[24]_0 ,
    \shift_reg_reg[3]_0 ,
    Q,
    S_AXI_ARESETN,
    \FSM_sequential_current_state_reg[4] ,
    D,
    CLK);
  output \shift_reg_reg[24]_0 ;
  output \shift_reg_reg[3]_0 ;
  output [23:0]Q;
  input S_AXI_ARESETN;
  input \FSM_sequential_current_state_reg[4] ;
  input [24:0]D;
  input CLK;

  wire CLK;
  wire [24:0]D;
  wire \FSM_sequential_current_state_reg[4] ;
  wire [23:0]Q;
  wire S_AXI_ARESETN;
  wire [2:2]shift_reg;
  wire \shift_reg_reg[24]_0 ;
  wire \shift_reg_reg[3]_0 ;

  LUT1 #(
    .INIT(2'h1)) 
    clkdiv500_i_2
       (.I0(S_AXI_ARESETN),
        .O(\shift_reg_reg[24]_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \shift_reg[3]_i_2 
       (.I0(shift_reg),
        .I1(\FSM_sequential_current_state_reg[4] ),
        .O(\shift_reg_reg[3]_0 ));
  FDCE \shift_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[0]),
        .Q(Q[0]));
  FDCE \shift_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[10]),
        .Q(Q[9]));
  FDPE \shift_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[11]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[10]));
  FDCE \shift_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[12]),
        .Q(Q[11]));
  FDPE \shift_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[13]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[12]));
  FDCE \shift_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[14]),
        .Q(Q[13]));
  FDPE \shift_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[15]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[14]));
  FDCE \shift_reg_reg[16] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[16]),
        .Q(Q[15]));
  FDPE \shift_reg_reg[17] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[17]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[16]));
  FDCE \shift_reg_reg[18] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[18]),
        .Q(Q[17]));
  FDPE \shift_reg_reg[19] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[19]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[18]));
  FDPE \shift_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[1]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[1]));
  FDCE \shift_reg_reg[20] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[20]),
        .Q(Q[19]));
  FDPE \shift_reg_reg[21] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[21]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[20]));
  FDCE \shift_reg_reg[22] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[22]),
        .Q(Q[21]));
  FDPE \shift_reg_reg[23] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[23]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[22]));
  FDCE \shift_reg_reg[24] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[24]),
        .Q(Q[23]));
  FDCE \shift_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[2]),
        .Q(shift_reg));
  FDPE \shift_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[3]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[2]));
  FDCE \shift_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[4]),
        .Q(Q[3]));
  FDPE \shift_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[5]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[4]));
  FDCE \shift_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[6]),
        .Q(Q[5]));
  FDPE \shift_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[7]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[6]));
  FDCE \shift_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(\shift_reg_reg[24]_0 ),
        .D(D[8]),
        .Q(Q[7]));
  FDPE \shift_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(D[9]),
        .PRE(\shift_reg_reg[24]_0 ),
        .Q(Q[8]));
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
