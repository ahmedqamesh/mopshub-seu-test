-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 16:53:52 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_axi_intc_0_0/system_axi_intc_0_0_sim_netlist.vhdl
-- Design      : system_axi_intc_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0_address_decoder is
  port (
    \REG_GEN[1].isr_reg[1]\ : out STD_LOGIC;
    \mer_int_reg[1]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 2 downto 0 );
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    \mer_int_reg[1]_0\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]\ : out STD_LOGIC;
    Q : in STD_LOGIC;
    s_axi_aclk : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    \bus2ip_addr_i_reg[8]\ : in STD_LOGIC_VECTOR ( 6 downto 0 );
    \bus2ip_addr_i_reg[7]\ : in STD_LOGIC;
    \mer_int_reg[0]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[4]\ : in STD_LOGIC;
    \mer_int_reg[1]_1\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[4]_0\ : in STD_LOGIC;
    \bus2ip_addr_i_reg[3]\ : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    is_read : in STD_LOGIC;
    \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\ : in STD_LOGIC_VECTOR ( 3 downto 0 );
    ip2bus_wrack : in STD_LOGIC;
    is_write_reg : in STD_LOGIC;
    p_0_in : in STD_LOGIC;
    mer : in STD_LOGIC;
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    bus2ip_rnw_i_reg : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_intc_0_0_address_decoder : entity is "address_decoder";
end system_axi_intc_0_0_address_decoder;

architecture STRUCTURE of system_axi_intc_0_0_address_decoder is
  signal Bus_RNW_reg_i_1_n_0 : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\ : STD_LOGIC;
  signal \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\ : STD_LOGIC;
  signal \^reg_gen[1].isr_reg[1]\ : STD_LOGIC;
  signal bus2ip_rdce : STD_LOGIC_VECTOR ( 1 to 1 );
  signal ip2bus_rdack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_rdack_int_d1_i_3_n_0 : STD_LOGIC;
  signal ip2bus_rdack_int_d1_i_4_n_0 : STD_LOGIC;
  signal ip2bus_rdack_int_d1_i_5_n_0 : STD_LOGIC;
  signal ip2bus_wrack_i_2_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_2_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_3_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_4_n_0 : STD_LOGIC;
  signal ip2bus_wrack_int_d1_i_5_n_0 : STD_LOGIC;
  signal \^mer_int_reg[1]\ : STD_LOGIC;
  signal p_10_in : STD_LOGIC;
  signal p_10_out : STD_LOGIC;
  signal p_11_in : STD_LOGIC;
  signal p_11_out : STD_LOGIC;
  signal p_12_in : STD_LOGIC;
  signal p_12_out : STD_LOGIC;
  signal p_13_in : STD_LOGIC;
  signal p_13_out : STD_LOGIC;
  signal p_14_in : STD_LOGIC;
  signal p_14_out : STD_LOGIC;
  signal p_15_in : STD_LOGIC;
  signal p_16_in : STD_LOGIC;
  signal p_1_out : STD_LOGIC;
  signal p_2_in : STD_LOGIC;
  signal p_2_out : STD_LOGIC;
  signal p_3_in : STD_LOGIC;
  signal p_3_out : STD_LOGIC;
  signal p_4_in : STD_LOGIC;
  signal p_4_out : STD_LOGIC;
  signal p_5_in : STD_LOGIC;
  signal p_5_out : STD_LOGIC;
  signal p_6_in : STD_LOGIC;
  signal p_6_out : STD_LOGIC;
  signal p_7_in : STD_LOGIC;
  signal p_7_out : STD_LOGIC;
  signal p_8_in : STD_LOGIC;
  signal p_8_out : STD_LOGIC;
  signal p_9_in : STD_LOGIC;
  signal p_9_out : STD_LOGIC;
  signal pselect_hit_i_0 : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_4_n_0\ : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \REG_GEN[0].ier[0]_i_2\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of ip2bus_rdack_i_2 : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ip2bus_rdack_int_d1_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of ip2bus_wrack_i_2 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_2 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_3 : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_4 : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of ip2bus_wrack_int_d1_i_5 : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \mer_int[0]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \mer_int[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \s_axi_rdata_i[31]_i_4\ : label is "soft_lutpair14";
begin
  \REG_GEN[1].isr_reg[1]\ <= \^reg_gen[1].isr_reg[1]\;
  \mer_int_reg[1]\ <= \^mer_int_reg[1]\;
  s_axi_arready <= \^s_axi_arready\;
  s_axi_wready <= \^s_axi_wready\;
Bus_RNW_reg_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => bus2ip_rnw_i_reg,
      I1 => Q,
      I2 => \^mer_int_reg[1]\,
      O => Bus_RNW_reg_i_1_n_0
    );
Bus_RNW_reg_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_i_1_n_0,
      Q => \^mer_int_reg[1]\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[0].cie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_12_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      O => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\
    );
\CIE_GEN.CIE_BIT_GEN[1].cie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_12_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in17_in,
      O => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000002"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(3),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[0].ce_out_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[0].ce_out_i[0]_i_1_n_0\,
      Q => \^reg_gen[1].isr_reg[1]\,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_5_out
    );
\GEN_BKEND_CE_REGISTERS[10].ce_out_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_5_out,
      Q => p_7_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_4_out
    );
\GEN_BKEND_CE_REGISTERS[11].ce_out_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_4_out,
      Q => p_6_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_3_out
    );
\GEN_BKEND_CE_REGISTERS[12].ce_out_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_3_out,
      Q => p_5_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_2_out
    );
\GEN_BKEND_CE_REGISTERS[13].ce_out_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_2_out,
      Q => p_4_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_1_out
    );
\GEN_BKEND_CE_REGISTERS[14].ce_out_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_1_out,
      Q => p_3_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0010"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(4),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      I2 => Q,
      I3 => \bus2ip_addr_i_reg[8]\(5),
      O => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\
    );
\GEN_BKEND_CE_REGISTERS[15].ce_out_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_1_n_0\,
      Q => p_2_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"EF"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => \^s_axi_arready\,
      I2 => s_axi_aresetn,
      O => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(5),
      I1 => \bus2ip_addr_i_reg[8]\(6),
      O => pselect_hit_i_0
    );
\GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => pselect_hit_i_0,
      Q => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(0),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(1),
      O => p_14_out
    );
\GEN_BKEND_CE_REGISTERS[1].ce_out_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_14_out,
      Q => p_16_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(1),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(0),
      O => p_13_out
    );
\GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_13_out,
      Q => p_15_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(2),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_12_out
    );
\GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_12_out,
      Q => p_14_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \bus2ip_addr_i_reg[8]\(0),
      I2 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I3 => \bus2ip_addr_i_reg[8]\(3),
      I4 => \bus2ip_addr_i_reg[8]\(1),
      O => p_11_out
    );
\GEN_BKEND_CE_REGISTERS[4].ce_out_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_11_out,
      Q => p_13_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_10_out
    );
\GEN_BKEND_CE_REGISTERS[5].ce_out_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_10_out,
      Q => p_12_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(2),
      I3 => \bus2ip_addr_i_reg[8]\(0),
      I4 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      O => p_9_out
    );
\GEN_BKEND_CE_REGISTERS[6].ce_out_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_9_out,
      Q => p_11_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"40000000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(3),
      I1 => \bus2ip_addr_i_reg[8]\(1),
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I4 => \bus2ip_addr_i_reg[8]\(2),
      O => p_8_out
    );
\GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_8_out,
      Q => p_10_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000020"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I1 => \bus2ip_addr_i_reg[8]\(2),
      I2 => \bus2ip_addr_i_reg[8]\(3),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \bus2ip_addr_i_reg[8]\(0),
      O => p_7_out
    );
\GEN_BKEND_CE_REGISTERS[8].ce_out_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_7_out,
      Q => p_9_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00400000"
    )
        port map (
      I0 => \bus2ip_addr_i_reg[8]\(2),
      I1 => \GEN_BKEND_CE_REGISTERS[15].ce_out_i[15]_i_2_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(0),
      I3 => \bus2ip_addr_i_reg[8]\(1),
      I4 => \bus2ip_addr_i_reg[8]\(3),
      O => p_6_out
    );
\GEN_BKEND_CE_REGISTERS[9].ce_out_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => Q,
      D => p_6_out,
      Q => p_8_in,
      R => \GEN_BKEND_CE_REGISTERS[16].ce_out_i[16]_i_1_n_0\
    );
\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_14_in,
      I2 => \^mer_int_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\,
      O => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\
    );
\REG_GEN[0].ier[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_15_in,
      I1 => \^mer_int_reg[1]\,
      O => \REG_GEN[0].ier_reg[0]\
    );
\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000800"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => p_14_in,
      I2 => \^mer_int_reg[1]\,
      I3 => s_axi_aresetn,
      I4 => p_0_in13_in,
      O => \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\
    );
\SIE_GEN.SIE_BIT_GEN[0].sie[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(0),
      I3 => s_axi_aresetn,
      I4 => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\,
      O => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\
    );
\SIE_GEN.SIE_BIT_GEN[1].sie[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_13_in,
      I2 => s_axi_wdata(1),
      I3 => s_axi_aresetn,
      I4 => p_0_in9_in,
      O => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\
    );
ip2bus_rdack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => ip2bus_rdack_int_d1_i_5_n_0,
      I1 => ip2bus_rdack_int_d1_i_4_n_0,
      I2 => ip2bus_rdack_int_d1_i_3_n_0,
      I3 => ip2bus_rdack_int_d1_i_2_n_0,
      I4 => bus2ip_rdce(1),
      I5 => ip2bus_rdack_int_d1,
      O => ip2bus_rdack_reg
    );
ip2bus_rdack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => p_2_in,
      I1 => \^mer_int_reg[1]\,
      O => bus2ip_rdce(1)
    );
ip2bus_rdack_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF8"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_2_in,
      I2 => ip2bus_rdack_int_d1_i_2_n_0,
      I3 => ip2bus_rdack_int_d1_i_3_n_0,
      I4 => ip2bus_rdack_int_d1_i_4_n_0,
      I5 => ip2bus_rdack_int_d1_i_5_n_0,
      O => Or128_vec2stdlogic19_out
    );
ip2bus_rdack_int_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_11_in,
      I1 => p_10_in,
      I2 => p_13_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_12_in,
      O => ip2bus_rdack_int_d1_i_2_n_0
    );
ip2bus_rdack_int_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_15_in,
      I1 => p_14_in,
      I2 => \^reg_gen[1].isr_reg[1]\,
      I3 => \^mer_int_reg[1]\,
      I4 => p_16_in,
      O => ip2bus_rdack_int_d1_i_3_n_0
    );
ip2bus_rdack_int_d1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_3_in,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      I2 => p_5_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_4_in,
      O => ip2bus_rdack_int_d1_i_4_n_0
    );
ip2bus_rdack_int_d1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_7_in,
      I1 => p_6_in,
      I2 => p_9_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_8_in,
      O => ip2bus_rdack_int_d1_i_5_n_0
    );
ip2bus_wrack_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FFFFFFFE"
    )
        port map (
      I0 => ip2bus_wrack_int_d1_i_5_n_0,
      I1 => ip2bus_wrack_int_d1_i_4_n_0,
      I2 => ip2bus_wrack_int_d1_i_3_n_0,
      I3 => ip2bus_wrack_int_d1_i_2_n_0,
      I4 => ip2bus_wrack_i_2_n_0,
      I5 => ip2bus_wrack_int_d1,
      O => ip2bus_wrack_reg
    );
ip2bus_wrack_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => p_2_in,
      I1 => \^mer_int_reg[1]\,
      O => ip2bus_wrack_i_2_n_0
    );
ip2bus_wrack_int_d1_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF4"
    )
        port map (
      I0 => \^mer_int_reg[1]\,
      I1 => p_2_in,
      I2 => ip2bus_wrack_int_d1_i_2_n_0,
      I3 => ip2bus_wrack_int_d1_i_3_n_0,
      I4 => ip2bus_wrack_int_d1_i_4_n_0,
      I5 => ip2bus_wrack_int_d1_i_5_n_0,
      O => Or128_vec2stdlogic
    );
ip2bus_wrack_int_d1_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => p_11_in,
      I1 => p_10_in,
      I2 => p_13_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_12_in,
      O => ip2bus_wrack_int_d1_i_2_n_0
    );
ip2bus_wrack_int_d1_i_3: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => p_15_in,
      I1 => p_14_in,
      I2 => \^reg_gen[1].isr_reg[1]\,
      I3 => \^mer_int_reg[1]\,
      I4 => p_16_in,
      O => ip2bus_wrack_int_d1_i_3_n_0
    );
ip2bus_wrack_int_d1_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => p_3_in,
      I1 => \GEN_BKEND_CE_REGISTERS[16].ce_out_i_reg_n_0_[16]\,
      I2 => p_5_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_4_in,
      O => ip2bus_wrack_int_d1_i_4_n_0
    );
ip2bus_wrack_int_d1_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00FF00FE"
    )
        port map (
      I0 => p_7_in,
      I1 => p_6_in,
      I2 => p_9_in,
      I3 => \^mer_int_reg[1]\,
      I4 => p_8_in,
      O => ip2bus_wrack_int_d1_i_5_n_0
    );
\mer_int[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s_axi_wdata(0),
      I1 => p_10_in,
      I2 => \^mer_int_reg[1]\,
      I3 => mer,
      O => \mer_int_reg[0]\
    );
\mer_int[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF20"
    )
        port map (
      I0 => s_axi_wdata(1),
      I1 => \^mer_int_reg[1]\,
      I2 => p_10_in,
      I3 => p_0_in,
      O => \mer_int_reg[1]_0\
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_rdack,
      I1 => is_read,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      O => \^s_axi_arready\
    );
\s_axi_rdata_i[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E000000"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_3_n_0\,
      I1 => \s_axi_rdata_i[31]_i_4_n_0\,
      I2 => \bus2ip_addr_i_reg[7]\,
      I3 => \mer_int_reg[0]_0\,
      I4 => \bus2ip_addr_i_reg[8]\(0),
      I5 => \bus2ip_addr_i_reg[4]\,
      O => D(0)
    );
\s_axi_rdata_i[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0E000E0E0E000000"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_3_n_0\,
      I1 => \s_axi_rdata_i[31]_i_4_n_0\,
      I2 => \bus2ip_addr_i_reg[7]\,
      I3 => \mer_int_reg[1]_1\,
      I4 => \bus2ip_addr_i_reg[8]\(0),
      I5 => \bus2ip_addr_i_reg[4]_0\,
      O => D(1)
    );
\s_axi_rdata_i[31]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000E00000000"
    )
        port map (
      I0 => \s_axi_rdata_i[31]_i_3_n_0\,
      I1 => \s_axi_rdata_i[31]_i_4_n_0\,
      I2 => \bus2ip_addr_i_reg[8]\(5),
      I3 => \bus2ip_addr_i_reg[8]\(4),
      I4 => \bus2ip_addr_i_reg[8]\(6),
      I5 => \bus2ip_addr_i_reg[3]\,
      O => D(2)
    );
\s_axi_rdata_i[31]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FF00FE00"
    )
        port map (
      I0 => p_9_in,
      I1 => p_10_in,
      I2 => \^reg_gen[1].isr_reg[1]\,
      I3 => \^mer_int_reg[1]\,
      I4 => p_8_in,
      O => \s_axi_rdata_i[31]_i_3_n_0\
    );
\s_axi_rdata_i[31]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F0E0"
    )
        port map (
      I0 => p_15_in,
      I1 => p_11_in,
      I2 => \^mer_int_reg[1]\,
      I3 => p_16_in,
      O => \s_axi_rdata_i[31]_i_4_n_0\
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAAAEAAAA"
    )
        port map (
      I0 => ip2bus_wrack,
      I1 => is_write_reg,
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(1),
      I4 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3),
      I5 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(0),
      O => \^s_axi_wready\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0_intc_core is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \IVR_GEN.ivr_reg[0]_0\ : out STD_LOGIC;
    p_0_in1_in : out STD_LOGIC;
    \s_axi_rdata_i_reg[1]\ : out STD_LOGIC;
    \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg[0]_0\ : out STD_LOGIC;
    p_0_in13_in : out STD_LOGIC;
    p_0_in : out STD_LOGIC;
    \REG_GEN[0].isr_reg[0]_0\ : out STD_LOGIC;
    p_1_in : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_0\ : out STD_LOGIC;
    p_0_in9_in : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_1\ : out STD_LOGIC;
    p_0_in17_in : out STD_LOGIC;
    mer : out STD_LOGIC;
    irq : out STD_LOGIC;
    \s_axi_rdata_i_reg[0]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 1 downto 0 );
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aclk : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ : in STD_LOGIC;
    Bus_RNW_reg_reg : in STD_LOGIC;
    Bus_RNW_reg_reg_0 : in STD_LOGIC;
    Bus_RNW_reg_reg_1 : in STD_LOGIC;
    Bus_RNW_reg_reg_2 : in STD_LOGIC;
    Bus_RNW_reg_reg_3 : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    Bus_RNW_reg : in STD_LOGIC;
    p_17_in : in STD_LOGIC;
    \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_intc_0_0_intc_core : entity is "intc_core";
end system_axi_intc_0_0_intc_core;

architecture STRUCTURE of system_axi_intc_0_0_intc_core is
  signal \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\ : STD_LOGIC;
  signal \^intr_detect_gen[0].lvl_detect_gen.hw_intr_reg[0]_0\ : STD_LOGIC;
  signal \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IPR_GEN.ipr[1]_i_1_n_0\ : STD_LOGIC;
  signal \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[0]_i_1_n_0\ : STD_LOGIC;
  signal \IVR_GEN.ivr[1]_i_1_n_0\ : STD_LOGIC;
  signal \^ivr_gen.ivr_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[0].ier[0]_i_1_n_0\ : STD_LOGIC;
  signal \^reg_gen[0].ier_reg[0]_0\ : STD_LOGIC;
  signal \^reg_gen[0].ier_reg[0]_1\ : STD_LOGIC;
  signal \REG_GEN[0].isr[0]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[0].isr[0]_i_2_n_0\ : STD_LOGIC;
  signal \^reg_gen[0].isr_reg[0]_0\ : STD_LOGIC;
  signal \REG_GEN[1].ier[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].isr[1]_i_1_n_0\ : STD_LOGIC;
  signal \REG_GEN[1].isr[1]_i_2_n_0\ : STD_LOGIC;
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal hw_intr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal intr_d1 : STD_LOGIC;
  signal \^irq\ : STD_LOGIC;
  signal irq_gen : STD_LOGIC;
  signal irq_gen_i : STD_LOGIC;
  signal \^mer\ : STD_LOGIC;
  signal \^p_0_in\ : STD_LOGIC;
  signal \^p_0_in13_in\ : STD_LOGIC;
  signal \^p_0_in17_in\ : STD_LOGIC;
  signal \^p_0_in1_in\ : STD_LOGIC;
  signal \^p_0_in9_in\ : STD_LOGIC;
  signal \^p_1_in\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \IPR_GEN.ipr[0]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of irq_gen_i_1 : label is "soft_lutpair22";
begin
  \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg[0]_0\ <= \^intr_detect_gen[0].lvl_detect_gen.hw_intr_reg[0]_0\;
  \IVR_GEN.ivr_reg[0]_0\ <= \^ivr_gen.ivr_reg[0]_0\;
  \REG_GEN[0].ier_reg[0]_0\ <= \^reg_gen[0].ier_reg[0]_0\;
  \REG_GEN[0].ier_reg[0]_1\ <= \^reg_gen[0].ier_reg[0]_1\;
  \REG_GEN[0].isr_reg[0]_0\ <= \^reg_gen[0].isr_reg[0]_0\;
  SR(0) <= \^sr\(0);
  irq <= \^irq\;
  mer <= \^mer\;
  p_0_in <= \^p_0_in\;
  p_0_in13_in <= \^p_0_in13_in\;
  p_0_in17_in <= \^p_0_in17_in\;
  p_0_in1_in <= \^p_0_in1_in\;
  p_0_in9_in <= \^p_0_in9_in\;
  p_1_in <= \^p_1_in\;
\CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_2,
      Q => \^reg_gen[0].ier_reg[0]_1\,
      R => '0'
    );
\CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_3,
      Q => \^p_0_in17_in\,
      R => '0'
    );
\INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"00E0"
    )
        port map (
      I0 => hw_intr(0),
      I1 => intr(0),
      I2 => s_axi_aresetn,
      I3 => \^intr_detect_gen[0].lvl_detect_gen.hw_intr_reg[0]_0\,
      O => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\
    );
\INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr[0]_i_1_n_0\,
      Q => hw_intr(0),
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"0000AE00"
    )
        port map (
      I0 => hw_intr(1),
      I1 => intr(1),
      I2 => intr_d1,
      I3 => s_axi_aresetn,
      I4 => \^p_0_in13_in\,
      O => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \INTR_DETECT_GEN[1].EDGE_DETECT_GEN.hw_intr[1]_i_1_n_0\,
      Q => hw_intr(1),
      R => '0'
    );
\INTR_DETECT_GEN[1].EDGE_DETECT_GEN.intr_d1_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => intr(1),
      Q => intr_d1,
      R => \^sr\(0)
    );
\IPR_GEN.ipr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^reg_gen[0].isr_reg[0]_0\,
      I1 => \^ivr_gen.ivr_reg[0]_0\,
      O => \IPR_GEN.ipr[0]_i_1_n_0\
    );
\IPR_GEN.ipr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^p_0_in1_in\,
      O => \IPR_GEN.ipr[1]_i_1_n_0\
    );
\IPR_GEN.ipr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[0]_i_1_n_0\,
      Q => Q(0),
      R => \^sr\(0)
    );
\IPR_GEN.ipr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IPR_GEN.ipr[1]_i_1_n_0\,
      Q => Q(1),
      R => \^sr\(0)
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E000"
    )
        port map (
      I0 => \^irq\,
      I1 => \^mer\,
      I2 => s_axi_aresetn,
      I3 => irq_gen,
      O => \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0\
    );
\IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_reg\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IRQ_LEVEL_GEN.IRQ_LEVEL_NORMAL_ON_AXI_CLK_GEN.Irq_i_1_n_0\,
      Q => \^irq\,
      R => '0'
    );
\IVR_GEN.ivr[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => s_axi_aresetn,
      I1 => \^ivr_gen.ivr_reg[0]_0\,
      I2 => \^reg_gen[0].isr_reg[0]_0\,
      O => \IVR_GEN.ivr[0]_i_1_n_0\
    );
\IVR_GEN.ivr[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0777"
    )
        port map (
      I0 => \^p_1_in\,
      I1 => \^p_0_in1_in\,
      I2 => \^reg_gen[0].isr_reg[0]_0\,
      I3 => \^ivr_gen.ivr_reg[0]_0\,
      O => \IVR_GEN.ivr[1]_i_1_n_0\
    );
\IVR_GEN.ivr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[0]_i_1_n_0\,
      Q => \s_axi_rdata_i_reg[0]\,
      R => '0'
    );
\IVR_GEN.ivr_reg[1]\: unisim.vcomponents.FDSE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \IVR_GEN.ivr[1]_i_1_n_0\,
      Q => \s_axi_rdata_i_reg[1]\,
      S => \^sr\(0)
    );
\REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\,
      Q => \^intr_detect_gen[0].lvl_detect_gen.hw_intr_reg[0]_0\,
      R => '0'
    );
\REG_GEN[0].ier[0]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEF40000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      I1 => \^ivr_gen.ivr_reg[0]_0\,
      I2 => \^reg_gen[0].ier_reg[0]_0\,
      I3 => s_axi_wdata(0),
      I4 => s_axi_aresetn,
      I5 => \^reg_gen[0].ier_reg[0]_1\,
      O => \REG_GEN[0].ier[0]_i_1_n_0\
    );
\REG_GEN[0].ier_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].ier[0]_i_1_n_0\,
      Q => \^ivr_gen.ivr_reg[0]_0\,
      R => '0'
    );
\REG_GEN[0].isr[0]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^intr_detect_gen[0].lvl_detect_gen.hw_intr_reg[0]_0\,
      I1 => s_axi_aresetn,
      O => \REG_GEN[0].isr[0]_i_1_n_0\
    );
\REG_GEN[0].isr[0]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => hw_intr(0),
      I1 => s_axi_wdata(0),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \^reg_gen[0].isr_reg[0]_0\,
      O => \REG_GEN[0].isr[0]_i_2_n_0\
    );
\REG_GEN[0].isr_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[0].isr[0]_i_2_n_0\,
      Q => \^reg_gen[0].isr_reg[0]_0\,
      R => \REG_GEN[0].isr[0]_i_1_n_0\
    );
\REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\,
      Q => \^p_0_in13_in\,
      R => '0'
    );
\REG_GEN[1].ier[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FEF40000"
    )
        port map (
      I0 => \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\,
      I1 => \^p_0_in1_in\,
      I2 => \^p_0_in9_in\,
      I3 => s_axi_wdata(1),
      I4 => s_axi_aresetn,
      I5 => \^p_0_in17_in\,
      O => \REG_GEN[1].ier[1]_i_1_n_0\
    );
\REG_GEN[1].ier_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].ier[1]_i_1_n_0\,
      Q => \^p_0_in1_in\,
      R => '0'
    );
\REG_GEN[1].isr[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"B"
    )
        port map (
      I0 => \^p_0_in13_in\,
      I1 => s_axi_aresetn,
      O => \REG_GEN[1].isr[1]_i_1_n_0\
    );
\REG_GEN[1].isr[1]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AFACAFAFA0ACA0A0"
    )
        port map (
      I0 => hw_intr(1),
      I1 => s_axi_wdata(1),
      I2 => \^p_0_in\,
      I3 => Bus_RNW_reg,
      I4 => p_17_in,
      I5 => \^p_1_in\,
      O => \REG_GEN[1].isr[1]_i_2_n_0\
    );
\REG_GEN[1].isr_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \REG_GEN[1].isr[1]_i_2_n_0\,
      Q => \^p_1_in\,
      R => \REG_GEN[1].isr[1]_i_1_n_0\
    );
\SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_0,
      Q => \^reg_gen[0].ier_reg[0]_0\,
      R => '0'
    );
\SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg_1,
      Q => \^p_0_in9_in\,
      R => '0'
    );
irq_gen_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => \^ivr_gen.ivr_reg[0]_0\,
      I1 => \^reg_gen[0].isr_reg[0]_0\,
      I2 => \^p_0_in1_in\,
      I3 => \^p_1_in\,
      O => irq_gen_i
    );
irq_gen_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => irq_gen_i,
      Q => irq_gen,
      R => \^sr\(0)
    );
\mer_int_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\,
      Q => \^mer\,
      R => \^sr\(0)
    );
\mer_int_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Bus_RNW_reg_reg,
      Q => \^p_0_in\,
      R => \^sr\(0)
    );
rst_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0_slave_attachment is
  port (
    \REG_GEN[1].isr_reg[1]\ : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \mer_int_reg[1]\ : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    \mer_int_reg[1]_0\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    \IVR_GEN.ivr_reg[0]\ : in STD_LOGIC;
    \IVR_GEN.ivr_reg[1]\ : in STD_LOGIC;
    mer : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    \REG_GEN[0].isr_reg[0]\ : in STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_intc_0_0_slave_attachment : entity is "slave_attachment";
end system_axi_intc_0_0_slave_attachment;

architecture STRUCTURE of system_axi_intc_0_0_slave_attachment is
  signal \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal IP2Bus_Data : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal bus2ip_addr : STD_LOGIC_VECTOR ( 8 downto 2 );
  signal \bus2ip_addr_i[2]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[4]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[5]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[6]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[7]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_1_n_0\ : STD_LOGIC;
  signal \bus2ip_addr_i[8]_i_2_n_0\ : STD_LOGIC;
  signal bus2ip_rnw_i_reg_n_0 : STD_LOGIC;
  signal clear : STD_LOGIC;
  signal ip2bus_error : STD_LOGIC;
  signal is_read : STD_LOGIC;
  signal is_read_i_1_n_0 : STD_LOGIC;
  signal is_write : STD_LOGIC;
  signal is_write_i_1_n_0 : STD_LOGIC;
  signal is_write_reg_n_0 : STD_LOGIC;
  signal plusOp : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal rst : STD_LOGIC;
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \s_axi_bresp_i[1]_i_1_n_0\ : STD_LOGIC;
  signal \^s_axi_bvalid\ : STD_LOGIC;
  signal s_axi_bvalid_i_i_1_n_0 : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[0]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_2_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_3_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[1]_i_4_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_1_n_0\ : STD_LOGIC;
  signal \s_axi_rdata_i[31]_i_5_n_0\ : STD_LOGIC;
  signal \^s_axi_rvalid\ : STD_LOGIC;
  signal s_axi_rvalid_i_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wready\ : STD_LOGIC;
  signal start2 : STD_LOGIC;
  signal start2_i_1_n_0 : STD_LOGIC;
  signal state : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal \state1__2\ : STD_LOGIC;
  signal \state[0]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_1_n_0\ : STD_LOGIC;
  signal \state[1]_i_3_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[3]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[4]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[5]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[6]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[7]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \bus2ip_addr_i[8]_i_2\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of start2_i_1 : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \state[1]_i_3\ : label is "soft_lutpair16";
begin
  s_axi_arready <= \^s_axi_arready\;
  s_axi_bresp(0) <= \^s_axi_bresp\(0);
  s_axi_bvalid <= \^s_axi_bvalid\;
  s_axi_rvalid <= \^s_axi_rvalid\;
  s_axi_wready <= \^s_axi_wready\;
\INCLUDE_DPHASE_TIMER.dpto_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      O => plusOp(0)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"6"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      O => plusOp(1)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"78"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      O => plusOp(2)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"9"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt[3]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7F80"
    )
        port map (
      I0 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      I1 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      I2 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      I3 => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      O => plusOp(3)
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(0),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(0),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(1),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(1),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(2),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(2),
      R => clear
    );
\INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => plusOp(3),
      Q => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3),
      R => clear
    );
I_DECODER: entity work.system_axi_intc_0_0_address_decoder
     port map (
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\,
      D(2) => IP2Bus_Data(31),
      D(1 downto 0) => IP2Bus_Data(1 downto 0),
      \INCLUDE_DPHASE_TIMER.dpto_cnt_reg[3]\(3 downto 0) => \INCLUDE_DPHASE_TIMER.dpto_cnt_reg__0\(3 downto 0),
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q => start2,
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\,
      \REG_GEN[0].ier_reg[0]\ => \REG_GEN[0].ier_reg[0]\,
      \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ => \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\,
      \REG_GEN[1].isr_reg[1]\ => \REG_GEN[1].isr_reg[1]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\,
      \bus2ip_addr_i_reg[3]\ => \s_axi_rdata_i[31]_i_5_n_0\,
      \bus2ip_addr_i_reg[4]\ => \s_axi_rdata_i[0]_i_3_n_0\,
      \bus2ip_addr_i_reg[4]_0\ => \s_axi_rdata_i[1]_i_4_n_0\,
      \bus2ip_addr_i_reg[7]\ => \s_axi_rdata_i[1]_i_2_n_0\,
      \bus2ip_addr_i_reg[8]\(6 downto 0) => bus2ip_addr(8 downto 2),
      bus2ip_rnw_i_reg => bus2ip_rnw_i_reg_n_0,
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_reg => ip2bus_rdack_reg,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_reg => ip2bus_wrack_reg,
      is_read => is_read,
      is_write_reg => is_write_reg_n_0,
      mer => mer,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      \mer_int_reg[0]_0\ => \s_axi_rdata_i[0]_i_2_n_0\,
      \mer_int_reg[1]\ => \mer_int_reg[1]\,
      \mer_int_reg[1]_0\ => \mer_int_reg[1]_0\,
      \mer_int_reg[1]_1\ => \s_axi_rdata_i[1]_i_3_n_0\,
      p_0_in => p_0_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in9_in => p_0_in9_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => \^s_axi_arready\,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => \^s_axi_wready\
    );
\bus2ip_addr_i[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(0),
      I1 => s_axi_awaddr(0),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[2]_i_1_n_0\
    );
\bus2ip_addr_i[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(1),
      I1 => s_axi_awaddr(1),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[3]_i_1_n_0\
    );
\bus2ip_addr_i[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(2),
      I1 => s_axi_awaddr(2),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[4]_i_1_n_0\
    );
\bus2ip_addr_i[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(3),
      I1 => s_axi_awaddr(3),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[5]_i_1_n_0\
    );
\bus2ip_addr_i[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(4),
      I1 => s_axi_awaddr(4),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[6]_i_1_n_0\
    );
\bus2ip_addr_i[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(5),
      I1 => s_axi_awaddr(5),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[7]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000EA"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => state(0),
      O => \bus2ip_addr_i[8]_i_1_n_0\
    );
\bus2ip_addr_i[8]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"AC"
    )
        port map (
      I0 => s_axi_araddr(6),
      I1 => s_axi_awaddr(6),
      I2 => s_axi_arvalid,
      O => \bus2ip_addr_i[8]_i_2_n_0\
    );
\bus2ip_addr_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[2]_i_1_n_0\,
      Q => bus2ip_addr(2),
      R => rst
    );
\bus2ip_addr_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[3]_i_1_n_0\,
      Q => bus2ip_addr(3),
      R => rst
    );
\bus2ip_addr_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[4]_i_1_n_0\,
      Q => bus2ip_addr(4),
      R => rst
    );
\bus2ip_addr_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[5]_i_1_n_0\,
      Q => bus2ip_addr(5),
      R => rst
    );
\bus2ip_addr_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[6]_i_1_n_0\,
      Q => bus2ip_addr(6),
      R => rst
    );
\bus2ip_addr_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[7]_i_1_n_0\,
      Q => bus2ip_addr(7),
      R => rst
    );
\bus2ip_addr_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => \bus2ip_addr_i[8]_i_2_n_0\,
      Q => bus2ip_addr(8),
      R => rst
    );
bus2ip_rnw_i_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => \bus2ip_addr_i[8]_i_1_n_0\,
      D => s_axi_arvalid,
      Q => bus2ip_rnw_i_reg_n_0,
      R => rst
    );
is_read_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"3FFA000A"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => \state1__2\,
      I2 => state(0),
      I3 => state(1),
      I4 => is_read,
      O => is_read_i_1_n_0
    );
is_read_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_read_i_1_n_0,
      Q => is_read,
      R => rst
    );
is_write_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0040FFFF00400000"
    )
        port map (
      I0 => s_axi_arvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_wvalid,
      I3 => state(1),
      I4 => is_write,
      I5 => is_write_reg_n_0,
      O => is_write_i_1_n_0
    );
is_write_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F88800000000FFFF"
    )
        port map (
      I0 => \^s_axi_rvalid\,
      I1 => s_axi_rready,
      I2 => \^s_axi_bvalid\,
      I3 => s_axi_bready,
      I4 => state(0),
      I5 => state(1),
      O => is_write
    );
is_write_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => is_write_i_1_n_0,
      Q => is_write_reg_n_0,
      R => rst
    );
rst_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => SR(0),
      Q => rst,
      R => '0'
    );
\s_axi_bresp_i[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => ip2bus_error,
      I1 => state(1),
      I2 => state(0),
      I3 => \^s_axi_bresp\(0),
      O => \s_axi_bresp_i[1]_i_1_n_0\
    );
\s_axi_bresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => \s_axi_bresp_i[1]_i_1_n_0\,
      Q => \^s_axi_bresp\(0),
      R => rst
    );
s_axi_bvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_wready\,
      I1 => state(1),
      I2 => state(0),
      I3 => s_axi_bready,
      I4 => \^s_axi_bvalid\,
      O => s_axi_bvalid_i_i_1_n_0
    );
s_axi_bvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_bvalid_i_i_1_n_0,
      Q => \^s_axi_bvalid\,
      R => rst
    );
\s_axi_rdata_i[0]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03038380"
    )
        port map (
      I0 => mer,
      I1 => bus2ip_addr(3),
      I2 => bus2ip_addr(4),
      I3 => Q(0),
      I4 => bus2ip_addr(5),
      O => \s_axi_rdata_i[0]_i_2_n_0\
    );
\s_axi_rdata_i[0]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => bus2ip_addr(4),
      I1 => \REG_GEN[0].isr_reg[0]\,
      I2 => bus2ip_addr(3),
      I3 => \REG_GEN[0].ier_reg[0]_0\,
      I4 => \IVR_GEN.ivr_reg[0]\,
      I5 => bus2ip_addr(5),
      O => \s_axi_rdata_i[0]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => bus2ip_addr(7),
      I1 => bus2ip_addr(6),
      I2 => bus2ip_addr(8),
      O => \s_axi_rdata_i[1]_i_2_n_0\
    );
\s_axi_rdata_i[1]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"03038380"
    )
        port map (
      I0 => p_0_in,
      I1 => bus2ip_addr(3),
      I2 => bus2ip_addr(4),
      I3 => Q(1),
      I4 => bus2ip_addr(5),
      O => \s_axi_rdata_i[1]_i_3_n_0\
    );
\s_axi_rdata_i[1]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000F4A45404"
    )
        port map (
      I0 => bus2ip_addr(4),
      I1 => p_1_in,
      I2 => bus2ip_addr(3),
      I3 => p_0_in1_in,
      I4 => \IVR_GEN.ivr_reg[1]\,
      I5 => bus2ip_addr(5),
      O => \s_axi_rdata_i[1]_i_4_n_0\
    );
\s_axi_rdata_i[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => state(0),
      I1 => state(1),
      O => \s_axi_rdata_i[31]_i_1_n_0\
    );
\s_axi_rdata_i[31]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0240004000400040"
    )
        port map (
      I0 => bus2ip_addr(3),
      I1 => bus2ip_addr(2),
      I2 => bus2ip_addr(5),
      I3 => bus2ip_addr(4),
      I4 => \IVR_GEN.ivr_reg[0]\,
      I5 => \IVR_GEN.ivr_reg[1]\,
      O => \s_axi_rdata_i[31]_i_5_n_0\
    );
\s_axi_rdata_i_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => IP2Bus_Data(0),
      Q => s_axi_rdata(0),
      R => rst
    );
\s_axi_rdata_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => IP2Bus_Data(1),
      Q => s_axi_rdata(1),
      R => rst
    );
\s_axi_rdata_i_reg[31]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => IP2Bus_Data(31),
      Q => s_axi_rdata(2),
      R => rst
    );
\s_axi_rresp_i[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"070F0F0F"
    )
        port map (
      I0 => s_axi_wstrb(1),
      I1 => s_axi_wstrb(2),
      I2 => bus2ip_rnw_i_reg_n_0,
      I3 => s_axi_wstrb(0),
      I4 => s_axi_wstrb(3),
      O => ip2bus_error
    );
\s_axi_rresp_i_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => \s_axi_rdata_i[31]_i_1_n_0\,
      D => ip2bus_error,
      Q => s_axi_rresp(0),
      R => rst
    );
s_axi_rvalid_i_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08FF0808"
    )
        port map (
      I0 => \^s_axi_arready\,
      I1 => state(0),
      I2 => state(1),
      I3 => s_axi_rready,
      I4 => \^s_axi_rvalid\,
      O => s_axi_rvalid_i_i_1_n_0
    );
s_axi_rvalid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => s_axi_aclk,
      CE => '1',
      D => s_axi_rvalid_i_i_1_n_0,
      Q => \^s_axi_rvalid\,
      R => rst
    );
start2_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000000F8"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_wvalid,
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => state(0),
      O => start2_i_1_n_0
    );
start2_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => start2_i_1_n_0,
      Q => start2,
      R => rst
    );
\state[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"77FC44FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => state(0),
      I2 => s_axi_arvalid,
      I3 => state(1),
      I4 => \^s_axi_wready\,
      O => \state[0]_i_1_n_0\
    );
\state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"5FFC50FC"
    )
        port map (
      I0 => \state1__2\,
      I1 => \state[1]_i_3_n_0\,
      I2 => state(1),
      I3 => state(0),
      I4 => \^s_axi_arready\,
      O => \state[1]_i_1_n_0\
    );
\state[1]_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"F888"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \^s_axi_bvalid\,
      I2 => s_axi_rready,
      I3 => \^s_axi_rvalid\,
      O => \state1__2\
    );
\state[1]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"08"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => s_axi_awvalid,
      I2 => s_axi_arvalid,
      O => \state[1]_i_3_n_0\
    );
\state_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[0]_i_1_n_0\,
      Q => state(0),
      R => rst
    );
\state_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => \state[1]_i_1_n_0\,
      Q => state(1),
      R => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0_axi_lite_ipif is
  port (
    p_17_in : out STD_LOGIC;
    s_axi_rresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    Bus_RNW_reg : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 0 to 0 );
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ : out STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ : out STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    Or128_vec2stdlogic19_out : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    Or128_vec2stdlogic : out STD_LOGIC;
    \mer_int_reg[1]\ : out STD_LOGIC;
    \mer_int_reg[0]\ : out STD_LOGIC;
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ : out STD_LOGIC;
    \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ : out STD_LOGIC;
    ip2bus_rdack_reg : out STD_LOGIC;
    ip2bus_wrack_reg : out STD_LOGIC;
    \REG_GEN[0].ier_reg[0]\ : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 2 downto 0 );
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_aclk : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_aresetn : in STD_LOGIC;
    \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ : in STD_LOGIC;
    p_0_in9_in : in STD_LOGIC;
    \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ : in STD_LOGIC;
    p_0_in17_in : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    ip2bus_rdack : in STD_LOGIC;
    ip2bus_wrack : in STD_LOGIC;
    \IVR_GEN.ivr_reg[0]\ : in STD_LOGIC;
    \IVR_GEN.ivr_reg[1]\ : in STD_LOGIC;
    mer : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 1 downto 0 );
    p_0_in : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 6 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ : in STD_LOGIC;
    p_0_in13_in : in STD_LOGIC;
    ip2bus_rdack_int_d1 : in STD_LOGIC;
    ip2bus_wrack_int_d1 : in STD_LOGIC;
    \REG_GEN[0].isr_reg[0]\ : in STD_LOGIC;
    \REG_GEN[0].ier_reg[0]_0\ : in STD_LOGIC;
    p_1_in : in STD_LOGIC;
    p_0_in1_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_intc_0_0_axi_lite_ipif : entity is "axi_lite_ipif";
end system_axi_intc_0_0_axi_lite_ipif;

architecture STRUCTURE of system_axi_intc_0_0_axi_lite_ipif is
begin
I_SLAVE_ATTACHMENT: entity work.system_axi_intc_0_0_slave_attachment
     port map (
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\,
      \IVR_GEN.ivr_reg[0]\ => \IVR_GEN.ivr_reg[0]\,
      \IVR_GEN.ivr_reg[1]\ => \IVR_GEN.ivr_reg[1]\,
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(1 downto 0) => Q(1 downto 0),
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\,
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ => \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\,
      \REG_GEN[0].ier_reg[0]\ => \REG_GEN[0].ier_reg[0]\,
      \REG_GEN[0].ier_reg[0]_0\ => \REG_GEN[0].ier_reg[0]_0\,
      \REG_GEN[0].isr_reg[0]\ => \REG_GEN[0].isr_reg[0]\,
      \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ => \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\,
      \REG_GEN[1].isr_reg[1]\ => p_17_in,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\,
      SR(0) => SR(0),
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_reg => ip2bus_rdack_reg,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_reg => ip2bus_wrack_reg,
      mer => mer,
      \mer_int_reg[0]\ => \mer_int_reg[0]\,
      \mer_int_reg[1]\ => Bus_RNW_reg,
      \mer_int_reg[1]_0\ => \mer_int_reg[1]\,
      p_0_in => p_0_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in9_in => p_0_in9_in,
      p_1_in => p_1_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(6 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(6 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => s_axi_bresp(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(2 downto 0) => s_axi_rdata(2 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => s_axi_rresp(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0_axi_intc is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    processor_clk : in STD_LOGIC;
    processor_rst : in STD_LOGIC;
    irq : out STD_LOGIC;
    processor_ack : in STD_LOGIC_VECTOR ( 1 downto 0 );
    interrupt_address : out STD_LOGIC_VECTOR ( 31 downto 0 );
    irq_in : in STD_LOGIC;
    interrupt_address_in : in STD_LOGIC_VECTOR ( 31 downto 0 );
    processor_ack_out : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of system_axi_intc_0_0_axi_intc : entity is -4;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of system_axi_intc_0_0_axi_intc : entity is "artix7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of system_axi_intc_0_0_axi_intc : entity is "system_axi_intc_0_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of system_axi_intc_0_0_axi_intc : entity is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of system_axi_intc_0_0_axi_intc : entity is 16;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of system_axi_intc_0_0_axi_intc : entity is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of system_axi_intc_0_0_axi_intc : entity is -2;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of system_axi_intc_0_0_axi_intc : entity is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of system_axi_intc_0_0_axi_intc : entity is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of system_axi_intc_0_0_axi_intc : entity is 2;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of system_axi_intc_0_0_axi_intc : entity is 0;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of system_axi_intc_0_0_axi_intc : entity is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of system_axi_intc_0_0_axi_intc : entity is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of system_axi_intc_0_0_axi_intc : entity is 32;
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_axi_intc_0_0_axi_intc : entity is "axi_intc";
  attribute hdl : string;
  attribute hdl of system_axi_intc_0_0_axi_intc : entity is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of system_axi_intc_0_0_axi_intc : entity is "TRUE";
  attribute ip_group : string;
  attribute ip_group of system_axi_intc_0_0_axi_intc : entity is "LOGICORE";
  attribute iptype : string;
  attribute iptype of system_axi_intc_0_0_axi_intc : entity is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of system_axi_intc_0_0_axi_intc : entity is "TRUE";
  attribute style : string;
  attribute style of system_axi_intc_0_0_axi_intc : entity is "HDL";
end system_axi_intc_0_0_axi_intc;

architecture STRUCTURE of system_axi_intc_0_0_axi_intc is
  signal \<const0>\ : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_14 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_15 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_16 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_17 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_18 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_19 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_20 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_6 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_7 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_8 : STD_LOGIC;
  signal AXI_LITE_IPIF_I_n_9 : STD_LOGIC;
  signal INTC_CORE_I_n_0 : STD_LOGIC;
  signal INTC_CORE_I_n_1 : STD_LOGIC;
  signal INTC_CORE_I_n_11 : STD_LOGIC;
  signal INTC_CORE_I_n_15 : STD_LOGIC;
  signal INTC_CORE_I_n_3 : STD_LOGIC;
  signal INTC_CORE_I_n_4 : STD_LOGIC;
  signal INTC_CORE_I_n_7 : STD_LOGIC;
  signal INTC_CORE_I_n_9 : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\ : STD_LOGIC;
  signal \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\ : STD_LOGIC;
  signal Or128_vec2stdlogic : STD_LOGIC;
  signal Or128_vec2stdlogic19_out : STD_LOGIC;
  signal ip2bus_rdack : STD_LOGIC;
  signal ip2bus_rdack_int_d1 : STD_LOGIC;
  signal ip2bus_wrack : STD_LOGIC;
  signal ip2bus_wrack_int_d1 : STD_LOGIC;
  signal ipr : STD_LOGIC_VECTOR ( 1 downto 0 );
  signal mer : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal p_0_in13_in : STD_LOGIC;
  signal p_0_in17_in : STD_LOGIC;
  signal p_0_in1_in : STD_LOGIC;
  signal p_0_in9_in : STD_LOGIC;
  signal p_1_in : STD_LOGIC;
  signal \^s_axi_bresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_rdata\ : STD_LOGIC_VECTOR ( 30 downto 0 );
  signal \^s_axi_rresp\ : STD_LOGIC_VECTOR ( 1 to 1 );
  signal \^s_axi_wready\ : STD_LOGIC;
  attribute max_fanout : string;
  attribute max_fanout of s_axi_aclk : signal is "10000";
  attribute sigis : string;
  attribute sigis of s_axi_aclk : signal is "Clk";
  attribute max_fanout of s_axi_aresetn : signal is "10000";
  attribute sigis of s_axi_aresetn : signal is "Rstn";
  attribute BUFFER_TYPE : string;
  attribute BUFFER_TYPE of intr : signal is "none";
begin
  interrupt_address(31) <= \<const0>\;
  interrupt_address(30) <= \<const0>\;
  interrupt_address(29) <= \<const0>\;
  interrupt_address(28) <= \<const0>\;
  interrupt_address(27) <= \<const0>\;
  interrupt_address(26) <= \<const0>\;
  interrupt_address(25) <= \<const0>\;
  interrupt_address(24) <= \<const0>\;
  interrupt_address(23) <= \<const0>\;
  interrupt_address(22) <= \<const0>\;
  interrupt_address(21) <= \<const0>\;
  interrupt_address(20) <= \<const0>\;
  interrupt_address(19) <= \<const0>\;
  interrupt_address(18) <= \<const0>\;
  interrupt_address(17) <= \<const0>\;
  interrupt_address(16) <= \<const0>\;
  interrupt_address(15) <= \<const0>\;
  interrupt_address(14) <= \<const0>\;
  interrupt_address(13) <= \<const0>\;
  interrupt_address(12) <= \<const0>\;
  interrupt_address(11) <= \<const0>\;
  interrupt_address(10) <= \<const0>\;
  interrupt_address(9) <= \<const0>\;
  interrupt_address(8) <= \<const0>\;
  interrupt_address(7) <= \<const0>\;
  interrupt_address(6) <= \<const0>\;
  interrupt_address(5) <= \<const0>\;
  interrupt_address(4) <= \<const0>\;
  interrupt_address(3) <= \<const0>\;
  interrupt_address(2) <= \<const0>\;
  interrupt_address(1) <= \<const0>\;
  interrupt_address(0) <= \<const0>\;
  processor_ack_out(1) <= \<const0>\;
  processor_ack_out(0) <= \<const0>\;
  s_axi_awready <= \^s_axi_wready\;
  s_axi_bresp(1) <= \^s_axi_bresp\(1);
  s_axi_bresp(0) <= \<const0>\;
  s_axi_rdata(31) <= \^s_axi_rdata\(30);
  s_axi_rdata(30) <= \^s_axi_rdata\(30);
  s_axi_rdata(29) <= \^s_axi_rdata\(30);
  s_axi_rdata(28) <= \^s_axi_rdata\(30);
  s_axi_rdata(27) <= \^s_axi_rdata\(30);
  s_axi_rdata(26) <= \^s_axi_rdata\(30);
  s_axi_rdata(25) <= \^s_axi_rdata\(30);
  s_axi_rdata(24) <= \^s_axi_rdata\(30);
  s_axi_rdata(23) <= \^s_axi_rdata\(30);
  s_axi_rdata(22) <= \^s_axi_rdata\(30);
  s_axi_rdata(21) <= \^s_axi_rdata\(30);
  s_axi_rdata(20) <= \^s_axi_rdata\(30);
  s_axi_rdata(19) <= \^s_axi_rdata\(30);
  s_axi_rdata(18) <= \^s_axi_rdata\(30);
  s_axi_rdata(17) <= \^s_axi_rdata\(30);
  s_axi_rdata(16) <= \^s_axi_rdata\(30);
  s_axi_rdata(15) <= \^s_axi_rdata\(30);
  s_axi_rdata(14) <= \^s_axi_rdata\(30);
  s_axi_rdata(13) <= \^s_axi_rdata\(30);
  s_axi_rdata(12) <= \^s_axi_rdata\(30);
  s_axi_rdata(11) <= \^s_axi_rdata\(30);
  s_axi_rdata(10) <= \^s_axi_rdata\(30);
  s_axi_rdata(9) <= \^s_axi_rdata\(30);
  s_axi_rdata(8) <= \^s_axi_rdata\(30);
  s_axi_rdata(7) <= \^s_axi_rdata\(30);
  s_axi_rdata(6) <= \^s_axi_rdata\(30);
  s_axi_rdata(5) <= \^s_axi_rdata\(30);
  s_axi_rdata(4) <= \^s_axi_rdata\(30);
  s_axi_rdata(3) <= \^s_axi_rdata\(30);
  s_axi_rdata(2) <= \^s_axi_rdata\(30);
  s_axi_rdata(1 downto 0) <= \^s_axi_rdata\(1 downto 0);
  s_axi_rresp(1) <= \^s_axi_rresp\(1);
  s_axi_rresp(0) <= \<const0>\;
  s_axi_wready <= \^s_axi_wready\;
AXI_LITE_IPIF_I: entity work.system_axi_intc_0_0_axi_lite_ipif
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]\ => AXI_LITE_IPIF_I_n_8,
      \CIE_GEN.CIE_BIT_GEN[0].cie_reg[0]_0\ => INTC_CORE_I_n_11,
      \CIE_GEN.CIE_BIT_GEN[1].cie_reg[1]\ => AXI_LITE_IPIF_I_n_9,
      \IVR_GEN.ivr_reg[0]\ => INTC_CORE_I_n_15,
      \IVR_GEN.ivr_reg[1]\ => INTC_CORE_I_n_3,
      Or128_vec2stdlogic => Or128_vec2stdlogic,
      Or128_vec2stdlogic19_out => Or128_vec2stdlogic19_out,
      Q(1 downto 0) => ipr(1 downto 0),
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]\ => AXI_LITE_IPIF_I_n_16,
      \REG_GEN[0].IAR_NORMAL_MODE_GEN.iar_reg[0]_0\ => INTC_CORE_I_n_4,
      \REG_GEN[0].ier_reg[0]\ => AXI_LITE_IPIF_I_n_20,
      \REG_GEN[0].ier_reg[0]_0\ => INTC_CORE_I_n_1,
      \REG_GEN[0].isr_reg[0]\ => INTC_CORE_I_n_7,
      \REG_GEN[1].IAR_NORMAL_MODE_GEN.iar_reg[1]\ => AXI_LITE_IPIF_I_n_17,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]\ => AXI_LITE_IPIF_I_n_6,
      \SIE_GEN.SIE_BIT_GEN[0].sie_reg[0]_0\ => INTC_CORE_I_n_9,
      \SIE_GEN.SIE_BIT_GEN[1].sie_reg[1]\ => AXI_LITE_IPIF_I_n_7,
      SR(0) => INTC_CORE_I_n_0,
      ip2bus_rdack => ip2bus_rdack,
      ip2bus_rdack_int_d1 => ip2bus_rdack_int_d1,
      ip2bus_rdack_reg => AXI_LITE_IPIF_I_n_18,
      ip2bus_wrack => ip2bus_wrack,
      ip2bus_wrack_int_d1 => ip2bus_wrack_int_d1,
      ip2bus_wrack_reg => AXI_LITE_IPIF_I_n_19,
      mer => mer,
      \mer_int_reg[0]\ => AXI_LITE_IPIF_I_n_15,
      \mer_int_reg[1]\ => AXI_LITE_IPIF_I_n_14,
      p_0_in => p_0_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in9_in => p_0_in9_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in => p_1_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(6 downto 0) => s_axi_araddr(8 downto 2),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(6 downto 0) => s_axi_awaddr(8 downto 2),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(0) => \^s_axi_bresp\(1),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(2) => \^s_axi_rdata\(30),
      s_axi_rdata(1 downto 0) => \^s_axi_rdata\(1 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(0) => \^s_axi_rresp\(1),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0),
      s_axi_wready => \^s_axi_wready\,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
INTC_CORE_I: entity work.system_axi_intc_0_0_intc_core
     port map (
      Bus_RNW_reg => \I_SLAVE_ATTACHMENT/I_DECODER/Bus_RNW_reg\,
      Bus_RNW_reg_reg => AXI_LITE_IPIF_I_n_14,
      Bus_RNW_reg_reg_0 => AXI_LITE_IPIF_I_n_6,
      Bus_RNW_reg_reg_1 => AXI_LITE_IPIF_I_n_7,
      Bus_RNW_reg_reg_2 => AXI_LITE_IPIF_I_n_8,
      Bus_RNW_reg_reg_3 => AXI_LITE_IPIF_I_n_9,
      \GEN_BKEND_CE_REGISTERS[2].ce_out_i_reg[2]\ => AXI_LITE_IPIF_I_n_20,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]\ => AXI_LITE_IPIF_I_n_16,
      \GEN_BKEND_CE_REGISTERS[3].ce_out_i_reg[3]_0\ => AXI_LITE_IPIF_I_n_17,
      \GEN_BKEND_CE_REGISTERS[7].ce_out_i_reg[7]\ => AXI_LITE_IPIF_I_n_15,
      \INTR_DETECT_GEN[0].LVL_DETECT_GEN.hw_intr_reg[0]_0\ => INTC_CORE_I_n_4,
      \IVR_GEN.ivr_reg[0]_0\ => INTC_CORE_I_n_1,
      Q(1 downto 0) => ipr(1 downto 0),
      \REG_GEN[0].ier_reg[0]_0\ => INTC_CORE_I_n_9,
      \REG_GEN[0].ier_reg[0]_1\ => INTC_CORE_I_n_11,
      \REG_GEN[0].isr_reg[0]_0\ => INTC_CORE_I_n_7,
      SR(0) => INTC_CORE_I_n_0,
      intr(1 downto 0) => intr(1 downto 0),
      irq => irq,
      mer => mer,
      p_0_in => p_0_in,
      p_0_in13_in => p_0_in13_in,
      p_0_in17_in => p_0_in17_in,
      p_0_in1_in => p_0_in1_in,
      p_0_in9_in => p_0_in9_in,
      p_17_in => \I_SLAVE_ATTACHMENT/I_DECODER/p_17_in\,
      p_1_in => p_1_in,
      s_axi_aclk => s_axi_aclk,
      s_axi_aresetn => s_axi_aresetn,
      \s_axi_rdata_i_reg[0]\ => INTC_CORE_I_n_15,
      \s_axi_rdata_i_reg[1]\ => INTC_CORE_I_n_3,
      s_axi_wdata(1 downto 0) => s_axi_wdata(1 downto 0)
    );
ip2bus_rdack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Or128_vec2stdlogic19_out,
      Q => ip2bus_rdack_int_d1,
      R => INTC_CORE_I_n_0
    );
ip2bus_rdack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_LITE_IPIF_I_n_18,
      Q => ip2bus_rdack,
      R => INTC_CORE_I_n_0
    );
ip2bus_wrack_int_d1_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => Or128_vec2stdlogic,
      Q => ip2bus_wrack_int_d1,
      R => INTC_CORE_I_n_0
    );
ip2bus_wrack_reg: unisim.vcomponents.FDRE
     port map (
      C => s_axi_aclk,
      CE => '1',
      D => AXI_LITE_IPIF_I_n_19,
      Q => ip2bus_wrack,
      R => INTC_CORE_I_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_axi_intc_0_0 is
  port (
    s_axi_aclk : in STD_LOGIC;
    s_axi_aresetn : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_araddr : in STD_LOGIC_VECTOR ( 8 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    intr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    irq : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_axi_intc_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_axi_intc_0_0 : entity is "system_axi_intc_0_0,axi_intc,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of system_axi_intc_0_0 : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of system_axi_intc_0_0 : entity is "axi_intc,Vivado 2017.4";
end system_axi_intc_0_0;

architecture STRUCTURE of system_axi_intc_0_0 is
  signal NLW_U0_interrupt_address_UNCONNECTED : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal NLW_U0_processor_ack_out_UNCONNECTED : STD_LOGIC_VECTOR ( 1 downto 0 );
  attribute C_ASYNC_INTR : integer;
  attribute C_ASYNC_INTR of U0 : label is -4;
  attribute C_CASCADE_MASTER : integer;
  attribute C_CASCADE_MASTER of U0 : label is 0;
  attribute C_DISABLE_SYNCHRONIZERS : integer;
  attribute C_DISABLE_SYNCHRONIZERS of U0 : label is 0;
  attribute C_ENABLE_ASYNC : integer;
  attribute C_ENABLE_ASYNC of U0 : label is 0;
  attribute C_EN_CASCADE_MODE : integer;
  attribute C_EN_CASCADE_MODE of U0 : label is 0;
  attribute C_FAMILY : string;
  attribute C_FAMILY of U0 : label is "artix7";
  attribute C_HAS_CIE : integer;
  attribute C_HAS_CIE of U0 : label is 1;
  attribute C_HAS_FAST : integer;
  attribute C_HAS_FAST of U0 : label is 0;
  attribute C_HAS_ILR : integer;
  attribute C_HAS_ILR of U0 : label is 0;
  attribute C_HAS_IPR : integer;
  attribute C_HAS_IPR of U0 : label is 1;
  attribute C_HAS_IVR : integer;
  attribute C_HAS_IVR of U0 : label is 1;
  attribute C_HAS_SIE : integer;
  attribute C_HAS_SIE of U0 : label is 1;
  attribute C_INSTANCE : string;
  attribute C_INSTANCE of U0 : label is "system_axi_intc_0_0";
  attribute C_IRQ_ACTIVE : string;
  attribute C_IRQ_ACTIVE of U0 : label is "1'b1";
  attribute C_IRQ_IS_LEVEL : integer;
  attribute C_IRQ_IS_LEVEL of U0 : label is 1;
  attribute C_IVAR_RESET_VALUE : integer;
  attribute C_IVAR_RESET_VALUE of U0 : label is 16;
  attribute C_KIND_OF_EDGE : integer;
  attribute C_KIND_OF_EDGE of U0 : label is -1;
  attribute C_KIND_OF_INTR : integer;
  attribute C_KIND_OF_INTR of U0 : label is -2;
  attribute C_KIND_OF_LVL : integer;
  attribute C_KIND_OF_LVL of U0 : label is -1;
  attribute C_MB_CLK_NOT_CONNECTED : integer;
  attribute C_MB_CLK_NOT_CONNECTED of U0 : label is 1;
  attribute C_NUM_INTR_INPUTS : integer;
  attribute C_NUM_INTR_INPUTS of U0 : label is 2;
  attribute C_NUM_SW_INTR : integer;
  attribute C_NUM_SW_INTR of U0 : label is 0;
  attribute C_NUM_SYNC_FF : integer;
  attribute C_NUM_SYNC_FF of U0 : label is 2;
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of U0 : label is 9;
  attribute C_S_AXI_DATA_WIDTH : integer;
  attribute C_S_AXI_DATA_WIDTH of U0 : label is 32;
  attribute hdl : string;
  attribute hdl of U0 : label is "VHDL";
  attribute imp_netlist : string;
  attribute imp_netlist of U0 : label is "TRUE";
  attribute ip_group : string;
  attribute ip_group of U0 : label is "LOGICORE";
  attribute iptype : string;
  attribute iptype of U0 : label is "PERIPHERAL";
  attribute run_ngcbuild : string;
  attribute run_ngcbuild of U0 : label is "TRUE";
  attribute style : string;
  attribute style of U0 : label is "HDL";
  attribute x_interface_info : string;
  attribute x_interface_info of irq : signal is "xilinx.com:interface:mbinterrupt:1.0 interrupt INTERRUPT";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of irq : signal is "XIL_INTERFACENAME interrupt, SENSITIVITY LEVEL_HIGH, LOW_LATENCY 0";
  attribute x_interface_info of s_axi_aclk : signal is "xilinx.com:signal:clock:1.0 s_axi_aclk CLK";
  attribute x_interface_parameter of s_axi_aclk : signal is "XIL_INTERFACENAME s_axi_aclk, ASSOCIATED_BUSIF s_axi, ASSOCIATED_RESET s_axi_aresetn, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1";
  attribute x_interface_info of s_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 s_resetn RST";
  attribute x_interface_parameter of s_axi_aresetn : signal is "XIL_INTERFACENAME s_resetn, POLARITY ACTIVE_LOW";
  attribute x_interface_info of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 s_axi ARREADY";
  attribute x_interface_info of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi ARVALID";
  attribute x_interface_info of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 s_axi AWREADY";
  attribute x_interface_info of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi AWVALID";
  attribute x_interface_info of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 s_axi BREADY";
  attribute x_interface_info of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi BVALID";
  attribute x_interface_info of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 s_axi RREADY";
  attribute x_interface_info of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi RVALID";
  attribute x_interface_info of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 s_axi WREADY";
  attribute x_interface_info of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 s_axi WVALID";
  attribute x_interface_info of intr : signal is "xilinx.com:signal:interrupt:1.0 interrupt_input INTERRUPT";
  attribute x_interface_parameter of intr : signal is "XIL_INTERFACENAME interrupt_input, SENSITIVITY EDGE_RISING:LEVEL_HIGH, PortWidth 2";
  attribute x_interface_info of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 s_axi ARADDR";
  attribute x_interface_info of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 s_axi AWADDR";
  attribute x_interface_parameter of s_axi_awaddr : signal is "XIL_INTERFACENAME s_axi, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 100000000, ID_WIDTH 0, ADDR_WIDTH 9, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN /clk_wiz_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute x_interface_info of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 s_axi BRESP";
  attribute x_interface_info of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 s_axi RDATA";
  attribute x_interface_info of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 s_axi RRESP";
  attribute x_interface_info of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 s_axi WDATA";
  attribute x_interface_info of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 s_axi WSTRB";
begin
U0: entity work.system_axi_intc_0_0_axi_intc
     port map (
      interrupt_address(31 downto 0) => NLW_U0_interrupt_address_UNCONNECTED(31 downto 0),
      interrupt_address_in(31 downto 0) => B"00000000000000000000000000000000",
      intr(1 downto 0) => intr(1 downto 0),
      irq => irq,
      irq_in => '0',
      processor_ack(1 downto 0) => B"00",
      processor_ack_out(1 downto 0) => NLW_U0_processor_ack_out_UNCONNECTED(1 downto 0),
      processor_clk => '0',
      processor_rst => '0',
      s_axi_aclk => s_axi_aclk,
      s_axi_araddr(8 downto 0) => s_axi_araddr(8 downto 0),
      s_axi_aresetn => s_axi_aresetn,
      s_axi_arready => s_axi_arready,
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(8 downto 0) => s_axi_awaddr(8 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(31 downto 0) => s_axi_rdata(31 downto 0),
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(31 downto 0) => s_axi_wdata(31 downto 0),
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(3 downto 0) => s_axi_wstrb(3 downto 0),
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
