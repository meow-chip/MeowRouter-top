// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Wed Dec 11 02:48:10 2019
// Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/workspace/Networking/thinpad_top/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_Router_0/meowrouter_Router_0_stub.v
// Design      : meowrouter_Router_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "Top,Vivado 2018.3_AR71898" *)
module meowrouter_Router_0(clock, reset, io_rx_clk, io_tx_clk, io_rx_tdata, 
  io_rx_tvalid, io_rx_tlast, io_tx_tdata, io_tx_tvalid, io_tx_tlast, io_tx_tready, io_tx_tuser)
/* synthesis syn_black_box black_box_pad_pin="clock,reset,io_rx_clk,io_tx_clk,io_rx_tdata[7:0],io_rx_tvalid,io_rx_tlast,io_tx_tdata[7:0],io_tx_tvalid,io_tx_tlast,io_tx_tready,io_tx_tuser" */;
  input clock;
  input reset;
  input io_rx_clk;
  input io_tx_clk;
  input [7:0]io_rx_tdata;
  input io_rx_tvalid;
  input io_rx_tlast;
  output [7:0]io_tx_tdata;
  output io_tx_tvalid;
  output io_tx_tlast;
  input io_tx_tready;
  output io_tx_tuser;
endmodule
