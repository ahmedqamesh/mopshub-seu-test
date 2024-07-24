##Pmod Header JA
set_property -dict {PACKAGE_PIN G13 IOSTANDARD LVCMOS33} [get_ports {dout[4]}]
set_property -dict {PACKAGE_PIN B11 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports shift_mode]
set_property PACKAGE_PIN A11 [get_ports {din[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[4]}]
set_property PULLUP true [get_ports {din[4]}]
set_property PACKAGE_PIN D12 [get_ports shift_TMR]
set_property IOSTANDARD LVCMOS33 [get_ports shift_TMR]
set_property PULLUP true [get_ports shift_TMR]
set_property -dict {PACKAGE_PIN D13 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports shift_data]
#set_property -dict {PACKAGE_PIN B18 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports shift_clk]
set_property PACKAGE_PIN A18 [get_ports {din[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[5]}]
set_property PULLUP true [get_ports {din[5]}]
set_property -dict {PACKAGE_PIN K16 IOSTANDARD LVCMOS33} [get_ports shift_simple]

#Belege Pins von JB für Kommunikation mit ADC/DAC wie in Eagle vorgesehen
#Pmod-Header JB
set_property -dict {PACKAGE_PIN E15 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sck_o]
set_property -dict {PACKAGE_PIN E16 IOSTANDARD LVCMOS33} [get_ports io1_i]
set_property -dict {PACKAGE_PIN D15 IOSTANDARD LVCMOS33} [get_ports {ss_enc_out[1]}]
#set_property -dict { PACKAGE_PIN C15 IOSTANDARD LVCMOS33 } [get_ports { jb[3] }]; #IO_L12N_T1_MRCC_15 Sch=jb_n[2]
set_property -dict {PACKAGE_PIN J17 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports io0_o]
set_property -dict {PACKAGE_PIN J18 IOSTANDARD LVCMOS33} [get_ports {ss_enc_out[0]}]
set_property -dict {PACKAGE_PIN J15 IOSTANDARD LVCMOS33} [get_ports {ss_enc_out[2]}]
#set_property -dict { PACKAGE_PIN J15 IOSTANDARD LVCMOS33 } [get_ports { jb[7] }]; #IO_L24N_T3_RS0_15 Sch=jb_n[4]


##Pmod Header JC
set_property -dict {PACKAGE_PIN U12 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sclx2]
set_property PACKAGE_PIN V12 [get_ports sdas]
set_property IOSTANDARD LVCMOS33 [get_ports sdas]
set_property -dict {PACKAGE_PIN V10 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sdas_dec]
set_property -dict {PACKAGE_PIN V11 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports shift_clk]
set_property -dict {PACKAGE_PIN U14 IOSTANDARD LVCMOS33 SLEW FAST} [get_ports sdam]
#set_property -dict { PACKAGE_PIN V14 IOSTANDARD LVCMOS33 } [get_ports { dout[2] }];
#set_property -dict { PACKAGE_PIN T13 IOSTANDARD LVCMOS33 } [get_ports { dout[3] }];
#set_property -dict { PACKAGE_PIN U13 IOSTANDARD LVCMOS33 } [get_ports { jc[7] }]; #IO_L23N_T3_A02_D18_14 Sch=jc_n[4]


#Pmod Header JD for GPIO(DIN, DOUT) signals will be set to active low in code functions. Default State for Outputs is 1.
set_property -dict {PACKAGE_PIN D4 IOSTANDARD LVCMOS33} [get_ports {dout[0]}]
set_property PACKAGE_PIN D3 [get_ports {din[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[0]}]
set_property PULLUP true [get_ports {din[0]}]
set_property PACKAGE_PIN F4 [get_ports {din[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[2]}]
set_property PULLUP true [get_ports {din[2]}]
set_property -dict {PACKAGE_PIN F3 IOSTANDARD LVCMOS33} [get_ports {dout[2]}]
set_property -dict {PACKAGE_PIN E2 IOSTANDARD LVCMOS33} [get_ports {dout[1]}]
set_property PACKAGE_PIN D2 [get_ports {din[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[1]}]
set_property PULLUP true [get_ports {din[1]}]
set_property PACKAGE_PIN H2 [get_ports {din[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {din[3]}]
set_property PULLUP true [get_ports {din[3]}]
set_property -dict {PACKAGE_PIN G2 IOSTANDARD LVCMOS33} [get_ports {dout[3]}]

# chipKIT Shield Connector for test pins
set_property -dict {PACKAGE_PIN V15 IOSTANDARD LVCMOS33} [get_ports shift_test_clk]
set_property -dict {PACKAGE_PIN U16 IOSTANDARD LVCMOS33} [get_ports shift_test_mode]
set_property -dict {PACKAGE_PIN P14 IOSTANDARD LVCMOS33} [get_ports shift_test_din]
set_property -dict {PACKAGE_PIN T11 IOSTANDARD LVCMOS33} [get_ports shift_test_simpleOut]
set_property -dict {PACKAGE_PIN R12 IOSTANDARD LVCMOS33} [get_ports shift_test_tmrOut]

#set_property -dict { PACKAGE_PIN T14   IOSTANDARD LVCMOS33 } [get_ports { ck_io[5] }]; #IO_L14P_T2_SRCC_14 Sch=ck_io[5]
#set_property -dict { PACKAGE_PIN T15   IOSTANDARD LVCMOS33 } [get_ports { ck_io[6] }]; #IO_L14N_T2_SRCC_14 Sch=ck_io[6]
#set_property -dict { PACKAGE_PIN T16   IOSTANDARD LVCMOS33 } [get_ports { ck_io[7] }]; #IO_L15N_T2_DQS_DOUT_CSO_B_14 Sch=ck_io[7]
#set_property -dict { PACKAGE_PIN N15   IOSTANDARD LVCMOS33 } [get_ports { ck_io[8] }]; #IO_L11P_T1_SRCC_14 Sch=ck_io[8]
#set_property -dict { PACKAGE_PIN M16   IOSTANDARD LVCMOS33 } [get_ports { ck_io[9] }]; #IO_L10P_T1_D14_14 Sch=ck_io[9]
#set_property -dict { PACKAGE_PIN V17   IOSTANDARD LVCMOS33 } [get_ports { ck_io[10] }]; #IO_L18N_T2_A11_D27_14 Sch=ck_io[10]
#set_property -dict { PACKAGE_PIN U18   IOSTANDARD LVCMOS33 } [get_ports { ck_io[11] }]; #IO_L17N_T2_A13_D29_14 Sch=ck_io[11]
#set_property -dict { PACKAGE_PIN R17   IOSTANDARD LVCMOS33 } [get_ports { ck_io[12] }]; #IO_L12N_T1_MRCC_14 Sch=ck_io[12]
#set_property -dict { PACKAGE_PIN P17 IOSTANDARD LVCMOS33 } [get_ports { ck_io[13] }]; #IO_L12P_T1_MRCC_14 Sch=ck_io[13]

# compression of bitstream for programming flash
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property CONFIG_MODE SPIx4 [current_design]

#set_property PULLUP true [get_ports {din[5]}]
#set_property PULLUP true [get_ports {din[4]}]
#set_property PULLUP true [get_ports {din[3]}]
#set_property PULLUP true [get_ports {din[2]}]
#set_property PULLUP true [get_ports {din[1]}]
#set_property PULLUP true [get_ports {din[0]}]


create_clock -period 1000.000 -name shift_test_clock -waveform {0.000 500.000} [get_ports shift_test_clk]
create_generated_clock -name SCB -source [get_pins system_i/clk_wiz_0/clk_out100] -divide_by 500 [get_pins system_i/scb_testmaster_0/inst/clock_divider_inst/clkdiv500_reg/Q]

#create_generated_clock -name clock_golden -source [get_pins system_i/clk_wiz_0/clk_out100] -divide_by 100 [get_pins system_i/SEUtestIP3000_0/inst/clock_divider_inst/CLK]

set_property BITSTREAM.CONFIG.UNUSEDPIN Pulldown [current_design]

#set_property IOSTANDARD LVCMOS33 [get_ports led_16bits]
#set_property PACKAGE_PIN G6 [get_ports led_16bits]

