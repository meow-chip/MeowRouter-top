// (c) Copyright 1995-2019 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:Core:1.0
// IP Revision: 1

(* X_CORE_INFO = "Core,Vivado 2018.3_AR71898" *)
(* CHECK_LICENSE_TYPE = "meowrouter_Core_0_0,Core,{}" *)
(* CORE_GENERATION_INFO = "meowrouter_Core_0_0,Core,{x_ipProduct=Vivado 2018.3_AR71898,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Core,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module meowrouter_Core_0_0 (
  clock,
  reset,
  io_iaxi_AWID,
  io_iaxi_AWADDR,
  io_iaxi_AWLEN,
  io_iaxi_AWSIZE,
  io_iaxi_AWBURST,
  io_iaxi_AWCACHE,
  io_iaxi_AWPROT,
  io_iaxi_AWQOS,
  io_iaxi_AWREGION,
  io_iaxi_AWVALID,
  io_iaxi_AWREADY,
  io_iaxi_WDATA,
  io_iaxi_WSTRB,
  io_iaxi_WLAST,
  io_iaxi_WVALID,
  io_iaxi_WREADY,
  io_iaxi_BID,
  io_iaxi_BRESP,
  io_iaxi_BVALID,
  io_iaxi_BREADY,
  io_iaxi_ARID,
  io_iaxi_ARADDR,
  io_iaxi_ARLEN,
  io_iaxi_ARSIZE,
  io_iaxi_ARBURST,
  io_iaxi_ARCACHE,
  io_iaxi_ARPROT,
  io_iaxi_ARQOS,
  io_iaxi_ARREGION,
  io_iaxi_ARVALID,
  io_iaxi_ARREADY,
  io_iaxi_RID,
  io_iaxi_RDATA,
  io_iaxi_RRESP,
  io_iaxi_RLAST,
  io_iaxi_RVALID,
  io_iaxi_RREADY,
  io_daxi_AWID,
  io_daxi_AWADDR,
  io_daxi_AWLEN,
  io_daxi_AWSIZE,
  io_daxi_AWBURST,
  io_daxi_AWCACHE,
  io_daxi_AWPROT,
  io_daxi_AWQOS,
  io_daxi_AWREGION,
  io_daxi_AWVALID,
  io_daxi_AWREADY,
  io_daxi_WDATA,
  io_daxi_WSTRB,
  io_daxi_WLAST,
  io_daxi_WVALID,
  io_daxi_WREADY,
  io_daxi_BID,
  io_daxi_BRESP,
  io_daxi_BVALID,
  io_daxi_BREADY,
  io_daxi_ARID,
  io_daxi_ARADDR,
  io_daxi_ARLEN,
  io_daxi_ARSIZE,
  io_daxi_ARBURST,
  io_daxi_ARCACHE,
  io_daxi_ARPROT,
  io_daxi_ARQOS,
  io_daxi_ARREGION,
  io_daxi_ARVALID,
  io_daxi_ARREADY,
  io_daxi_RID,
  io_daxi_RDATA,
  io_daxi_RRESP,
  io_daxi_RLAST,
  io_daxi_RVALID,
  io_daxi_RREADY,
  io_pc
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_daxi:io_iaxi, ASSOCIATED_RESET reset, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWID" *)
output wire [3 : 0] io_iaxi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWADDR" *)
output wire [47 : 0] io_iaxi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWLEN" *)
output wire [7 : 0] io_iaxi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWSIZE" *)
output wire [2 : 0] io_iaxi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWBURST" *)
output wire [1 : 0] io_iaxi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWCACHE" *)
output wire [3 : 0] io_iaxi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWPROT" *)
output wire [2 : 0] io_iaxi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWQOS" *)
output wire [2 : 0] io_iaxi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWREGION" *)
output wire [3 : 0] io_iaxi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWVALID" *)
output wire io_iaxi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi AWREADY" *)
input wire io_iaxi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi WDATA" *)
output wire [63 : 0] io_iaxi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi WSTRB" *)
output wire [7 : 0] io_iaxi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi WLAST" *)
output wire io_iaxi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi WVALID" *)
output wire io_iaxi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi WREADY" *)
input wire io_iaxi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi BID" *)
input wire [3 : 0] io_iaxi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi BRESP" *)
input wire [1 : 0] io_iaxi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi BVALID" *)
input wire io_iaxi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi BREADY" *)
output wire io_iaxi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARID" *)
output wire [3 : 0] io_iaxi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARADDR" *)
output wire [47 : 0] io_iaxi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARLEN" *)
output wire [7 : 0] io_iaxi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARSIZE" *)
output wire [2 : 0] io_iaxi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARBURST" *)
output wire [1 : 0] io_iaxi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARCACHE" *)
output wire [3 : 0] io_iaxi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARPROT" *)
output wire [2 : 0] io_iaxi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARQOS" *)
output wire [2 : 0] io_iaxi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARREGION" *)
output wire [3 : 0] io_iaxi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARVALID" *)
output wire io_iaxi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi ARREADY" *)
input wire io_iaxi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RID" *)
input wire [3 : 0] io_iaxi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RDATA" *)
input wire [63 : 0] io_iaxi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RRESP" *)
input wire [1 : 0] io_iaxi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RLAST" *)
input wire io_iaxi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RVALID" *)
input wire io_iaxi_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_iaxi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_iaxi RREADY" *)
output wire io_iaxi_RREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWID" *)
output wire [3 : 0] io_daxi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWADDR" *)
output wire [47 : 0] io_daxi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWLEN" *)
output wire [7 : 0] io_daxi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWSIZE" *)
output wire [2 : 0] io_daxi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWBURST" *)
output wire [1 : 0] io_daxi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWCACHE" *)
output wire [3 : 0] io_daxi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWPROT" *)
output wire [2 : 0] io_daxi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWQOS" *)
output wire [2 : 0] io_daxi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWREGION" *)
output wire [3 : 0] io_daxi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWVALID" *)
output wire io_daxi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi AWREADY" *)
input wire io_daxi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi WDATA" *)
output wire [63 : 0] io_daxi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi WSTRB" *)
output wire [7 : 0] io_daxi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi WLAST" *)
output wire io_daxi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi WVALID" *)
output wire io_daxi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi WREADY" *)
input wire io_daxi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi BID" *)
input wire [3 : 0] io_daxi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi BRESP" *)
input wire [1 : 0] io_daxi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi BVALID" *)
input wire io_daxi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi BREADY" *)
output wire io_daxi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARID" *)
output wire [3 : 0] io_daxi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARADDR" *)
output wire [47 : 0] io_daxi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARLEN" *)
output wire [7 : 0] io_daxi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARSIZE" *)
output wire [2 : 0] io_daxi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARBURST" *)
output wire [1 : 0] io_daxi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARCACHE" *)
output wire [3 : 0] io_daxi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARPROT" *)
output wire [2 : 0] io_daxi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARQOS" *)
output wire [2 : 0] io_daxi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARREGION" *)
output wire [3 : 0] io_daxi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARVALID" *)
output wire io_daxi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi ARREADY" *)
input wire io_daxi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RID" *)
input wire [3 : 0] io_daxi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RDATA" *)
input wire [63 : 0] io_daxi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RRESP" *)
input wire [1 : 0] io_daxi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RLAST" *)
input wire io_daxi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RVALID" *)
input wire io_daxi_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_daxi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1\
, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_daxi RREADY" *)
output wire io_daxi_RREADY;
output wire [47 : 0] io_pc;

  Core inst (
    .clock(clock),
    .reset(reset),
    .io_iaxi_AWID(io_iaxi_AWID),
    .io_iaxi_AWADDR(io_iaxi_AWADDR),
    .io_iaxi_AWLEN(io_iaxi_AWLEN),
    .io_iaxi_AWSIZE(io_iaxi_AWSIZE),
    .io_iaxi_AWBURST(io_iaxi_AWBURST),
    .io_iaxi_AWCACHE(io_iaxi_AWCACHE),
    .io_iaxi_AWPROT(io_iaxi_AWPROT),
    .io_iaxi_AWQOS(io_iaxi_AWQOS),
    .io_iaxi_AWREGION(io_iaxi_AWREGION),
    .io_iaxi_AWVALID(io_iaxi_AWVALID),
    .io_iaxi_AWREADY(io_iaxi_AWREADY),
    .io_iaxi_WDATA(io_iaxi_WDATA),
    .io_iaxi_WSTRB(io_iaxi_WSTRB),
    .io_iaxi_WLAST(io_iaxi_WLAST),
    .io_iaxi_WVALID(io_iaxi_WVALID),
    .io_iaxi_WREADY(io_iaxi_WREADY),
    .io_iaxi_BID(io_iaxi_BID),
    .io_iaxi_BRESP(io_iaxi_BRESP),
    .io_iaxi_BVALID(io_iaxi_BVALID),
    .io_iaxi_BREADY(io_iaxi_BREADY),
    .io_iaxi_ARID(io_iaxi_ARID),
    .io_iaxi_ARADDR(io_iaxi_ARADDR),
    .io_iaxi_ARLEN(io_iaxi_ARLEN),
    .io_iaxi_ARSIZE(io_iaxi_ARSIZE),
    .io_iaxi_ARBURST(io_iaxi_ARBURST),
    .io_iaxi_ARCACHE(io_iaxi_ARCACHE),
    .io_iaxi_ARPROT(io_iaxi_ARPROT),
    .io_iaxi_ARQOS(io_iaxi_ARQOS),
    .io_iaxi_ARREGION(io_iaxi_ARREGION),
    .io_iaxi_ARVALID(io_iaxi_ARVALID),
    .io_iaxi_ARREADY(io_iaxi_ARREADY),
    .io_iaxi_RID(io_iaxi_RID),
    .io_iaxi_RDATA(io_iaxi_RDATA),
    .io_iaxi_RRESP(io_iaxi_RRESP),
    .io_iaxi_RLAST(io_iaxi_RLAST),
    .io_iaxi_RVALID(io_iaxi_RVALID),
    .io_iaxi_RREADY(io_iaxi_RREADY),
    .io_daxi_AWID(io_daxi_AWID),
    .io_daxi_AWADDR(io_daxi_AWADDR),
    .io_daxi_AWLEN(io_daxi_AWLEN),
    .io_daxi_AWSIZE(io_daxi_AWSIZE),
    .io_daxi_AWBURST(io_daxi_AWBURST),
    .io_daxi_AWCACHE(io_daxi_AWCACHE),
    .io_daxi_AWPROT(io_daxi_AWPROT),
    .io_daxi_AWQOS(io_daxi_AWQOS),
    .io_daxi_AWREGION(io_daxi_AWREGION),
    .io_daxi_AWVALID(io_daxi_AWVALID),
    .io_daxi_AWREADY(io_daxi_AWREADY),
    .io_daxi_WDATA(io_daxi_WDATA),
    .io_daxi_WSTRB(io_daxi_WSTRB),
    .io_daxi_WLAST(io_daxi_WLAST),
    .io_daxi_WVALID(io_daxi_WVALID),
    .io_daxi_WREADY(io_daxi_WREADY),
    .io_daxi_BID(io_daxi_BID),
    .io_daxi_BRESP(io_daxi_BRESP),
    .io_daxi_BVALID(io_daxi_BVALID),
    .io_daxi_BREADY(io_daxi_BREADY),
    .io_daxi_ARID(io_daxi_ARID),
    .io_daxi_ARADDR(io_daxi_ARADDR),
    .io_daxi_ARLEN(io_daxi_ARLEN),
    .io_daxi_ARSIZE(io_daxi_ARSIZE),
    .io_daxi_ARBURST(io_daxi_ARBURST),
    .io_daxi_ARCACHE(io_daxi_ARCACHE),
    .io_daxi_ARPROT(io_daxi_ARPROT),
    .io_daxi_ARQOS(io_daxi_ARQOS),
    .io_daxi_ARREGION(io_daxi_ARREGION),
    .io_daxi_ARVALID(io_daxi_ARVALID),
    .io_daxi_ARREADY(io_daxi_ARREADY),
    .io_daxi_RID(io_daxi_RID),
    .io_daxi_RDATA(io_daxi_RDATA),
    .io_daxi_RRESP(io_daxi_RRESP),
    .io_daxi_RLAST(io_daxi_RLAST),
    .io_daxi_RVALID(io_daxi_RVALID),
    .io_daxi_RREADY(io_daxi_RREADY),
    .io_pc(io_pc)
  );
endmodule
