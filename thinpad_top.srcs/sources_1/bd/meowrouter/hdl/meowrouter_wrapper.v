//Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
//Date        : Fri Dec 20 11:11:39 2019
//Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
//Command     : generate_target meowrouter_wrapper.bd
//Design      : meowrouter_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module meowrouter_wrapper
   (DISP_tri_o,
    FlashEMC_addr,
    FlashEMC_adv_ldn,
    FlashEMC_ben,
    FlashEMC_ce,
    FlashEMC_ce_n,
    FlashEMC_clken,
    FlashEMC_cre,
    FlashEMC_dq_io,
    FlashEMC_lbon,
    FlashEMC_oen,
    FlashEMC_qwen,
    FlashEMC_rnw,
    FlashEMC_rpn,
    FlashEMC_wait,
    FlashEMC_wen,
    RAMEMC_addr,
    RAMEMC_adv_ldn,
    RAMEMC_ben,
    RAMEMC_ce,
    RAMEMC_ce_n,
    RAMEMC_clken,
    RAMEMC_cre,
    RAMEMC_dq_io,
    RAMEMC_lbon,
    RAMEMC_oen,
    RAMEMC_qwen,
    RAMEMC_rnw,
    RAMEMC_rpn,
    RAMEMC_wait,
    RAMEMC_wen,
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
    rst,
    vio_rst);
  output [31:0]DISP_tri_o;
  output [31:0]FlashEMC_addr;
  output FlashEMC_adv_ldn;
  output [1:0]FlashEMC_ben;
  output [0:0]FlashEMC_ce;
  output [0:0]FlashEMC_ce_n;
  output FlashEMC_clken;
  output FlashEMC_cre;
  inout [15:0]FlashEMC_dq_io;
  output FlashEMC_lbon;
  output [0:0]FlashEMC_oen;
  output [1:0]FlashEMC_qwen;
  output FlashEMC_rnw;
  output FlashEMC_rpn;
  input [0:0]FlashEMC_wait;
  output FlashEMC_wen;
  output [31:0]RAMEMC_addr;
  output RAMEMC_adv_ldn;
  output [7:0]RAMEMC_ben;
  output [0:0]RAMEMC_ce;
  output [0:0]RAMEMC_ce_n;
  output RAMEMC_clken;
  output RAMEMC_cre;
  inout [63:0]RAMEMC_dq_io;
  output RAMEMC_lbon;
  output [0:0]RAMEMC_oen;
  output [7:0]RAMEMC_qwen;
  output RAMEMC_rnw;
  output RAMEMC_rpn;
  input [0:0]RAMEMC_wait;
  output RAMEMC_wen;
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
  output [0:0]vio_rst;

  wire [31:0]DISP_tri_o;
  wire [31:0]FlashEMC_addr;
  wire FlashEMC_adv_ldn;
  wire [1:0]FlashEMC_ben;
  wire [0:0]FlashEMC_ce;
  wire [0:0]FlashEMC_ce_n;
  wire FlashEMC_clken;
  wire FlashEMC_cre;
  wire [0:0]FlashEMC_dq_i_0;
  wire [1:1]FlashEMC_dq_i_1;
  wire [10:10]FlashEMC_dq_i_10;
  wire [11:11]FlashEMC_dq_i_11;
  wire [12:12]FlashEMC_dq_i_12;
  wire [13:13]FlashEMC_dq_i_13;
  wire [14:14]FlashEMC_dq_i_14;
  wire [15:15]FlashEMC_dq_i_15;
  wire [2:2]FlashEMC_dq_i_2;
  wire [3:3]FlashEMC_dq_i_3;
  wire [4:4]FlashEMC_dq_i_4;
  wire [5:5]FlashEMC_dq_i_5;
  wire [6:6]FlashEMC_dq_i_6;
  wire [7:7]FlashEMC_dq_i_7;
  wire [8:8]FlashEMC_dq_i_8;
  wire [9:9]FlashEMC_dq_i_9;
  wire [0:0]FlashEMC_dq_io_0;
  wire [1:1]FlashEMC_dq_io_1;
  wire [10:10]FlashEMC_dq_io_10;
  wire [11:11]FlashEMC_dq_io_11;
  wire [12:12]FlashEMC_dq_io_12;
  wire [13:13]FlashEMC_dq_io_13;
  wire [14:14]FlashEMC_dq_io_14;
  wire [15:15]FlashEMC_dq_io_15;
  wire [2:2]FlashEMC_dq_io_2;
  wire [3:3]FlashEMC_dq_io_3;
  wire [4:4]FlashEMC_dq_io_4;
  wire [5:5]FlashEMC_dq_io_5;
  wire [6:6]FlashEMC_dq_io_6;
  wire [7:7]FlashEMC_dq_io_7;
  wire [8:8]FlashEMC_dq_io_8;
  wire [9:9]FlashEMC_dq_io_9;
  wire [0:0]FlashEMC_dq_o_0;
  wire [1:1]FlashEMC_dq_o_1;
  wire [10:10]FlashEMC_dq_o_10;
  wire [11:11]FlashEMC_dq_o_11;
  wire [12:12]FlashEMC_dq_o_12;
  wire [13:13]FlashEMC_dq_o_13;
  wire [14:14]FlashEMC_dq_o_14;
  wire [15:15]FlashEMC_dq_o_15;
  wire [2:2]FlashEMC_dq_o_2;
  wire [3:3]FlashEMC_dq_o_3;
  wire [4:4]FlashEMC_dq_o_4;
  wire [5:5]FlashEMC_dq_o_5;
  wire [6:6]FlashEMC_dq_o_6;
  wire [7:7]FlashEMC_dq_o_7;
  wire [8:8]FlashEMC_dq_o_8;
  wire [9:9]FlashEMC_dq_o_9;
  wire [0:0]FlashEMC_dq_t_0;
  wire [1:1]FlashEMC_dq_t_1;
  wire [10:10]FlashEMC_dq_t_10;
  wire [11:11]FlashEMC_dq_t_11;
  wire [12:12]FlashEMC_dq_t_12;
  wire [13:13]FlashEMC_dq_t_13;
  wire [14:14]FlashEMC_dq_t_14;
  wire [15:15]FlashEMC_dq_t_15;
  wire [2:2]FlashEMC_dq_t_2;
  wire [3:3]FlashEMC_dq_t_3;
  wire [4:4]FlashEMC_dq_t_4;
  wire [5:5]FlashEMC_dq_t_5;
  wire [6:6]FlashEMC_dq_t_6;
  wire [7:7]FlashEMC_dq_t_7;
  wire [8:8]FlashEMC_dq_t_8;
  wire [9:9]FlashEMC_dq_t_9;
  wire FlashEMC_lbon;
  wire [0:0]FlashEMC_oen;
  wire [1:0]FlashEMC_qwen;
  wire FlashEMC_rnw;
  wire FlashEMC_rpn;
  wire [0:0]FlashEMC_wait;
  wire FlashEMC_wen;
  wire [31:0]RAMEMC_addr;
  wire RAMEMC_adv_ldn;
  wire [7:0]RAMEMC_ben;
  wire [0:0]RAMEMC_ce;
  wire [0:0]RAMEMC_ce_n;
  wire RAMEMC_clken;
  wire RAMEMC_cre;
  wire [0:0]RAMEMC_dq_i_0;
  wire [1:1]RAMEMC_dq_i_1;
  wire [10:10]RAMEMC_dq_i_10;
  wire [11:11]RAMEMC_dq_i_11;
  wire [12:12]RAMEMC_dq_i_12;
  wire [13:13]RAMEMC_dq_i_13;
  wire [14:14]RAMEMC_dq_i_14;
  wire [15:15]RAMEMC_dq_i_15;
  wire [16:16]RAMEMC_dq_i_16;
  wire [17:17]RAMEMC_dq_i_17;
  wire [18:18]RAMEMC_dq_i_18;
  wire [19:19]RAMEMC_dq_i_19;
  wire [2:2]RAMEMC_dq_i_2;
  wire [20:20]RAMEMC_dq_i_20;
  wire [21:21]RAMEMC_dq_i_21;
  wire [22:22]RAMEMC_dq_i_22;
  wire [23:23]RAMEMC_dq_i_23;
  wire [24:24]RAMEMC_dq_i_24;
  wire [25:25]RAMEMC_dq_i_25;
  wire [26:26]RAMEMC_dq_i_26;
  wire [27:27]RAMEMC_dq_i_27;
  wire [28:28]RAMEMC_dq_i_28;
  wire [29:29]RAMEMC_dq_i_29;
  wire [3:3]RAMEMC_dq_i_3;
  wire [30:30]RAMEMC_dq_i_30;
  wire [31:31]RAMEMC_dq_i_31;
  wire [32:32]RAMEMC_dq_i_32;
  wire [33:33]RAMEMC_dq_i_33;
  wire [34:34]RAMEMC_dq_i_34;
  wire [35:35]RAMEMC_dq_i_35;
  wire [36:36]RAMEMC_dq_i_36;
  wire [37:37]RAMEMC_dq_i_37;
  wire [38:38]RAMEMC_dq_i_38;
  wire [39:39]RAMEMC_dq_i_39;
  wire [4:4]RAMEMC_dq_i_4;
  wire [40:40]RAMEMC_dq_i_40;
  wire [41:41]RAMEMC_dq_i_41;
  wire [42:42]RAMEMC_dq_i_42;
  wire [43:43]RAMEMC_dq_i_43;
  wire [44:44]RAMEMC_dq_i_44;
  wire [45:45]RAMEMC_dq_i_45;
  wire [46:46]RAMEMC_dq_i_46;
  wire [47:47]RAMEMC_dq_i_47;
  wire [48:48]RAMEMC_dq_i_48;
  wire [49:49]RAMEMC_dq_i_49;
  wire [5:5]RAMEMC_dq_i_5;
  wire [50:50]RAMEMC_dq_i_50;
  wire [51:51]RAMEMC_dq_i_51;
  wire [52:52]RAMEMC_dq_i_52;
  wire [53:53]RAMEMC_dq_i_53;
  wire [54:54]RAMEMC_dq_i_54;
  wire [55:55]RAMEMC_dq_i_55;
  wire [56:56]RAMEMC_dq_i_56;
  wire [57:57]RAMEMC_dq_i_57;
  wire [58:58]RAMEMC_dq_i_58;
  wire [59:59]RAMEMC_dq_i_59;
  wire [6:6]RAMEMC_dq_i_6;
  wire [60:60]RAMEMC_dq_i_60;
  wire [61:61]RAMEMC_dq_i_61;
  wire [62:62]RAMEMC_dq_i_62;
  wire [63:63]RAMEMC_dq_i_63;
  wire [7:7]RAMEMC_dq_i_7;
  wire [8:8]RAMEMC_dq_i_8;
  wire [9:9]RAMEMC_dq_i_9;
  wire [0:0]RAMEMC_dq_io_0;
  wire [1:1]RAMEMC_dq_io_1;
  wire [10:10]RAMEMC_dq_io_10;
  wire [11:11]RAMEMC_dq_io_11;
  wire [12:12]RAMEMC_dq_io_12;
  wire [13:13]RAMEMC_dq_io_13;
  wire [14:14]RAMEMC_dq_io_14;
  wire [15:15]RAMEMC_dq_io_15;
  wire [16:16]RAMEMC_dq_io_16;
  wire [17:17]RAMEMC_dq_io_17;
  wire [18:18]RAMEMC_dq_io_18;
  wire [19:19]RAMEMC_dq_io_19;
  wire [2:2]RAMEMC_dq_io_2;
  wire [20:20]RAMEMC_dq_io_20;
  wire [21:21]RAMEMC_dq_io_21;
  wire [22:22]RAMEMC_dq_io_22;
  wire [23:23]RAMEMC_dq_io_23;
  wire [24:24]RAMEMC_dq_io_24;
  wire [25:25]RAMEMC_dq_io_25;
  wire [26:26]RAMEMC_dq_io_26;
  wire [27:27]RAMEMC_dq_io_27;
  wire [28:28]RAMEMC_dq_io_28;
  wire [29:29]RAMEMC_dq_io_29;
  wire [3:3]RAMEMC_dq_io_3;
  wire [30:30]RAMEMC_dq_io_30;
  wire [31:31]RAMEMC_dq_io_31;
  wire [32:32]RAMEMC_dq_io_32;
  wire [33:33]RAMEMC_dq_io_33;
  wire [34:34]RAMEMC_dq_io_34;
  wire [35:35]RAMEMC_dq_io_35;
  wire [36:36]RAMEMC_dq_io_36;
  wire [37:37]RAMEMC_dq_io_37;
  wire [38:38]RAMEMC_dq_io_38;
  wire [39:39]RAMEMC_dq_io_39;
  wire [4:4]RAMEMC_dq_io_4;
  wire [40:40]RAMEMC_dq_io_40;
  wire [41:41]RAMEMC_dq_io_41;
  wire [42:42]RAMEMC_dq_io_42;
  wire [43:43]RAMEMC_dq_io_43;
  wire [44:44]RAMEMC_dq_io_44;
  wire [45:45]RAMEMC_dq_io_45;
  wire [46:46]RAMEMC_dq_io_46;
  wire [47:47]RAMEMC_dq_io_47;
  wire [48:48]RAMEMC_dq_io_48;
  wire [49:49]RAMEMC_dq_io_49;
  wire [5:5]RAMEMC_dq_io_5;
  wire [50:50]RAMEMC_dq_io_50;
  wire [51:51]RAMEMC_dq_io_51;
  wire [52:52]RAMEMC_dq_io_52;
  wire [53:53]RAMEMC_dq_io_53;
  wire [54:54]RAMEMC_dq_io_54;
  wire [55:55]RAMEMC_dq_io_55;
  wire [56:56]RAMEMC_dq_io_56;
  wire [57:57]RAMEMC_dq_io_57;
  wire [58:58]RAMEMC_dq_io_58;
  wire [59:59]RAMEMC_dq_io_59;
  wire [6:6]RAMEMC_dq_io_6;
  wire [60:60]RAMEMC_dq_io_60;
  wire [61:61]RAMEMC_dq_io_61;
  wire [62:62]RAMEMC_dq_io_62;
  wire [63:63]RAMEMC_dq_io_63;
  wire [7:7]RAMEMC_dq_io_7;
  wire [8:8]RAMEMC_dq_io_8;
  wire [9:9]RAMEMC_dq_io_9;
  wire [0:0]RAMEMC_dq_o_0;
  wire [1:1]RAMEMC_dq_o_1;
  wire [10:10]RAMEMC_dq_o_10;
  wire [11:11]RAMEMC_dq_o_11;
  wire [12:12]RAMEMC_dq_o_12;
  wire [13:13]RAMEMC_dq_o_13;
  wire [14:14]RAMEMC_dq_o_14;
  wire [15:15]RAMEMC_dq_o_15;
  wire [16:16]RAMEMC_dq_o_16;
  wire [17:17]RAMEMC_dq_o_17;
  wire [18:18]RAMEMC_dq_o_18;
  wire [19:19]RAMEMC_dq_o_19;
  wire [2:2]RAMEMC_dq_o_2;
  wire [20:20]RAMEMC_dq_o_20;
  wire [21:21]RAMEMC_dq_o_21;
  wire [22:22]RAMEMC_dq_o_22;
  wire [23:23]RAMEMC_dq_o_23;
  wire [24:24]RAMEMC_dq_o_24;
  wire [25:25]RAMEMC_dq_o_25;
  wire [26:26]RAMEMC_dq_o_26;
  wire [27:27]RAMEMC_dq_o_27;
  wire [28:28]RAMEMC_dq_o_28;
  wire [29:29]RAMEMC_dq_o_29;
  wire [3:3]RAMEMC_dq_o_3;
  wire [30:30]RAMEMC_dq_o_30;
  wire [31:31]RAMEMC_dq_o_31;
  wire [32:32]RAMEMC_dq_o_32;
  wire [33:33]RAMEMC_dq_o_33;
  wire [34:34]RAMEMC_dq_o_34;
  wire [35:35]RAMEMC_dq_o_35;
  wire [36:36]RAMEMC_dq_o_36;
  wire [37:37]RAMEMC_dq_o_37;
  wire [38:38]RAMEMC_dq_o_38;
  wire [39:39]RAMEMC_dq_o_39;
  wire [4:4]RAMEMC_dq_o_4;
  wire [40:40]RAMEMC_dq_o_40;
  wire [41:41]RAMEMC_dq_o_41;
  wire [42:42]RAMEMC_dq_o_42;
  wire [43:43]RAMEMC_dq_o_43;
  wire [44:44]RAMEMC_dq_o_44;
  wire [45:45]RAMEMC_dq_o_45;
  wire [46:46]RAMEMC_dq_o_46;
  wire [47:47]RAMEMC_dq_o_47;
  wire [48:48]RAMEMC_dq_o_48;
  wire [49:49]RAMEMC_dq_o_49;
  wire [5:5]RAMEMC_dq_o_5;
  wire [50:50]RAMEMC_dq_o_50;
  wire [51:51]RAMEMC_dq_o_51;
  wire [52:52]RAMEMC_dq_o_52;
  wire [53:53]RAMEMC_dq_o_53;
  wire [54:54]RAMEMC_dq_o_54;
  wire [55:55]RAMEMC_dq_o_55;
  wire [56:56]RAMEMC_dq_o_56;
  wire [57:57]RAMEMC_dq_o_57;
  wire [58:58]RAMEMC_dq_o_58;
  wire [59:59]RAMEMC_dq_o_59;
  wire [6:6]RAMEMC_dq_o_6;
  wire [60:60]RAMEMC_dq_o_60;
  wire [61:61]RAMEMC_dq_o_61;
  wire [62:62]RAMEMC_dq_o_62;
  wire [63:63]RAMEMC_dq_o_63;
  wire [7:7]RAMEMC_dq_o_7;
  wire [8:8]RAMEMC_dq_o_8;
  wire [9:9]RAMEMC_dq_o_9;
  wire [0:0]RAMEMC_dq_t_0;
  wire [1:1]RAMEMC_dq_t_1;
  wire [10:10]RAMEMC_dq_t_10;
  wire [11:11]RAMEMC_dq_t_11;
  wire [12:12]RAMEMC_dq_t_12;
  wire [13:13]RAMEMC_dq_t_13;
  wire [14:14]RAMEMC_dq_t_14;
  wire [15:15]RAMEMC_dq_t_15;
  wire [16:16]RAMEMC_dq_t_16;
  wire [17:17]RAMEMC_dq_t_17;
  wire [18:18]RAMEMC_dq_t_18;
  wire [19:19]RAMEMC_dq_t_19;
  wire [2:2]RAMEMC_dq_t_2;
  wire [20:20]RAMEMC_dq_t_20;
  wire [21:21]RAMEMC_dq_t_21;
  wire [22:22]RAMEMC_dq_t_22;
  wire [23:23]RAMEMC_dq_t_23;
  wire [24:24]RAMEMC_dq_t_24;
  wire [25:25]RAMEMC_dq_t_25;
  wire [26:26]RAMEMC_dq_t_26;
  wire [27:27]RAMEMC_dq_t_27;
  wire [28:28]RAMEMC_dq_t_28;
  wire [29:29]RAMEMC_dq_t_29;
  wire [3:3]RAMEMC_dq_t_3;
  wire [30:30]RAMEMC_dq_t_30;
  wire [31:31]RAMEMC_dq_t_31;
  wire [32:32]RAMEMC_dq_t_32;
  wire [33:33]RAMEMC_dq_t_33;
  wire [34:34]RAMEMC_dq_t_34;
  wire [35:35]RAMEMC_dq_t_35;
  wire [36:36]RAMEMC_dq_t_36;
  wire [37:37]RAMEMC_dq_t_37;
  wire [38:38]RAMEMC_dq_t_38;
  wire [39:39]RAMEMC_dq_t_39;
  wire [4:4]RAMEMC_dq_t_4;
  wire [40:40]RAMEMC_dq_t_40;
  wire [41:41]RAMEMC_dq_t_41;
  wire [42:42]RAMEMC_dq_t_42;
  wire [43:43]RAMEMC_dq_t_43;
  wire [44:44]RAMEMC_dq_t_44;
  wire [45:45]RAMEMC_dq_t_45;
  wire [46:46]RAMEMC_dq_t_46;
  wire [47:47]RAMEMC_dq_t_47;
  wire [48:48]RAMEMC_dq_t_48;
  wire [49:49]RAMEMC_dq_t_49;
  wire [5:5]RAMEMC_dq_t_5;
  wire [50:50]RAMEMC_dq_t_50;
  wire [51:51]RAMEMC_dq_t_51;
  wire [52:52]RAMEMC_dq_t_52;
  wire [53:53]RAMEMC_dq_t_53;
  wire [54:54]RAMEMC_dq_t_54;
  wire [55:55]RAMEMC_dq_t_55;
  wire [56:56]RAMEMC_dq_t_56;
  wire [57:57]RAMEMC_dq_t_57;
  wire [58:58]RAMEMC_dq_t_58;
  wire [59:59]RAMEMC_dq_t_59;
  wire [6:6]RAMEMC_dq_t_6;
  wire [60:60]RAMEMC_dq_t_60;
  wire [61:61]RAMEMC_dq_t_61;
  wire [62:62]RAMEMC_dq_t_62;
  wire [63:63]RAMEMC_dq_t_63;
  wire [7:7]RAMEMC_dq_t_7;
  wire [8:8]RAMEMC_dq_t_8;
  wire [9:9]RAMEMC_dq_t_9;
  wire RAMEMC_lbon;
  wire [0:0]RAMEMC_oen;
  wire [7:0]RAMEMC_qwen;
  wire RAMEMC_rnw;
  wire RAMEMC_rpn;
  wire [0:0]RAMEMC_wait;
  wire RAMEMC_wen;
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
  wire [0:0]vio_rst;

  IOBUF FlashEMC_dq_iobuf_0
       (.I(FlashEMC_dq_o_0),
        .IO(FlashEMC_dq_io[0]),
        .O(FlashEMC_dq_i_0),
        .T(FlashEMC_dq_t_0));
  IOBUF FlashEMC_dq_iobuf_1
       (.I(FlashEMC_dq_o_1),
        .IO(FlashEMC_dq_io[1]),
        .O(FlashEMC_dq_i_1),
        .T(FlashEMC_dq_t_1));
  IOBUF FlashEMC_dq_iobuf_10
       (.I(FlashEMC_dq_o_10),
        .IO(FlashEMC_dq_io[10]),
        .O(FlashEMC_dq_i_10),
        .T(FlashEMC_dq_t_10));
  IOBUF FlashEMC_dq_iobuf_11
       (.I(FlashEMC_dq_o_11),
        .IO(FlashEMC_dq_io[11]),
        .O(FlashEMC_dq_i_11),
        .T(FlashEMC_dq_t_11));
  IOBUF FlashEMC_dq_iobuf_12
       (.I(FlashEMC_dq_o_12),
        .IO(FlashEMC_dq_io[12]),
        .O(FlashEMC_dq_i_12),
        .T(FlashEMC_dq_t_12));
  IOBUF FlashEMC_dq_iobuf_13
       (.I(FlashEMC_dq_o_13),
        .IO(FlashEMC_dq_io[13]),
        .O(FlashEMC_dq_i_13),
        .T(FlashEMC_dq_t_13));
  IOBUF FlashEMC_dq_iobuf_14
       (.I(FlashEMC_dq_o_14),
        .IO(FlashEMC_dq_io[14]),
        .O(FlashEMC_dq_i_14),
        .T(FlashEMC_dq_t_14));
  IOBUF FlashEMC_dq_iobuf_15
       (.I(FlashEMC_dq_o_15),
        .IO(FlashEMC_dq_io[15]),
        .O(FlashEMC_dq_i_15),
        .T(FlashEMC_dq_t_15));
  IOBUF FlashEMC_dq_iobuf_2
       (.I(FlashEMC_dq_o_2),
        .IO(FlashEMC_dq_io[2]),
        .O(FlashEMC_dq_i_2),
        .T(FlashEMC_dq_t_2));
  IOBUF FlashEMC_dq_iobuf_3
       (.I(FlashEMC_dq_o_3),
        .IO(FlashEMC_dq_io[3]),
        .O(FlashEMC_dq_i_3),
        .T(FlashEMC_dq_t_3));
  IOBUF FlashEMC_dq_iobuf_4
       (.I(FlashEMC_dq_o_4),
        .IO(FlashEMC_dq_io[4]),
        .O(FlashEMC_dq_i_4),
        .T(FlashEMC_dq_t_4));
  IOBUF FlashEMC_dq_iobuf_5
       (.I(FlashEMC_dq_o_5),
        .IO(FlashEMC_dq_io[5]),
        .O(FlashEMC_dq_i_5),
        .T(FlashEMC_dq_t_5));
  IOBUF FlashEMC_dq_iobuf_6
       (.I(FlashEMC_dq_o_6),
        .IO(FlashEMC_dq_io[6]),
        .O(FlashEMC_dq_i_6),
        .T(FlashEMC_dq_t_6));
  IOBUF FlashEMC_dq_iobuf_7
       (.I(FlashEMC_dq_o_7),
        .IO(FlashEMC_dq_io[7]),
        .O(FlashEMC_dq_i_7),
        .T(FlashEMC_dq_t_7));
  IOBUF FlashEMC_dq_iobuf_8
       (.I(FlashEMC_dq_o_8),
        .IO(FlashEMC_dq_io[8]),
        .O(FlashEMC_dq_i_8),
        .T(FlashEMC_dq_t_8));
  IOBUF FlashEMC_dq_iobuf_9
       (.I(FlashEMC_dq_o_9),
        .IO(FlashEMC_dq_io[9]),
        .O(FlashEMC_dq_i_9),
        .T(FlashEMC_dq_t_9));
  IOBUF RAMEMC_dq_iobuf_0
       (.I(RAMEMC_dq_o_0),
        .IO(RAMEMC_dq_io[0]),
        .O(RAMEMC_dq_i_0),
        .T(RAMEMC_dq_t_0));
  IOBUF RAMEMC_dq_iobuf_1
       (.I(RAMEMC_dq_o_1),
        .IO(RAMEMC_dq_io[1]),
        .O(RAMEMC_dq_i_1),
        .T(RAMEMC_dq_t_1));
  IOBUF RAMEMC_dq_iobuf_10
       (.I(RAMEMC_dq_o_10),
        .IO(RAMEMC_dq_io[10]),
        .O(RAMEMC_dq_i_10),
        .T(RAMEMC_dq_t_10));
  IOBUF RAMEMC_dq_iobuf_11
       (.I(RAMEMC_dq_o_11),
        .IO(RAMEMC_dq_io[11]),
        .O(RAMEMC_dq_i_11),
        .T(RAMEMC_dq_t_11));
  IOBUF RAMEMC_dq_iobuf_12
       (.I(RAMEMC_dq_o_12),
        .IO(RAMEMC_dq_io[12]),
        .O(RAMEMC_dq_i_12),
        .T(RAMEMC_dq_t_12));
  IOBUF RAMEMC_dq_iobuf_13
       (.I(RAMEMC_dq_o_13),
        .IO(RAMEMC_dq_io[13]),
        .O(RAMEMC_dq_i_13),
        .T(RAMEMC_dq_t_13));
  IOBUF RAMEMC_dq_iobuf_14
       (.I(RAMEMC_dq_o_14),
        .IO(RAMEMC_dq_io[14]),
        .O(RAMEMC_dq_i_14),
        .T(RAMEMC_dq_t_14));
  IOBUF RAMEMC_dq_iobuf_15
       (.I(RAMEMC_dq_o_15),
        .IO(RAMEMC_dq_io[15]),
        .O(RAMEMC_dq_i_15),
        .T(RAMEMC_dq_t_15));
  IOBUF RAMEMC_dq_iobuf_16
       (.I(RAMEMC_dq_o_16),
        .IO(RAMEMC_dq_io[16]),
        .O(RAMEMC_dq_i_16),
        .T(RAMEMC_dq_t_16));
  IOBUF RAMEMC_dq_iobuf_17
       (.I(RAMEMC_dq_o_17),
        .IO(RAMEMC_dq_io[17]),
        .O(RAMEMC_dq_i_17),
        .T(RAMEMC_dq_t_17));
  IOBUF RAMEMC_dq_iobuf_18
       (.I(RAMEMC_dq_o_18),
        .IO(RAMEMC_dq_io[18]),
        .O(RAMEMC_dq_i_18),
        .T(RAMEMC_dq_t_18));
  IOBUF RAMEMC_dq_iobuf_19
       (.I(RAMEMC_dq_o_19),
        .IO(RAMEMC_dq_io[19]),
        .O(RAMEMC_dq_i_19),
        .T(RAMEMC_dq_t_19));
  IOBUF RAMEMC_dq_iobuf_2
       (.I(RAMEMC_dq_o_2),
        .IO(RAMEMC_dq_io[2]),
        .O(RAMEMC_dq_i_2),
        .T(RAMEMC_dq_t_2));
  IOBUF RAMEMC_dq_iobuf_20
       (.I(RAMEMC_dq_o_20),
        .IO(RAMEMC_dq_io[20]),
        .O(RAMEMC_dq_i_20),
        .T(RAMEMC_dq_t_20));
  IOBUF RAMEMC_dq_iobuf_21
       (.I(RAMEMC_dq_o_21),
        .IO(RAMEMC_dq_io[21]),
        .O(RAMEMC_dq_i_21),
        .T(RAMEMC_dq_t_21));
  IOBUF RAMEMC_dq_iobuf_22
       (.I(RAMEMC_dq_o_22),
        .IO(RAMEMC_dq_io[22]),
        .O(RAMEMC_dq_i_22),
        .T(RAMEMC_dq_t_22));
  IOBUF RAMEMC_dq_iobuf_23
       (.I(RAMEMC_dq_o_23),
        .IO(RAMEMC_dq_io[23]),
        .O(RAMEMC_dq_i_23),
        .T(RAMEMC_dq_t_23));
  IOBUF RAMEMC_dq_iobuf_24
       (.I(RAMEMC_dq_o_24),
        .IO(RAMEMC_dq_io[24]),
        .O(RAMEMC_dq_i_24),
        .T(RAMEMC_dq_t_24));
  IOBUF RAMEMC_dq_iobuf_25
       (.I(RAMEMC_dq_o_25),
        .IO(RAMEMC_dq_io[25]),
        .O(RAMEMC_dq_i_25),
        .T(RAMEMC_dq_t_25));
  IOBUF RAMEMC_dq_iobuf_26
       (.I(RAMEMC_dq_o_26),
        .IO(RAMEMC_dq_io[26]),
        .O(RAMEMC_dq_i_26),
        .T(RAMEMC_dq_t_26));
  IOBUF RAMEMC_dq_iobuf_27
       (.I(RAMEMC_dq_o_27),
        .IO(RAMEMC_dq_io[27]),
        .O(RAMEMC_dq_i_27),
        .T(RAMEMC_dq_t_27));
  IOBUF RAMEMC_dq_iobuf_28
       (.I(RAMEMC_dq_o_28),
        .IO(RAMEMC_dq_io[28]),
        .O(RAMEMC_dq_i_28),
        .T(RAMEMC_dq_t_28));
  IOBUF RAMEMC_dq_iobuf_29
       (.I(RAMEMC_dq_o_29),
        .IO(RAMEMC_dq_io[29]),
        .O(RAMEMC_dq_i_29),
        .T(RAMEMC_dq_t_29));
  IOBUF RAMEMC_dq_iobuf_3
       (.I(RAMEMC_dq_o_3),
        .IO(RAMEMC_dq_io[3]),
        .O(RAMEMC_dq_i_3),
        .T(RAMEMC_dq_t_3));
  IOBUF RAMEMC_dq_iobuf_30
       (.I(RAMEMC_dq_o_30),
        .IO(RAMEMC_dq_io[30]),
        .O(RAMEMC_dq_i_30),
        .T(RAMEMC_dq_t_30));
  IOBUF RAMEMC_dq_iobuf_31
       (.I(RAMEMC_dq_o_31),
        .IO(RAMEMC_dq_io[31]),
        .O(RAMEMC_dq_i_31),
        .T(RAMEMC_dq_t_31));
  IOBUF RAMEMC_dq_iobuf_32
       (.I(RAMEMC_dq_o_32),
        .IO(RAMEMC_dq_io[32]),
        .O(RAMEMC_dq_i_32),
        .T(RAMEMC_dq_t_32));
  IOBUF RAMEMC_dq_iobuf_33
       (.I(RAMEMC_dq_o_33),
        .IO(RAMEMC_dq_io[33]),
        .O(RAMEMC_dq_i_33),
        .T(RAMEMC_dq_t_33));
  IOBUF RAMEMC_dq_iobuf_34
       (.I(RAMEMC_dq_o_34),
        .IO(RAMEMC_dq_io[34]),
        .O(RAMEMC_dq_i_34),
        .T(RAMEMC_dq_t_34));
  IOBUF RAMEMC_dq_iobuf_35
       (.I(RAMEMC_dq_o_35),
        .IO(RAMEMC_dq_io[35]),
        .O(RAMEMC_dq_i_35),
        .T(RAMEMC_dq_t_35));
  IOBUF RAMEMC_dq_iobuf_36
       (.I(RAMEMC_dq_o_36),
        .IO(RAMEMC_dq_io[36]),
        .O(RAMEMC_dq_i_36),
        .T(RAMEMC_dq_t_36));
  IOBUF RAMEMC_dq_iobuf_37
       (.I(RAMEMC_dq_o_37),
        .IO(RAMEMC_dq_io[37]),
        .O(RAMEMC_dq_i_37),
        .T(RAMEMC_dq_t_37));
  IOBUF RAMEMC_dq_iobuf_38
       (.I(RAMEMC_dq_o_38),
        .IO(RAMEMC_dq_io[38]),
        .O(RAMEMC_dq_i_38),
        .T(RAMEMC_dq_t_38));
  IOBUF RAMEMC_dq_iobuf_39
       (.I(RAMEMC_dq_o_39),
        .IO(RAMEMC_dq_io[39]),
        .O(RAMEMC_dq_i_39),
        .T(RAMEMC_dq_t_39));
  IOBUF RAMEMC_dq_iobuf_4
       (.I(RAMEMC_dq_o_4),
        .IO(RAMEMC_dq_io[4]),
        .O(RAMEMC_dq_i_4),
        .T(RAMEMC_dq_t_4));
  IOBUF RAMEMC_dq_iobuf_40
       (.I(RAMEMC_dq_o_40),
        .IO(RAMEMC_dq_io[40]),
        .O(RAMEMC_dq_i_40),
        .T(RAMEMC_dq_t_40));
  IOBUF RAMEMC_dq_iobuf_41
       (.I(RAMEMC_dq_o_41),
        .IO(RAMEMC_dq_io[41]),
        .O(RAMEMC_dq_i_41),
        .T(RAMEMC_dq_t_41));
  IOBUF RAMEMC_dq_iobuf_42
       (.I(RAMEMC_dq_o_42),
        .IO(RAMEMC_dq_io[42]),
        .O(RAMEMC_dq_i_42),
        .T(RAMEMC_dq_t_42));
  IOBUF RAMEMC_dq_iobuf_43
       (.I(RAMEMC_dq_o_43),
        .IO(RAMEMC_dq_io[43]),
        .O(RAMEMC_dq_i_43),
        .T(RAMEMC_dq_t_43));
  IOBUF RAMEMC_dq_iobuf_44
       (.I(RAMEMC_dq_o_44),
        .IO(RAMEMC_dq_io[44]),
        .O(RAMEMC_dq_i_44),
        .T(RAMEMC_dq_t_44));
  IOBUF RAMEMC_dq_iobuf_45
       (.I(RAMEMC_dq_o_45),
        .IO(RAMEMC_dq_io[45]),
        .O(RAMEMC_dq_i_45),
        .T(RAMEMC_dq_t_45));
  IOBUF RAMEMC_dq_iobuf_46
       (.I(RAMEMC_dq_o_46),
        .IO(RAMEMC_dq_io[46]),
        .O(RAMEMC_dq_i_46),
        .T(RAMEMC_dq_t_46));
  IOBUF RAMEMC_dq_iobuf_47
       (.I(RAMEMC_dq_o_47),
        .IO(RAMEMC_dq_io[47]),
        .O(RAMEMC_dq_i_47),
        .T(RAMEMC_dq_t_47));
  IOBUF RAMEMC_dq_iobuf_48
       (.I(RAMEMC_dq_o_48),
        .IO(RAMEMC_dq_io[48]),
        .O(RAMEMC_dq_i_48),
        .T(RAMEMC_dq_t_48));
  IOBUF RAMEMC_dq_iobuf_49
       (.I(RAMEMC_dq_o_49),
        .IO(RAMEMC_dq_io[49]),
        .O(RAMEMC_dq_i_49),
        .T(RAMEMC_dq_t_49));
  IOBUF RAMEMC_dq_iobuf_5
       (.I(RAMEMC_dq_o_5),
        .IO(RAMEMC_dq_io[5]),
        .O(RAMEMC_dq_i_5),
        .T(RAMEMC_dq_t_5));
  IOBUF RAMEMC_dq_iobuf_50
       (.I(RAMEMC_dq_o_50),
        .IO(RAMEMC_dq_io[50]),
        .O(RAMEMC_dq_i_50),
        .T(RAMEMC_dq_t_50));
  IOBUF RAMEMC_dq_iobuf_51
       (.I(RAMEMC_dq_o_51),
        .IO(RAMEMC_dq_io[51]),
        .O(RAMEMC_dq_i_51),
        .T(RAMEMC_dq_t_51));
  IOBUF RAMEMC_dq_iobuf_52
       (.I(RAMEMC_dq_o_52),
        .IO(RAMEMC_dq_io[52]),
        .O(RAMEMC_dq_i_52),
        .T(RAMEMC_dq_t_52));
  IOBUF RAMEMC_dq_iobuf_53
       (.I(RAMEMC_dq_o_53),
        .IO(RAMEMC_dq_io[53]),
        .O(RAMEMC_dq_i_53),
        .T(RAMEMC_dq_t_53));
  IOBUF RAMEMC_dq_iobuf_54
       (.I(RAMEMC_dq_o_54),
        .IO(RAMEMC_dq_io[54]),
        .O(RAMEMC_dq_i_54),
        .T(RAMEMC_dq_t_54));
  IOBUF RAMEMC_dq_iobuf_55
       (.I(RAMEMC_dq_o_55),
        .IO(RAMEMC_dq_io[55]),
        .O(RAMEMC_dq_i_55),
        .T(RAMEMC_dq_t_55));
  IOBUF RAMEMC_dq_iobuf_56
       (.I(RAMEMC_dq_o_56),
        .IO(RAMEMC_dq_io[56]),
        .O(RAMEMC_dq_i_56),
        .T(RAMEMC_dq_t_56));
  IOBUF RAMEMC_dq_iobuf_57
       (.I(RAMEMC_dq_o_57),
        .IO(RAMEMC_dq_io[57]),
        .O(RAMEMC_dq_i_57),
        .T(RAMEMC_dq_t_57));
  IOBUF RAMEMC_dq_iobuf_58
       (.I(RAMEMC_dq_o_58),
        .IO(RAMEMC_dq_io[58]),
        .O(RAMEMC_dq_i_58),
        .T(RAMEMC_dq_t_58));
  IOBUF RAMEMC_dq_iobuf_59
       (.I(RAMEMC_dq_o_59),
        .IO(RAMEMC_dq_io[59]),
        .O(RAMEMC_dq_i_59),
        .T(RAMEMC_dq_t_59));
  IOBUF RAMEMC_dq_iobuf_6
       (.I(RAMEMC_dq_o_6),
        .IO(RAMEMC_dq_io[6]),
        .O(RAMEMC_dq_i_6),
        .T(RAMEMC_dq_t_6));
  IOBUF RAMEMC_dq_iobuf_60
       (.I(RAMEMC_dq_o_60),
        .IO(RAMEMC_dq_io[60]),
        .O(RAMEMC_dq_i_60),
        .T(RAMEMC_dq_t_60));
  IOBUF RAMEMC_dq_iobuf_61
       (.I(RAMEMC_dq_o_61),
        .IO(RAMEMC_dq_io[61]),
        .O(RAMEMC_dq_i_61),
        .T(RAMEMC_dq_t_61));
  IOBUF RAMEMC_dq_iobuf_62
       (.I(RAMEMC_dq_o_62),
        .IO(RAMEMC_dq_io[62]),
        .O(RAMEMC_dq_i_62),
        .T(RAMEMC_dq_t_62));
  IOBUF RAMEMC_dq_iobuf_63
       (.I(RAMEMC_dq_o_63),
        .IO(RAMEMC_dq_io[63]),
        .O(RAMEMC_dq_i_63),
        .T(RAMEMC_dq_t_63));
  IOBUF RAMEMC_dq_iobuf_7
       (.I(RAMEMC_dq_o_7),
        .IO(RAMEMC_dq_io[7]),
        .O(RAMEMC_dq_i_7),
        .T(RAMEMC_dq_t_7));
  IOBUF RAMEMC_dq_iobuf_8
       (.I(RAMEMC_dq_o_8),
        .IO(RAMEMC_dq_io[8]),
        .O(RAMEMC_dq_i_8),
        .T(RAMEMC_dq_t_8));
  IOBUF RAMEMC_dq_iobuf_9
       (.I(RAMEMC_dq_o_9),
        .IO(RAMEMC_dq_io[9]),
        .O(RAMEMC_dq_i_9),
        .T(RAMEMC_dq_t_9));
  meowrouter meowrouter_i
       (.DISP_tri_o(DISP_tri_o),
        .FlashEMC_addr(FlashEMC_addr),
        .FlashEMC_adv_ldn(FlashEMC_adv_ldn),
        .FlashEMC_ben(FlashEMC_ben),
        .FlashEMC_ce(FlashEMC_ce),
        .FlashEMC_ce_n(FlashEMC_ce_n),
        .FlashEMC_clken(FlashEMC_clken),
        .FlashEMC_cre(FlashEMC_cre),
        .FlashEMC_dq_i({FlashEMC_dq_i_15,FlashEMC_dq_i_14,FlashEMC_dq_i_13,FlashEMC_dq_i_12,FlashEMC_dq_i_11,FlashEMC_dq_i_10,FlashEMC_dq_i_9,FlashEMC_dq_i_8,FlashEMC_dq_i_7,FlashEMC_dq_i_6,FlashEMC_dq_i_5,FlashEMC_dq_i_4,FlashEMC_dq_i_3,FlashEMC_dq_i_2,FlashEMC_dq_i_1,FlashEMC_dq_i_0}),
        .FlashEMC_dq_o({FlashEMC_dq_o_15,FlashEMC_dq_o_14,FlashEMC_dq_o_13,FlashEMC_dq_o_12,FlashEMC_dq_o_11,FlashEMC_dq_o_10,FlashEMC_dq_o_9,FlashEMC_dq_o_8,FlashEMC_dq_o_7,FlashEMC_dq_o_6,FlashEMC_dq_o_5,FlashEMC_dq_o_4,FlashEMC_dq_o_3,FlashEMC_dq_o_2,FlashEMC_dq_o_1,FlashEMC_dq_o_0}),
        .FlashEMC_dq_t({FlashEMC_dq_t_15,FlashEMC_dq_t_14,FlashEMC_dq_t_13,FlashEMC_dq_t_12,FlashEMC_dq_t_11,FlashEMC_dq_t_10,FlashEMC_dq_t_9,FlashEMC_dq_t_8,FlashEMC_dq_t_7,FlashEMC_dq_t_6,FlashEMC_dq_t_5,FlashEMC_dq_t_4,FlashEMC_dq_t_3,FlashEMC_dq_t_2,FlashEMC_dq_t_1,FlashEMC_dq_t_0}),
        .FlashEMC_lbon(FlashEMC_lbon),
        .FlashEMC_oen(FlashEMC_oen),
        .FlashEMC_qwen(FlashEMC_qwen),
        .FlashEMC_rnw(FlashEMC_rnw),
        .FlashEMC_rpn(FlashEMC_rpn),
        .FlashEMC_wait(FlashEMC_wait),
        .FlashEMC_wen(FlashEMC_wen),
        .RAMEMC_addr(RAMEMC_addr),
        .RAMEMC_adv_ldn(RAMEMC_adv_ldn),
        .RAMEMC_ben(RAMEMC_ben),
        .RAMEMC_ce(RAMEMC_ce),
        .RAMEMC_ce_n(RAMEMC_ce_n),
        .RAMEMC_clken(RAMEMC_clken),
        .RAMEMC_cre(RAMEMC_cre),
        .RAMEMC_dq_i({RAMEMC_dq_i_63,RAMEMC_dq_i_62,RAMEMC_dq_i_61,RAMEMC_dq_i_60,RAMEMC_dq_i_59,RAMEMC_dq_i_58,RAMEMC_dq_i_57,RAMEMC_dq_i_56,RAMEMC_dq_i_55,RAMEMC_dq_i_54,RAMEMC_dq_i_53,RAMEMC_dq_i_52,RAMEMC_dq_i_51,RAMEMC_dq_i_50,RAMEMC_dq_i_49,RAMEMC_dq_i_48,RAMEMC_dq_i_47,RAMEMC_dq_i_46,RAMEMC_dq_i_45,RAMEMC_dq_i_44,RAMEMC_dq_i_43,RAMEMC_dq_i_42,RAMEMC_dq_i_41,RAMEMC_dq_i_40,RAMEMC_dq_i_39,RAMEMC_dq_i_38,RAMEMC_dq_i_37,RAMEMC_dq_i_36,RAMEMC_dq_i_35,RAMEMC_dq_i_34,RAMEMC_dq_i_33,RAMEMC_dq_i_32,RAMEMC_dq_i_31,RAMEMC_dq_i_30,RAMEMC_dq_i_29,RAMEMC_dq_i_28,RAMEMC_dq_i_27,RAMEMC_dq_i_26,RAMEMC_dq_i_25,RAMEMC_dq_i_24,RAMEMC_dq_i_23,RAMEMC_dq_i_22,RAMEMC_dq_i_21,RAMEMC_dq_i_20,RAMEMC_dq_i_19,RAMEMC_dq_i_18,RAMEMC_dq_i_17,RAMEMC_dq_i_16,RAMEMC_dq_i_15,RAMEMC_dq_i_14,RAMEMC_dq_i_13,RAMEMC_dq_i_12,RAMEMC_dq_i_11,RAMEMC_dq_i_10,RAMEMC_dq_i_9,RAMEMC_dq_i_8,RAMEMC_dq_i_7,RAMEMC_dq_i_6,RAMEMC_dq_i_5,RAMEMC_dq_i_4,RAMEMC_dq_i_3,RAMEMC_dq_i_2,RAMEMC_dq_i_1,RAMEMC_dq_i_0}),
        .RAMEMC_dq_o({RAMEMC_dq_o_63,RAMEMC_dq_o_62,RAMEMC_dq_o_61,RAMEMC_dq_o_60,RAMEMC_dq_o_59,RAMEMC_dq_o_58,RAMEMC_dq_o_57,RAMEMC_dq_o_56,RAMEMC_dq_o_55,RAMEMC_dq_o_54,RAMEMC_dq_o_53,RAMEMC_dq_o_52,RAMEMC_dq_o_51,RAMEMC_dq_o_50,RAMEMC_dq_o_49,RAMEMC_dq_o_48,RAMEMC_dq_o_47,RAMEMC_dq_o_46,RAMEMC_dq_o_45,RAMEMC_dq_o_44,RAMEMC_dq_o_43,RAMEMC_dq_o_42,RAMEMC_dq_o_41,RAMEMC_dq_o_40,RAMEMC_dq_o_39,RAMEMC_dq_o_38,RAMEMC_dq_o_37,RAMEMC_dq_o_36,RAMEMC_dq_o_35,RAMEMC_dq_o_34,RAMEMC_dq_o_33,RAMEMC_dq_o_32,RAMEMC_dq_o_31,RAMEMC_dq_o_30,RAMEMC_dq_o_29,RAMEMC_dq_o_28,RAMEMC_dq_o_27,RAMEMC_dq_o_26,RAMEMC_dq_o_25,RAMEMC_dq_o_24,RAMEMC_dq_o_23,RAMEMC_dq_o_22,RAMEMC_dq_o_21,RAMEMC_dq_o_20,RAMEMC_dq_o_19,RAMEMC_dq_o_18,RAMEMC_dq_o_17,RAMEMC_dq_o_16,RAMEMC_dq_o_15,RAMEMC_dq_o_14,RAMEMC_dq_o_13,RAMEMC_dq_o_12,RAMEMC_dq_o_11,RAMEMC_dq_o_10,RAMEMC_dq_o_9,RAMEMC_dq_o_8,RAMEMC_dq_o_7,RAMEMC_dq_o_6,RAMEMC_dq_o_5,RAMEMC_dq_o_4,RAMEMC_dq_o_3,RAMEMC_dq_o_2,RAMEMC_dq_o_1,RAMEMC_dq_o_0}),
        .RAMEMC_dq_t({RAMEMC_dq_t_63,RAMEMC_dq_t_62,RAMEMC_dq_t_61,RAMEMC_dq_t_60,RAMEMC_dq_t_59,RAMEMC_dq_t_58,RAMEMC_dq_t_57,RAMEMC_dq_t_56,RAMEMC_dq_t_55,RAMEMC_dq_t_54,RAMEMC_dq_t_53,RAMEMC_dq_t_52,RAMEMC_dq_t_51,RAMEMC_dq_t_50,RAMEMC_dq_t_49,RAMEMC_dq_t_48,RAMEMC_dq_t_47,RAMEMC_dq_t_46,RAMEMC_dq_t_45,RAMEMC_dq_t_44,RAMEMC_dq_t_43,RAMEMC_dq_t_42,RAMEMC_dq_t_41,RAMEMC_dq_t_40,RAMEMC_dq_t_39,RAMEMC_dq_t_38,RAMEMC_dq_t_37,RAMEMC_dq_t_36,RAMEMC_dq_t_35,RAMEMC_dq_t_34,RAMEMC_dq_t_33,RAMEMC_dq_t_32,RAMEMC_dq_t_31,RAMEMC_dq_t_30,RAMEMC_dq_t_29,RAMEMC_dq_t_28,RAMEMC_dq_t_27,RAMEMC_dq_t_26,RAMEMC_dq_t_25,RAMEMC_dq_t_24,RAMEMC_dq_t_23,RAMEMC_dq_t_22,RAMEMC_dq_t_21,RAMEMC_dq_t_20,RAMEMC_dq_t_19,RAMEMC_dq_t_18,RAMEMC_dq_t_17,RAMEMC_dq_t_16,RAMEMC_dq_t_15,RAMEMC_dq_t_14,RAMEMC_dq_t_13,RAMEMC_dq_t_12,RAMEMC_dq_t_11,RAMEMC_dq_t_10,RAMEMC_dq_t_9,RAMEMC_dq_t_8,RAMEMC_dq_t_7,RAMEMC_dq_t_6,RAMEMC_dq_t_5,RAMEMC_dq_t_4,RAMEMC_dq_t_3,RAMEMC_dq_t_2,RAMEMC_dq_t_1,RAMEMC_dq_t_0}),
        .RAMEMC_lbon(RAMEMC_lbon),
        .RAMEMC_oen(RAMEMC_oen),
        .RAMEMC_qwen(RAMEMC_qwen),
        .RAMEMC_rnw(RAMEMC_rnw),
        .RAMEMC_rpn(RAMEMC_rpn),
        .RAMEMC_wait(RAMEMC_wait),
        .RAMEMC_wen(RAMEMC_wen),
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
        .rst(rst),
        .vio_rst(vio_rst));
endmodule
