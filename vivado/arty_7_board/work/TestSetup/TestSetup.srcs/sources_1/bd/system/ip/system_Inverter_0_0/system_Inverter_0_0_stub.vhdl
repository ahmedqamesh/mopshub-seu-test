-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 16:59:50 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Inverter_0_0/system_Inverter_0_0_stub.vhdl
-- Design      : system_Inverter_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Inverter_0_0 is
  Port ( 
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

end system_Inverter_0_0;

architecture stub of system_Inverter_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sclx2_int,sclx2_ext,sdam_int,sdam_ext,sdas_int,sdas_ext,in_int[5:0],in_ext[5:0],out_int[4:0],out_ext[4:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Inverter,Vivado 2017.4";
begin
end;
