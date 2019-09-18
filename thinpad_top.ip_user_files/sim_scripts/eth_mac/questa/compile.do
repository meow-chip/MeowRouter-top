vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/xpm
vlib questa_lib/msim/xbip_utils_v3_0_9
vlib questa_lib/msim/xbip_pipe_v3_0_5
vlib questa_lib/msim/xbip_bram18k_v3_0_5
vlib questa_lib/msim/mult_gen_v12_0_14
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/tri_mode_ethernet_mac_v9_0_13

vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap xpm questa_lib/msim/xpm
vmap xbip_utils_v3_0_9 questa_lib/msim/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 questa_lib/msim/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 questa_lib/msim/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 questa_lib/msim/mult_gen_v12_0_14
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap tri_mode_ethernet_mac_v9_0_13 questa_lib/msim/tri_mode_ethernet_mac_v9_0_13

vlog -work xil_defaultlib -64 -sv \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -64 -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -64 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -64 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -64 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -64 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -64 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vlog -work tri_mode_ethernet_mac_v9_0_13 -64 \
"../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.v" \

vcom -work tri_mode_ethernet_mac_v9_0_13 -64 -93 \
"../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.vhd" \

vlog -work xil_defaultlib -64 \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/common/eth_mac_block_reset_sync.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/common/eth_mac_block_sync_block.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_clk_en_gen.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/physical/eth_mac_rgmii_v2_0_if.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_block.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support_clocking.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support_resets.v" \
"../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac.v" \

vlog -work xil_defaultlib \
"glbl.v"

