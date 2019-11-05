//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Tue Nov  5 04:15:23 2019
//Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
//Command     : generate_target meowrouter_wrapper.bd
//Design      : meowrouter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module meowrouter_wrapper
   (DISP_tri_o,
    SWITCH_tri_i,
    UART_rxd,
    UART_txd,
    cpu_clk,
    data_clk,
    data_rx_clk,
    data_rx_tdata,
    data_rx_tlast,
    data_rx_tvalid,
    data_tx_clk,
    data_tx_tdata,
    data_tx_tlast,
    data_tx_tready,
    data_tx_tuser,
    data_tx_tvalid,
    rst);
  output [31:0]DISP_tri_o;
  input [15:0]SWITCH_tri_i;
  input UART_rxd;
  output UART_txd;
  input cpu_clk;
  input data_clk;
  input data_rx_clk;
  input [7:0]data_rx_tdata;
  input data_rx_tlast;
  input data_rx_tvalid;
  input data_tx_clk;
  output [7:0]data_tx_tdata;
  output data_tx_tlast;
  input data_tx_tready;
  output data_tx_tuser;
  output data_tx_tvalid;
  input rst;

  wire [31:0]DISP_tri_o;
  wire [15:0]SWITCH_tri_i;
  wire UART_rxd;
  wire UART_txd;
  wire cpu_clk;
  wire data_clk;
  wire data_rx_clk;
  wire [7:0]data_rx_tdata;
  wire data_rx_tlast;
  wire data_rx_tvalid;
  wire data_tx_clk;
  wire [7:0]data_tx_tdata;
  wire data_tx_tlast;
  wire data_tx_tready;
  wire data_tx_tuser;
  wire data_tx_tvalid;
  wire rst;

  meowrouter meowrouter_i
       (.DISP_tri_o(DISP_tri_o),
        .SWITCH_tri_i(SWITCH_tri_i),
        .UART_rxd(UART_rxd),
        .UART_txd(UART_txd),
        .cpu_clk(cpu_clk),
        .data_clk(data_clk),
        .data_rx_clk(data_rx_clk),
        .data_rx_tdata(data_rx_tdata),
        .data_rx_tlast(data_rx_tlast),
        .data_rx_tvalid(data_rx_tvalid),
        .data_tx_clk(data_tx_clk),
        .data_tx_tdata(data_tx_tdata),
        .data_tx_tlast(data_tx_tlast),
        .data_tx_tready(data_tx_tready),
        .data_tx_tuser(data_tx_tuser),
        .data_tx_tvalid(data_tx_tvalid),
        .rst(rst));
endmodule
