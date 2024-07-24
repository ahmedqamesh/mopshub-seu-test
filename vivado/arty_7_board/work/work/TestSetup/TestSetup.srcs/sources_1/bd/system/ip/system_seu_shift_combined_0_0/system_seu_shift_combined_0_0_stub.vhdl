-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (lin64) Build 2086221 Fri Dec 15 20:54:30 MST 2017
-- Date        : Wed May 24 16:56:08 2023
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub-seu-test/work/TestSetup/TestSetup.srcs/sources_1/bd/system/ip/system_seu_shift_combined_0_0/system_seu_shift_combined_0_0_stub.vhdl
-- Design      : system_seu_shift_combined_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a35ticsg324-1L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_seu_shift_combined_0_0 is
  Port ( 
    clk_in : in STD_LOGIC;
    data_in : in STD_LOGIC;
    mode : in STD_LOGIC;
    data_out : out STD_LOGIC;
    data_outTMR : out STD_LOGIC
  );

end system_seu_shift_combined_0_0;

architecture stub of system_seu_shift_combined_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_in,data_in,mode,data_out,data_outTMR";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "seu_shift_combined,Vivado 2017.4";
begin
end;
