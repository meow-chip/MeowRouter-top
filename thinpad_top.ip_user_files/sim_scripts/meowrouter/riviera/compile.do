vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_18
vlib riviera/fifo_generator_v13_2_3
vlib riviera/axi_data_fifo_v2_1_17
vlib riviera/axi_crossbar_v2_1_19
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_1_0
vlib riviera/blk_mem_gen_v8_4_2
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/lib_cdc_v1_0_2
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uartlite_v2_0_22
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_20
vlib riviera/axi_protocol_converter_v2_1_18
vlib riviera/axi_clock_converter_v2_1_17
vlib riviera/axi_dwidth_converter_v2_1_18

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 riviera/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 riviera/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 riviera/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 riviera/axi_crossbar_v2_1_19
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 riviera/axi_bram_ctrl_v4_1_0
vmap blk_mem_gen_v8_4_2 riviera/blk_mem_gen_v8_4_2
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uartlite_v2_0_22 riviera/axi_uartlite_v2_0_22
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 riviera/axi_gpio_v2_0_20
vmap axi_protocol_converter_v2_1_18 riviera/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 riviera/axi_clock_converter_v2_1_17
vmap axi_dwidth_converter_v2_1_18 riviera/axi_dwidth_converter_v2_1_18

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_xbar_0/sim/meowrouter_xbar_0.v" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_bram_ctrl_0_0/sim/meowrouter_axi_bram_ctrl_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_2  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_blk_mem_gen_0_0/sim/meowrouter_blk_mem_gen_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_bram_ctrl_0_1/sim/meowrouter_axi_bram_ctrl_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_blk_mem_gen_0_1/sim/meowrouter_blk_mem_gen_0_1.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_util_vector_logic_0_0/sim/meowrouter_util_vector_logic_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/meowrouter/ip/meowrouter_proc_sys_reset_0_0/sim/meowrouter_proc_sys_reset_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_xbar_1/sim/meowrouter_xbar_1.v" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uartlite_v2_0_22 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/7371/hdl/axi_uartlite_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_uartlite_0_0/sim/meowrouter_axi_uartlite_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_Core_0_0/sim/meowrouter_Core_0_0.v" \
"../../../bd/meowrouter/ip/meowrouter_Top_0_1/sim/meowrouter_Top_0_1.v" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_gpio_0_0/sim/meowrouter_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/sim/meowrouter.v" \
"../../../bd/meowrouter/ip/meowrouter_s00_data_fifo_0/sim/meowrouter_s00_data_fifo_0.v" \
"../../../bd/meowrouter/ip/meowrouter_s01_data_fifo_0/sim/meowrouter_s01_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_18  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_18  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_0/sim/meowrouter_auto_ds_0.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_pc_0/sim/meowrouter_auto_pc_0.v" \
"../../../bd/meowrouter/ip/meowrouter_s00_data_fifo_1/sim/meowrouter_s00_data_fifo_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

