vlib work
vlib activehdl

vlib activehdl/xil_defaultlib
vlib activehdl/xpm
vlib activehdl/xbip_utils_v3_0_9
vlib activehdl/xbip_pipe_v3_0_5
vlib activehdl/xbip_bram18k_v3_0_5
vlib activehdl/mult_gen_v12_0_14
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/tri_mode_ethernet_mac_v9_0_13

vmap xil_defaultlib activehdl/xil_defaultlib
vmap xpm activehdl/xpm
vmap xbip_utils_v3_0_9 activehdl/xbip_utils_v3_0_9
vmap xbip_pipe_v3_0_5 activehdl/xbip_pipe_v3_0_5
vmap xbip_bram18k_v3_0_5 activehdl/xbip_bram18k_v3_0_5
vmap mult_gen_v12_0_14 activehdl/mult_gen_v12_0_14
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap tri_mode_ethernet_mac_v9_0_13 activehdl/tri_mode_ethernet_mac_v9_0_13

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

