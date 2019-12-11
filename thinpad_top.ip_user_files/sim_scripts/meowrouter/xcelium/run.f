-makelib xcelium_lib/xilinx_vip -sv \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/axi_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/clk_vip_if.sv" \
  "D:/Xilinx/Vivado/2018.3/data/xilinx_vip/hdl/rst_vip_if.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/generic_baseblocks_v2_1_0 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_infrastructure_v1_1_0 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_register_slice_v2_1_18 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/cc23/hdl/axi_register_slice_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/simulation/fifo_generator_vlog_beh.v" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.vhd" \
-endlib
-makelib xcelium_lib/fifo_generator_v13_2_3 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/64f4/hdl/fifo_generator_v13_2_rfs.v" \
-endlib
-makelib xcelium_lib/axi_data_fifo_v2_1_17 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/c4fd/hdl/axi_data_fifo_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_crossbar_v2_1_19 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/6c9d/hdl/axi_crossbar_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_xbar_0/sim/meowrouter_xbar_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_4_2 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/37c2/simulation/blk_mem_gen_v8_4.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_blk_mem_gen_0_0/sim/meowrouter_blk_mem_gen_0_0.v" \
-endlib
-makelib xcelium_lib/blk_mem_gen_v8_3_6 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \
-endlib
-makelib xcelium_lib/axi_bram_ctrl_v4_1_0 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/27fe/hdl/axi_bram_ctrl_v4_1_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_axi_bram_ctrl_0_1/sim/meowrouter_axi_bram_ctrl_0_1.vhd" \
-endlib
-makelib xcelium_lib/util_vector_logic_v2_0_1 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_util_vector_logic_0_0/sim/meowrouter_util_vector_logic_0_0.v" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_proc_sys_reset_0_0/sim/meowrouter_proc_sys_reset_0_0.vhd" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_20 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/a7c9/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_axi_gpio_0_0/sim/meowrouter_axi_gpio_0_0.vhd" \
-endlib
-makelib xcelium_lib/lib_pkg_v1_0_2 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_srl_fifo_v1_0_2 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/emc_common_v3_0_5 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/ea80/hdl/emc_common_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_emc_v3_0_18 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0cd1/hdl/axi_emc_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_axi_emc_0_1/sim/meowrouter_axi_emc_0_1.vhd" \
  "../../../bd/meowrouter/ip/meowrouter_axi_emc_0_2/sim/meowrouter_axi_emc_0_2.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_vio_0_0/sim/meowrouter_vio_0_0.v" \
  "../../../bd/meowrouter/ip/meowrouter_CPU_0/sim/meowrouter_CPU_0.v" \
  "../../../bd/meowrouter/ip/meowrouter_Router_0/sim/meowrouter_Router_0.v" \
-endlib
-makelib xcelium_lib/axi_uart16550_v2_0_20 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/07cf/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_axi_uart16550_0_0/sim/meowrouter_axi_uart16550_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/meowrouter/ip/meowrouter_axi_vip_0_0/sim/meowrouter_axi_vip_0_0_pkg.sv" \
-endlib
-makelib xcelium_lib/axi_vip_v1_1_4 -sv \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/98af/hdl/axi_vip_v1_1_vl_rfs.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib -sv \
  "../../../bd/meowrouter/ip/meowrouter_axi_vip_0_0/sim/meowrouter_axi_vip_0_0.sv" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/sim/meowrouter.v" \
-endlib
-makelib xcelium_lib/axi_intc_v4_1_12 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/31e4/hdl/axi_intc_v4_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_axi_intc_0_0/sim/meowrouter_axi_intc_0_0.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_s00_data_fifo_0/sim/meowrouter_s00_data_fifo_0.v" \
-endlib
-makelib xcelium_lib/axi_protocol_converter_v2_1_18 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/7a04/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_clock_converter_v2_1_17 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/693a/hdl/axi_clock_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/axi_dwidth_converter_v2_1_18 \
  "../../../../thinpad_top.srcs/sources_1/bd/meowrouter/ipshared/0815/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/meowrouter/ip/meowrouter_auto_ds_0/sim/meowrouter_auto_ds_0.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_pc_0/sim/meowrouter_auto_pc_0.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_ds_1/sim/meowrouter_auto_ds_1.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_pc_1/sim/meowrouter_auto_pc_1.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_ds_2/sim/meowrouter_auto_ds_2.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_ds_3/sim/meowrouter_auto_ds_3.v" \
  "../../../bd/meowrouter/ip/meowrouter_auto_pc_2/sim/meowrouter_auto_pc_2.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib

