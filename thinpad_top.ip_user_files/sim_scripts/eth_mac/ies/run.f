-makelib ies_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib ies_lib/xpm \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib ies_lib/xbip_utils_v3_0_9 \
  "../../../ipstatic/hdl/xbip_utils_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_pipe_v3_0_5 \
  "../../../ipstatic/hdl/xbip_pipe_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/xbip_bram18k_v3_0_5 \
  "../../../ipstatic/hdl/xbip_bram18k_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/mult_gen_v12_0_14 \
  "../../../ipstatic/hdl/mult_gen_v12_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/axi_lite_ipif_v3_0_4 \
  "../../../ipstatic/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib ies_lib/tri_mode_ethernet_mac_v9_0_13 \
  "../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.v" \
-endlib
-makelib ies_lib/tri_mode_ethernet_mac_v9_0_13 \
  "../../../ipstatic/hdl/tri_mode_ethernet_mac_v9_0_rfs.vhd" \
-endlib
-makelib ies_lib/xil_defaultlib \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/common/eth_mac_block_reset_sync.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/common/eth_mac_block_sync_block.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_clk_en_gen.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/physical/eth_mac_rgmii_v2_0_if.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_block.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support_clocking.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac_support_resets.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/eth_mac/synth/eth_mac.v" \
-endlib
-makelib ies_lib/xil_defaultlib \
  glbl.v
-endlib

