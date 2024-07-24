-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 17:00:07 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_Encoder_0_0/system_Encoder_0_0_stub.vhdl
-- Design      : system_Encoder_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_Encoder_0_0 is
  Port ( 
    ss_axi_i : in STD_LOGIC_VECTOR ( 7 downto 0 );
    ss_enc_out : out STD_LOGIC_VECTOR ( 2 downto 0 )
  );

end system_Encoder_0_0;

architecture stub of system_Encoder_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "ss_axi_i[7:0],ss_enc_out[2:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Encoder,Vivado 2017.4";
begin
end;
