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

(* X_CORE_INFO = "Top,Vivado 2018.3_AR71898" *)
(* CHECK_LICENSE_TYPE = "meowrouter_Router_0,Top,{}" *)
(* CORE_GENERATION_INFO = "meowrouter_Router_0,Top,{x_ipProduct=Vivado 2018.3_AR71898,x_ipVendor=xilinx.com,x_ipLibrary=module_ref,x_ipName=Top,x_ipVersion=1.0,x_ipCoreRevision=1,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
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
  io_cmd
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clock, ASSOCIATED_BUSIF io_rx:io_tx, FREQ_HZ 125000000, PHASE 0.000, CLK_DOMAIN meowrouter_data_clk, INSERT_VIP 0" *)
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
    .io_cmd(io_cmd)
  );
endmodule
