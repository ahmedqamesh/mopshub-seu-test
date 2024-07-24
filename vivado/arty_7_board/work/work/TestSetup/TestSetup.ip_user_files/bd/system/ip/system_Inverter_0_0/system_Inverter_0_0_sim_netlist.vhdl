-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 16:59:50 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode funcsim
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Inverter_0_0/system_Inverter_0_0_sim_netlist.vhdl
-- Design      : system_Inverter_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Inverter_0_0_Inverter is
  port (
    in_int : out STD_LOGIC_VECTOR ( 5 downto 0 );
    out_ext : out STD_LOGIC_VECTOR ( 4 downto 0 );
    in_ext : in STD_LOGIC_VECTOR ( 5 downto 0 );
    out_int : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of system_Inverter_0_0_Inverter : entity is "Inverter";
end system_Inverter_0_0_Inverter;

architecture STRUCTURE of system_Inverter_0_0_Inverter is
begin
\in_int[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(0),
      O => in_int(0)
    );
\in_int[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(1),
      O => in_int(1)
    );
\in_int[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(2),
      O => in_int(2)
    );
\in_int[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(3),
      O => in_int(3)
    );
\in_int[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(4),
      O => in_int(4)
    );
\in_int[5]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => in_ext(5),
      O => in_int(5)
    );
\out_ext[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_int(0),
      O => out_ext(0)
    );
\out_ext[1]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_int(1),
      O => out_ext(1)
    );
\out_ext[2]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_int(2),
      O => out_ext(2)
    );
\out_ext[3]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_int(3),
      O => out_ext(3)
    );
\out_ext[4]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => out_int(4),
      O => out_ext(4)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity system_Inverter_0_0 is
  port (
    sclx2_int : in STD_LOGIC;
    sclx2_ext : out STD_LOGIC;
    sdam_int : in STD_LOGIC;
    sdam_ext : out STD_LOGIC;
    sdas_int : out STD_LOGIC;
    sdas_ext : in STD_LOGIC;
    in_int : out STD_LOGIC_VECTOR ( 5 downto 0 );
    in_ext : in STD_LOGIC_VECTOR ( 5 downto 0 );
    out_int : in STD_LOGIC_VECTOR ( 4 downto 0 );
    out_ext : out STD_LOGIC_VECTOR ( 4 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of system_Inverter_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of system_Inverter_0_0 : entity is "system_Inverter_0_0,Inverter,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of system_Inverter_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of system_Inverter_0_0 : entity is "Inverter,Vivado 2017.4";
end system_Inverter_0_0;

architecture STRUCTURE of system_Inverter_0_0 is
begin
inst: entity work.system_Inverter_0_0_Inverter
     port map (
      in_ext(5 downto 0) => in_ext(5 downto 0),
      in_int(5 downto 0) => in_int(5 downto 0),
      out_ext(4 downto 0) => out_ext(4 downto 0),
      out_int(4 downto 0) => out_int(4 downto 0)
    );
sclx2_ext_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sclx2_int,
      O => sclx2_ext
    );
sdam_ext_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sdam_int,
      O => sdam_ext
    );
sdas_int_INST_0: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sdas_ext,
      O => sdas_int
    );
end STRUCTURE;
