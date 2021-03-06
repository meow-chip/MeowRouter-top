// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Thu Dec 19 18:19:15 2019
// Host        : imac running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub -rename_top pll_example -prefix
//               pll_example_ pll_example_stub.v
// Design      : pll_example
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module pll_example(clk_out1, clk_CPU, clk_out3, clk_out4, reset, 
  locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_out1,clk_CPU,clk_out3,clk_out4,reset,locked,clk_in1" */;
  output clk_out1;
  output clk_CPU;
  output clk_out3;
  output clk_out4;
  input reset;
  output locked;
  input clk_in1;
endmodule
