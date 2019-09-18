vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/xbip_utils_v3_0_9
vlib riviera/xbip_pipe_v3_0_5
vlib riviera/xbip_bram18k_v3_0_5
vlib riviera/mult_gen_v12_0_14
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/tri_mode_ethernet_mac_v9_0_13

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap xbip_utils_v3_0_9 riviera/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 riviera/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 riviera/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 riviera/mult_gen_v12_0_14
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap tri_mode_ethernet_mac_v9_0_13 riviera/tri_mode_ethernet_mac_v9_0_13

vlog -work xil_defaultlib  -sv2k12 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work xbip_utils_v3_0_9 -93 \
"../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \

vcom -work xbip_pipe_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \

vcom -work xbip_bram18k_v3_0_5 -93 \
"../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \

vcom -work mult_gen_v12_0_14 -93 \
"../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vlog -work tri_mode_ethernet_mac_v9_0_13  -v2k5 \
"../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.v" \

vcom -work tri_mode_ethernet_mac_v9_0_13 -93 \
"../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.vhd" \

vlog -work xil_defaultlib  -v2k5 \
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

