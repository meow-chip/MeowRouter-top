// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Tue Nov  5 22:20:54 2019
// Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/workspace/Networking/thinpad_top/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_Core_0_0/meowrouter_Core_0_0_stub.v
// Design      : meowrouter_Core_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Core,Vivado 2018.3_AR71898" *)
module meowrouter_Core_0_0(clock, reset, io_iaxi_AWID, io_iaxi_AWADDR, 
  io_iaxi_AWLEN, io_iaxi_AWSIZE, io_iaxi_AWBURST, io_iaxi_AWCACHE, io_iaxi_AWPROT, 
  io_iaxi_AWQOS, io_iaxi_AWREGION, io_iaxi_AWVALID, io_iaxi_AWREADY, io_iaxi_WDATA, 
  io_iaxi_WSTRB, io_iaxi_WLAST, io_iaxi_WVALID, io_iaxi_WREADY, io_iaxi_BID, io_iaxi_BRESP, 
  io_iaxi_BVALID, io_iaxi_BREADY, io_iaxi_ARID, io_iaxi_ARADDR, io_iaxi_ARLEN, 
  io_iaxi_ARSIZE, io_iaxi_ARBURST, io_iaxi_ARCACHE, io_iaxi_ARPROT, io_iaxi_ARQOS, 
  io_iaxi_ARREGION, io_iaxi_ARVALID, io_iaxi_ARREADY, io_iaxi_RID, io_iaxi_RDATA, 
  io_iaxi_RRESP, io_iaxi_RLAST, io_iaxi_RVALID, io_iaxi_RREADY, io_daxi_AWID, io_daxi_AWADDR, 
  io_daxi_AWLEN, io_daxi_AWSIZE, io_daxi_AWBURST, io_daxi_AWCACHE, io_daxi_AWPROT, 
  io_daxi_AWQOS, io_daxi_AWREGION, io_daxi_AWVALID, io_daxi_AWREADY, io_daxi_WDATA, 
  io_daxi_WSTRB, io_daxi_WLAST, io_daxi_WVALID, io_daxi_WREADY, io_daxi_BID, io_daxi_BRESP, 
  io_daxi_BVALID, io_daxi_BREADY, io_daxi_ARID, io_daxi_ARADDR, io_daxi_ARLEN, 
  io_daxi_ARSIZE, io_daxi_ARBURST, io_daxi_ARCACHE, io_daxi_ARPROT, io_daxi_ARQOS, 
  io_daxi_ARREGION, io_daxi_ARVALID, io_daxi_ARREADY, io_daxi_RID, io_daxi_RDATA, 
  io_daxi_RRESP, io_daxi_RLAST, io_daxi_RVALID, io_daxi_RREADY, io_pc)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_iaxi_AWID[3:0],io_iaxi_AWADDR[47:0],io_iaxi_AWLEN[7:0],io_iaxi_AWSIZE[2:0],io_iaxi_AWBURST[1:0],io_iaxi_AWCACHE[3:0],io_iaxi_AWPROT[2:0],io_iaxi_AWQOS[2:0],io_iaxi_AWREGION[3:0],io_iaxi_AWVALID,io_iaxi_AWREADY,io_iaxi_WDATA[63:0],io_iaxi_WSTRB[7:0],io_iaxi_WLAST,io_iaxi_WVALID,io_iaxi_WREADY,io_iaxi_BID[3:0],io_iaxi_BRESP[1:0],io_iaxi_BVALID,io_iaxi_BREADY,io_iaxi_ARID[3:0],io_iaxi_ARADDR[47:0],io_iaxi_ARLEN[7:0],io_iaxi_ARSIZE[2:0],io_iaxi_ARBURST[1:0],io_iaxi_ARCACHE[3:0],io_iaxi_ARPROT[2:0],io_iaxi_ARQOS[2:0],io_iaxi_ARREGION[3:0],io_iaxi_ARVALID,io_iaxi_ARREADY,io_iaxi_RID[3:0],io_iaxi_RDATA[63:0],io_iaxi_RRESP[1:0],io_iaxi_RLAST,io_iaxi_RVALID,io_iaxi_RREADY,io_daxi_AWID[3:0],io_daxi_AWADDR[47:0],io_daxi_AWLEN[7:0],io_daxi_AWSIZE[2:0],io_daxi_AWBURST[1:0],io_daxi_AWCACHE[3:0],io_daxi_AWPROT[2:0],io_daxi_AWQOS[2:0],io_daxi_AWREGION[3:0],io_daxi_AWVALID,io_daxi_AWREADY,io_daxi_WDATA[63:0],io_daxi_WSTRB[7:0],io_daxi_WLAST,io_daxi_WVALID,io_daxi_WREADY,io_daxi_BID[3:0],io_daxi_BRESP[1:0],io_daxi_BVALID,io_daxi_BREADY,io_daxi_ARID[3:0],io_daxi_ARADDR[47:0],io_daxi_ARLEN[7:0],io_daxi_ARSIZE[2:0],io_daxi_ARBURST[1:0],io_daxi_ARCACHE[3:0],io_daxi_ARPROT[2:0],io_daxi_ARQOS[2:0],io_daxi_ARREGION[3:0],io_daxi_ARVALID,io_daxi_ARREADY,io_daxi_RID[3:0],io_daxi_RDATA[63:0],io_daxi_RRESP[1:0],io_daxi_RLAST,io_daxi_RVALID,io_daxi_RREADY,io_pc[47:0]" */;
  input clock;
  input reset;
  output [3:0]io_iaxi_AWID;
  output [47:0]io_iaxi_AWADDR;
  output [7:0]io_iaxi_AWLEN;
  output [2:0]io_iaxi_AWSIZE;
  output [1:0]io_iaxi_AWBURST;
  output [3:0]io_iaxi_AWCACHE;
  output [2:0]io_iaxi_AWPROT;
  output [2:0]io_iaxi_AWQOS;
  output [3:0]io_iaxi_AWREGION;
  output io_iaxi_AWVALID;
  input io_iaxi_AWREADY;
  output [63:0]io_iaxi_WDATA;
  output [7:0]io_iaxi_WSTRB;
  output io_iaxi_WLAST;
  output io_iaxi_WVALID;
  input io_iaxi_WREADY;
  input [3:0]io_iaxi_BID;
  input [1:0]io_iaxi_BRESP;
  input io_iaxi_BVALID;
  output io_iaxi_BREADY;
  output [3:0]io_iaxi_ARID;
  output [47:0]io_iaxi_ARADDR;
  output [7:0]io_iaxi_ARLEN;
  output [2:0]io_iaxi_ARSIZE;
  output [1:0]io_iaxi_ARBURST;
  output [3:0]io_iaxi_ARCACHE;
  output [2:0]io_iaxi_ARPROT;
  output [2:0]io_iaxi_ARQOS;
  output [3:0]io_iaxi_ARREGION;
  output io_iaxi_ARVALID;
  input io_iaxi_ARREADY;
  input [3:0]io_iaxi_RID;
  input [63:0]io_iaxi_RDATA;
  input [1:0]io_iaxi_RRESP;
  input io_iaxi_RLAST;
  input io_iaxi_RVALID;
  output io_iaxi_RREADY;
  output [3:0]io_daxi_AWID;
  output [47:0]io_daxi_AWADDR;
  output [7:0]io_daxi_AWLEN;
  output [2:0]io_daxi_AWSIZE;
  output [1:0]io_daxi_AWBURST;
  output [3:0]io_daxi_AWCACHE;
  output [2:0]io_daxi_AWPROT;
  output [2:0]io_daxi_AWQOS;
  output [3:0]io_daxi_AWREGION;
  output io_daxi_AWVALID;
  input io_daxi_AWREADY;
  output [63:0]io_daxi_WDATA;
  output [7:0]io_daxi_WSTRB;
  output io_daxi_WLAST;
  output io_daxi_WVALID;
  input io_daxi_WREADY;
  input [3:0]io_daxi_BID;
  input [1:0]io_daxi_BRESP;
  input io_daxi_BVALID;
  output io_daxi_BREADY;
  output [3:0]io_daxi_ARID;
  output [47:0]io_daxi_ARADDR;
  output [7:0]io_daxi_ARLEN;
  output [2:0]io_daxi_ARSIZE;
  output [1:0]io_daxi_ARBURST;
  output [3:0]io_daxi_ARCACHE;
  output [2:0]io_daxi_ARPROT;
  output [2:0]io_daxi_ARQOS;
  output [3:0]io_daxi_ARREGION;
  output io_daxi_ARVALID;
  input io_daxi_ARREADY;
  input [3:0]io_daxi_RID;
  input [63:0]io_daxi_RDATA;
  input [1:0]io_daxi_RRESP;
  input io_daxi_RLAST;
  input io_daxi_RVALID;
  output io_daxi_RREADY;
  output [47:0]io_pc;
endmodule
