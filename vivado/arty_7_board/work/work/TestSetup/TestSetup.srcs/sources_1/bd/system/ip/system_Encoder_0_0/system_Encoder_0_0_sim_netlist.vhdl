-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 17:00:07 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Encoder_0_0/system_Encoder_0_0_sim_netlist.vhdl
-- Design      : system_Encoder_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Encoder_0_0 is
  port (
    ss_axi_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ss_enc_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Encoder_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Encoder_0_0 : entity is "system_Encoder_0_0,Encoder,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_Encoder_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_Encoder_0_0 : entity is "Encoder,Vivado 2017.4";
end system_Encoder_0_0;

architecture STRUCTURE of system_Encoder_0_0 is
  signal \ss_enc_out[0]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ss_enc_out[1]_INST_0_i_1_n_0\ : STD_LOGIC;
  signal \ss_enc_out[1]_INST_0_i_2_n_0\ : STD_LOGIC;
  signal \ss_enc_out[2]_INST_0_i_1_n_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \ss_enc_out[1]_INST_0_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \ss_enc_out[2]_INST_0_i_1\ : label is "soft_lutpair0";
begin
\ss_enc_out[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \ss_enc_out[0]_INST_0_i_1_n_0\,
      I1 => ss_axi_i(0),
      I2 => ss_axi_i(7),
      O => ss_enc_out(0)
    );
\ss_enc_out[0]_INST_0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8080800080000000"
    )
        port map (
      I0 => ss_axi_i(6),
      I1 => ss_axi_i(4),
      I2 => ss_axi_i(2),
      I3 => ss_axi_i(1),
      I4 => ss_axi_i(3),
      I5 => ss_axi_i(5),
      O => \ss_enc_out[0]_INST_0_i_1_n_0\
    );
\ss_enc_out[1]_INST_0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF17FFFFFFFFFF"
    )
        port map (
      I0 => ss_axi_i(0),
      I1 => ss_axi_i(3),
      I2 => ss_axi_i(4),
      I3 => \ss_enc_out[1]_INST_0_i_1_n_0\,
      I4 => \ss_enc_out[1]_INST_0_i_2_n_0\,
      I5 => ss_axi_i(7),
      O => ss_enc_out(1)
    );
\ss_enc_out[1]_INST_0_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => ss_axi_i(1),
      I1 => ss_axi_i(2),
      O => \ss_enc_out[1]_INST_0_i_1_n_0\
    );
\ss_enc_out[1]_INST_0_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => ss_axi_i(5),
      I1 => ss_axi_i(6),
      O => \ss_enc_out[1]_INST_0_i_2_n_0\
    );
\ss_enc_out[2]_INST_0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFFF"
    )
        port map (
      I0 => \ss_enc_out[2]_INST_0_i_1_n_0\,
      I1 => ss_axi_i(5),
      I2 => ss_axi_i(6),
      I3 => ss_axi_i(7),
      O => ss_enc_out(2)
    );
\ss_enc_out[2]_INST_0_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"777F7FFF"
    )
        port map (
      I0 => ss_axi_i(3),
      I1 => ss_axi_i(4),
      I2 => ss_axi_i(0),
      I3 => ss_axi_i(2),
      I4 => ss_axi_i(1),
      O => \ss_enc_out[2]_INST_0_i_1_n_0\
    );
end STRUCTURE;
