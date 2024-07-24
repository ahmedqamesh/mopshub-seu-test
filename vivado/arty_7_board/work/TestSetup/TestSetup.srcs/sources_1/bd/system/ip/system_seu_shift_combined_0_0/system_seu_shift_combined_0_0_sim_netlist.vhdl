-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 16:56:08 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_seu_shift_combined_0_0/system_seu_shift_combined_0_0_sim_netlist.vhdl
-- Design      : system_seu_shift_combined_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_seu_shift_combined_0_0_seu_shift_reg is
  port (
    data_outTMR : out STD_LOGIC;
    mode : in STD_LOGIC;
    data_in : in STD_LOGIC;
    clk : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_seu_shift_combined_0_0_seu_shift_reg : entity is "seu_shift_reg";
end system_seu_shift_combined_0_0_seu_shift_reg;

architecture STRUCTURE of system_seu_shift_combined_0_0_seu_shift_reg is
  signal \shiftreg_reg[1024]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1056]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1088]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1120]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1152]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1184]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1216]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1248]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1280]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[128]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1312]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1344]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1376]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1408]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1440]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1472]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1504]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1536]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1568]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1600]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[160]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1632]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1664]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1696]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1728]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1760]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1792]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[1824]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1856]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1888]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1920]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[192]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1952]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[1984]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2016]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2048]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2080]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2112]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2144]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2176]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2208]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2240]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[224]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2272]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2304]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2336]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2368]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2400]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2432]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2464]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2496]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2528]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2560]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[256]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2592]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2624]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2656]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2688]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2720]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2752]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2784]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2816]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2848]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2880]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[288]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2912]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2944]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[2976]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[2998]_srl22_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[320]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[32]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[352]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[384]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[416]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[448]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[480]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[512]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[544]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[576]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[608]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[640]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[64]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[672]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[704]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[736]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[768]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[800]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[832]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[864]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[896]_srl32_n_0\ : STD_LOGIC;
  signal \shiftreg_reg[928]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[960]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[96]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg[992]_srl32_n_1\ : STD_LOGIC;
  signal \shiftreg_reg_n_0_[0]\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1024]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1056]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1088]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1120]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1152]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1184]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1216]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1248]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1280]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[128]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1312]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1344]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1376]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1408]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1440]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1472]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1504]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1536]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1568]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1600]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[160]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1632]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1664]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1696]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1728]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1760]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1792]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1824]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1856]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1888]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1920]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[192]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1952]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[1984]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2016]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2048]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2080]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2112]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2144]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2176]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2208]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2240]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[224]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2272]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2304]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2336]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2368]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2400]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2432]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2464]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2496]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2528]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2560]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[256]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2592]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2624]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2656]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2688]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2720]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2752]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2784]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2816]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2848]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2880]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[288]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2912]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2944]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2976]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[2998]_srl22_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[320]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[32]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[352]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[384]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[416]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[448]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[480]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[512]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[544]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[576]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[608]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[640]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[64]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[672]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[704]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[736]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[768]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[800]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[832]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[864]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[896]_srl32_Q31_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[928]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[960]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[96]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  signal \NLW_shiftreg_reg[992]_srl32_Q_UNCONNECTED\ : STD_LOGIC;
  attribute srl_bus_name : string;
  attribute srl_bus_name of \shiftreg_reg[1024]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name : string;
  attribute srl_name of \shiftreg_reg[1024]_srl32\ : label is "\inst/U_1/shiftreg_reg[1024]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1056]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1056]_srl32\ : label is "\inst/U_1/shiftreg_reg[1056]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1088]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1088]_srl32\ : label is "\inst/U_1/shiftreg_reg[1088]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1120]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1120]_srl32\ : label is "\inst/U_1/shiftreg_reg[1120]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1152]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1152]_srl32\ : label is "\inst/U_1/shiftreg_reg[1152]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1184]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1184]_srl32\ : label is "\inst/U_1/shiftreg_reg[1184]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1216]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1216]_srl32\ : label is "\inst/U_1/shiftreg_reg[1216]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1248]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1248]_srl32\ : label is "\inst/U_1/shiftreg_reg[1248]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1280]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1280]_srl32\ : label is "\inst/U_1/shiftreg_reg[1280]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[128]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[128]_srl32\ : label is "\inst/U_1/shiftreg_reg[128]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1312]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1312]_srl32\ : label is "\inst/U_1/shiftreg_reg[1312]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1344]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1344]_srl32\ : label is "\inst/U_1/shiftreg_reg[1344]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1376]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1376]_srl32\ : label is "\inst/U_1/shiftreg_reg[1376]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1408]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1408]_srl32\ : label is "\inst/U_1/shiftreg_reg[1408]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1440]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1440]_srl32\ : label is "\inst/U_1/shiftreg_reg[1440]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1472]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1472]_srl32\ : label is "\inst/U_1/shiftreg_reg[1472]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1504]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1504]_srl32\ : label is "\inst/U_1/shiftreg_reg[1504]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1536]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1536]_srl32\ : label is "\inst/U_1/shiftreg_reg[1536]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1568]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1568]_srl32\ : label is "\inst/U_1/shiftreg_reg[1568]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1600]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1600]_srl32\ : label is "\inst/U_1/shiftreg_reg[1600]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[160]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[160]_srl32\ : label is "\inst/U_1/shiftreg_reg[160]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1632]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1632]_srl32\ : label is "\inst/U_1/shiftreg_reg[1632]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1664]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1664]_srl32\ : label is "\inst/U_1/shiftreg_reg[1664]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1696]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1696]_srl32\ : label is "\inst/U_1/shiftreg_reg[1696]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1728]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1728]_srl32\ : label is "\inst/U_1/shiftreg_reg[1728]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1760]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1760]_srl32\ : label is "\inst/U_1/shiftreg_reg[1760]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1792]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1792]_srl32\ : label is "\inst/U_1/shiftreg_reg[1792]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1824]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1824]_srl32\ : label is "\inst/U_1/shiftreg_reg[1824]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1856]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1856]_srl32\ : label is "\inst/U_1/shiftreg_reg[1856]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1888]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1888]_srl32\ : label is "\inst/U_1/shiftreg_reg[1888]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1920]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1920]_srl32\ : label is "\inst/U_1/shiftreg_reg[1920]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[192]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[192]_srl32\ : label is "\inst/U_1/shiftreg_reg[192]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1952]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1952]_srl32\ : label is "\inst/U_1/shiftreg_reg[1952]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[1984]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[1984]_srl32\ : label is "\inst/U_1/shiftreg_reg[1984]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2016]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2016]_srl32\ : label is "\inst/U_1/shiftreg_reg[2016]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2048]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2048]_srl32\ : label is "\inst/U_1/shiftreg_reg[2048]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2080]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2080]_srl32\ : label is "\inst/U_1/shiftreg_reg[2080]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2112]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2112]_srl32\ : label is "\inst/U_1/shiftreg_reg[2112]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2144]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2144]_srl32\ : label is "\inst/U_1/shiftreg_reg[2144]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2176]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2176]_srl32\ : label is "\inst/U_1/shiftreg_reg[2176]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2208]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2208]_srl32\ : label is "\inst/U_1/shiftreg_reg[2208]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2240]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2240]_srl32\ : label is "\inst/U_1/shiftreg_reg[2240]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[224]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[224]_srl32\ : label is "\inst/U_1/shiftreg_reg[224]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2272]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2272]_srl32\ : label is "\inst/U_1/shiftreg_reg[2272]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2304]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2304]_srl32\ : label is "\inst/U_1/shiftreg_reg[2304]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2336]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2336]_srl32\ : label is "\inst/U_1/shiftreg_reg[2336]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2368]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2368]_srl32\ : label is "\inst/U_1/shiftreg_reg[2368]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2400]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2400]_srl32\ : label is "\inst/U_1/shiftreg_reg[2400]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2432]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2432]_srl32\ : label is "\inst/U_1/shiftreg_reg[2432]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2464]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2464]_srl32\ : label is "\inst/U_1/shiftreg_reg[2464]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2496]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2496]_srl32\ : label is "\inst/U_1/shiftreg_reg[2496]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2528]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2528]_srl32\ : label is "\inst/U_1/shiftreg_reg[2528]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2560]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2560]_srl32\ : label is "\inst/U_1/shiftreg_reg[2560]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[256]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[256]_srl32\ : label is "\inst/U_1/shiftreg_reg[256]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2592]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2592]_srl32\ : label is "\inst/U_1/shiftreg_reg[2592]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2624]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2624]_srl32\ : label is "\inst/U_1/shiftreg_reg[2624]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2656]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2656]_srl32\ : label is "\inst/U_1/shiftreg_reg[2656]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2688]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2688]_srl32\ : label is "\inst/U_1/shiftreg_reg[2688]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2720]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2720]_srl32\ : label is "\inst/U_1/shiftreg_reg[2720]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2752]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2752]_srl32\ : label is "\inst/U_1/shiftreg_reg[2752]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2784]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2784]_srl32\ : label is "\inst/U_1/shiftreg_reg[2784]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2816]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2816]_srl32\ : label is "\inst/U_1/shiftreg_reg[2816]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2848]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2848]_srl32\ : label is "\inst/U_1/shiftreg_reg[2848]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2880]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2880]_srl32\ : label is "\inst/U_1/shiftreg_reg[2880]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[288]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[288]_srl32\ : label is "\inst/U_1/shiftreg_reg[288]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2912]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2912]_srl32\ : label is "\inst/U_1/shiftreg_reg[2912]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2944]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2944]_srl32\ : label is "\inst/U_1/shiftreg_reg[2944]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2976]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2976]_srl32\ : label is "\inst/U_1/shiftreg_reg[2976]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[2998]_srl22\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[2998]_srl22\ : label is "\inst/U_1/shiftreg_reg[2998]_srl22 ";
  attribute srl_bus_name of \shiftreg_reg[320]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[320]_srl32\ : label is "\inst/U_1/shiftreg_reg[320]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[32]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[32]_srl32\ : label is "\inst/U_1/shiftreg_reg[32]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[352]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[352]_srl32\ : label is "\inst/U_1/shiftreg_reg[352]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[384]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[384]_srl32\ : label is "\inst/U_1/shiftreg_reg[384]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[416]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[416]_srl32\ : label is "\inst/U_1/shiftreg_reg[416]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[448]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[448]_srl32\ : label is "\inst/U_1/shiftreg_reg[448]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[480]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[480]_srl32\ : label is "\inst/U_1/shiftreg_reg[480]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[512]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[512]_srl32\ : label is "\inst/U_1/shiftreg_reg[512]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[544]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[544]_srl32\ : label is "\inst/U_1/shiftreg_reg[544]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[576]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[576]_srl32\ : label is "\inst/U_1/shiftreg_reg[576]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[608]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[608]_srl32\ : label is "\inst/U_1/shiftreg_reg[608]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[640]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[640]_srl32\ : label is "\inst/U_1/shiftreg_reg[640]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[64]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[64]_srl32\ : label is "\inst/U_1/shiftreg_reg[64]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[672]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[672]_srl32\ : label is "\inst/U_1/shiftreg_reg[672]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[704]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[704]_srl32\ : label is "\inst/U_1/shiftreg_reg[704]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[736]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[736]_srl32\ : label is "\inst/U_1/shiftreg_reg[736]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[768]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[768]_srl32\ : label is "\inst/U_1/shiftreg_reg[768]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[800]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[800]_srl32\ : label is "\inst/U_1/shiftreg_reg[800]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[832]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[832]_srl32\ : label is "\inst/U_1/shiftreg_reg[832]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[864]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[864]_srl32\ : label is "\inst/U_1/shiftreg_reg[864]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[896]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[896]_srl32\ : label is "\inst/U_1/shiftreg_reg[896]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[928]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[928]_srl32\ : label is "\inst/U_1/shiftreg_reg[928]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[960]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[960]_srl32\ : label is "\inst/U_1/shiftreg_reg[960]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[96]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[96]_srl32\ : label is "\inst/U_1/shiftreg_reg[96]_srl32 ";
  attribute srl_bus_name of \shiftreg_reg[992]_srl32\ : label is "\inst/U_1/shiftreg_reg ";
  attribute srl_name of \shiftreg_reg[992]_srl32\ : label is "\inst/U_1/shiftreg_reg[992]_srl32 ";
begin
\shiftreg_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mode,
      D => data_in,
      Q => \shiftreg_reg_n_0_[0]\,
      R => '0'
    );
\shiftreg_reg[1024]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[992]_srl32_n_1\,
      Q => \shiftreg_reg[1024]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1024]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1056]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1024]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1056]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1056]_srl32_n_1\
    );
\shiftreg_reg[1088]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1056]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1088]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1088]_srl32_n_1\
    );
\shiftreg_reg[1120]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1088]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1120]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1120]_srl32_n_1\
    );
\shiftreg_reg[1152]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1120]_srl32_n_1\,
      Q => \shiftreg_reg[1152]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1152]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1184]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1152]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1184]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1184]_srl32_n_1\
    );
\shiftreg_reg[1216]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1184]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1216]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1216]_srl32_n_1\
    );
\shiftreg_reg[1248]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1216]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1248]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1248]_srl32_n_1\
    );
\shiftreg_reg[1280]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1248]_srl32_n_1\,
      Q => \shiftreg_reg[1280]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1280]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[128]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[96]_srl32_n_1\,
      Q => \shiftreg_reg[128]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[128]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1312]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1280]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1312]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1312]_srl32_n_1\
    );
\shiftreg_reg[1344]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1312]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1344]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1344]_srl32_n_1\
    );
\shiftreg_reg[1376]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1344]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1376]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1376]_srl32_n_1\
    );
\shiftreg_reg[1408]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1376]_srl32_n_1\,
      Q => \shiftreg_reg[1408]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1408]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1440]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1408]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1440]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1440]_srl32_n_1\
    );
\shiftreg_reg[1472]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1440]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1472]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1472]_srl32_n_1\
    );
\shiftreg_reg[1504]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1472]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1504]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1504]_srl32_n_1\
    );
\shiftreg_reg[1536]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1504]_srl32_n_1\,
      Q => \shiftreg_reg[1536]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1536]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1568]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1536]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1568]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1568]_srl32_n_1\
    );
\shiftreg_reg[1600]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1568]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1600]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1600]_srl32_n_1\
    );
\shiftreg_reg[160]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[128]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[160]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[160]_srl32_n_1\
    );
\shiftreg_reg[1632]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1600]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1632]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1632]_srl32_n_1\
    );
\shiftreg_reg[1664]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1632]_srl32_n_1\,
      Q => \shiftreg_reg[1664]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1664]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1696]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1664]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1696]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1696]_srl32_n_1\
    );
\shiftreg_reg[1728]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1696]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1728]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1728]_srl32_n_1\
    );
\shiftreg_reg[1760]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1728]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1760]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1760]_srl32_n_1\
    );
\shiftreg_reg[1792]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1760]_srl32_n_1\,
      Q => \shiftreg_reg[1792]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1792]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[1824]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1792]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1824]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1824]_srl32_n_1\
    );
\shiftreg_reg[1856]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1824]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1856]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1856]_srl32_n_1\
    );
\shiftreg_reg[1888]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1856]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1888]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1888]_srl32_n_1\
    );
\shiftreg_reg[1920]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1888]_srl32_n_1\,
      Q => \shiftreg_reg[1920]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[1920]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[192]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[160]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[192]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[192]_srl32_n_1\
    );
\shiftreg_reg[1952]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1920]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[1952]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1952]_srl32_n_1\
    );
\shiftreg_reg[1984]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1952]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[1984]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[1984]_srl32_n_1\
    );
\shiftreg_reg[2016]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[1984]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2016]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2016]_srl32_n_1\
    );
\shiftreg_reg[2048]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2016]_srl32_n_1\,
      Q => \shiftreg_reg[2048]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2048]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2080]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2048]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2080]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2080]_srl32_n_1\
    );
\shiftreg_reg[2112]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2080]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2112]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2112]_srl32_n_1\
    );
\shiftreg_reg[2144]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2112]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2144]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2144]_srl32_n_1\
    );
\shiftreg_reg[2176]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2144]_srl32_n_1\,
      Q => \shiftreg_reg[2176]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2176]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2208]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2176]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2208]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2208]_srl32_n_1\
    );
\shiftreg_reg[2240]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2208]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2240]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2240]_srl32_n_1\
    );
\shiftreg_reg[224]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[192]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[224]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[224]_srl32_n_1\
    );
\shiftreg_reg[2272]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2240]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2272]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2272]_srl32_n_1\
    );
\shiftreg_reg[2304]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2272]_srl32_n_1\,
      Q => \shiftreg_reg[2304]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2304]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2336]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2304]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2336]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2336]_srl32_n_1\
    );
\shiftreg_reg[2368]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2336]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2368]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2368]_srl32_n_1\
    );
\shiftreg_reg[2400]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2368]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2400]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2400]_srl32_n_1\
    );
\shiftreg_reg[2432]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2400]_srl32_n_1\,
      Q => \shiftreg_reg[2432]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2432]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2464]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2432]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2464]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2464]_srl32_n_1\
    );
\shiftreg_reg[2496]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2464]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2496]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2496]_srl32_n_1\
    );
\shiftreg_reg[2528]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2496]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2528]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2528]_srl32_n_1\
    );
\shiftreg_reg[2560]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2528]_srl32_n_1\,
      Q => \shiftreg_reg[2560]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2560]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[256]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[224]_srl32_n_1\,
      Q => \shiftreg_reg[256]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[256]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2592]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2560]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2592]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2592]_srl32_n_1\
    );
\shiftreg_reg[2624]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2592]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2624]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2624]_srl32_n_1\
    );
\shiftreg_reg[2656]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2624]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2656]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2656]_srl32_n_1\
    );
\shiftreg_reg[2688]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2656]_srl32_n_1\,
      Q => \shiftreg_reg[2688]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2688]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2720]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2688]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2720]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2720]_srl32_n_1\
    );
\shiftreg_reg[2752]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2720]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2752]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2752]_srl32_n_1\
    );
\shiftreg_reg[2784]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2752]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2784]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2784]_srl32_n_1\
    );
\shiftreg_reg[2816]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2784]_srl32_n_1\,
      Q => \shiftreg_reg[2816]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2816]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2848]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2816]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2848]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2848]_srl32_n_1\
    );
\shiftreg_reg[2880]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2848]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2880]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2880]_srl32_n_1\
    );
\shiftreg_reg[288]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[256]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[288]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[288]_srl32_n_1\
    );
\shiftreg_reg[2912]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2880]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[2912]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2912]_srl32_n_1\
    );
\shiftreg_reg[2944]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2912]_srl32_n_1\,
      Q => \shiftreg_reg[2944]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[2944]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[2976]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2944]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[2976]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[2976]_srl32_n_1\
    );
\shiftreg_reg[2998]_srl22\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"10101",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[2976]_srl32_n_1\,
      Q => \shiftreg_reg[2998]_srl22_n_0\,
      Q31 => \NLW_shiftreg_reg[2998]_srl22_Q31_UNCONNECTED\
    );
\shiftreg_reg[2999]\: unisim.vcomponents.FDRE
     port map (
      C => clk,
      CE => mode,
      D => \shiftreg_reg[2998]_srl22_n_0\,
      Q => data_outTMR,
      R => '0'
    );
\shiftreg_reg[320]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[288]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[320]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[320]_srl32_n_1\
    );
\shiftreg_reg[32]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg_n_0_[0]\,
      Q => \NLW_shiftreg_reg[32]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[32]_srl32_n_1\
    );
\shiftreg_reg[352]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[320]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[352]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[352]_srl32_n_1\
    );
\shiftreg_reg[384]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[352]_srl32_n_1\,
      Q => \shiftreg_reg[384]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[384]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[416]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[384]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[416]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[416]_srl32_n_1\
    );
\shiftreg_reg[448]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[416]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[448]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[448]_srl32_n_1\
    );
\shiftreg_reg[480]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[448]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[480]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[480]_srl32_n_1\
    );
\shiftreg_reg[512]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[480]_srl32_n_1\,
      Q => \shiftreg_reg[512]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[512]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[544]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[512]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[544]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[544]_srl32_n_1\
    );
\shiftreg_reg[576]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[544]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[576]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[576]_srl32_n_1\
    );
\shiftreg_reg[608]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[576]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[608]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[608]_srl32_n_1\
    );
\shiftreg_reg[640]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[608]_srl32_n_1\,
      Q => \shiftreg_reg[640]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[640]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[64]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[32]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[64]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[64]_srl32_n_1\
    );
\shiftreg_reg[672]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[640]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[672]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[672]_srl32_n_1\
    );
\shiftreg_reg[704]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[672]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[704]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[704]_srl32_n_1\
    );
\shiftreg_reg[736]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[704]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[736]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[736]_srl32_n_1\
    );
\shiftreg_reg[768]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[736]_srl32_n_1\,
      Q => \shiftreg_reg[768]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[768]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[800]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[768]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[800]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[800]_srl32_n_1\
    );
\shiftreg_reg[832]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[800]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[832]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[832]_srl32_n_1\
    );
\shiftreg_reg[864]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[832]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[864]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[864]_srl32_n_1\
    );
\shiftreg_reg[896]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[864]_srl32_n_1\,
      Q => \shiftreg_reg[896]_srl32_n_0\,
      Q31 => \NLW_shiftreg_reg[896]_srl32_Q31_UNCONNECTED\
    );
\shiftreg_reg[928]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[896]_srl32_n_0\,
      Q => \NLW_shiftreg_reg[928]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[928]_srl32_n_1\
    );
\shiftreg_reg[960]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[928]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[960]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[960]_srl32_n_1\
    );
\shiftreg_reg[96]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[64]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[96]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[96]_srl32_n_1\
    );
\shiftreg_reg[992]_srl32\: unisim.vcomponents.SRLC32E
     port map (
      A(4 downto 0) => B"11111",
      CE => mode,
      CLK => clk,
      D => \shiftreg_reg[960]_srl32_n_1\,
      Q => \NLW_shiftreg_reg[992]_srl32_Q_UNCONNECTED\,
      Q31 => \shiftreg_reg[992]_srl32_n_1\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_seu_shift_combined_0_0_seu_shift_combined is
  port (
    data_outTMR : out STD_LOGIC;
    clk_in : in STD_LOGIC;
    mode : in STD_LOGIC;
    data_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_seu_shift_combined_0_0_seu_shift_combined : entity is "seu_shift_combined";
end system_seu_shift_combined_0_0_seu_shift_combined;

architecture STRUCTURE of system_seu_shift_combined_0_0_seu_shift_combined is
  signal clk : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of clkbuf : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of clkbuf : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of clkbuf : label is "0";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of clkbuf : label is "IBUFG";
begin
U_1: entity work.system_seu_shift_combined_0_0_seu_shift_reg
     port map (
      clk => clk,
      data_in => data_in,
      data_outTMR => data_outTMR,
      mode => mode
    );
clkbuf: unisim.vcomponents.IBUF
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clk_in,
      O => clk
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_seu_shift_combined_0_0 is
  port (
    clk_in : in STD_LOGIC;
    data_in : in STD_LOGIC;
    mode : in STD_LOGIC;
    data_out : out STD_LOGIC;
    data_outTMR : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_seu_shift_combined_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_seu_shift_combined_0_0 : entity is "system_seu_shift_combined_0_0,seu_shift_combined,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_seu_shift_combined_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_seu_shift_combined_0_0 : entity is "seu_shift_combined,Vivado 2017.4";
end system_seu_shift_combined_0_0;

architecture STRUCTURE of system_seu_shift_combined_0_0 is
  signal \^data_outtmr\ : STD_LOGIC;
begin
  data_out <= \^data_outtmr\;
  data_outTMR <= \^data_outtmr\;
inst: entity work.system_seu_shift_combined_0_0_seu_shift_combined
     port map (
      clk_in => clk_in,
      data_in => data_in,
      data_outTMR => \^data_outtmr\,
      mode => mode
    );
end STRUCTURE;
