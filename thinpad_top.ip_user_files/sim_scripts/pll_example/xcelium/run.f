-makelib xcelium_lib/xil_defaultlib -sv \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "D:/Xilinx/Vivado/2018.3/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../../thinpad_top.srcs/sources_1/ip/pll_example/pll_example_clk_wiz.v" \
  "../../../../thinpad_top.srcs/sources_1/ip/pll_example/pll_example.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib
