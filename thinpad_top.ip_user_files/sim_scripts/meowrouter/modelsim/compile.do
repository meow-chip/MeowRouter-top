vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_18
vlib modelsim_lib/msim/fifo_generator_v13_2_3
vlib modelsim_lib/msim/axi_data_fifo_v2_1_17
vlib modelsim_lib/msim/axi_crossbar_v2_1_19
vlib modelsim_lib/msim/blk_mem_gen_v8_4_2
vlib modelsim_lib/msim/blk_mem_gen_v8_3_6
vlib modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vlib modelsim_lib/msim/util_vector_logic_v2_0_1
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_20
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/emc_common_v3_0_5
vlib modelsim_lib/msim/axi_emc_v3_0_18
vlib modelsim_lib/msim/axi_uart16550_v2_0_20
vlib modelsim_lib/msim/axi_vip_v1_1_4
vlib modelsim_lib/msim/axi_intc_v4_1_12
vlib modelsim_lib/msim/xlslice_v1_0_1
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_18
vlib modelsim_lib/msim/axi_clock_converter_v2_1_17
vlib modelsim_lib/msim/axi_dwidth_converter_v2_1_18

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xpm modelsim_lib/msim/xpm
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_18 modelsim_lib/msim/axi_register_slice_v2_1_18
vmap fifo_generator_v13_2_3 modelsim_lib/msim/fifo_generator_v13_2_3
vmap axi_data_fifo_v2_1_17 modelsim_lib/msim/axi_data_fifo_v2_1_17
vmap axi_crossbar_v2_1_19 modelsim_lib/msim/axi_crossbar_v2_1_19
vmap blk_mem_gen_v8_4_2 modelsim_lib/msim/blk_mem_gen_v8_4_2
vmap blk_mem_gen_v8_3_6 modelsim_lib/msim/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_1_0 modelsim_lib/msim/axi_bram_ctrl_v4_1_0
vmap util_vector_logic_v2_0_1 modelsim_lib/msim/util_vector_logic_v2_0_1
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_20 modelsim_lib/msim/axi_gpio_v2_0_20
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap emc_common_v3_0_5 modelsim_lib/msim/emc_common_v3_0_5
vmap axi_emc_v3_0_18 modelsim_lib/msim/axi_emc_v3_0_18
vmap axi_uart16550_v2_0_20 modelsim_lib/msim/axi_uart16550_v2_0_20
vmap axi_vip_v1_1_4 modelsim_lib/msim/axi_vip_v1_1_4
vmap axi_intc_v4_1_12 modelsim_lib/msim/axi_intc_v4_1_12
vmap xlslice_v1_0_1 modelsim_lib/msim/xlslice_v1_0_1
vmap axi_protocol_converter_v2_1_18 modelsim_lib/msim/axi_protocol_converter_v2_1_18
vmap axi_clock_converter_v2_1_17 modelsim_lib/msim/axi_clock_converter_v2_1_17
vmap axi_dwidth_converter_v2_1_18 modelsim_lib/msim/axi_dwidth_converter_v2_1_18

vlog -work xilinx_vip -64 -incr -sv -L axi_vip_v1_1_4 -L xilinx_vip "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
"D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L xilinx_vip "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work generic_baseblocks_v2_1_0 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_18 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_3 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_3 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_17 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_19 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_xbar_0/sim/meowrouter_xbar_0.v" \

vlog -work blk_mem_gen_v8_4_2 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_blk_mem_gen_0_0/sim/meowrouter_blk_mem_gen_0_0.v" \

vlog -work blk_mem_gen_v8_3_6 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_1_0 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_bram_ctrl_0_1/sim/meowrouter_axi_bram_ctrl_0_1.vhd" \

vlog -work util_vector_logic_v2_0_1 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_util_vector_logic_0_0/sim/meowrouter_util_vector_logic_0_0.v" \

vcom -work lib_cdc_v1_0_2 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_proc_sys_reset_0_0/sim/meowrouter_proc_sys_reset_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_20 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_gpio_0_0/sim/meowrouter_axi_gpio_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work emc_common_v3_0_5 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ea80/hdl/emc_common_v3_0_vh_rfs.vhd" \

vcom -work axi_emc_v3_0_18 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0cd1/hdl/axi_emc_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_emc_0_1/sim/meowrouter_axi_emc_0_1.vhd" \
"../../../bd/meowrouter/ip/meowrouter_axi_emc_0_2/sim/meowrouter_axi_emc_0_2.vhd" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_vio_0_0/sim/meowrouter_vio_0_0.v" \
"../../../bd/meowrouter/ip/meowrouter_CPU_0/sim/meowrouter_CPU_0.v" \
"../../../bd/meowrouter/ip/meowrouter_Router_0/sim/meowrouter_Router_0.v" \

vcom -work axi_uart16550_v2_0_20 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/07cf/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_uart16550_0_0/sim/meowrouter_axi_uart16550_0_0.vhd" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L xilinx_vip "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_axi_vip_0_0/sim/meowrouter_axi_vip_0_0_pkg.sv" \

vlog -work axi_vip_v1_1_4 -64 -incr -sv -L axi_vip_v1_1_4 -L xilinx_vip "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib -64 -incr -sv -L axi_vip_v1_1_4 -L xilinx_vip "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_axi_vip_0_0/sim/meowrouter_axi_vip_0_0.sv" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/sim/meowrouter.v" \

vcom -work axi_intc_v4_1_12 -64 -93 \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -64 -93 \
"../../../bd/meowrouter/ip/meowrouter_axi_intc_0_0/sim/meowrouter_axi_intc_0_0.vhd" \

vlog -work xlslice_v1_0_1 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/f3db/hdl/xlslice_v1_0_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_xlslice_0_1/sim/meowrouter_xlslice_0_1.v" \
"../../../bd/meowrouter/ip/meowrouter_s00_data_fifo_0/sim/meowrouter_s00_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_18 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_17 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_18 -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib -64 -incr "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/1b7e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/122e/hdl/verilog" "+incdir+../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/46fd/hdl" "+incdir+D:/Xilinx/Vivado/2018.3/data/xilinx_vip/include" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_0/sim/meowrouter_auto_ds_0.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_pc_0/sim/meowrouter_auto_pc_0.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_1/sim/meowrouter_auto_ds_1.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_pc_1/sim/meowrouter_auto_pc_1.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_2/sim/meowrouter_auto_ds_2.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_3/sim/meowrouter_auto_ds_3.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_ds_4/sim/meowrouter_auto_ds_4.v" \
"../../../bd/meowrouter/ip/meowrouter_auto_pc_2/sim/meowrouter_auto_pc_2.v" \

vlog -work xil_defaultlib \
"glbl.v"

