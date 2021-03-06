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


// IP VLNV: xilinx.com:module_ref:Top:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module meowrouter_Router_0 (
  clock,
  reset,
  io_rx_clk,
  io_tx_clk,
  io_rx_tdata,
  io_rx_tvalid,
  io_rx_tlast,
  io_tx_tdata,
  io_tx_tvalid,
  io_tx_tlast,
  io_tx_tready,
  io_tx_tuser,
  io_buf_clk,
  io_buf_addr,
  io_buf_din,
  io_buf_dout,
  io_buf_we,
  io_cmd,
  io_axi_AWID,
  io_axi_AWADDR,
  io_axi_AWLEN,
  io_axi_AWSIZE,
  io_axi_AWBURST,
  io_axi_AWCACHE,
  io_axi_AWPROT,
  io_axi_AWQOS,
  io_axi_AWREGION,
  io_axi_AWVALID,
  io_axi_AWREADY,
  io_axi_WDATA,
  io_axi_WSTRB,
  io_axi_WLAST,
  io_axi_WVALID,
  io_axi_WREADY,
  io_axi_BID,
  io_axi_BRESP,
  io_axi_BVALID,
  io_axi_BREADY,
  io_axi_ARID,
  io_axi_ARADDR,
  io_axi_ARLEN,
  io_axi_ARSIZE,
  io_axi_ARBURST,
  io_axi_ARCACHE,
  io_axi_ARPROT,
  io_axi_ARQOS,
  io_axi_ARREGION,
  io_axi_ARVALID,
  io_axi_ARREADY,
  io_axi_RID,
  io_axi_RDATA,
  io_axi_RRESP,
  io_axi_RLAST,
  io_axi_RVALID,
  io_axi_RREADY
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_rx:io_tx:io_axi, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 clock CLK" *)
input wire clock;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_rx_clk, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_rx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 io_rx_clk CLK" *)
input wire io_rx_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_tx_clk, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_tx_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 io_tx_clk CLK" *)
input wire io_tx_clk;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_rx TDATA" *)
input wire [7 : 0] io_rx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_rx TVALID" *)
input wire io_rx_tvalid;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_rx, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 0, HAS_TREADY 0, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_rx TLAST" *)
input wire io_rx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_tx TDATA" *)
output wire [7 : 0] io_tx_tdata;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_tx TVALID" *)
output wire io_tx_tvalid;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_tx TLAST" *)
output wire io_tx_tlast;
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_tx TREADY" *)
input wire io_tx_tready;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_tx, TDATA_NUM_BYTES 1, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1, HAS_TREADY 1, HAS_TSTRB 0, HAS_TKEEP 0, HAS_TLAST 1, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_clk, LAYERED_METADATA undef, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 io_tx TUSER" *)
output wire io_tx_tuser;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_buf_clk, FREQ_HZ 100000000, PHASE 0.000, CLK_DOMAIN meowrouter_Router_0_io_buf_clk, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 io_buf_clk CLK" *)
output wire io_buf_clk;
output wire [31 : 0] io_buf_addr;
output wire [7 : 0] io_buf_din;
input wire [7 : 0] io_buf_dout;
output wire io_buf_we;
input wire [63 : 0] io_cmd;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWID" *)
output wire [3 : 0] io_axi_AWID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWADDR" *)
output wire [47 : 0] io_axi_AWADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWLEN" *)
output wire [7 : 0] io_axi_AWLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWSIZE" *)
output wire [2 : 0] io_axi_AWSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWBURST" *)
output wire [1 : 0] io_axi_AWBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWCACHE" *)
output wire [3 : 0] io_axi_AWCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWPROT" *)
output wire [2 : 0] io_axi_AWPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWQOS" *)
output wire [2 : 0] io_axi_AWQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWREGION" *)
output wire [3 : 0] io_axi_AWREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWVALID" *)
output wire io_axi_AWVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi AWREADY" *)
input wire io_axi_AWREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi WDATA" *)
output wire [63 : 0] io_axi_WDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi WSTRB" *)
output wire [7 : 0] io_axi_WSTRB;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi WLAST" *)
output wire io_axi_WLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi WVALID" *)
output wire io_axi_WVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi WREADY" *)
input wire io_axi_WREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi BID" *)
input wire [3 : 0] io_axi_BID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi BRESP" *)
input wire [1 : 0] io_axi_BRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi BVALID" *)
input wire io_axi_BVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi BREADY" *)
output wire io_axi_BREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARID" *)
output wire [3 : 0] io_axi_ARID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARADDR" *)
output wire [47 : 0] io_axi_ARADDR;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARLEN" *)
output wire [7 : 0] io_axi_ARLEN;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARSIZE" *)
output wire [2 : 0] io_axi_ARSIZE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARBURST" *)
output wire [1 : 0] io_axi_ARBURST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARCACHE" *)
output wire [3 : 0] io_axi_ARCACHE;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARPROT" *)
output wire [2 : 0] io_axi_ARPROT;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARQOS" *)
output wire [2 : 0] io_axi_ARQOS;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARREGION" *)
output wire [3 : 0] io_axi_ARREGION;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARVALID" *)
output wire io_axi_ARVALID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi ARREADY" *)
input wire io_axi_ARREADY;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RID" *)
input wire [3 : 0] io_axi_RID;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RDATA" *)
input wire [63 : 0] io_axi_RDATA;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RRESP" *)
input wire [1 : 0] io_axi_RRESP;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RLAST" *)
input wire io_axi_RLAST;
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RVALID" *)
input wire io_axi_RVALID;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME io_axi, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 125000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 1, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_data_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS \
1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 io_axi RREADY" *)
output wire io_axi_RREADY;

  Top inst (
    .clock(clock),
    .reset(reset),
    .io_rx_clk(io_rx_clk),
    .io_tx_clk(io_tx_clk),
    .io_rx_tdata(io_rx_tdata),
    .io_rx_tvalid(io_rx_tvalid),
    .io_rx_tlast(io_rx_tlast),
    .io_tx_tdata(io_tx_tdata),
    .io_tx_tvalid(io_tx_tvalid),
    .io_tx_tlast(io_tx_tlast),
    .io_tx_tready(io_tx_tready),
    .io_tx_tuser(io_tx_tuser),
    .io_buf_clk(io_buf_clk),
    .io_buf_addr(io_buf_addr),
    .io_buf_din(io_buf_din),
    .io_buf_dout(io_buf_dout),
    .io_buf_we(io_buf_we),
    .io_cmd(io_cmd),
    .io_axi_AWID(io_axi_AWID),
    .io_axi_AWADDR(io_axi_AWADDR),
    .io_axi_AWLEN(io_axi_AWLEN),
    .io_axi_AWSIZE(io_axi_AWSIZE),
    .io_axi_AWBURST(io_axi_AWBURST),
    .io_axi_AWCACHE(io_axi_AWCACHE),
    .io_axi_AWPROT(io_axi_AWPROT),
    .io_axi_AWQOS(io_axi_AWQOS),
    .io_axi_AWREGION(io_axi_AWREGION),
    .io_axi_AWVALID(io_axi_AWVALID),
    .io_axi_AWREADY(io_axi_AWREADY),
    .io_axi_WDATA(io_axi_WDATA),
    .io_axi_WSTRB(io_axi_WSTRB),
    .io_axi_WLAST(io_axi_WLAST),
    .io_axi_WVALID(io_axi_WVALID),
    .io_axi_WREADY(io_axi_WREADY),
    .io_axi_BID(io_axi_BID),
    .io_axi_BRESP(io_axi_BRESP),
    .io_axi_BVALID(io_axi_BVALID),
    .io_axi_BREADY(io_axi_BREADY),
    .io_axi_ARID(io_axi_ARID),
    .io_axi_ARADDR(io_axi_ARADDR),
    .io_axi_ARLEN(io_axi_ARLEN),
    .io_axi_ARSIZE(io_axi_ARSIZE),
    .io_axi_ARBURST(io_axi_ARBURST),
    .io_axi_ARCACHE(io_axi_ARCACHE),
    .io_axi_ARPROT(io_axi_ARPROT),
    .io_axi_ARQOS(io_axi_ARQOS),
    .io_axi_ARREGION(io_axi_ARREGION),
    .io_axi_ARVALID(io_axi_ARVALID),
    .io_axi_ARREADY(io_axi_ARREADY),
    .io_axi_RID(io_axi_RID),
    .io_axi_RDATA(io_axi_RDATA),
    .io_axi_RRESP(io_axi_RRESP),
    .io_axi_RLAST(io_axi_RLAST),
    .io_axi_RVALID(io_axi_RVALID),
    .io_axi_RREADY(io_axi_RREADY)
  );
endmodule
