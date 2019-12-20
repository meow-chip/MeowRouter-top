// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Fri Dec 20 07:23:27 2019
// Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/workspace/Networking/thinpad_top/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_CPU_0/meowrouter_CPU_0_stub.v
// Design      : meowrouter_CPU_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Core,Vivado 2018.3_AR71898" *)
module meowrouter_CPU_0(clock, reset, io_axi_AWID, io_axi_AWADDR, 
  io_axi_AWLEN, io_axi_AWSIZE, io_axi_AWBURST, io_axi_AWCACHE, io_axi_AWPROT, io_axi_AWQOS, 
  io_axi_AWREGION, io_axi_AWVALID, io_axi_AWREADY, io_axi_WDATA, io_axi_WSTRB, io_axi_WLAST, 
  io_axi_WVALID, io_axi_WREADY, io_axi_BID, io_axi_BRESP, io_axi_BVALID, io_axi_BREADY, 
  io_axi_ARID, io_axi_ARADDR, io_axi_ARLEN, io_axi_ARSIZE, io_axi_ARBURST, io_axi_ARCACHE, 
  io_axi_ARPROT, io_axi_ARQOS, io_axi_ARREGION, io_axi_ARVALID, io_axi_ARREADY, io_axi_RID, 
  io_axi_RDATA, io_axi_RRESP, io_axi_RLAST, io_axi_RVALID, io_axi_RREADY, io_eint, io_pc)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_axi_AWID[3:0],io_axi_AWADDR[47:0],io_axi_AWLEN[7:0],io_axi_AWSIZE[2:0],io_axi_AWBURST[1:0],io_axi_AWCACHE[3:0],io_axi_AWPROT[2:0],io_axi_AWQOS[2:0],io_axi_AWREGION[3:0],io_axi_AWVALID,io_axi_AWREADY,io_axi_WDATA[63:0],io_axi_WSTRB[7:0],io_axi_WLAST,io_axi_WVALID,io_axi_WREADY,io_axi_BID[3:0],io_axi_BRESP[1:0],io_axi_BVALID,io_axi_BREADY,io_axi_ARID[3:0],io_axi_ARADDR[47:0],io_axi_ARLEN[7:0],io_axi_ARSIZE[2:0],io_axi_ARBURST[1:0],io_axi_ARCACHE[3:0],io_axi_ARPROT[2:0],io_axi_ARQOS[2:0],io_axi_ARREGION[3:0],io_axi_ARVALID,io_axi_ARREADY,io_axi_RID[3:0],io_axi_RDATA[63:0],io_axi_RRESP[1:0],io_axi_RLAST,io_axi_RVALID,io_axi_RREADY,io_eint,io_pc[47:0]" */;
  input clock;
  input reset;
  output [3:0]io_axi_AWID;
  output [47:0]io_axi_AWADDR;
  output [7:0]io_axi_AWLEN;
  output [2:0]io_axi_AWSIZE;
  output [1:0]io_axi_AWBURST;
  output [3:0]io_axi_AWCACHE;
  output [2:0]io_axi_AWPROT;
  output [2:0]io_axi_AWQOS;
  output [3:0]io_axi_AWREGION;
  output io_axi_AWVALID;
  input io_axi_AWREADY;
  output [63:0]io_axi_WDATA;
  output [7:0]io_axi_WSTRB;
  output io_axi_WLAST;
  output io_axi_WVALID;
  input io_axi_WREADY;
  input [3:0]io_axi_BID;
  input [1:0]io_axi_BRESP;
  input io_axi_BVALID;
  output io_axi_BREADY;
  output [3:0]io_axi_ARID;
  output [47:0]io_axi_ARADDR;
  output [7:0]io_axi_ARLEN;
  output [2:0]io_axi_ARSIZE;
  output [1:0]io_axi_ARBURST;
  output [3:0]io_axi_ARCACHE;
  output [2:0]io_axi_ARPROT;
  output [2:0]io_axi_ARQOS;
  output [3:0]io_axi_ARREGION;
  output io_axi_ARVALID;
  input io_axi_ARREADY;
  input [3:0]io_axi_RID;
  input [63:0]io_axi_RDATA;
  input [1:0]io_axi_RRESP;
  input io_axi_RLAST;
  input io_axi_RVALID;
  output io_axi_RREADY;
  input io_eint;
  output [47:0]io_pc;
endmodule
