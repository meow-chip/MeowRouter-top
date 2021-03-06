// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
// Date        : Sun Dec 22 20:38:06 2019
// Host        : imac running 64-bit Arch Linux
// Command     : write_verilog -force -mode synth_stub
//               /home/thu-skyworks/meow/Desktop/workspace/cod19grp3/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_blk_mem_gen_0_0/meowrouter_blk_mem_gen_0_0_stub.v
// Design      : meowrouter_blk_mem_gen_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* x_core_info = "blk_mem_gen_v8_4_2,Vivado 2018.3" *)
module meowrouter_blk_mem_gen_0_0(clka, rsta, ena, wea, addra, dina, douta, clkb, web, addrb, 
  dinb, doutb, rsta_busy, rstb_busy)
/* synthesis syn_black_box black_box_pad_pin="clka,rsta,ena,wea[3:0],addra[14:0],dina[31:0],douta[31:0],clkb,web[0:0],addrb[16:0],dinb[7:0],doutb[7:0],rsta_busy,rstb_busy" */;
  input clka;
  input rsta;
  input ena;
  input [3:0]wea;
  input [14:0]addra;
  input [31:0]dina;
  output [31:0]douta;
  input clkb;
  input [0:0]web;
  input [16:0]addrb;
  input [7:0]dinb;
  output [7:0]doutb;
  output rsta_busy;
  output rstb_busy;
endmodule
