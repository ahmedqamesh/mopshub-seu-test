vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/fifo_generator_v13_2_1
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_17
vlib modelsim_lib/msim/axi_intc_v4_1_10
vlib modelsim_lib/msim/dist_mem_gen_v8_0_12
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/lib_fifo_v1_0_10
vlib modelsim_lib/msim/axi_quad_spi_v3_2_14
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/xlconstant_v1_1_3
vlib modelsim_lib/msim/proc_sys_reset_v5_0_12
vlib modelsim_lib/msim/axi_timer_v2_0_17
vlib modelsim_lib/msim/axi_uartlite_v2_0_19
vlib modelsim_lib/msim/mdm_v3_2_12
vlib modelsim_lib/msim/microblaze_v10_0_5
vlib modelsim_lib/msim/xlconcat_v2_1_1
vlib modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_14
vlib modelsim_lib/msim/lmb_v10_v3_0_9
vlib modelsim_lib/msim/blk_mem_gen_v8_4_1
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_15
vlib modelsim_lib/msim/axi_data_fifo_v2_1_14
vlib modelsim_lib/msim/axi_crossbar_v2_1_16
vlib modelsim_lib/msim/axi_clock_converter_v2_1_14

vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap fifo_generator_v13_2_1 modelsim_lib/msim/fifo_generator_v13_2_1
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_17 modelsim_lib/msim/axi_gpio_v2_0_17
vmap axi_intc_v4_1_10 modelsim_lib/msim/axi_intc_v4_1_10
vmap dist_mem_gen_v8_0_12 modelsim_lib/msim/dist_mem_gen_v8_0_12
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap lib_fifo_v1_0_10 modelsim_lib/msim/lib_fifo_v1_0_10
vmap axi_quad_spi_v3_2_14 modelsim_lib/msim/axi_quad_spi_v3_2_14
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap xlconstant_v1_1_3 modelsim_lib/msim/xlconstant_v1_1_3
vmap proc_sys_reset_v5_0_12 modelsim_lib/msim/proc_sys_reset_v5_0_12
vmap axi_timer_v2_0_17 modelsim_lib/msim/axi_timer_v2_0_17
vmap axi_uartlite_v2_0_19 modelsim_lib/msim/axi_uartlite_v2_0_19
vmap mdm_v3_2_12 modelsim_lib/msim/mdm_v3_2_12
vmap microblaze_v10_0_5 modelsim_lib/msim/microblaze_v10_0_5
vmap xlconcat_v2_1_1 modelsim_lib/msim/xlconcat_v2_1_1
vmap lmb_bram_if_cntlr_v4_0_14 modelsim_lib/msim/lmb_bram_if_cntlr_v4_0_14
vmap lmb_v10_v3_0_9 modelsim_lib/msim/lmb_v10_v3_0_9
vmap blk_mem_gen_v8_4_1 modelsim_lib/msim/blk_mem_gen_v8_4_1
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_15 modelsim_lib/msim/axi_register_slice_v2_1_15
vmap axi_data_fifo_v2_1_14 modelsim_lib/msim/axi_data_fifo_v2_1_14
vmap axi_crossbar_v2_1_16 modelsim_lib/msim/axi_crossbar_v2_1_16
vmap axi_clock_converter_v2_1_14 modelsim_lib/msim/axi_clock_converter_v2_1_14

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"/mnt/storage/sw/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"/mnt/storage/sw/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"/mnt/storage/sw/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"/mnt/storage/sw/Xilinx/Vivado/2017.4/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_Encoder_0_0/sim/system_Encoder_0_0.v" \
"../../../bd/system/ip/system_Inverter_0_0/sim/system_Inverter_0_0.v" \

vlog -work fifo_generator_v13_2_1 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ip/system_SEUtestIP3000_0_0/src/fifo_in/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_1 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ip/system_SEUtestIP3000_0_0/src/fifo_in/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_1 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ip/system_SEUtestIP3000_0_0/src/fifo_in/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_SEUtestIP3000_0_0/src/fifo_in/sim/fifo_in.v" \
"../../../bd/system/ipshared/27c3/src/synch_in.v" \
"../../../bd/system/ipshared/27c3/src/bytecounter.v" \
"../../../bd/system/ipshared/27c3/src/shift_out.v" \
"../../../bd/system/ipshared/27c3/src/shift_in.v" \
"../../../bd/system/ipshared/27c3/src/golden_shift.v" \
"../../../bd/system/ipshared/27c3/src/fifo_out.v" \
"../../../bd/system/ipshared/27c3/src/counter.v" \
"../../../bd/system/ipshared/27c3/src/control_fsm.v" \
"../../../bd/system/ipshared/27c3/src/compare_counter.v" \
"../../../bd/system/ipshared/27c3/src/clock_divider.v" \
"../../../bd/system/ipshared/27c3/src/axi_control_unit.v" \
"../../../bd/system/ipshared/27c3/src/SEUtestIP3000.v" \
"../../../bd/system/ip/system_SEUtestIP3000_0_0/sim/system_SEUtestIP3000_0_0.v" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_17 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/c450/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_gpio_0_0/sim/system_axi_gpio_0_0.vhd" \
"../../../bd/system/ip/system_axi_gpio_1_0/sim/system_axi_gpio_1_0.vhd" \

vcom -work axi_intc_v4_1_10 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/cf04/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_intc_0_0/sim/system_axi_intc_0_0.vhd" \

vlog -work dist_mem_gen_v8_0_12 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/d46a/simulation/dist_mem_gen_v8_0.v" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_10 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/f10a/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work axi_quad_spi_v3_2_14 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/9db7/hdl/axi_quad_spi_v3_2_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_quad_spi_0_0/sim/system_axi_quad_spi_0_0.vhd" \
"../../../bd/system/ip/system_axi_quad_spi_1_0/sim/system_axi_quad_spi_1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/sim/bd_44e3.v" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/786b/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_12/sim/bd_44e3_s00a2s_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_21/sim/bd_44e3_s01a2s_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/92d2/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_24/sim/bd_44e3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/258c/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_30/sim/bd_44e3_m00e_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_25/sim/bd_44e3_m00arn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_26/sim/bd_44e3_m00rn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_27/sim/bd_44e3_m00awn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_28/sim/bd_44e3_m00wn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_29/sim/bd_44e3_m00bn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_22/sim/bd_44e3_sarn_1.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_23/sim/bd_44e3_srn_1.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/8ad6/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_18/sim/bd_44e3_s01mmu_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/0f5f/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_19/sim/bd_44e3_s01tr_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/925a/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_20/sim/bd_44e3_s01sic_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_13/sim/bd_44e3_sarn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_14/sim/bd_44e3_srn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_15/sim/bd_44e3_sawn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_16/sim/bd_44e3_swn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_17/sim/bd_44e3_sbn_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_9/sim/bd_44e3_s00mmu_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_10/sim/bd_44e3_s00tr_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_11/sim/bd_44e3_s00sic_0.sv" \

vlog -work smartconnect_v1_0 -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/1b0c/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L smartconnect_v1_0 "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_4/sim/bd_44e3_arsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_5/sim/bd_44e3_rsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_6/sim/bd_44e3_awsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_7/sim/bd_44e3_wsw_0.sv" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_8/sim/bd_44e3_bsw_0.sv" \

vlog -work xlconstant_v1_1_3 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/0750/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_0/sim/bd_44e3_one_0.v" \

vcom -work proc_sys_reset_v5_0_12 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/f86a/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_1/sim/bd_44e3_psr0_0.vhd" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_2/sim/bd_44e3_psr_aclk_0.vhd" \
"../../../bd/system/ip/system_axi_smc_0/bd_0/ip/ip_3/sim/bd_44e3_psr_aclk1_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_axi_smc_0/sim/system_axi_smc_0.v" \

vcom -work axi_timer_v2_0_17 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/38c3/hdl/axi_timer_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_timer_0_0/sim/system_axi_timer_0_0.vhd" \

vcom -work axi_uartlite_v2_0_19 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/c778/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_axi_uartlite_0_0/sim/system_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/system/ip/system_clk_wiz_0_0/system_clk_wiz_0_0.v" \

vcom -work mdm_v3_2_12 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/8608/hdl/mdm_v3_2_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_mdm_1_0/sim/system_mdm_1_0.vhd" \

vcom -work microblaze_v10_0_5 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4f30/hdl/microblaze_v10_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_microblaze_0_0/sim/system_microblaze_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_addr_decode.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_read.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg_bank.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_reg.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_ctrl_write.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_ar_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_aw_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_b_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_arbiter.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wr_cmd_fsm.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_cmd_translator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_incr_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_r_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_simple_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_w_channel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_axi_mc_wrap_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_a_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axi_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_axic_register_slice.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_and.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_latch_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_carry_or.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_command_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_comparator_sel_static.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_r_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_0_ddr_w_upsizer.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_clk_ibuf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_infrastructure.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_iodelay_ctrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_0_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_row_col.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_arb_select.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_compare.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_queue.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_bank_state.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_col_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_mc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_cntrl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_common.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_rank_mach.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_0_round_robin_arb.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_buf.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_dec_fix.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_ecc_merge_enc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_0_fi_xor.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_mem_intfc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_0_memc_ui_top_axi.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_group_io.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_byte_lane.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_tempmon.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_calib_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_skip_calib_tap.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_if_post_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_mc_phy_wrapper.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_of_pre_fifo.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_4lanes.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_init.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_oclkdelay_cal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_prbs_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_rdlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrcal.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_prbs_gen.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_lim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_mux.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_samp.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_edge.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_pd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_tap_base.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_meta.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_edge_store.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_0_poc_cc.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_cmd.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_rd_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_top.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_0_ui_wr_data.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0_mig_sim.v" \
"../../../bd/system/ip/system_mig_7series_0_0/system_mig_7series_0_0/user_design/rtl/system_mig_7series_0_0.v" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_rst_clk_wiz_0_100M_0/sim/system_rst_clk_wiz_0_100M_0.vhd" \
"../../../bd/system/ip/system_rst_clk_wiz_0_166M_0/sim/system_rst_clk_wiz_0_166M_0.vhd" \
"../../../bd/system/ip/system_rst_mig_7series_0_83M_0/sim/system_rst_mig_7series_0_83M_0.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ipshared/be3b/axi_control_unit.v" \
"../../../bd/system/ipshared/be3b/bit_counter.v" \
"../../../bd/system/ipshared/be3b/byte_counter.v" \
"../../../bd/system/ipshared/be3b/clock_divider.v" \
"../../../bd/system/ipshared/be3b/clock_domain_crossing.v" \
"../../../bd/system/ipshared/be3b/hc_generator.v" \
"../../../bd/system/ipshared/be3b/master_fsm_fsm.v" \
"../../../bd/system/ipshared/be3b/master_manchester_dec.v" \
"../../../bd/system/ipshared/be3b/rx_shift_reg.v" \
"../../../bd/system/ipshared/be3b/tx_shift_reg.v" \
"../../../bd/system/ipshared/be3b/scb_testmaster_struct.v" \
"../../../bd/system/ip/system_scb_testmaster_0_0/sim/system_scb_testmaster_0_0.v" \
"../../../bd/system/ip/system_seu_shift_combined_0_0/sim/system_seu_shift_combined_0_0.v" \

vlog -work xlconcat_v2_1_1 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xlconcat_0_0/sim/system_xlconcat_0_0.v" \

vcom -work lmb_bram_if_cntlr_v4_0_14 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/226d/hdl/lmb_bram_if_cntlr_v4_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_dlmb_bram_if_cntlr_0/sim/system_dlmb_bram_if_cntlr_0.vhd" \

vcom -work lmb_v10_v3_0_9 -64 -93 \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/78eb/hdl/lmb_v10_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/system/ip/system_dlmb_v10_0/sim/system_dlmb_v10_0.vhd" \
"../../../bd/system/ip/system_ilmb_bram_if_cntlr_0/sim/system_ilmb_bram_if_cntlr_0.vhd" \
"../../../bd/system/ip/system_ilmb_v10_0/sim/system_ilmb_v10_0.vhd" \

vlog -work blk_mem_gen_v8_4_1 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_lmb_bram_0/sim/system_lmb_bram_0.v" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_15 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/3ed1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_14 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/9909/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_16 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/c631/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_xbar_0/sim/system_xbar_0.v" \
"../../../bd/system/sim/system.v" \

vlog -work axi_clock_converter_v2_1_14 -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../../TestSetup.srcs/sources_1/bd/system/ipshared/445f/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/02c8/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/e2dd/hdl/verilog" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/4868" "+incdir+../../../../TestSetup.srcs/sources_1/bd/system/ipshared/ec67/hdl" "+incdir+/mnt/storage/sw/Xilinx/Vivado/2017.4/data/xilinx_vip/include" \
"../../../bd/system/ip/system_auto_cc_0/sim/system_auto_cc_0.v" \

vlog -work xil_defaultlib \
"glbl.v"

