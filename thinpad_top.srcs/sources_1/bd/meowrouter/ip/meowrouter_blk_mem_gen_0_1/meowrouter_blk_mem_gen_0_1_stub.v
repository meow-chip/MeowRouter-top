// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Nov  6 07:52:35 2019
// Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/workspace/Networking/thinpad_top/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_blk_mem_gen_0_1/meowrouter_blk_mem_gen_0_1_stub.v
// Design      : meowrouter_blk_mem_gen_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3_AR71898" *)
module meowrouter_blk_mem_gen_0_1(clka, rsta, ena, addra, douta, rsta_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,addra[31:0],douta[63:0],rsta_busy" */;
  input clka;
  input rsta;
  input ena;
  input [31:0]addra;
  output [63:0]douta;
  output rsta_busy;
endmodule
