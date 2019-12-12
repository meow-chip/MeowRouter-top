module AsyncBridge(
  input         reset,
  input         io_write_clk,
  input         io_write_en,
  input  [47:0] io_write_data_eth_dest,
  input  [47:0] io_write_data_eth_sender,
  input  [1:0]  io_write_data_eth_pactype,
  input  [2:0]  io_write_data_eth_vlan,
  input  [3:0]  io_write_data_ip_version,
  input  [3:0]  io_write_data_ip_ihl,
  input  [5:0]  io_write_data_ip_dscp,
  input  [1:0]  io_write_data_ip_ecn,
  input  [15:0] io_write_data_ip_len,
  input  [15:0] io_write_data_ip_id,
  input  [2:0]  io_write_data_ip_flags,
  input  [12:0] io_write_data_ip_foff,
  input  [7:0]  io_write_data_ip_ttl,
  input  [7:0]  io_write_data_ip_proto,
  input  [15:0] io_write_data_ip_chksum,
  input  [31:0] io_write_data_ip_src,
  input  [31:0] io_write_data_ip_dest,
  input  [15:0] io_write_data_icmp_id,
  input  [15:0] io_write_data_icmp_checksum,
  input  [7:0]  io_write_data_icmp_code,
  input  [7:0]  io_write_data_icmp_imcpType,
  input         io_read_clk,
  input         io_read_en,
  output [47:0] io_read_data_eth_dest,
  output [47:0] io_read_data_eth_sender,
  output [1:0]  io_read_data_eth_pactype,
  output [2:0]  io_read_data_eth_vlan,
  output [3:0]  io_read_data_ip_version,
  output [3:0]  io_read_data_ip_ihl,
  output [5:0]  io_read_data_ip_dscp,
  output [1:0]  io_read_data_ip_ecn,
  output [15:0] io_read_data_ip_len,
  output [15:0] io_read_data_ip_id,
  output [2:0]  io_read_data_ip_flags,
  output [12:0] io_read_data_ip_foff,
  output [7:0]  io_read_data_ip_ttl,
  output [7:0]  io_read_data_ip_proto,
  output [15:0] io_read_data_ip_chksum,
  output [31:0] io_read_data_ip_src,
  output [31:0] io_read_data_ip_dest,
  output [15:0] io_read_data_icmp_id,
  output [15:0] io_read_data_icmp_checksum,
  output [7:0]  io_read_data_icmp_code,
  output [7:0]  io_read_data_icmp_imcpType,
  output        io_read_empty
);
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23]
  wire [308:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23]
  wire [308:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23]
  wire [1:0] _T; // @[asyncBridge.scala 75:35]
  wire [156:0] _T_9; // @[asyncBridge.scala 75:35]
  wire [42:0] _T_13; // @[asyncBridge.scala 75:35]
  wire [151:0] _T_19; // @[asyncBridge.scala 75:35]
  wire [308:0] _T_22;
  xpm_fifo_async #(.READ_DATA_WIDTH(309), .WRITE_DATA_WIDTH(309), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(7), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23]
    .rst(xpm_fifo_async_rst),
    .wr_clk(xpm_fifo_async_wr_clk),
    .wr_en(xpm_fifo_async_wr_en),
    .din(xpm_fifo_async_din),
    .full(xpm_fifo_async_full),
    .rd_clk(xpm_fifo_async_rd_clk),
    .rd_en(xpm_fifo_async_rd_en),
    .dout(xpm_fifo_async_dout),
    .empty(xpm_fifo_async_empty),
    .prog_full(xpm_fifo_async_prog_full)
  );
  assign _T = $unsigned(io_write_data_eth_pactype); // @[asyncBridge.scala 75:35]
  assign _T_9 = {io_write_data_ip_foff,io_write_data_ip_ttl,io_write_data_ip_proto,io_write_data_ip_chksum,io_write_data_ip_src,io_write_data_ip_dest,io_write_data_icmp_id,io_write_data_icmp_checksum,io_write_data_icmp_code,io_write_data_icmp_imcpType}; // @[asyncBridge.scala 75:35]
  assign _T_13 = {io_write_data_ip_dscp,io_write_data_ip_ecn,io_write_data_ip_len,io_write_data_ip_id,io_write_data_ip_flags}; // @[asyncBridge.scala 75:35]
  assign _T_19 = {io_write_data_eth_dest,io_write_data_eth_sender,_T,io_write_data_eth_vlan,io_write_data_ip_version,io_write_data_ip_ihl,_T_13}; // @[asyncBridge.scala 75:35]
  assign _T_22 = xpm_fifo_async_dout;
  assign io_read_data_eth_dest = _T_22[308:261]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_sender = _T_22[260:213]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_pactype = _T_22[212:211]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_vlan = _T_22[210:208]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_version = _T_22[207:204]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ihl = _T_22[203:200]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_dscp = _T_22[199:194]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ecn = _T_22[193:192]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_len = _T_22[191:176]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_id = _T_22[175:160]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_flags = _T_22[159:157]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_foff = _T_22[156:144]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ttl = _T_22[143:136]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_proto = _T_22[135:128]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_chksum = _T_22[127:112]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_src = _T_22[111:80]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_dest = _T_22[79:48]; // @[asyncBridge.scala 81:18]
  assign io_read_data_icmp_id = _T_22[47:32]; // @[asyncBridge.scala 81:18]
  assign io_read_data_icmp_checksum = _T_22[31:16]; // @[asyncBridge.scala 81:18]
  assign io_read_data_icmp_code = _T_22[15:8]; // @[asyncBridge.scala 81:18]
  assign io_read_data_icmp_imcpType = _T_22[7:0]; // @[asyncBridge.scala 81:18]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20]
  assign xpm_fifo_async_din = {_T_19,_T_9}; // @[asyncBridge.scala 75:18]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20]
endmodule
module AsyncBridge_1(
  input        reset,
  input        io_write_clk,
  input        io_write_en,
  input  [7:0] io_write_data_data,
  input        io_write_data_last,
  output       io_write_full,
  input        io_read_clk,
  input        io_read_en,
  output [7:0] io_read_data_data,
  output       io_read_data_last,
  output       io_read_empty
);
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23]
  wire [8:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23]
  wire [8:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23]
  wire [8:0] _T_2;
  xpm_fifo_async #(.READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(7), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23]
    .rst(xpm_fifo_async_rst),
    .wr_clk(xpm_fifo_async_wr_clk),
    .wr_en(xpm_fifo_async_wr_en),
    .din(xpm_fifo_async_din),
    .full(xpm_fifo_async_full),
    .rd_clk(xpm_fifo_async_rd_clk),
    .rd_en(xpm_fifo_async_rd_en),
    .dout(xpm_fifo_async_dout),
    .empty(xpm_fifo_async_empty),
    .prog_full(xpm_fifo_async_prog_full)
  );
  assign _T_2 = xpm_fifo_async_dout;
  assign io_write_full = xpm_fifo_async_full; // @[asyncBridge.scala 76:19]
  assign io_read_data_data = _T_2[8:1]; // @[asyncBridge.scala 81:18]
  assign io_read_data_last = _T_2[0]; // @[asyncBridge.scala 81:18]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20]
  assign xpm_fifo_async_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 75:18]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20]
endmodule
module AsyncBridge_2(
  input        reset,
  input        io_write_clk,
  input        io_write_en,
  input  [7:0] io_write_data_data,
  input        io_write_data_last,
  output       io_write_progfull,
  input        io_read_clk,
  input        io_read_en,
  output [7:0] io_read_data_data,
  output       io_read_data_last,
  output       io_read_empty
);
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23]
  wire [8:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23]
  wire [8:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23]
  wire [8:0] _T_2;
  xpm_fifo_async #(.READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(8192), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(6593), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23]
    .rst(xpm_fifo_async_rst),
    .wr_clk(xpm_fifo_async_wr_clk),
    .wr_en(xpm_fifo_async_wr_en),
    .din(xpm_fifo_async_din),
    .full(xpm_fifo_async_full),
    .rd_clk(xpm_fifo_async_rd_clk),
    .rd_en(xpm_fifo_async_rd_en),
    .dout(xpm_fifo_async_dout),
    .empty(xpm_fifo_async_empty),
    .prog_full(xpm_fifo_async_prog_full)
  );
  assign _T_2 = xpm_fifo_async_dout;
  assign io_write_progfull = xpm_fifo_async_prog_full; // @[asyncBridge.scala 77:23]
  assign io_read_data_data = _T_2[8:1]; // @[asyncBridge.scala 81:18]
  assign io_read_data_last = _T_2[0]; // @[asyncBridge.scala 81:18]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20]
  assign xpm_fifo_async_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 75:18]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20]
endmodule
module IPAcceptor(
  input         clock,
  input         reset,
  input  [7:0]  io_rx_tdata,
  input         io_rx_tvalid,
  input         io_rx_tlast,
  output [3:0]  io_ip_version,
  output [3:0]  io_ip_ihl,
  output [5:0]  io_ip_dscp,
  output [1:0]  io_ip_ecn,
  output [15:0] io_ip_len,
  output [15:0] io_ip_id,
  output [2:0]  io_ip_flags,
  output [12:0] io_ip_foff,
  output [7:0]  io_ip_ttl,
  output [7:0]  io_ip_proto,
  output [15:0] io_ip_chksum,
  output [31:0] io_ip_src,
  output [31:0] io_ip_dest,
  output [15:0] io_icmp_id,
  output [15:0] io_icmp_checksum,
  output [7:0]  io_icmp_code,
  output [7:0]  io_icmp_imcpType,
  input         io_start,
  output        io_headerFinished,
  output        io_ignored,
  output        io_payloadWriter_clk,
  output        io_payloadWriter_en,
  output [7:0]  io_payloadWriter_data_data,
  output        io_payloadWriter_data_last,
  input         io_payloadWriter_progfull
);
  reg [7:0] ipBuf_0; // @[ip.scala 25:18]
  reg [31:0] _RAND_0;
  reg [7:0] ipBuf_1; // @[ip.scala 25:18]
  reg [31:0] _RAND_1;
  reg [7:0] ipBuf_2; // @[ip.scala 25:18]
  reg [31:0] _RAND_2;
  reg [7:0] ipBuf_3; // @[ip.scala 25:18]
  reg [31:0] _RAND_3;
  reg [7:0] ipBuf_4; // @[ip.scala 25:18]
  reg [31:0] _RAND_4;
  reg [7:0] ipBuf_5; // @[ip.scala 25:18]
  reg [31:0] _RAND_5;
  reg [7:0] ipBuf_6; // @[ip.scala 25:18]
  reg [31:0] _RAND_6;
  reg [7:0] ipBuf_7; // @[ip.scala 25:18]
  reg [31:0] _RAND_7;
  reg [7:0] ipBuf_8; // @[ip.scala 25:18]
  reg [31:0] _RAND_8;
  reg [7:0] ipBuf_9; // @[ip.scala 25:18]
  reg [31:0] _RAND_9;
  reg [7:0] ipBuf_10; // @[ip.scala 25:18]
  reg [31:0] _RAND_10;
  reg [7:0] ipBuf_11; // @[ip.scala 25:18]
  reg [31:0] _RAND_11;
  reg [7:0] ipBuf_12; // @[ip.scala 25:18]
  reg [31:0] _RAND_12;
  reg [7:0] ipBuf_13; // @[ip.scala 25:18]
  reg [31:0] _RAND_13;
  reg [7:0] ipBuf_14; // @[ip.scala 25:18]
  reg [31:0] _RAND_14;
  reg [7:0] ipBuf_15; // @[ip.scala 25:18]
  reg [31:0] _RAND_15;
  reg [7:0] ipBuf_16; // @[ip.scala 25:18]
  reg [31:0] _RAND_16;
  reg [7:0] ipBuf_17; // @[ip.scala 25:18]
  reg [31:0] _RAND_17;
  reg [7:0] ipBuf_18; // @[ip.scala 25:18]
  reg [31:0] _RAND_18;
  reg [7:0] ipBuf_19; // @[ip.scala 25:18]
  reg [31:0] _RAND_19;
  reg [7:0] icmpBuf_0; // @[ip.scala 26:20]
  reg [31:0] _RAND_20;
  reg [7:0] icmpBuf_1; // @[ip.scala 26:20]
  reg [31:0] _RAND_21;
  reg [7:0] icmpBuf_2; // @[ip.scala 26:20]
  reg [31:0] _RAND_22;
  reg [7:0] icmpBuf_3; // @[ip.scala 26:20]
  reg [31:0] _RAND_23;
  reg [7:0] icmpBuf_4; // @[ip.scala 26:20]
  reg [31:0] _RAND_24;
  reg [7:0] icmpBuf_5; // @[ip.scala 26:20]
  reg [31:0] _RAND_25;
  reg [10:0] cnt; // @[ip.scala 28:20]
  reg [31:0] _RAND_26;
  reg  reading; // @[ip.scala 29:24]
  reg [31:0] _RAND_27;
  reg  ignored; // @[ip.scala 30:24]
  reg [31:0] _RAND_28;
  reg [1:0] state; // @[ip.scala 33:22]
  reg [31:0] _RAND_29;
  wire  _GEN_0; // @[ip.scala 35:18]
  wire  _T_1; // @[ip.scala 47:21]
  wire  _T_2; // @[Conditional.scala 37:30]
  wire [10:0] _T_4; // @[ip.scala 52:37]
  wire [4:0] _T_5;
  wire  _T_6; // @[ip.scala 54:18]
  wire [10:0] _T_8; // @[ip.scala 56:22]
  wire  _T_9; // @[ip.scala 58:29]
  wire  _T_10; // @[ip.scala 64:61]
  wire  _T_11; // @[ip.scala 64:48]
  wire  _T_12; // @[Conditional.scala 37:30]
  wire [10:0] _T_14; // @[ip.scala 71:41]
  wire [2:0] _T_15;
  wire  _T_16; // @[ip.scala 73:19]
  wire  _T_19; // @[Conditional.scala 37:30]
  wire  _T_20; // @[ip.scala 83:32]
  wire  _GEN_36; // @[Conditional.scala 39:67]
  wire  _GEN_45; // @[Conditional.scala 39:67]
  wire  _GEN_75; // @[Conditional.scala 40:58]
  wire [79:0] _T_29; // @[ip.scala 96:18]
  wire [79:0] _T_38; // @[ip.scala 96:18]
  wire [159:0] _T_39; // @[ip.scala 96:18]
  wire [47:0] _T_59; // @[ip.scala 97:22]
  assign _GEN_0 = io_start | reading; // @[ip.scala 35:18]
  assign _T_1 = io_rx_tvalid & _GEN_0; // @[ip.scala 47:21]
  assign _T_2 = 2'h0 == state; // @[Conditional.scala 37:30]
  assign _T_4 = 11'h13 - cnt; // @[ip.scala 52:37]
  assign _T_5 = _T_4[4:0];
  assign _T_6 = cnt < 11'h13; // @[ip.scala 54:18]
  assign _T_8 = cnt + 11'h1; // @[ip.scala 56:22]
  assign _T_9 = io_ip_proto == 8'h1; // @[ip.scala 58:29]
  assign _T_10 = io_ip_len > 16'h640; // @[ip.scala 64:61]
  assign _T_11 = io_payloadWriter_progfull | _T_10; // @[ip.scala 64:48]
  assign _T_12 = 2'h1 == state; // @[Conditional.scala 37:30]
  assign _T_14 = 11'h5 - cnt; // @[ip.scala 71:41]
  assign _T_15 = _T_14[2:0];
  assign _T_16 = cnt < 11'h5; // @[ip.scala 73:19]
  assign _T_19 = 2'h2 == state; // @[Conditional.scala 37:30]
  assign _T_20 = ignored == 1'h0; // @[ip.scala 83:32]
  assign _GEN_36 = _T_19 & _T_20; // @[Conditional.scala 39:67]
  assign _GEN_45 = _T_12 ? 1'h0 : _GEN_36; // @[Conditional.scala 39:67]
  assign _GEN_75 = _T_2 ? 1'h0 : _GEN_45; // @[Conditional.scala 40:58]
  assign _T_29 = {ipBuf_9,ipBuf_8,ipBuf_7,ipBuf_6,ipBuf_5,ipBuf_4,ipBuf_3,ipBuf_2,ipBuf_1,ipBuf_0}; // @[ip.scala 96:18]
  assign _T_38 = {ipBuf_19,ipBuf_18,ipBuf_17,ipBuf_16,ipBuf_15,ipBuf_14,ipBuf_13,ipBuf_12,ipBuf_11,ipBuf_10}; // @[ip.scala 96:18]
  assign _T_39 = {_T_38,_T_29}; // @[ip.scala 96:18]
  assign _T_59 = {icmpBuf_5,icmpBuf_4,icmpBuf_3,icmpBuf_2,icmpBuf_1,icmpBuf_0}; // @[ip.scala 97:22]
  assign io_ip_version = _T_39[159:156]; // @[ip.scala 96:9]
  assign io_ip_ihl = _T_39[155:152]; // @[ip.scala 96:9]
  assign io_ip_dscp = _T_39[151:146]; // @[ip.scala 96:9]
  assign io_ip_ecn = _T_39[145:144]; // @[ip.scala 96:9]
  assign io_ip_len = _T_39[143:128]; // @[ip.scala 96:9]
  assign io_ip_id = _T_39[127:112]; // @[ip.scala 96:9]
  assign io_ip_flags = _T_39[111:109]; // @[ip.scala 96:9]
  assign io_ip_foff = _T_39[108:96]; // @[ip.scala 96:9]
  assign io_ip_ttl = _T_39[95:88]; // @[ip.scala 96:9]
  assign io_ip_proto = _T_39[87:80]; // @[ip.scala 96:9]
  assign io_ip_chksum = _T_39[79:64]; // @[ip.scala 96:9]
  assign io_ip_src = _T_39[63:32]; // @[ip.scala 96:9]
  assign io_ip_dest = _T_39[31:0]; // @[ip.scala 96:9]
  assign io_icmp_id = _T_59[47:32]; // @[ip.scala 97:11]
  assign io_icmp_checksum = _T_59[31:16]; // @[ip.scala 97:11]
  assign io_icmp_code = _T_59[15:8]; // @[ip.scala 97:11]
  assign io_icmp_imcpType = _T_59[7:0]; // @[ip.scala 97:11]
  assign io_headerFinished = state == 2'h2; // @[ip.scala 99:21]
  assign io_ignored = ignored; // @[ip.scala 98:14]
  assign io_payloadWriter_clk = clock; // @[ip.scala 42:24]
  assign io_payloadWriter_en = _T_1 & _GEN_75; // @[ip.scala 45:23 ip.scala 83:29]
  assign io_payloadWriter_data_data = io_rx_tdata; // @[ip.scala 43:30]
  assign io_payloadWriter_data_last = _T_1 & io_rx_tlast; // @[ip.scala 44:30 ip.scala 89:34]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  ipBuf_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  ipBuf_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  ipBuf_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  ipBuf_3 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  ipBuf_4 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ipBuf_5 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ipBuf_6 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ipBuf_7 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ipBuf_8 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ipBuf_9 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  ipBuf_10 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  ipBuf_11 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  ipBuf_12 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  ipBuf_13 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  ipBuf_14 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  ipBuf_15 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  ipBuf_16 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  ipBuf_17 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  ipBuf_18 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  ipBuf_19 = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  icmpBuf_0 = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  icmpBuf_1 = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  icmpBuf_2 = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  icmpBuf_3 = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  icmpBuf_4 = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  icmpBuf_5 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  cnt = _RAND_26[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  reading = _RAND_27[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  ignored = _RAND_28[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  state = _RAND_29[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_1) begin
      if (_T_2) begin
        if (5'h0 == _T_5) begin
          ipBuf_0 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h1 == _T_5) begin
          ipBuf_1 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h2 == _T_5) begin
          ipBuf_2 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h3 == _T_5) begin
          ipBuf_3 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h4 == _T_5) begin
          ipBuf_4 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h5 == _T_5) begin
          ipBuf_5 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h6 == _T_5) begin
          ipBuf_6 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h7 == _T_5) begin
          ipBuf_7 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h8 == _T_5) begin
          ipBuf_8 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h9 == _T_5) begin
          ipBuf_9 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'ha == _T_5) begin
          ipBuf_10 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'hb == _T_5) begin
          ipBuf_11 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'hc == _T_5) begin
          ipBuf_12 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'hd == _T_5) begin
          ipBuf_13 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'he == _T_5) begin
          ipBuf_14 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'hf == _T_5) begin
          ipBuf_15 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h10 == _T_5) begin
          ipBuf_16 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h11 == _T_5) begin
          ipBuf_17 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h12 == _T_5) begin
          ipBuf_18 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        if (5'h13 == _T_5) begin
          ipBuf_19 <= io_rx_tdata;
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h0 == _T_15) begin
            icmpBuf_0 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h1 == _T_15) begin
            icmpBuf_1 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h2 == _T_15) begin
            icmpBuf_2 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h3 == _T_15) begin
            icmpBuf_3 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h4 == _T_15) begin
            icmpBuf_4 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_1) begin
      if (!(_T_2)) begin
        if (_T_12) begin
          if (3'h5 == _T_15) begin
            icmpBuf_5 <= io_rx_tdata;
          end
        end
      end
    end
    if (reset) begin
      cnt <= 11'h0;
    end else if (_T_1) begin
      if (io_rx_tlast) begin
        cnt <= 11'h0;
      end else if (_T_2) begin
        if (_T_6) begin
          cnt <= _T_8;
        end else if (_T_9) begin
          cnt <= 11'h0;
        end
      end else if (_T_12) begin
        if (_T_16) begin
          cnt <= _T_8;
        end
      end
    end
    if (reset) begin
      reading <= 1'h0;
    end else if (_T_1) begin
      if (io_rx_tlast) begin
        reading <= 1'h0;
      end else begin
        reading <= _GEN_0;
      end
    end else begin
      reading <= _GEN_0;
    end
    if (reset) begin
      ignored <= 1'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        if (_T_6) begin
          if (io_start) begin
            ignored <= 1'h0;
          end
        end else begin
          ignored <= _T_11;
        end
      end else if (io_start) begin
        ignored <= 1'h0;
      end
    end else if (io_start) begin
      ignored <= 1'h0;
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_1) begin
      if (io_rx_tlast) begin
        state <= 2'h0;
      end else if (_T_2) begin
        if (_T_6) begin
          if (io_start) begin
            state <= 2'h0;
          end
        end else if (_T_9) begin
          state <= 2'h1;
        end else begin
          state <= 2'h2;
        end
      end else if (_T_12) begin
        if (_T_16) begin
          if (io_start) begin
            state <= 2'h0;
          end
        end else begin
          state <= 2'h2;
        end
      end else if (io_start) begin
        state <= 2'h0;
      end
    end else if (io_start) begin
      state <= 2'h0;
    end
  end
endmodule
module Acceptor(
  input         clock,
  input         reset,
  input  [7:0]  io_rx_tdata,
  input         io_rx_tvalid,
  input         io_rx_tlast,
  output        io_writer_clk,
  output        io_writer_en,
  output [47:0] io_writer_data_eth_dest,
  output [47:0] io_writer_data_eth_sender,
  output [1:0]  io_writer_data_eth_pactype,
  output [2:0]  io_writer_data_eth_vlan,
  output [3:0]  io_writer_data_ip_version,
  output [3:0]  io_writer_data_ip_ihl,
  output [5:0]  io_writer_data_ip_dscp,
  output [1:0]  io_writer_data_ip_ecn,
  output [15:0] io_writer_data_ip_len,
  output [15:0] io_writer_data_ip_id,
  output [2:0]  io_writer_data_ip_flags,
  output [12:0] io_writer_data_ip_foff,
  output [7:0]  io_writer_data_ip_ttl,
  output [7:0]  io_writer_data_ip_proto,
  output [15:0] io_writer_data_ip_chksum,
  output [31:0] io_writer_data_ip_src,
  output [31:0] io_writer_data_ip_dest,
  output [15:0] io_writer_data_icmp_id,
  output [15:0] io_writer_data_icmp_checksum,
  output [7:0]  io_writer_data_icmp_code,
  output [7:0]  io_writer_data_icmp_imcpType,
  output        io_payloadWriter_clk,
  output        io_payloadWriter_en,
  output [7:0]  io_payloadWriter_data_data,
  output        io_payloadWriter_data_last,
  input         io_payloadWriter_progfull
);
  wire  ipAcceptor_clock; // @[acceptor.scala 21:26]
  wire  ipAcceptor_reset; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_rx_tdata; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_rx_tvalid; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_rx_tlast; // @[acceptor.scala 21:26]
  wire [3:0] ipAcceptor_io_ip_version; // @[acceptor.scala 21:26]
  wire [3:0] ipAcceptor_io_ip_ihl; // @[acceptor.scala 21:26]
  wire [5:0] ipAcceptor_io_ip_dscp; // @[acceptor.scala 21:26]
  wire [1:0] ipAcceptor_io_ip_ecn; // @[acceptor.scala 21:26]
  wire [15:0] ipAcceptor_io_ip_len; // @[acceptor.scala 21:26]
  wire [15:0] ipAcceptor_io_ip_id; // @[acceptor.scala 21:26]
  wire [2:0] ipAcceptor_io_ip_flags; // @[acceptor.scala 21:26]
  wire [12:0] ipAcceptor_io_ip_foff; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_ip_ttl; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_ip_proto; // @[acceptor.scala 21:26]
  wire [15:0] ipAcceptor_io_ip_chksum; // @[acceptor.scala 21:26]
  wire [31:0] ipAcceptor_io_ip_src; // @[acceptor.scala 21:26]
  wire [31:0] ipAcceptor_io_ip_dest; // @[acceptor.scala 21:26]
  wire [15:0] ipAcceptor_io_icmp_id; // @[acceptor.scala 21:26]
  wire [15:0] ipAcceptor_io_icmp_checksum; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_icmp_code; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_icmp_imcpType; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_start; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_headerFinished; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_ignored; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 21:26]
  wire [7:0] ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 21:26]
  wire  ipAcceptor_io_payloadWriter_progfull; // @[acceptor.scala 21:26]
  reg [11:0] cnt; // @[acceptor.scala 25:20]
  reg [31:0] _RAND_0;
  reg [7:0] header_0; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_1;
  reg [7:0] header_1; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_2;
  reg [7:0] header_2; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_3;
  reg [7:0] header_3; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_4;
  reg [7:0] header_4; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_5;
  reg [7:0] header_5; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_6;
  reg [7:0] header_6; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_7;
  reg [7:0] header_7; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_8;
  reg [7:0] header_8; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_9;
  reg [7:0] header_9; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_10;
  reg [7:0] header_10; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_11;
  reg [7:0] header_11; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_12;
  reg [7:0] header_12; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_13;
  reg [7:0] header_13; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_14;
  reg [7:0] header_14; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_15;
  reg [7:0] header_15; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_16;
  reg [7:0] header_16; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_17;
  reg [7:0] header_17; // @[acceptor.scala 26:19]
  reg [31:0] _RAND_18;
  wire  _T; // @[pactype.scala 13:16]
  wire  _T_1; // @[pactype.scala 13:34]
  wire  _T_2; // @[pactype.scala 13:25]
  wire  _T_4; // @[pactype.scala 15:40]
  wire  _T_5; // @[pactype.scala 15:31]
  wire [1:0] _GEN_0; // @[pactype.scala 15:50]
  wire [1:0] pactype; // @[pactype.scala 13:44]
  reg  opaque; // @[acceptor.scala 31:23]
  reg [31:0] _RAND_19;
  wire [71:0] _T_13; // @[acceptor.scala 35:32]
  wire [143:0] _T_22; // @[acceptor.scala 35:32]
  wire [95:0] _T_23; // @[acceptor.scala 35:39]
  wire [47:0] output_eth_dest; // @[acceptor.scala 36:37]
  wire [11:0] _T_43; // @[acceptor.scala 45:18]
  wire  _GEN_3; // @[acceptor.scala 41:23]
  wire  _GEN_5; // @[acceptor.scala 40:22]
  wire  _T_44; // @[acceptor.scala 50:14]
  wire [11:0] _T_46; // @[acceptor.scala 51:19]
  wire [4:0] _T_47;
  wire  _T_50; // @[acceptor.scala 61:23]
  reg [11:0] _T_51; // @[acceptor.scala 61:50]
  reg [31:0] _RAND_20;
  wire  _T_52; // @[acceptor.scala 61:56]
  wire  headerEnd; // @[acceptor.scala 61:40]
  wire  _T_53; // @[acceptor.scala 63:26]
  wire  _T_48; // @[acceptor.scala 59:35]
  wire [2:0] output_eth_vlan; // @[acceptor.scala 29:20 acceptor.scala 37:19]
  wire [47:0] _GEN_70; // @[acceptor.scala 59:76]
  wire [47:0] _GEN_71; // @[acceptor.scala 59:76]
  wire [47:0] _GEN_72; // @[acceptor.scala 59:76]
  wire [47:0] _GEN_73; // @[acceptor.scala 59:76]
  wire  _T_49; // @[acceptor.scala 59:76]
  wire  destMatch; // @[acceptor.scala 59:57]
  wire  _T_54; // @[acceptor.scala 63:43]
  wire  isOpaque; // @[acceptor.scala 63:56]
  wire  _T_55; // @[acceptor.scala 64:18]
  wire  _T_56; // @[acceptor.scala 64:33]
  wire  _T_57; // @[acceptor.scala 64:30]
  wire  opaqueRecv; // @[acceptor.scala 64:61]
  wire  _GEN_24; // @[acceptor.scala 52:28]
  wire [7:0] _GEN_25; // @[acceptor.scala 52:28]
  wire  _GEN_26; // @[acceptor.scala 52:28]
  wire  _GEN_45; // @[acceptor.scala 50:30]
  wire [7:0] _GEN_46; // @[acceptor.scala 50:30]
  wire  _GEN_47; // @[acceptor.scala 50:30]
  wire  _GEN_74; // @[acceptor.scala 64:61]
  wire  _T_58; // @[acceptor.scala 71:34]
  wire  _T_59; // @[acceptor.scala 71:51]
  wire  _T_62; // @[acceptor.scala 73:41]
  reg  _T_63; // @[acceptor.scala 73:84]
  reg [31:0] _RAND_21;
  wire  _T_64; // @[acceptor.scala 73:76]
  wire  ipEmit; // @[acceptor.scala 73:73]
  wire  ipIgnore; // @[acceptor.scala 74:43]
  wire  _T_66; // @[acceptor.scala 79:42]
  wire  _T_67; // @[acceptor.scala 79:39]
  IPAcceptor ipAcceptor ( // @[acceptor.scala 21:26]
    .clock(ipAcceptor_clock),
    .reset(ipAcceptor_reset),
    .io_rx_tdata(ipAcceptor_io_rx_tdata),
    .io_rx_tvalid(ipAcceptor_io_rx_tvalid),
    .io_rx_tlast(ipAcceptor_io_rx_tlast),
    .io_ip_version(ipAcceptor_io_ip_version),
    .io_ip_ihl(ipAcceptor_io_ip_ihl),
    .io_ip_dscp(ipAcceptor_io_ip_dscp),
    .io_ip_ecn(ipAcceptor_io_ip_ecn),
    .io_ip_len(ipAcceptor_io_ip_len),
    .io_ip_id(ipAcceptor_io_ip_id),
    .io_ip_flags(ipAcceptor_io_ip_flags),
    .io_ip_foff(ipAcceptor_io_ip_foff),
    .io_ip_ttl(ipAcceptor_io_ip_ttl),
    .io_ip_proto(ipAcceptor_io_ip_proto),
    .io_ip_chksum(ipAcceptor_io_ip_chksum),
    .io_ip_src(ipAcceptor_io_ip_src),
    .io_ip_dest(ipAcceptor_io_ip_dest),
    .io_icmp_id(ipAcceptor_io_icmp_id),
    .io_icmp_checksum(ipAcceptor_io_icmp_checksum),
    .io_icmp_code(ipAcceptor_io_icmp_code),
    .io_icmp_imcpType(ipAcceptor_io_icmp_imcpType),
    .io_start(ipAcceptor_io_start),
    .io_headerFinished(ipAcceptor_io_headerFinished),
    .io_ignored(ipAcceptor_io_ignored),
    .io_payloadWriter_clk(ipAcceptor_io_payloadWriter_clk),
    .io_payloadWriter_en(ipAcceptor_io_payloadWriter_en),
    .io_payloadWriter_data_data(ipAcceptor_io_payloadWriter_data_data),
    .io_payloadWriter_data_last(ipAcceptor_io_payloadWriter_data_last),
    .io_payloadWriter_progfull(ipAcceptor_io_payloadWriter_progfull)
  );
  assign _T = header_1 == 8'h8; // @[pactype.scala 13:16]
  assign _T_1 = header_0 == 8'h0; // @[pactype.scala 13:34]
  assign _T_2 = _T & _T_1; // @[pactype.scala 13:25]
  assign _T_4 = header_0 == 8'h6; // @[pactype.scala 15:40]
  assign _T_5 = _T & _T_4; // @[pactype.scala 15:31]
  assign _GEN_0 = _T_5 ? 2'h2 : 2'h0; // @[pactype.scala 15:50]
  assign pactype = _T_2 ? 2'h1 : _GEN_0; // @[pactype.scala 13:44]
  assign _T_13 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 35:32]
  assign _T_22 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_13}; // @[acceptor.scala 35:32]
  assign _T_23 = _T_22[143:48]; // @[acceptor.scala 35:39]
  assign output_eth_dest = _T_22[143:96]; // @[acceptor.scala 36:37]
  assign _T_43 = cnt + 12'h1; // @[acceptor.scala 45:18]
  assign _GEN_3 = io_rx_tlast ? 1'h0 : opaque; // @[acceptor.scala 41:23]
  assign _GEN_5 = io_rx_tvalid ? _GEN_3 : opaque; // @[acceptor.scala 40:22]
  assign _T_44 = cnt < 12'h12; // @[acceptor.scala 50:14]
  assign _T_46 = 12'h11 - cnt; // @[acceptor.scala 51:19]
  assign _T_47 = _T_46[4:0];
  assign _T_50 = cnt == 12'h12; // @[acceptor.scala 61:23]
  assign _T_52 = _T_51 != 12'h12; // @[acceptor.scala 61:56]
  assign headerEnd = _T_50 & _T_52; // @[acceptor.scala 61:40]
  assign _T_53 = pactype != 2'h1; // @[acceptor.scala 63:26]
  assign _T_48 = output_eth_dest == 48'hffffffffffff; // @[acceptor.scala 59:35]
  assign output_eth_vlan = header_2[2:0]; // @[acceptor.scala 29:20 acceptor.scala 37:19]
  assign _GEN_70 = 3'h1 == output_eth_vlan ? 48'h1 : 48'h0; // @[acceptor.scala 59:76]
  assign _GEN_71 = 3'h2 == output_eth_vlan ? 48'h2 : _GEN_70; // @[acceptor.scala 59:76]
  assign _GEN_72 = 3'h3 == output_eth_vlan ? 48'h3 : _GEN_71; // @[acceptor.scala 59:76]
  assign _GEN_73 = 3'h4 == output_eth_vlan ? 48'h4 : _GEN_72; // @[acceptor.scala 59:76]
  assign _T_49 = output_eth_dest == _GEN_73; // @[acceptor.scala 59:76]
  assign destMatch = _T_48 | _T_49; // @[acceptor.scala 59:57]
  assign _T_54 = _T_53 & destMatch; // @[acceptor.scala 63:43]
  assign isOpaque = _T_54 & headerEnd; // @[acceptor.scala 63:56]
  assign _T_55 = headerEnd & isOpaque; // @[acceptor.scala 64:18]
  assign _T_56 = io_payloadWriter_progfull == 1'h0; // @[acceptor.scala 64:33]
  assign _T_57 = _T_55 & _T_56; // @[acceptor.scala 64:30]
  assign opaqueRecv = _T_57 | opaque; // @[acceptor.scala 64:61]
  assign _GEN_24 = opaqueRecv | ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 52:28]
  assign _GEN_25 = opaqueRecv ? io_rx_tdata : ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 52:28]
  assign _GEN_26 = opaqueRecv ? io_rx_tlast : ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 52:28]
  assign _GEN_45 = _T_44 ? ipAcceptor_io_payloadWriter_en : _GEN_24; // @[acceptor.scala 50:30]
  assign _GEN_46 = _T_44 ? ipAcceptor_io_payloadWriter_data_data : _GEN_25; // @[acceptor.scala 50:30]
  assign _GEN_47 = _T_44 ? ipAcceptor_io_payloadWriter_data_last : _GEN_26; // @[acceptor.scala 50:30]
  assign _GEN_74 = _T_57 | _GEN_5; // @[acceptor.scala 64:61]
  assign _T_58 = pactype == 2'h1; // @[acceptor.scala 71:34]
  assign _T_59 = _T_58 & destMatch; // @[acceptor.scala 71:51]
  assign _T_62 = _T_58 & ipAcceptor_io_headerFinished; // @[acceptor.scala 73:41]
  assign _T_64 = _T_63 == 1'h0; // @[acceptor.scala 73:76]
  assign ipEmit = _T_62 & _T_64; // @[acceptor.scala 73:73]
  assign ipIgnore = _T_58 & ipAcceptor_io_ignored; // @[acceptor.scala 74:43]
  assign _T_66 = ipIgnore == 1'h0; // @[acceptor.scala 79:42]
  assign _T_67 = ipEmit & _T_66; // @[acceptor.scala 79:39]
  assign io_writer_clk = clock; // @[acceptor.scala 84:17]
  assign io_writer_en = isOpaque | _T_67; // @[acceptor.scala 79:16]
  assign io_writer_data_eth_dest = _T_22[143:96]; // @[acceptor.scala 80:18]
  assign io_writer_data_eth_sender = _T_23[47:0]; // @[acceptor.scala 80:18]
  assign io_writer_data_eth_pactype = _T_2 ? 2'h1 : _GEN_0; // @[acceptor.scala 80:18]
  assign io_writer_data_eth_vlan = header_2[2:0]; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_version = ipAcceptor_io_ip_version; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_ihl = ipAcceptor_io_ip_ihl; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_dscp = ipAcceptor_io_ip_dscp; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_ecn = ipAcceptor_io_ip_ecn; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_len = ipAcceptor_io_ip_len; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_id = ipAcceptor_io_ip_id; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_flags = ipAcceptor_io_ip_flags; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_foff = ipAcceptor_io_ip_foff; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_ttl = ipAcceptor_io_ip_ttl; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_proto = ipAcceptor_io_ip_proto; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_chksum = ipAcceptor_io_ip_chksum; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_src = ipAcceptor_io_ip_src; // @[acceptor.scala 80:18]
  assign io_writer_data_ip_dest = ipAcceptor_io_ip_dest; // @[acceptor.scala 80:18]
  assign io_writer_data_icmp_id = ipAcceptor_io_icmp_id; // @[acceptor.scala 80:18]
  assign io_writer_data_icmp_checksum = ipAcceptor_io_icmp_checksum; // @[acceptor.scala 80:18]
  assign io_writer_data_icmp_code = ipAcceptor_io_icmp_code; // @[acceptor.scala 80:18]
  assign io_writer_data_icmp_imcpType = ipAcceptor_io_icmp_imcpType; // @[acceptor.scala 80:18]
  assign io_payloadWriter_clk = ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 23:31]
  assign io_payloadWriter_en = io_rx_tvalid ? _GEN_45 : ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 23:31 acceptor.scala 53:27]
  assign io_payloadWriter_data_data = io_rx_tvalid ? _GEN_46 : ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 23:31 acceptor.scala 54:34]
  assign io_payloadWriter_data_last = io_rx_tvalid ? _GEN_47 : ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 23:31 acceptor.scala 55:34]
  assign ipAcceptor_clock = clock;
  assign ipAcceptor_reset = reset;
  assign ipAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 22:20]
  assign ipAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 22:20]
  assign ipAcceptor_io_rx_tlast = io_rx_tlast; // @[acceptor.scala 22:20]
  assign ipAcceptor_io_start = _T_59 & headerEnd; // @[acceptor.scala 71:23]
  assign ipAcceptor_io_payloadWriter_progfull = io_payloadWriter_progfull; // @[acceptor.scala 23:31]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt = _RAND_0[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  header_0 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  header_1 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  header_2 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  header_3 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  header_4 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  header_5 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  header_6 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  header_7 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  header_8 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  header_9 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  header_10 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  header_11 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  header_12 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  header_13 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  header_14 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  header_15 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  header_16 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  header_17 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  opaque = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_51 = _RAND_20[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_63 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 12'h0;
    end else if (io_rx_tvalid) begin
      if (io_rx_tlast) begin
        cnt <= 12'h0;
      end else begin
        cnt <= _T_43;
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h0 == _T_47) begin
          header_0 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h1 == _T_47) begin
          header_1 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h2 == _T_47) begin
          header_2 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h3 == _T_47) begin
          header_3 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h4 == _T_47) begin
          header_4 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h5 == _T_47) begin
          header_5 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h6 == _T_47) begin
          header_6 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h7 == _T_47) begin
          header_7 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h8 == _T_47) begin
          header_8 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h9 == _T_47) begin
          header_9 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'ha == _T_47) begin
          header_10 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'hb == _T_47) begin
          header_11 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'hc == _T_47) begin
          header_12 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'hd == _T_47) begin
          header_13 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'he == _T_47) begin
          header_14 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'hf == _T_47) begin
          header_15 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h10 == _T_47) begin
          header_16 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_44) begin
        if (5'h11 == _T_47) begin
          header_17 <= io_rx_tdata;
        end
      end
    end
    if (reset) begin
      opaque <= 1'h0;
    end else begin
      opaque <= _GEN_74;
    end
    _T_51 <= cnt;
    _T_63 <= ipAcceptor_io_headerFinished;
  end
endmodule
module Ctrl(
  output  io_inputWait,
  input   io_nat_stall,
  output  io_nat_pause,
  input   io_forward_stall,
  output  io_forward_pause,
  output  io_arp_pause,
  input   io_encoder_stall,
  output  io_encoder_pause
);
  wire  _T; // @[ctrl.scala 29:33]
  assign _T = io_nat_stall | io_forward_stall; // @[ctrl.scala 29:33]
  assign io_inputWait = _T | io_encoder_stall; // @[ctrl.scala 30:16]
  assign io_nat_pause = _T | io_encoder_stall; // @[ctrl.scala 31:16]
  assign io_forward_pause = _T | io_encoder_stall; // @[ctrl.scala 32:20]
  assign io_arp_pause = _T | io_encoder_stall; // @[ctrl.scala 33:16]
  assign io_encoder_pause = _T | io_encoder_stall; // @[ctrl.scala 34:20]
endmodule
module Nat(
  input         clock,
  input         reset,
  input  [47:0] io_input_eth_dest,
  input  [47:0] io_input_eth_sender,
  input  [1:0]  io_input_eth_pactype,
  input  [2:0]  io_input_eth_vlan,
  input  [3:0]  io_input_ip_version,
  input  [3:0]  io_input_ip_ihl,
  input  [5:0]  io_input_ip_dscp,
  input  [1:0]  io_input_ip_ecn,
  input  [15:0] io_input_ip_len,
  input  [15:0] io_input_ip_id,
  input  [2:0]  io_input_ip_flags,
  input  [12:0] io_input_ip_foff,
  input  [7:0]  io_input_ip_ttl,
  input  [7:0]  io_input_ip_proto,
  input  [15:0] io_input_ip_chksum,
  input  [31:0] io_input_ip_src,
  input  [31:0] io_input_ip_dest,
  input  [15:0] io_input_icmp_id,
  input  [15:0] io_input_icmp_checksum,
  input  [7:0]  io_input_icmp_code,
  input  [7:0]  io_input_icmp_imcpType,
  input  [1:0]  io_status,
  output [47:0] io_output_eth_dest,
  output [47:0] io_output_eth_sender,
  output [1:0]  io_output_eth_pactype,
  output [2:0]  io_output_eth_vlan,
  output [3:0]  io_output_ip_version,
  output [3:0]  io_output_ip_ihl,
  output [5:0]  io_output_ip_dscp,
  output [1:0]  io_output_ip_ecn,
  output [15:0] io_output_ip_len,
  output [15:0] io_output_ip_id,
  output [2:0]  io_output_ip_flags,
  output [12:0] io_output_ip_foff,
  output [7:0]  io_output_ip_ttl,
  output [7:0]  io_output_ip_proto,
  output [15:0] io_output_ip_chksum,
  output [31:0] io_output_ip_src,
  output [31:0] io_output_ip_dest,
  output [15:0] io_output_icmp_id,
  output [15:0] io_output_icmp_checksum,
  output [7:0]  io_output_icmp_code,
  output [7:0]  io_output_icmp_imcpType,
  output [1:0]  io_outputStatus,
  input         io_pause,
  output        io_stall
);
  reg  state; // @[nat.scala 43:22]
  reg [31:0] _RAND_0;
  reg [7:0] searchingP; // @[nat.scala 45:27]
  reg [31:0] _RAND_1;
  reg [47:0] packet_eth_dest; // @[nat.scala 48:19]
  reg [63:0] _RAND_2;
  reg [47:0] packet_eth_sender; // @[nat.scala 48:19]
  reg [63:0] _RAND_3;
  reg [1:0] packet_eth_pactype; // @[nat.scala 48:19]
  reg [31:0] _RAND_4;
  reg [2:0] packet_eth_vlan; // @[nat.scala 48:19]
  reg [31:0] _RAND_5;
  reg [3:0] packet_ip_version; // @[nat.scala 48:19]
  reg [31:0] _RAND_6;
  reg [3:0] packet_ip_ihl; // @[nat.scala 48:19]
  reg [31:0] _RAND_7;
  reg [5:0] packet_ip_dscp; // @[nat.scala 48:19]
  reg [31:0] _RAND_8;
  reg [1:0] packet_ip_ecn; // @[nat.scala 48:19]
  reg [31:0] _RAND_9;
  reg [15:0] packet_ip_len; // @[nat.scala 48:19]
  reg [31:0] _RAND_10;
  reg [15:0] packet_ip_id; // @[nat.scala 48:19]
  reg [31:0] _RAND_11;
  reg [2:0] packet_ip_flags; // @[nat.scala 48:19]
  reg [31:0] _RAND_12;
  reg [12:0] packet_ip_foff; // @[nat.scala 48:19]
  reg [31:0] _RAND_13;
  reg [7:0] packet_ip_ttl; // @[nat.scala 48:19]
  reg [31:0] _RAND_14;
  reg [7:0] packet_ip_proto; // @[nat.scala 48:19]
  reg [31:0] _RAND_15;
  reg [15:0] packet_ip_chksum; // @[nat.scala 48:19]
  reg [31:0] _RAND_16;
  reg [31:0] packet_ip_src; // @[nat.scala 48:19]
  reg [31:0] _RAND_17;
  reg [31:0] packet_ip_dest; // @[nat.scala 48:19]
  reg [31:0] _RAND_18;
  reg [15:0] packet_icmp_id; // @[nat.scala 48:19]
  reg [31:0] _RAND_19;
  reg [15:0] packet_icmp_checksum; // @[nat.scala 48:19]
  reg [31:0] _RAND_20;
  reg [7:0] packet_icmp_code; // @[nat.scala 48:19]
  reg [31:0] _RAND_21;
  reg [7:0] packet_icmp_imcpType; // @[nat.scala 48:19]
  reg [31:0] _RAND_22;
  reg [1:0] status; // @[nat.scala 49:23]
  reg [31:0] _RAND_23;
  wire  _T_1; // @[Conditional.scala 37:30]
  wire  _T_2; // @[nat.scala 63:12]
  wire  _T_3; // @[nat.scala 66:24]
  wire  _T_4; // @[nat.scala 67:38]
  wire  _T_5; // @[nat.scala 67:76]
  wire  _T_6; // @[nat.scala 67:55]
  wire  _GEN_0; // @[nat.scala 67:97]
  wire [7:0] _T_27; // @[nat.scala 94:26]
  wire  _T_28; // @[nat.scala 94:32]
  wire  _GEN_1631; // @[nat.scala 94:47]
  assign _T_1 = 1'h0 == state; // @[Conditional.scala 37:30]
  assign _T_2 = io_pause == 1'h0; // @[nat.scala 63:12]
  assign _T_3 = io_status == 2'h1; // @[nat.scala 66:24]
  assign _T_4 = io_input_eth_pactype == 2'h1; // @[nat.scala 67:38]
  assign _T_5 = io_input_ip_proto == 8'h1; // @[nat.scala 67:76]
  assign _T_6 = _T_4 & _T_5; // @[nat.scala 67:55]
  assign _GEN_0 = _T_6 | state; // @[nat.scala 67:97]
  assign _T_27 = searchingP + 8'h1; // @[nat.scala 94:26]
  assign _T_28 = _T_27 < 8'hc8; // @[nat.scala 94:32]
  assign _GEN_1631 = _T_28 & state; // @[nat.scala 94:47]
  assign io_output_eth_dest = packet_eth_dest; // @[nat.scala 58:13]
  assign io_output_eth_sender = packet_eth_sender; // @[nat.scala 58:13]
  assign io_output_eth_pactype = packet_eth_pactype; // @[nat.scala 58:13]
  assign io_output_eth_vlan = packet_eth_vlan; // @[nat.scala 58:13]
  assign io_output_ip_version = packet_ip_version; // @[nat.scala 58:13]
  assign io_output_ip_ihl = packet_ip_ihl; // @[nat.scala 58:13]
  assign io_output_ip_dscp = packet_ip_dscp; // @[nat.scala 58:13]
  assign io_output_ip_ecn = packet_ip_ecn; // @[nat.scala 58:13]
  assign io_output_ip_len = packet_ip_len; // @[nat.scala 58:13]
  assign io_output_ip_id = packet_ip_id; // @[nat.scala 58:13]
  assign io_output_ip_flags = packet_ip_flags; // @[nat.scala 58:13]
  assign io_output_ip_foff = packet_ip_foff; // @[nat.scala 58:13]
  assign io_output_ip_ttl = packet_ip_ttl; // @[nat.scala 58:13]
  assign io_output_ip_proto = packet_ip_proto; // @[nat.scala 58:13]
  assign io_output_ip_chksum = packet_ip_chksum; // @[nat.scala 58:13]
  assign io_output_ip_src = packet_ip_src; // @[nat.scala 58:13]
  assign io_output_ip_dest = packet_ip_dest; // @[nat.scala 58:13]
  assign io_output_icmp_id = packet_icmp_id; // @[nat.scala 58:13]
  assign io_output_icmp_checksum = packet_icmp_checksum; // @[nat.scala 58:13]
  assign io_output_icmp_code = packet_icmp_code; // @[nat.scala 58:13]
  assign io_output_icmp_imcpType = packet_icmp_imcpType; // @[nat.scala 58:13]
  assign io_outputStatus = status; // @[nat.scala 59:19]
  assign io_stall = state; // @[nat.scala 57:12]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  searchingP = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  packet_eth_dest = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  packet_eth_sender = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  packet_eth_pactype = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  packet_eth_vlan = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  packet_ip_version = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  packet_ip_ihl = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  packet_ip_dscp = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  packet_ip_ecn = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  packet_ip_len = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  packet_ip_id = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  packet_ip_flags = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  packet_ip_foff = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  packet_ip_ttl = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  packet_ip_proto = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  packet_ip_chksum = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  packet_ip_src = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  packet_ip_dest = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  packet_icmp_id = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  packet_icmp_checksum = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  packet_icmp_code = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  packet_icmp_imcpType = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  status = _RAND_23[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 1'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        if (_T_3) begin
          state <= _GEN_0;
        end
      end
    end else if (state) begin
      state <= _GEN_1631;
    end
    if (reset) begin
      searchingP <= 8'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        if (_T_3) begin
          if (_T_6) begin
            searchingP <= 8'h0;
          end
        end
      end
    end else if (state) begin
      if (_T_28) begin
        searchingP <= _T_27;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_eth_dest <= io_input_eth_dest;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_eth_sender <= io_input_eth_sender;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_version <= io_input_ip_version;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_len <= io_input_ip_len;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_id <= io_input_ip_id;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_src <= io_input_ip_src;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_ip_dest <= io_input_ip_dest;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_icmp_id <= io_input_icmp_id;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_icmp_checksum <= io_input_icmp_checksum;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_icmp_code <= io_input_icmp_code;
      end
    end
    if (_T_1) begin
      if (_T_2) begin
        packet_icmp_imcpType <= io_input_icmp_imcpType;
      end
    end
    if (reset) begin
      status <= 2'h0;
    end else if (_T_1) begin
      if (_T_2) begin
        if (_T_3) begin
          if (_T_6) begin
            status <= 2'h0;
          end else begin
            status <= io_status;
          end
        end else begin
          status <= io_status;
        end
      end
    end else if (state) begin
      if (!(_T_28)) begin
        status <= 2'h1;
      end
    end
  end
endmodule
module LLFT(
  input         clock,
  input         reset,
  input  [47:0] io_input_eth_dest,
  input  [47:0] io_input_eth_sender,
  input  [1:0]  io_input_eth_pactype,
  input  [2:0]  io_input_eth_vlan,
  input  [3:0]  io_input_ip_version,
  input  [3:0]  io_input_ip_ihl,
  input  [5:0]  io_input_ip_dscp,
  input  [1:0]  io_input_ip_ecn,
  input  [15:0] io_input_ip_len,
  input  [15:0] io_input_ip_id,
  input  [2:0]  io_input_ip_flags,
  input  [12:0] io_input_ip_foff,
  input  [7:0]  io_input_ip_ttl,
  input  [7:0]  io_input_ip_proto,
  input  [15:0] io_input_ip_chksum,
  input  [31:0] io_input_ip_src,
  input  [31:0] io_input_ip_dest,
  input  [15:0] io_input_icmp_id,
  input  [15:0] io_input_icmp_checksum,
  input  [7:0]  io_input_icmp_code,
  input  [7:0]  io_input_icmp_imcpType,
  input  [1:0]  io_status,
  output        io_stall,
  input         io_pause,
  output [47:0] io_output_packet_eth_dest,
  output [47:0] io_output_packet_eth_sender,
  output [1:0]  io_output_packet_eth_pactype,
  output [2:0]  io_output_packet_eth_vlan,
  output [3:0]  io_output_packet_ip_version,
  output [3:0]  io_output_packet_ip_ihl,
  output [5:0]  io_output_packet_ip_dscp,
  output [1:0]  io_output_packet_ip_ecn,
  output [15:0] io_output_packet_ip_len,
  output [15:0] io_output_packet_ip_id,
  output [2:0]  io_output_packet_ip_flags,
  output [12:0] io_output_packet_ip_foff,
  output [7:0]  io_output_packet_ip_ttl,
  output [7:0]  io_output_packet_ip_proto,
  output [15:0] io_output_packet_ip_chksum,
  output [31:0] io_output_packet_ip_src,
  output [31:0] io_output_packet_ip_dest,
  output [15:0] io_output_packet_icmp_id,
  output [15:0] io_output_packet_icmp_checksum,
  output [7:0]  io_output_packet_icmp_code,
  output [7:0]  io_output_packet_icmp_imcpType,
  output [1:0]  io_outputStatus
);
  reg [2:0] cnt; // @[linear.scala 54:16]
  reg [31:0] _RAND_0;
  reg [5:0] shiftCnt; // @[linear.scala 55:21]
  reg [31:0] _RAND_1;
  reg [47:0] working_eth_dest; // @[linear.scala 57:20]
  reg [63:0] _RAND_2;
  reg [47:0] working_eth_sender; // @[linear.scala 57:20]
  reg [63:0] _RAND_3;
  reg [1:0] working_eth_pactype; // @[linear.scala 57:20]
  reg [31:0] _RAND_4;
  reg [2:0] working_eth_vlan; // @[linear.scala 57:20]
  reg [31:0] _RAND_5;
  reg [3:0] working_ip_version; // @[linear.scala 57:20]
  reg [31:0] _RAND_6;
  reg [3:0] working_ip_ihl; // @[linear.scala 57:20]
  reg [31:0] _RAND_7;
  reg [5:0] working_ip_dscp; // @[linear.scala 57:20]
  reg [31:0] _RAND_8;
  reg [1:0] working_ip_ecn; // @[linear.scala 57:20]
  reg [31:0] _RAND_9;
  reg [15:0] working_ip_len; // @[linear.scala 57:20]
  reg [31:0] _RAND_10;
  reg [15:0] working_ip_id; // @[linear.scala 57:20]
  reg [31:0] _RAND_11;
  reg [2:0] working_ip_flags; // @[linear.scala 57:20]
  reg [31:0] _RAND_12;
  reg [12:0] working_ip_foff; // @[linear.scala 57:20]
  reg [31:0] _RAND_13;
  reg [7:0] working_ip_ttl; // @[linear.scala 57:20]
  reg [31:0] _RAND_14;
  reg [7:0] working_ip_proto; // @[linear.scala 57:20]
  reg [31:0] _RAND_15;
  reg [15:0] working_ip_chksum; // @[linear.scala 57:20]
  reg [31:0] _RAND_16;
  reg [31:0] working_ip_src; // @[linear.scala 57:20]
  reg [31:0] _RAND_17;
  reg [31:0] working_ip_dest; // @[linear.scala 57:20]
  reg [31:0] _RAND_18;
  reg [15:0] working_icmp_id; // @[linear.scala 57:20]
  reg [31:0] _RAND_19;
  reg [15:0] working_icmp_checksum; // @[linear.scala 57:20]
  reg [31:0] _RAND_20;
  reg [7:0] working_icmp_code; // @[linear.scala 57:20]
  reg [31:0] _RAND_21;
  reg [7:0] working_icmp_imcpType; // @[linear.scala 57:20]
  reg [31:0] _RAND_22;
  reg [31:0] addr; // @[linear.scala 59:17]
  reg [31:0] _RAND_23;
  reg [1:0] status; // @[linear.scala 60:23]
  reg [31:0] _RAND_24;
  reg  state; // @[linear.scala 67:22]
  reg [31:0] _RAND_25;
  wire  _T_33; // @[Conditional.scala 37:30]
  wire  _T_34; // @[linear.scala 73:12]
  wire  _T_35; // @[linear.scala 76:24]
  wire  _T_36; // @[linear.scala 77:37]
  wire [2:0] _T_39; // @[linear.scala 78:82]
  wire [31:0] _GEN_1; // @[linear.scala 78:35]
  wire [31:0] _GEN_2; // @[linear.scala 78:35]
  wire [31:0] _GEN_3; // @[linear.scala 78:35]
  wire [31:0] _GEN_4; // @[linear.scala 78:35]
  wire  _T_40; // @[linear.scala 78:35]
  wire  _T_42; // @[linear.scala 96:16]
  wire [1:0] _T_43;
  wire [31:0] _GEN_53; // @[linear.scala 99:28]
  wire [31:0] _GEN_56; // @[linear.scala 99:28]
  wire [31:0] _GEN_59; // @[linear.scala 99:28]
  wire  _T_44; // @[linear.scala 99:28]
  wire [5:0] _T_46; // @[linear.scala 100:30]
  wire [30:0] _T_47; // @[linear.scala 101:22]
  wire  _T_49; // @[linear.scala 103:32]
  wire [2:0] _T_52; // @[linear.scala 108:22]
  assign _T_33 = 1'h0 == state; // @[Conditional.scala 37:30]
  assign _T_34 = io_pause == 1'h0; // @[linear.scala 73:12]
  assign _T_35 = io_status != 2'h0; // @[linear.scala 76:24]
  assign _T_36 = io_input_eth_pactype == 2'h1; // @[linear.scala 77:37]
  assign _T_39 = io_input_eth_vlan - 3'h1; // @[linear.scala 78:82]
  assign _GEN_1 = 3'h1 == _T_39 ? 32'ha000101 : 32'ha010001; // @[linear.scala 78:35]
  assign _GEN_2 = 3'h2 == _T_39 ? 32'ha000201 : _GEN_1; // @[linear.scala 78:35]
  assign _GEN_3 = 3'h3 == _T_39 ? 32'ha000301 : _GEN_2; // @[linear.scala 78:35]
  assign _GEN_4 = 3'h4 == _T_39 ? 32'ha000401 : _GEN_3; // @[linear.scala 78:35]
  assign _T_40 = io_input_ip_dest == _GEN_4; // @[linear.scala 78:35]
  assign _T_42 = cnt == 3'h4; // @[linear.scala 96:16]
  assign _T_43 = cnt[1:0];
  assign _GEN_53 = 2'h1 == _T_43 ? 32'ha0002 : 32'ha0001; // @[linear.scala 99:28]
  assign _GEN_56 = 2'h2 == _T_43 ? 32'ha0003 : _GEN_53; // @[linear.scala 99:28]
  assign _GEN_59 = 2'h3 == _T_43 ? 32'ha0004 : _GEN_56; // @[linear.scala 99:28]
  assign _T_44 = shiftCnt != 6'h18; // @[linear.scala 99:28]
  assign _T_46 = shiftCnt - 6'h1; // @[linear.scala 100:30]
  assign _T_47 = addr[31:1]; // @[linear.scala 101:22]
  assign _T_49 = _GEN_59 == addr; // @[linear.scala 103:32]
  assign _T_52 = cnt + 3'h1; // @[linear.scala 108:22]
  assign io_stall = state; // @[linear.scala 69:12]
  assign io_output_packet_eth_dest = working_eth_dest; // @[linear.scala 62:20]
  assign io_output_packet_eth_sender = working_eth_sender; // @[linear.scala 62:20]
  assign io_output_packet_eth_pactype = working_eth_pactype; // @[linear.scala 62:20]
  assign io_output_packet_eth_vlan = working_eth_vlan; // @[linear.scala 62:20]
  assign io_output_packet_ip_version = working_ip_version; // @[linear.scala 62:20]
  assign io_output_packet_ip_ihl = working_ip_ihl; // @[linear.scala 62:20]
  assign io_output_packet_ip_dscp = working_ip_dscp; // @[linear.scala 62:20]
  assign io_output_packet_ip_ecn = working_ip_ecn; // @[linear.scala 62:20]
  assign io_output_packet_ip_len = working_ip_len; // @[linear.scala 62:20]
  assign io_output_packet_ip_id = working_ip_id; // @[linear.scala 62:20]
  assign io_output_packet_ip_flags = working_ip_flags; // @[linear.scala 62:20]
  assign io_output_packet_ip_foff = working_ip_foff; // @[linear.scala 62:20]
  assign io_output_packet_ip_ttl = working_ip_ttl; // @[linear.scala 62:20]
  assign io_output_packet_ip_proto = working_ip_proto; // @[linear.scala 62:20]
  assign io_output_packet_ip_chksum = working_ip_chksum; // @[linear.scala 62:20]
  assign io_output_packet_ip_src = working_ip_src; // @[linear.scala 62:20]
  assign io_output_packet_ip_dest = working_ip_dest; // @[linear.scala 62:20]
  assign io_output_packet_icmp_id = working_icmp_id; // @[linear.scala 62:20]
  assign io_output_packet_icmp_checksum = working_icmp_checksum; // @[linear.scala 62:20]
  assign io_output_packet_icmp_code = working_icmp_code; // @[linear.scala 62:20]
  assign io_output_packet_icmp_imcpType = working_icmp_imcpType; // @[linear.scala 62:20]
  assign io_outputStatus = status; // @[linear.scala 64:19]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  shiftCnt = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  working_eth_dest = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  working_eth_sender = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  working_eth_pactype = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  working_eth_vlan = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  working_ip_version = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  working_ip_ihl = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  working_ip_dscp = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  working_ip_ecn = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  working_ip_len = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  working_ip_id = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  working_ip_flags = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  working_ip_foff = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  working_ip_ttl = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  working_ip_proto = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  working_ip_chksum = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  working_ip_src = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  working_ip_dest = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  working_icmp_id = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  working_icmp_checksum = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  working_icmp_code = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  working_icmp_imcpType = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  addr = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  status = _RAND_24[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  state = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_40)) begin
              cnt <= 3'h0;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_42)) begin
        if (!(_T_44)) begin
          if (!(_T_49)) begin
            cnt <= _T_52;
          end
        end
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_40)) begin
              shiftCnt <= 6'h20;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_42)) begin
        if (_T_44) begin
          shiftCnt <= _T_46;
        end
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_eth_dest <= io_input_eth_dest;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_eth_sender <= io_input_eth_sender;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_version <= io_input_ip_version;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_len <= io_input_ip_len;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_id <= io_input_ip_id;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_src <= io_input_ip_src;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_ip_dest <= io_input_ip_dest;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_icmp_id <= io_input_icmp_id;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_icmp_checksum <= io_input_icmp_checksum;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_icmp_code <= io_input_icmp_code;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        working_icmp_imcpType <= io_input_icmp_imcpType;
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_40)) begin
              addr <= io_input_ip_dest;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_42)) begin
        if (_T_44) begin
          addr <= {{1'd0}, _T_47};
        end
      end
    end
    if (reset) begin
      status <= 2'h0;
    end else if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (_T_40) begin
              status <= 2'h2;
            end else begin
              status <= io_status;
            end
          end else begin
            status <= 2'h2;
          end
        end else begin
          status <= io_status;
        end
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_40)) begin
              state <= 1'h1;
            end
          end
        end
      end
    end else if (state) begin
      if (_T_42) begin
        state <= 1'h0;
      end else if (!(_T_44)) begin
        if (_T_49) begin
          state <= 1'h0;
        end
      end
    end
  end
endmodule
module ARPTable(
  input         clock,
  input         reset,
  input  [47:0] io_input_packet_eth_dest,
  input  [47:0] io_input_packet_eth_sender,
  input  [1:0]  io_input_packet_eth_pactype,
  input  [2:0]  io_input_packet_eth_vlan,
  input  [3:0]  io_input_packet_ip_version,
  input  [3:0]  io_input_packet_ip_ihl,
  input  [5:0]  io_input_packet_ip_dscp,
  input  [1:0]  io_input_packet_ip_ecn,
  input  [15:0] io_input_packet_ip_len,
  input  [15:0] io_input_packet_ip_id,
  input  [2:0]  io_input_packet_ip_flags,
  input  [12:0] io_input_packet_ip_foff,
  input  [7:0]  io_input_packet_ip_ttl,
  input  [7:0]  io_input_packet_ip_proto,
  input  [15:0] io_input_packet_ip_chksum,
  input  [31:0] io_input_packet_ip_src,
  input  [31:0] io_input_packet_ip_dest,
  input  [15:0] io_input_packet_icmp_id,
  input  [15:0] io_input_packet_icmp_checksum,
  input  [7:0]  io_input_packet_icmp_code,
  input  [7:0]  io_input_packet_icmp_imcpType,
  input  [1:0]  io_status,
  input         io_pause,
  output [47:0] io_output_packet_eth_dest,
  output [47:0] io_output_packet_eth_sender,
  output [1:0]  io_output_packet_eth_pactype,
  output [2:0]  io_output_packet_eth_vlan,
  output [3:0]  io_output_packet_ip_version,
  output [3:0]  io_output_packet_ip_ihl,
  output [5:0]  io_output_packet_ip_dscp,
  output [1:0]  io_output_packet_ip_ecn,
  output [15:0] io_output_packet_ip_len,
  output [15:0] io_output_packet_ip_id,
  output [2:0]  io_output_packet_ip_flags,
  output [12:0] io_output_packet_ip_foff,
  output [7:0]  io_output_packet_ip_ttl,
  output [7:0]  io_output_packet_ip_proto,
  output [15:0] io_output_packet_ip_chksum,
  output [31:0] io_output_packet_ip_src,
  output [31:0] io_output_packet_ip_dest,
  output [15:0] io_output_packet_icmp_id,
  output [15:0] io_output_packet_icmp_checksum,
  output [7:0]  io_output_packet_icmp_code,
  output [7:0]  io_output_packet_icmp_imcpType,
  output [1:0]  io_outputStatus
);
  reg [47:0] pipe_packet_eth_dest; // @[arp.scala 51:17]
  reg [63:0] _RAND_0;
  reg [47:0] pipe_packet_eth_sender; // @[arp.scala 51:17]
  reg [63:0] _RAND_1;
  reg [1:0] pipe_packet_eth_pactype; // @[arp.scala 51:17]
  reg [31:0] _RAND_2;
  reg [2:0] pipe_packet_eth_vlan; // @[arp.scala 51:17]
  reg [31:0] _RAND_3;
  reg [3:0] pipe_packet_ip_version; // @[arp.scala 51:17]
  reg [31:0] _RAND_4;
  reg [3:0] pipe_packet_ip_ihl; // @[arp.scala 51:17]
  reg [31:0] _RAND_5;
  reg [5:0] pipe_packet_ip_dscp; // @[arp.scala 51:17]
  reg [31:0] _RAND_6;
  reg [1:0] pipe_packet_ip_ecn; // @[arp.scala 51:17]
  reg [31:0] _RAND_7;
  reg [15:0] pipe_packet_ip_len; // @[arp.scala 51:17]
  reg [31:0] _RAND_8;
  reg [15:0] pipe_packet_ip_id; // @[arp.scala 51:17]
  reg [31:0] _RAND_9;
  reg [2:0] pipe_packet_ip_flags; // @[arp.scala 51:17]
  reg [31:0] _RAND_10;
  reg [12:0] pipe_packet_ip_foff; // @[arp.scala 51:17]
  reg [31:0] _RAND_11;
  reg [7:0] pipe_packet_ip_ttl; // @[arp.scala 51:17]
  reg [31:0] _RAND_12;
  reg [7:0] pipe_packet_ip_proto; // @[arp.scala 51:17]
  reg [31:0] _RAND_13;
  reg [15:0] pipe_packet_ip_chksum; // @[arp.scala 51:17]
  reg [31:0] _RAND_14;
  reg [31:0] pipe_packet_ip_src; // @[arp.scala 51:17]
  reg [31:0] _RAND_15;
  reg [31:0] pipe_packet_ip_dest; // @[arp.scala 51:17]
  reg [31:0] _RAND_16;
  reg [15:0] pipe_packet_icmp_id; // @[arp.scala 51:17]
  reg [31:0] _RAND_17;
  reg [15:0] pipe_packet_icmp_checksum; // @[arp.scala 51:17]
  reg [31:0] _RAND_18;
  reg [7:0] pipe_packet_icmp_code; // @[arp.scala 51:17]
  reg [31:0] _RAND_19;
  reg [7:0] pipe_packet_icmp_imcpType; // @[arp.scala 51:17]
  reg [31:0] _RAND_20;
  reg [1:0] pipeStatus; // @[arp.scala 52:27]
  reg [31:0] _RAND_21;
  wire  _T_144; // @[arp.scala 54:8]
  wire  _T_145; // @[arp.scala 60:20]
  assign _T_144 = io_pause == 1'h0; // @[arp.scala 54:8]
  assign _T_145 = io_status == 2'h1; // @[arp.scala 60:20]
  assign io_output_packet_eth_dest = pipe_packet_eth_dest; // @[arp.scala 71:13]
  assign io_output_packet_eth_sender = pipe_packet_eth_sender; // @[arp.scala 71:13]
  assign io_output_packet_eth_pactype = pipe_packet_eth_pactype; // @[arp.scala 71:13]
  assign io_output_packet_eth_vlan = pipe_packet_eth_vlan; // @[arp.scala 71:13]
  assign io_output_packet_ip_version = pipe_packet_ip_version; // @[arp.scala 71:13]
  assign io_output_packet_ip_ihl = pipe_packet_ip_ihl; // @[arp.scala 71:13]
  assign io_output_packet_ip_dscp = pipe_packet_ip_dscp; // @[arp.scala 71:13]
  assign io_output_packet_ip_ecn = pipe_packet_ip_ecn; // @[arp.scala 71:13]
  assign io_output_packet_ip_len = pipe_packet_ip_len; // @[arp.scala 71:13]
  assign io_output_packet_ip_id = pipe_packet_ip_id; // @[arp.scala 71:13]
  assign io_output_packet_ip_flags = pipe_packet_ip_flags; // @[arp.scala 71:13]
  assign io_output_packet_ip_foff = pipe_packet_ip_foff; // @[arp.scala 71:13]
  assign io_output_packet_ip_ttl = pipe_packet_ip_ttl; // @[arp.scala 71:13]
  assign io_output_packet_ip_proto = pipe_packet_ip_proto; // @[arp.scala 71:13]
  assign io_output_packet_ip_chksum = pipe_packet_ip_chksum; // @[arp.scala 71:13]
  assign io_output_packet_ip_src = pipe_packet_ip_src; // @[arp.scala 71:13]
  assign io_output_packet_ip_dest = pipe_packet_ip_dest; // @[arp.scala 71:13]
  assign io_output_packet_icmp_id = pipe_packet_icmp_id; // @[arp.scala 71:13]
  assign io_output_packet_icmp_checksum = pipe_packet_icmp_checksum; // @[arp.scala 71:13]
  assign io_output_packet_icmp_code = pipe_packet_icmp_code; // @[arp.scala 71:13]
  assign io_output_packet_icmp_imcpType = pipe_packet_icmp_imcpType; // @[arp.scala 71:13]
  assign io_outputStatus = pipeStatus; // @[arp.scala 70:19]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {2{`RANDOM}};
  pipe_packet_eth_dest = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  pipe_packet_eth_sender = _RAND_1[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  pipe_packet_eth_pactype = _RAND_2[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  pipe_packet_eth_vlan = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  pipe_packet_ip_version = _RAND_4[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  pipe_packet_ip_ihl = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  pipe_packet_ip_dscp = _RAND_6[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  pipe_packet_ip_ecn = _RAND_7[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  pipe_packet_ip_len = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  pipe_packet_ip_id = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  pipe_packet_ip_flags = _RAND_10[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  pipe_packet_ip_foff = _RAND_11[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  pipe_packet_ip_ttl = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  pipe_packet_ip_proto = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  pipe_packet_ip_chksum = _RAND_14[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  pipe_packet_ip_src = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  pipe_packet_ip_dest = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  pipe_packet_icmp_id = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  pipe_packet_icmp_checksum = _RAND_18[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  pipe_packet_icmp_code = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  pipe_packet_icmp_imcpType = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  pipeStatus = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_144) begin
      if (_T_145) begin
        pipe_packet_eth_dest <= 48'h0;
      end else begin
        pipe_packet_eth_dest <= io_input_packet_eth_dest;
      end
    end
    if (_T_144) begin
      if (_T_145) begin
        pipe_packet_eth_sender <= 48'h0;
      end else begin
        pipe_packet_eth_sender <= io_input_packet_eth_sender;
      end
    end
    if (_T_144) begin
      pipe_packet_eth_pactype <= io_input_packet_eth_pactype;
    end
    if (_T_144) begin
      if (_T_145) begin
        pipe_packet_eth_vlan <= 3'h0;
      end else begin
        pipe_packet_eth_vlan <= io_input_packet_eth_vlan;
      end
    end
    if (_T_144) begin
      pipe_packet_ip_version <= io_input_packet_ip_version;
    end
    if (_T_144) begin
      pipe_packet_ip_ihl <= io_input_packet_ip_ihl;
    end
    if (_T_144) begin
      pipe_packet_ip_dscp <= io_input_packet_ip_dscp;
    end
    if (_T_144) begin
      pipe_packet_ip_ecn <= io_input_packet_ip_ecn;
    end
    if (_T_144) begin
      pipe_packet_ip_len <= io_input_packet_ip_len;
    end
    if (_T_144) begin
      pipe_packet_ip_id <= io_input_packet_ip_id;
    end
    if (_T_144) begin
      pipe_packet_ip_flags <= io_input_packet_ip_flags;
    end
    if (_T_144) begin
      pipe_packet_ip_foff <= io_input_packet_ip_foff;
    end
    if (_T_144) begin
      pipe_packet_ip_ttl <= io_input_packet_ip_ttl;
    end
    if (_T_144) begin
      pipe_packet_ip_proto <= io_input_packet_ip_proto;
    end
    if (_T_144) begin
      pipe_packet_ip_chksum <= io_input_packet_ip_chksum;
    end
    if (_T_144) begin
      pipe_packet_ip_src <= io_input_packet_ip_src;
    end
    if (_T_144) begin
      pipe_packet_ip_dest <= io_input_packet_ip_dest;
    end
    if (_T_144) begin
      pipe_packet_icmp_id <= io_input_packet_icmp_id;
    end
    if (_T_144) begin
      pipe_packet_icmp_checksum <= io_input_packet_icmp_checksum;
    end
    if (_T_144) begin
      pipe_packet_icmp_code <= io_input_packet_icmp_code;
    end
    if (_T_144) begin
      pipe_packet_icmp_imcpType <= io_input_packet_icmp_imcpType;
    end
    if (reset) begin
      pipeStatus <= 2'h0;
    end else if (_T_144) begin
      pipeStatus <= io_status;
    end
  end
endmodule
module Encoder(
  input         clock,
  input         reset,
  input  [47:0] io_input_packet_eth_dest,
  input  [47:0] io_input_packet_eth_sender,
  input  [1:0]  io_input_packet_eth_pactype,
  input  [2:0]  io_input_packet_eth_vlan,
  input  [3:0]  io_input_packet_ip_version,
  input  [3:0]  io_input_packet_ip_ihl,
  input  [5:0]  io_input_packet_ip_dscp,
  input  [1:0]  io_input_packet_ip_ecn,
  input  [15:0] io_input_packet_ip_len,
  input  [15:0] io_input_packet_ip_id,
  input  [2:0]  io_input_packet_ip_flags,
  input  [12:0] io_input_packet_ip_foff,
  input  [7:0]  io_input_packet_ip_ttl,
  input  [7:0]  io_input_packet_ip_proto,
  input  [15:0] io_input_packet_ip_chksum,
  input  [31:0] io_input_packet_ip_src,
  input  [31:0] io_input_packet_ip_dest,
  input  [15:0] io_input_packet_icmp_id,
  input  [15:0] io_input_packet_icmp_checksum,
  input  [7:0]  io_input_packet_icmp_code,
  input  [7:0]  io_input_packet_icmp_imcpType,
  input  [1:0]  io_status,
  output        io_stall,
  input         io_pause,
  output        io_writer_clk,
  output        io_writer_en,
  output [7:0]  io_writer_data_data,
  output        io_writer_data_last,
  input         io_writer_full,
  output        io_payloadReader_clk,
  output        io_payloadReader_en,
  input  [7:0]  io_payloadReader_data_data,
  input         io_payloadReader_data_last,
  input         io_payloadReader_empty,
  output [7:0]  toAdapter_input,
  output        toAdapter_valid,
  output        toAdapter_last,
  input         toAdapter_stall
);
  reg [4:0] cnt; // @[encoder.scala 43:20]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[encoder.scala 49:22]
  reg [31:0] _RAND_1;
  reg [47:0] sending_packet_eth_dest; // @[encoder.scala 51:20]
  reg [63:0] _RAND_2;
  reg [47:0] sending_packet_eth_sender; // @[encoder.scala 51:20]
  reg [63:0] _RAND_3;
  reg [1:0] sending_packet_eth_pactype; // @[encoder.scala 51:20]
  reg [31:0] _RAND_4;
  reg [2:0] sending_packet_eth_vlan; // @[encoder.scala 51:20]
  reg [31:0] _RAND_5;
  reg [3:0] sending_packet_ip_version; // @[encoder.scala 51:20]
  reg [31:0] _RAND_6;
  reg [3:0] sending_packet_ip_ihl; // @[encoder.scala 51:20]
  reg [31:0] _RAND_7;
  reg [5:0] sending_packet_ip_dscp; // @[encoder.scala 51:20]
  reg [31:0] _RAND_8;
  reg [1:0] sending_packet_ip_ecn; // @[encoder.scala 51:20]
  reg [31:0] _RAND_9;
  reg [15:0] sending_packet_ip_len; // @[encoder.scala 51:20]
  reg [31:0] _RAND_10;
  reg [15:0] sending_packet_ip_id; // @[encoder.scala 51:20]
  reg [31:0] _RAND_11;
  reg [2:0] sending_packet_ip_flags; // @[encoder.scala 51:20]
  reg [31:0] _RAND_12;
  reg [12:0] sending_packet_ip_foff; // @[encoder.scala 51:20]
  reg [31:0] _RAND_13;
  reg [7:0] sending_packet_ip_ttl; // @[encoder.scala 51:20]
  reg [31:0] _RAND_14;
  reg [7:0] sending_packet_ip_proto; // @[encoder.scala 51:20]
  reg [31:0] _RAND_15;
  reg [15:0] sending_packet_ip_chksum; // @[encoder.scala 51:20]
  reg [31:0] _RAND_16;
  reg [31:0] sending_packet_ip_src; // @[encoder.scala 51:20]
  reg [31:0] _RAND_17;
  reg [31:0] sending_packet_ip_dest; // @[encoder.scala 51:20]
  reg [31:0] _RAND_18;
  reg [15:0] sending_packet_icmp_id; // @[encoder.scala 51:20]
  reg [31:0] _RAND_19;
  reg [15:0] sending_packet_icmp_checksum; // @[encoder.scala 51:20]
  reg [31:0] _RAND_20;
  reg [7:0] sending_packet_icmp_code; // @[encoder.scala 51:20]
  reg [31:0] _RAND_21;
  reg [7:0] sending_packet_icmp_imcpType; // @[encoder.scala 51:20]
  reg [31:0] _RAND_22;
  wire [108:0] _T_4; // @[encoder.scala 52:34]
  wire [159:0] _T_11; // @[encoder.scala 52:34]
  wire [7:0] ipView_0; // @[encoder.scala 52:49]
  wire [7:0] ipView_1; // @[encoder.scala 52:49]
  wire [7:0] ipView_2; // @[encoder.scala 52:49]
  wire [7:0] ipView_3; // @[encoder.scala 52:49]
  wire [7:0] ipView_4; // @[encoder.scala 52:49]
  wire [7:0] ipView_5; // @[encoder.scala 52:49]
  wire [7:0] ipView_6; // @[encoder.scala 52:49]
  wire [7:0] ipView_7; // @[encoder.scala 52:49]
  wire [7:0] ipView_8; // @[encoder.scala 52:49]
  wire [7:0] ipView_9; // @[encoder.scala 52:49]
  wire [7:0] ipView_10; // @[encoder.scala 52:49]
  wire [7:0] ipView_11; // @[encoder.scala 52:49]
  wire [7:0] ipView_12; // @[encoder.scala 52:49]
  wire [7:0] ipView_13; // @[encoder.scala 52:49]
  wire [7:0] ipView_14; // @[encoder.scala 52:49]
  wire [7:0] ipView_15; // @[encoder.scala 52:49]
  wire [7:0] ipView_16; // @[encoder.scala 52:49]
  wire [7:0] ipView_17; // @[encoder.scala 52:49]
  wire [7:0] ipView_18; // @[encoder.scala 52:49]
  wire [7:0] ipView_19; // @[encoder.scala 52:49]
  wire [47:0] _T_35; // @[encoder.scala 53:38]
  wire [7:0] icmpView_0; // @[encoder.scala 53:53]
  wire [7:0] icmpView_1; // @[encoder.scala 53:53]
  wire [7:0] icmpView_2; // @[encoder.scala 53:53]
  wire [7:0] icmpView_3; // @[encoder.scala 53:53]
  wire [7:0] icmpView_4; // @[encoder.scala 53:53]
  wire [7:0] icmpView_5; // @[encoder.scala 53:53]
  wire  _T_45; // @[pactype.scala 26:12]
  wire  _T_46; // @[pactype.scala 28:19]
  wire [15:0] _GEN_0; // @[pactype.scala 28:36]
  wire [15:0] _GEN_1; // @[pactype.scala 26:30]
  wire [7:0] _T_43; // @[eth.scala 17:18 eth.scala 17:18]
  wire [143:0] _T_50; // @[Cat.scala 29:58]
  wire [7:0] headerView_0; // @[eth.scala 21:44]
  wire [7:0] headerView_1; // @[eth.scala 21:44]
  wire [7:0] headerView_2; // @[eth.scala 21:44]
  wire [7:0] headerView_3; // @[eth.scala 21:44]
  wire [7:0] headerView_4; // @[eth.scala 21:44]
  wire [7:0] headerView_5; // @[eth.scala 21:44]
  wire [7:0] headerView_6; // @[eth.scala 21:44]
  wire [7:0] headerView_7; // @[eth.scala 21:44]
  wire [7:0] headerView_8; // @[eth.scala 21:44]
  wire [7:0] headerView_9; // @[eth.scala 21:44]
  wire [7:0] headerView_10; // @[eth.scala 21:44]
  wire [7:0] headerView_11; // @[eth.scala 21:44]
  wire [7:0] headerView_12; // @[eth.scala 21:44]
  wire [7:0] headerView_13; // @[eth.scala 21:44]
  wire [7:0] headerView_14; // @[eth.scala 21:44]
  wire [7:0] headerView_15; // @[eth.scala 21:44]
  wire [7:0] headerView_16; // @[eth.scala 21:44]
  wire [7:0] headerView_17; // @[eth.scala 21:44]
  wire [2:0] _T_72; // @[Conditional.scala 37:39]
  wire  _T_73; // @[Conditional.scala 37:30]
  wire  _T_74; // @[encoder.scala 70:12]
  wire  _T_75; // @[encoder.scala 70:35]
  wire  _T_76; // @[encoder.scala 70:22]
  wire  _T_78; // @[encoder.scala 74:41]
  wire  _T_79; // @[encoder.scala 74:28]
  wire  _T_82; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_59; // @[encoder.scala 83:27]
  wire [7:0] _GEN_60; // @[encoder.scala 83:27]
  wire [7:0] _GEN_61; // @[encoder.scala 83:27]
  wire [7:0] _GEN_62; // @[encoder.scala 83:27]
  wire [7:0] _GEN_63; // @[encoder.scala 83:27]
  wire [7:0] _GEN_64; // @[encoder.scala 83:27]
  wire [7:0] _GEN_65; // @[encoder.scala 83:27]
  wire [7:0] _GEN_66; // @[encoder.scala 83:27]
  wire [7:0] _GEN_67; // @[encoder.scala 83:27]
  wire [7:0] _GEN_68; // @[encoder.scala 83:27]
  wire [7:0] _GEN_69; // @[encoder.scala 83:27]
  wire [7:0] _GEN_70; // @[encoder.scala 83:27]
  wire [7:0] _GEN_71; // @[encoder.scala 83:27]
  wire [7:0] _GEN_72; // @[encoder.scala 83:27]
  wire [7:0] _GEN_73; // @[encoder.scala 83:27]
  wire [7:0] _GEN_74; // @[encoder.scala 83:27]
  wire [7:0] _GEN_75; // @[encoder.scala 83:27]
  wire  _T_85; // @[encoder.scala 86:12]
  wire  _T_86; // @[encoder.scala 87:18]
  wire [4:0] _T_88; // @[encoder.scala 88:22]
  wire  _T_90; // @[encoder.scala 91:17]
  wire  _T_91; // @[encoder.scala 91:17]
  wire  _T_92; // @[encoder.scala 91:17]
  wire  _T_95; // @[Conditional.scala 37:30]
  wire  _T_104; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_103; // @[encoder.scala 113:27]
  wire [7:0] _GEN_104; // @[encoder.scala 113:27]
  wire [7:0] _GEN_105; // @[encoder.scala 113:27]
  wire [7:0] _GEN_106; // @[encoder.scala 113:27]
  wire [7:0] _GEN_107; // @[encoder.scala 113:27]
  wire [7:0] _GEN_108; // @[encoder.scala 113:27]
  wire [7:0] _GEN_109; // @[encoder.scala 113:27]
  wire [7:0] _GEN_110; // @[encoder.scala 113:27]
  wire [7:0] _GEN_111; // @[encoder.scala 113:27]
  wire [7:0] _GEN_112; // @[encoder.scala 113:27]
  wire [7:0] _GEN_113; // @[encoder.scala 113:27]
  wire [7:0] _GEN_114; // @[encoder.scala 113:27]
  wire [7:0] _GEN_115; // @[encoder.scala 113:27]
  wire [7:0] _GEN_116; // @[encoder.scala 113:27]
  wire [7:0] _GEN_117; // @[encoder.scala 113:27]
  wire [7:0] _GEN_118; // @[encoder.scala 113:27]
  wire [7:0] _GEN_119; // @[encoder.scala 113:27]
  wire [7:0] _GEN_120; // @[encoder.scala 113:27]
  wire [7:0] _GEN_121; // @[encoder.scala 113:27]
  wire  _T_111; // @[encoder.scala 121:41]
  wire  _T_114; // @[Conditional.scala 37:30]
  wire [2:0] _T_116;
  wire [7:0] _GEN_129; // @[encoder.scala 132:27]
  wire [7:0] _GEN_130; // @[encoder.scala 132:27]
  wire [7:0] _GEN_131; // @[encoder.scala 132:27]
  wire [7:0] _GEN_132; // @[encoder.scala 132:27]
  wire [7:0] _GEN_133; // @[encoder.scala 132:27]
  wire  _T_123; // @[Conditional.scala 37:30]
  wire  _T_124; // @[encoder.scala 147:23]
  wire  _T_126; // @[encoder.scala 147:48]
  wire  _T_127; // @[encoder.scala 151:39]
  wire  _T_130; // @[Conditional.scala 37:30]
  wire  _T_133; // @[encoder.scala 160:57]
  wire  _T_134; // @[encoder.scala 160:54]
  wire  _T_135; // @[encoder.scala 162:39]
  wire  _T_138; // @[Conditional.scala 37:30]
  wire  _GEN_144; // @[Conditional.scala 39:67]
  wire  _GEN_146; // @[Conditional.scala 39:67]
  wire  _GEN_148; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_149; // @[Conditional.scala 39:67]
  wire  _GEN_150; // @[Conditional.scala 39:67]
  wire  _GEN_151; // @[Conditional.scala 39:67]
  wire  _GEN_154; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_156; // @[Conditional.scala 39:67]
  wire  _GEN_157; // @[Conditional.scala 39:67]
  wire  _GEN_158; // @[Conditional.scala 39:67]
  wire  _GEN_161; // @[Conditional.scala 39:67]
  wire  _GEN_163; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_165; // @[Conditional.scala 39:67]
  wire  _GEN_166; // @[Conditional.scala 39:67]
  wire  _GEN_167; // @[Conditional.scala 39:67]
  wire  _GEN_170; // @[Conditional.scala 39:67]
  wire  _GEN_172; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_174; // @[Conditional.scala 39:67]
  wire  _GEN_175; // @[Conditional.scala 39:67]
  wire  _GEN_178; // @[Conditional.scala 39:67]
  wire  _GEN_179; // @[Conditional.scala 39:67]
  wire  _GEN_181; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_183; // @[Conditional.scala 39:67]
  wire  _GEN_184; // @[Conditional.scala 39:67]
  wire  _GEN_187; // @[Conditional.scala 39:67]
  wire  _GEN_188; // @[Conditional.scala 39:67]
  wire  _GEN_190; // @[Conditional.scala 39:67]
  wire  _GEN_227; // @[encoder.scala 91:17]
  wire  _GEN_228; // @[encoder.scala 91:17]
  wire  _GEN_229; // @[encoder.scala 91:17]
  wire  _GEN_230; // @[encoder.scala 91:17]
  wire  _GEN_231; // @[encoder.scala 91:17]
  assign _T_4 = {sending_packet_ip_foff,sending_packet_ip_ttl,sending_packet_ip_proto,sending_packet_ip_chksum,sending_packet_ip_src,sending_packet_ip_dest}; // @[encoder.scala 52:34]
  assign _T_11 = {sending_packet_ip_version,sending_packet_ip_ihl,sending_packet_ip_dscp,sending_packet_ip_ecn,sending_packet_ip_len,sending_packet_ip_id,sending_packet_ip_flags,_T_4}; // @[encoder.scala 52:34]
  assign ipView_0 = _T_11[7:0]; // @[encoder.scala 52:49]
  assign ipView_1 = _T_11[15:8]; // @[encoder.scala 52:49]
  assign ipView_2 = _T_11[23:16]; // @[encoder.scala 52:49]
  assign ipView_3 = _T_11[31:24]; // @[encoder.scala 52:49]
  assign ipView_4 = _T_11[39:32]; // @[encoder.scala 52:49]
  assign ipView_5 = _T_11[47:40]; // @[encoder.scala 52:49]
  assign ipView_6 = _T_11[55:48]; // @[encoder.scala 52:49]
  assign ipView_7 = _T_11[63:56]; // @[encoder.scala 52:49]
  assign ipView_8 = _T_11[71:64]; // @[encoder.scala 52:49]
  assign ipView_9 = _T_11[79:72]; // @[encoder.scala 52:49]
  assign ipView_10 = _T_11[87:80]; // @[encoder.scala 52:49]
  assign ipView_11 = _T_11[95:88]; // @[encoder.scala 52:49]
  assign ipView_12 = _T_11[103:96]; // @[encoder.scala 52:49]
  assign ipView_13 = _T_11[111:104]; // @[encoder.scala 52:49]
  assign ipView_14 = _T_11[119:112]; // @[encoder.scala 52:49]
  assign ipView_15 = _T_11[127:120]; // @[encoder.scala 52:49]
  assign ipView_16 = _T_11[135:128]; // @[encoder.scala 52:49]
  assign ipView_17 = _T_11[143:136]; // @[encoder.scala 52:49]
  assign ipView_18 = _T_11[151:144]; // @[encoder.scala 52:49]
  assign ipView_19 = _T_11[159:152]; // @[encoder.scala 52:49]
  assign _T_35 = {sending_packet_icmp_id,sending_packet_icmp_checksum,sending_packet_icmp_code,sending_packet_icmp_imcpType}; // @[encoder.scala 53:38]
  assign icmpView_0 = _T_35[7:0]; // @[encoder.scala 53:53]
  assign icmpView_1 = _T_35[15:8]; // @[encoder.scala 53:53]
  assign icmpView_2 = _T_35[23:16]; // @[encoder.scala 53:53]
  assign icmpView_3 = _T_35[31:24]; // @[encoder.scala 53:53]
  assign icmpView_4 = _T_35[39:32]; // @[encoder.scala 53:53]
  assign icmpView_5 = _T_35[47:40]; // @[encoder.scala 53:53]
  assign _T_45 = sending_packet_eth_pactype == 2'h1; // @[pactype.scala 26:12]
  assign _T_46 = sending_packet_eth_pactype == 2'h2; // @[pactype.scala 28:19]
  assign _GEN_0 = _T_46 ? 16'h806 : 16'h0; // @[pactype.scala 28:36]
  assign _GEN_1 = _T_45 ? 16'h800 : _GEN_0; // @[pactype.scala 26:30]
  assign _T_43 = {{5'd0}, sending_packet_eth_vlan}; // @[eth.scala 17:18 eth.scala 17:18]
  assign _T_50 = {sending_packet_eth_dest,sending_packet_eth_sender,24'h810000,_T_43,_GEN_1}; // @[Cat.scala 29:58]
  assign headerView_0 = _T_50[7:0]; // @[eth.scala 21:44]
  assign headerView_1 = _T_50[15:8]; // @[eth.scala 21:44]
  assign headerView_2 = _T_50[23:16]; // @[eth.scala 21:44]
  assign headerView_3 = _T_50[31:24]; // @[eth.scala 21:44]
  assign headerView_4 = _T_50[39:32]; // @[eth.scala 21:44]
  assign headerView_5 = _T_50[47:40]; // @[eth.scala 21:44]
  assign headerView_6 = _T_50[55:48]; // @[eth.scala 21:44]
  assign headerView_7 = _T_50[63:56]; // @[eth.scala 21:44]
  assign headerView_8 = _T_50[71:64]; // @[eth.scala 21:44]
  assign headerView_9 = _T_50[79:72]; // @[eth.scala 21:44]
  assign headerView_10 = _T_50[87:80]; // @[eth.scala 21:44]
  assign headerView_11 = _T_50[95:88]; // @[eth.scala 21:44]
  assign headerView_12 = _T_50[103:96]; // @[eth.scala 21:44]
  assign headerView_13 = _T_50[111:104]; // @[eth.scala 21:44]
  assign headerView_14 = _T_50[119:112]; // @[eth.scala 21:44]
  assign headerView_15 = _T_50[127:120]; // @[eth.scala 21:44]
  assign headerView_16 = _T_50[135:128]; // @[eth.scala 21:44]
  assign headerView_17 = _T_50[143:136]; // @[eth.scala 21:44]
  assign _T_72 = $unsigned(state); // @[Conditional.scala 37:39]
  assign _T_73 = 3'h0 == _T_72; // @[Conditional.scala 37:30]
  assign _T_74 = io_pause == 1'h0; // @[encoder.scala 70:12]
  assign _T_75 = io_status == 2'h1; // @[encoder.scala 70:35]
  assign _T_76 = _T_74 & _T_75; // @[encoder.scala 70:22]
  assign _T_78 = io_status == 2'h2; // @[encoder.scala 74:41]
  assign _T_79 = _T_74 & _T_78; // @[encoder.scala 74:28]
  assign _T_82 = 3'h1 == _T_72; // @[Conditional.scala 37:30]
  assign _GEN_59 = 5'h1 == cnt ? headerView_1 : headerView_0; // @[encoder.scala 83:27]
  assign _GEN_60 = 5'h2 == cnt ? headerView_2 : _GEN_59; // @[encoder.scala 83:27]
  assign _GEN_61 = 5'h3 == cnt ? headerView_3 : _GEN_60; // @[encoder.scala 83:27]
  assign _GEN_62 = 5'h4 == cnt ? headerView_4 : _GEN_61; // @[encoder.scala 83:27]
  assign _GEN_63 = 5'h5 == cnt ? headerView_5 : _GEN_62; // @[encoder.scala 83:27]
  assign _GEN_64 = 5'h6 == cnt ? headerView_6 : _GEN_63; // @[encoder.scala 83:27]
  assign _GEN_65 = 5'h7 == cnt ? headerView_7 : _GEN_64; // @[encoder.scala 83:27]
  assign _GEN_66 = 5'h8 == cnt ? headerView_8 : _GEN_65; // @[encoder.scala 83:27]
  assign _GEN_67 = 5'h9 == cnt ? headerView_9 : _GEN_66; // @[encoder.scala 83:27]
  assign _GEN_68 = 5'ha == cnt ? headerView_10 : _GEN_67; // @[encoder.scala 83:27]
  assign _GEN_69 = 5'hb == cnt ? headerView_11 : _GEN_68; // @[encoder.scala 83:27]
  assign _GEN_70 = 5'hc == cnt ? headerView_12 : _GEN_69; // @[encoder.scala 83:27]
  assign _GEN_71 = 5'hd == cnt ? headerView_13 : _GEN_70; // @[encoder.scala 83:27]
  assign _GEN_72 = 5'he == cnt ? headerView_14 : _GEN_71; // @[encoder.scala 83:27]
  assign _GEN_73 = 5'hf == cnt ? headerView_15 : _GEN_72; // @[encoder.scala 83:27]
  assign _GEN_74 = 5'h10 == cnt ? headerView_16 : _GEN_73; // @[encoder.scala 83:27]
  assign _GEN_75 = 5'h11 == cnt ? headerView_17 : _GEN_74; // @[encoder.scala 83:27]
  assign _T_85 = io_writer_full == 1'h0; // @[encoder.scala 86:12]
  assign _T_86 = cnt > 5'h0; // @[encoder.scala 87:18]
  assign _T_88 = cnt - 5'h1; // @[encoder.scala 88:22]
  assign _T_90 = $unsigned(reset); // @[encoder.scala 91:17]
  assign _T_91 = _T_45 | _T_90; // @[encoder.scala 91:17]
  assign _T_92 = _T_91 == 1'h0; // @[encoder.scala 91:17]
  assign _T_95 = 3'h6 == _T_72; // @[Conditional.scala 37:30]
  assign _T_104 = 3'h2 == _T_72; // @[Conditional.scala 37:30]
  assign _GEN_103 = 5'h1 == cnt ? ipView_1 : ipView_0; // @[encoder.scala 113:27]
  assign _GEN_104 = 5'h2 == cnt ? ipView_2 : _GEN_103; // @[encoder.scala 113:27]
  assign _GEN_105 = 5'h3 == cnt ? ipView_3 : _GEN_104; // @[encoder.scala 113:27]
  assign _GEN_106 = 5'h4 == cnt ? ipView_4 : _GEN_105; // @[encoder.scala 113:27]
  assign _GEN_107 = 5'h5 == cnt ? ipView_5 : _GEN_106; // @[encoder.scala 113:27]
  assign _GEN_108 = 5'h6 == cnt ? ipView_6 : _GEN_107; // @[encoder.scala 113:27]
  assign _GEN_109 = 5'h7 == cnt ? ipView_7 : _GEN_108; // @[encoder.scala 113:27]
  assign _GEN_110 = 5'h8 == cnt ? ipView_8 : _GEN_109; // @[encoder.scala 113:27]
  assign _GEN_111 = 5'h9 == cnt ? ipView_9 : _GEN_110; // @[encoder.scala 113:27]
  assign _GEN_112 = 5'ha == cnt ? ipView_10 : _GEN_111; // @[encoder.scala 113:27]
  assign _GEN_113 = 5'hb == cnt ? ipView_11 : _GEN_112; // @[encoder.scala 113:27]
  assign _GEN_114 = 5'hc == cnt ? ipView_12 : _GEN_113; // @[encoder.scala 113:27]
  assign _GEN_115 = 5'hd == cnt ? ipView_13 : _GEN_114; // @[encoder.scala 113:27]
  assign _GEN_116 = 5'he == cnt ? ipView_14 : _GEN_115; // @[encoder.scala 113:27]
  assign _GEN_117 = 5'hf == cnt ? ipView_15 : _GEN_116; // @[encoder.scala 113:27]
  assign _GEN_118 = 5'h10 == cnt ? ipView_16 : _GEN_117; // @[encoder.scala 113:27]
  assign _GEN_119 = 5'h11 == cnt ? ipView_17 : _GEN_118; // @[encoder.scala 113:27]
  assign _GEN_120 = 5'h12 == cnt ? ipView_18 : _GEN_119; // @[encoder.scala 113:27]
  assign _GEN_121 = 5'h13 == cnt ? ipView_19 : _GEN_120; // @[encoder.scala 113:27]
  assign _T_111 = sending_packet_ip_proto == 8'h1; // @[encoder.scala 121:41]
  assign _T_114 = 3'h3 == _T_72; // @[Conditional.scala 37:30]
  assign _T_116 = cnt[2:0];
  assign _GEN_129 = 3'h1 == _T_116 ? icmpView_1 : icmpView_0; // @[encoder.scala 132:27]
  assign _GEN_130 = 3'h2 == _T_116 ? icmpView_2 : _GEN_129; // @[encoder.scala 132:27]
  assign _GEN_131 = 3'h3 == _T_116 ? icmpView_3 : _GEN_130; // @[encoder.scala 132:27]
  assign _GEN_132 = 3'h4 == _T_116 ? icmpView_4 : _GEN_131; // @[encoder.scala 132:27]
  assign _GEN_133 = 3'h5 == _T_116 ? icmpView_5 : _GEN_132; // @[encoder.scala 132:27]
  assign _T_123 = 3'h4 == _T_72; // @[Conditional.scala 37:30]
  assign _T_124 = io_payloadReader_empty == 1'h0; // @[encoder.scala 147:23]
  assign _T_126 = _T_124 & _T_85; // @[encoder.scala 147:48]
  assign _T_127 = io_payloadReader_data_last & _T_126; // @[encoder.scala 151:39]
  assign _T_130 = 3'h7 == _T_72; // @[Conditional.scala 37:30]
  assign _T_133 = toAdapter_stall == 1'h0; // @[encoder.scala 160:57]
  assign _T_134 = _T_124 & _T_133; // @[encoder.scala 160:54]
  assign _T_135 = io_payloadReader_data_last & io_payloadReader_en; // @[encoder.scala 162:39]
  assign _T_138 = 3'h5 == _T_72; // @[Conditional.scala 37:30]
  assign _GEN_144 = _T_130 & _T_124; // @[Conditional.scala 39:67]
  assign _GEN_146 = _T_130 ? _T_134 : _T_138; // @[Conditional.scala 39:67]
  assign _GEN_148 = _T_123 & io_payloadReader_data_last; // @[Conditional.scala 39:67]
  assign _GEN_149 = _T_123 ? io_payloadReader_data_data : 8'h0; // @[Conditional.scala 39:67]
  assign _GEN_150 = _T_123 & _T_126; // @[Conditional.scala 39:67]
  assign _GEN_151 = _T_123 ? _T_126 : _GEN_146; // @[Conditional.scala 39:67]
  assign _GEN_154 = _T_123 ? 1'h0 : _GEN_144; // @[Conditional.scala 39:67]
  assign _GEN_156 = _T_114 ? _GEN_133 : _GEN_149; // @[Conditional.scala 39:67]
  assign _GEN_157 = _T_114 ? 1'h0 : _GEN_148; // @[Conditional.scala 39:67]
  assign _GEN_158 = _T_114 | _GEN_150; // @[Conditional.scala 39:67]
  assign _GEN_161 = _T_114 ? 1'h0 : _GEN_151; // @[Conditional.scala 39:67]
  assign _GEN_163 = _T_114 ? 1'h0 : _GEN_154; // @[Conditional.scala 39:67]
  assign _GEN_165 = _T_104 ? _GEN_121 : _GEN_156; // @[Conditional.scala 39:67]
  assign _GEN_166 = _T_104 ? 1'h0 : _GEN_157; // @[Conditional.scala 39:67]
  assign _GEN_167 = _T_104 | _GEN_158; // @[Conditional.scala 39:67]
  assign _GEN_170 = _T_104 ? 1'h0 : _GEN_161; // @[Conditional.scala 39:67]
  assign _GEN_172 = _T_104 ? 1'h0 : _GEN_163; // @[Conditional.scala 39:67]
  assign _GEN_174 = _T_95 ? _GEN_75 : _GEN_165; // @[Conditional.scala 39:67]
  assign _GEN_175 = _T_95 | _GEN_167; // @[Conditional.scala 39:67]
  assign _GEN_178 = _T_95 ? 1'h0 : _GEN_166; // @[Conditional.scala 39:67]
  assign _GEN_179 = _T_95 ? 1'h0 : _GEN_170; // @[Conditional.scala 39:67]
  assign _GEN_181 = _T_95 ? 1'h0 : _GEN_172; // @[Conditional.scala 39:67]
  assign _GEN_183 = _T_82 ? _GEN_75 : _GEN_174; // @[Conditional.scala 39:67]
  assign _GEN_184 = _T_82 | _GEN_175; // @[Conditional.scala 39:67]
  assign _GEN_187 = _T_82 ? 1'h0 : _GEN_178; // @[Conditional.scala 39:67]
  assign _GEN_188 = _T_82 ? 1'h0 : _GEN_179; // @[Conditional.scala 39:67]
  assign _GEN_190 = _T_82 ? 1'h0 : _GEN_181; // @[Conditional.scala 39:67]
  assign io_stall = state != 3'h0; // @[encoder.scala 173:12]
  assign io_writer_clk = clock; // @[encoder.scala 62:17]
  assign io_writer_en = _T_73 ? 1'h0 : _GEN_184; // @[encoder.scala 61:16 encoder.scala 84:20 encoder.scala 101:20 encoder.scala 115:20 encoder.scala 134:20 encoder.scala 148:20]
  assign io_writer_data_data = _T_73 ? 8'h0 : _GEN_183; // @[encoder.scala 60:23 encoder.scala 83:27 encoder.scala 100:27 encoder.scala 113:27 encoder.scala 132:27 encoder.scala 146:22]
  assign io_writer_data_last = _T_73 ? 1'h0 : _GEN_187; // @[encoder.scala 59:23 encoder.scala 114:27 encoder.scala 133:27 encoder.scala 146:22]
  assign io_payloadReader_clk = clock; // @[encoder.scala 56:24]
  assign io_payloadReader_en = _T_73 ? 1'h0 : _GEN_188; // @[encoder.scala 57:23 encoder.scala 149:27 encoder.scala 160:27 encoder.scala 168:27]
  assign toAdapter_input = io_payloadReader_data_data; // @[encoder.scala 157:23]
  assign toAdapter_valid = _T_73 ? 1'h0 : _GEN_190; // @[encoder.scala 66:19 encoder.scala 158:23]
  assign toAdapter_last = io_payloadReader_data_last; // @[encoder.scala 159:22]
  assign _GEN_227 = _T_73 == 1'h0; // @[encoder.scala 91:17]
  assign _GEN_228 = _GEN_227 & _T_82; // @[encoder.scala 91:17]
  assign _GEN_229 = _GEN_228 & _T_85; // @[encoder.scala 91:17]
  assign _GEN_230 = _T_86 == 1'h0; // @[encoder.scala 91:17]
  assign _GEN_231 = _GEN_229 & _GEN_230; // @[encoder.scala 91:17]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt = _RAND_0[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  sending_packet_eth_dest = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  sending_packet_eth_sender = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sending_packet_eth_pactype = _RAND_4[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sending_packet_eth_vlan = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sending_packet_ip_version = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  sending_packet_ip_ihl = _RAND_7[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  sending_packet_ip_dscp = _RAND_8[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  sending_packet_ip_ecn = _RAND_9[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  sending_packet_ip_len = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  sending_packet_ip_id = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  sending_packet_ip_flags = _RAND_12[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  sending_packet_ip_foff = _RAND_13[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  sending_packet_ip_ttl = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  sending_packet_ip_proto = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  sending_packet_ip_chksum = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  sending_packet_ip_src = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  sending_packet_ip_dest = _RAND_18[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  sending_packet_icmp_id = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sending_packet_icmp_checksum = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sending_packet_icmp_code = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  sending_packet_icmp_imcpType = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 5'h0;
    end else if (_T_73) begin
      if (_T_76) begin
        cnt <= 5'h11;
      end else if (_T_79) begin
        cnt <= 5'h11;
      end
    end else if (_T_82) begin
      if (_T_85) begin
        if (_T_86) begin
          cnt <= _T_88;
        end else begin
          cnt <= 5'h13;
        end
      end
    end else if (_T_95) begin
      if (_T_85) begin
        if (_T_86) begin
          cnt <= _T_88;
        end
      end
    end else if (_T_104) begin
      if (_T_85) begin
        if (_T_86) begin
          cnt <= _T_88;
        end else if (_T_111) begin
          cnt <= 5'h5;
        end
      end
    end else if (_T_114) begin
      if (_T_85) begin
        if (_T_86) begin
          cnt <= _T_88;
        end
      end
    end
    if (reset) begin
      state <= 3'h0;
    end else if (_T_73) begin
      if (_T_76) begin
        state <= 3'h0;
      end else if (_T_79) begin
        state <= 3'h6;
      end
    end else if (_T_82) begin
      if (_T_85) begin
        if (!(_T_86)) begin
          state <= 3'h2;
        end
      end
    end else if (_T_95) begin
      if (_T_85) begin
        if (!(_T_86)) begin
          state <= 3'h7;
        end
      end
    end else if (_T_104) begin
      if (_T_85) begin
        if (!(_T_86)) begin
          if (_T_111) begin
            state <= 3'h3;
          end else begin
            state <= 3'h4;
          end
        end
      end
    end else if (_T_114) begin
      if (_T_85) begin
        if (!(_T_86)) begin
          state <= 3'h4;
        end
      end
    end else if (_T_123) begin
      if (_T_127) begin
        state <= 3'h0;
      end
    end else if (_T_130) begin
      if (_T_135) begin
        state <= 3'h0;
      end
    end else if (_T_138) begin
      if (io_payloadReader_data_last) begin
        state <= 3'h0;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_eth_dest <= io_input_packet_eth_dest;
      end else if (_T_79) begin
        sending_packet_eth_dest <= io_input_packet_eth_dest;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_eth_sender <= io_input_packet_eth_sender;
      end else if (_T_79) begin
        sending_packet_eth_sender <= io_input_packet_eth_sender;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_eth_pactype <= io_input_packet_eth_pactype;
      end else if (_T_79) begin
        sending_packet_eth_pactype <= io_input_packet_eth_pactype;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_eth_vlan <= io_input_packet_eth_vlan;
      end else if (_T_79) begin
        sending_packet_eth_vlan <= io_input_packet_eth_vlan;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_version <= io_input_packet_ip_version;
      end else if (_T_79) begin
        sending_packet_ip_version <= io_input_packet_ip_version;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_ihl <= io_input_packet_ip_ihl;
      end else if (_T_79) begin
        sending_packet_ip_ihl <= io_input_packet_ip_ihl;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_dscp <= io_input_packet_ip_dscp;
      end else if (_T_79) begin
        sending_packet_ip_dscp <= io_input_packet_ip_dscp;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_ecn <= io_input_packet_ip_ecn;
      end else if (_T_79) begin
        sending_packet_ip_ecn <= io_input_packet_ip_ecn;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_len <= io_input_packet_ip_len;
      end else if (_T_79) begin
        sending_packet_ip_len <= io_input_packet_ip_len;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_id <= io_input_packet_ip_id;
      end else if (_T_79) begin
        sending_packet_ip_id <= io_input_packet_ip_id;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_flags <= io_input_packet_ip_flags;
      end else if (_T_79) begin
        sending_packet_ip_flags <= io_input_packet_ip_flags;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_foff <= io_input_packet_ip_foff;
      end else if (_T_79) begin
        sending_packet_ip_foff <= io_input_packet_ip_foff;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_ttl <= io_input_packet_ip_ttl;
      end else if (_T_79) begin
        sending_packet_ip_ttl <= io_input_packet_ip_ttl;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_proto <= io_input_packet_ip_proto;
      end else if (_T_79) begin
        sending_packet_ip_proto <= io_input_packet_ip_proto;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_chksum <= io_input_packet_ip_chksum;
      end else if (_T_79) begin
        sending_packet_ip_chksum <= io_input_packet_ip_chksum;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_src <= io_input_packet_ip_src;
      end else if (_T_79) begin
        sending_packet_ip_src <= io_input_packet_ip_src;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_ip_dest <= io_input_packet_ip_dest;
      end else if (_T_79) begin
        sending_packet_ip_dest <= io_input_packet_ip_dest;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_icmp_id <= io_input_packet_icmp_id;
      end else if (_T_79) begin
        sending_packet_icmp_id <= io_input_packet_icmp_id;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_icmp_checksum <= io_input_packet_icmp_checksum;
      end else if (_T_79) begin
        sending_packet_icmp_checksum <= io_input_packet_icmp_checksum;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_icmp_code <= io_input_packet_icmp_code;
      end else if (_T_79) begin
        sending_packet_icmp_code <= io_input_packet_icmp_code;
      end
    end
    if (_T_73) begin
      if (_T_76) begin
        sending_packet_icmp_imcpType <= io_input_packet_icmp_imcpType;
      end else if (_T_79) begin
        sending_packet_icmp_imcpType <= io_input_packet_icmp_imcpType;
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_231 & _T_92) begin
          $fwrite(32'h80000002,"Assertion failed\n    at encoder.scala:91 assert(sending.packet.eth.pactype === PacType.ipv4)\n"); // @[encoder.scala 91:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_231 & _T_92) begin
          $fatal; // @[encoder.scala 91:17]
        end
    `ifdef STOP_COND
      end
    `endif
    `endif // SYNTHESIS
  end
endmodule
module Adapter(
  input         clock,
  input         reset,
  output        toBuf_clk,
  output [31:0] toBuf_addr,
  output [7:0]  toBuf_din,
  input  [7:0]  toBuf_dout,
  output        toBuf_we,
  input  [7:0]  fromExec_input,
  input         fromExec_valid,
  input         fromExec_last,
  output        fromExec_stall
);
  reg [2:0] state; // @[adapter.scala 51:22]
  reg [31:0] _RAND_0;
  reg [2:0] head; // @[adapter.scala 56:21]
  reg [31:0] _RAND_1;
  reg [2:0] tail; // @[adapter.scala 57:21]
  reg [31:0] _RAND_2;
  reg  dropping; // @[adapter.scala 68:25]
  reg [31:0] _RAND_3;
  reg [10:0] cnt; // @[adapter.scala 70:20]
  reg [31:0] _RAND_4;
  reg [2:0] transferState; // @[adapter.scala 77:30]
  reg [31:0] _RAND_5;
  wire [2:0] _T_1; // @[Conditional.scala 37:39]
  wire  _T_2; // @[Conditional.scala 37:30]
  wire  _T_5; // @[Conditional.scala 37:30]
  wire  _T_7; // @[adapter.scala 90:23]
  wire [13:0] _T_8; // @[adapter.scala 97:23]
  wire [13:0] _GEN_1; // @[adapter.scala 90:53]
  wire  _T_11; // @[Conditional.scala 37:30]
  wire [13:0] _T_14; // @[adapter.scala 105:23]
  wire  _T_15; // @[adapter.scala 107:36]
  wire  _T_16; // @[adapter.scala 107:33]
  wire  _T_17; // @[adapter.scala 60:13]
  wire [2:0] _T_19; // @[adapter.scala 60:53]
  wire [2:0] _T_20; // @[adapter.scala 60:8]
  wire  _T_21; // @[adapter.scala 108:25]
  wire [1:0] _GEN_4; // @[adapter.scala 108:35]
  wire [1:0] _GEN_9; // @[adapter.scala 107:47]
  wire [13:0] _GEN_16; // @[adapter.scala 102:53]
  wire  _T_23; // @[adapter.scala 123:23]
  wire  _T_24; // @[adapter.scala 124:19]
  wire  _T_25; // @[adapter.scala 60:13]
  wire [2:0] _T_27; // @[adapter.scala 60:53]
  wire  _T_31; // @[Conditional.scala 37:30]
  wire [2:0] _T_33; // @[Conditional.scala 37:39]
  wire  _T_34; // @[Conditional.scala 37:30]
  wire [13:0] _T_35; // @[adapter.scala 133:25]
  wire [10:0] _T_37; // @[adapter.scala 139:24]
  wire  _T_40; // @[Conditional.scala 37:30]
  wire [13:0] _T_41; // @[adapter.scala 148:25]
  wire [7:0] _T_42; // @[adapter.scala 150:27]
  wire  _T_45; // @[Conditional.scala 37:30]
  wire [13:0] _T_48; // @[adapter.scala 155:38]
  wire [2:0] _T_49; // @[adapter.scala 157:28]
  wire  _T_52; // @[Conditional.scala 37:30]
  wire [13:0] _T_53; // @[adapter.scala 162:25]
  wire  _T_57; // @[Conditional.scala 37:30]
  wire [13:0] _GEN_29; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_35; // @[Conditional.scala 39:67]
  wire  _GEN_36; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_37; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_41; // @[Conditional.scala 39:67]
  wire  _GEN_42; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_43; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_47; // @[Conditional.scala 40:58]
  wire  _GEN_49; // @[Conditional.scala 40:58]
  wire  _GEN_50; // @[Conditional.scala 40:58]
  wire  _GEN_57; // @[Conditional.scala 39:67]
  wire  _GEN_58; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_65; // @[Conditional.scala 39:67]
  wire  _GEN_71; // @[Conditional.scala 39:67]
  wire  _GEN_72; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_75; // @[Conditional.scala 39:67]
  wire  _GEN_82; // @[Conditional.scala 39:67]
  wire  _GEN_83; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_86; // @[Conditional.scala 40:58]
  wire  _GEN_93; // @[Conditional.scala 40:58]
  wire  _T_62; // @[adapter.scala 182:25]
  assign _T_1 = $unsigned(state); // @[Conditional.scala 37:39]
  assign _T_2 = 3'h0 == _T_1; // @[Conditional.scala 37:30]
  assign _T_5 = 3'h2 == _T_1; // @[Conditional.scala 37:30]
  assign _T_7 = toBuf_dout == 8'h2; // @[adapter.scala 90:23]
  assign _T_8 = {head,11'h7ff}; // @[adapter.scala 97:23]
  assign _GEN_1 = _T_7 ? 14'h0 : _T_8; // @[adapter.scala 90:53]
  assign _T_11 = 3'h1 == _T_1; // @[Conditional.scala 37:30]
  assign _T_14 = {head, 11'h0}; // @[adapter.scala 105:23]
  assign _T_15 = dropping == 1'h0; // @[adapter.scala 107:36]
  assign _T_16 = fromExec_valid & _T_15; // @[adapter.scala 107:33]
  assign _T_17 = tail == 3'h7; // @[adapter.scala 60:13]
  assign _T_19 = tail + 3'h1; // @[adapter.scala 60:53]
  assign _T_20 = _T_17 ? 3'h1 : _T_19; // @[adapter.scala 60:8]
  assign _T_21 = _T_20 != head; // @[adapter.scala 108:25]
  assign _GEN_4 = _T_21 ? 2'h3 : 2'h2; // @[adapter.scala 108:35]
  assign _GEN_9 = _T_16 ? _GEN_4 : 2'h2; // @[adapter.scala 107:47]
  assign _GEN_16 = _T_7 ? _T_14 : 14'h7ff; // @[adapter.scala 102:53]
  assign _T_23 = toBuf_dout == 8'h0; // @[adapter.scala 123:23]
  assign _T_24 = head != tail; // @[adapter.scala 124:19]
  assign _T_25 = head == 3'h7; // @[adapter.scala 60:13]
  assign _T_27 = head + 3'h1; // @[adapter.scala 60:53]
  assign _T_31 = 3'h3 == _T_1; // @[Conditional.scala 37:30]
  assign _T_33 = $unsigned(transferState); // @[Conditional.scala 37:39]
  assign _T_34 = 3'h0 == _T_33; // @[Conditional.scala 37:30]
  assign _T_35 = {tail,cnt}; // @[adapter.scala 133:25]
  assign _T_37 = cnt + 11'h1; // @[adapter.scala 139:24]
  assign _T_40 = 3'h2 == _T_33; // @[Conditional.scala 37:30]
  assign _T_41 = {tail,11'h7fc}; // @[adapter.scala 148:25]
  assign _T_42 = cnt[7:0]; // @[adapter.scala 150:27]
  assign _T_45 = 3'h3 == _T_33; // @[Conditional.scala 37:30]
  assign _T_48 = _T_41 + 14'h1; // @[adapter.scala 155:38]
  assign _T_49 = cnt[10:8]; // @[adapter.scala 157:28]
  assign _T_52 = 3'h1 == _T_33; // @[Conditional.scala 37:30]
  assign _T_53 = {tail,11'h7ff}; // @[adapter.scala 162:25]
  assign _T_57 = 3'h4 == _T_33; // @[Conditional.scala 37:30]
  assign _GEN_29 = _T_52 ? _T_53 : 14'h7ff; // @[Conditional.scala 39:67]
  assign _GEN_35 = _T_45 ? _T_48 : _GEN_29; // @[Conditional.scala 39:67]
  assign _GEN_36 = _T_45 | _T_52; // @[Conditional.scala 39:67]
  assign _GEN_37 = _T_45 ? _T_49 : 3'h1; // @[Conditional.scala 39:67]
  assign _GEN_41 = _T_40 ? _T_41 : _GEN_35; // @[Conditional.scala 39:67]
  assign _GEN_42 = _T_40 | _GEN_36; // @[Conditional.scala 39:67]
  assign _GEN_43 = _T_40 ? _T_42 : {{5'd0}, _GEN_37}; // @[Conditional.scala 39:67]
  assign _GEN_47 = _T_34 ? _T_35 : _GEN_41; // @[Conditional.scala 40:58]
  assign _GEN_49 = _T_34 ? 1'h0 : 1'h1; // @[Conditional.scala 40:58]
  assign _GEN_50 = _T_34 ? fromExec_valid : _GEN_42; // @[Conditional.scala 40:58]
  assign _GEN_57 = _T_31 ? _GEN_49 : 1'h1; // @[Conditional.scala 39:67]
  assign _GEN_58 = _T_31 & _GEN_50; // @[Conditional.scala 39:67]
  assign _GEN_65 = _T_11 ? _GEN_16 : _GEN_47; // @[Conditional.scala 39:67]
  assign _GEN_71 = _T_11 | _GEN_57; // @[Conditional.scala 39:67]
  assign _GEN_72 = _T_11 ? 1'h0 : _GEN_58; // @[Conditional.scala 39:67]
  assign _GEN_75 = _T_5 ? _GEN_1 : _GEN_65; // @[Conditional.scala 39:67]
  assign _GEN_82 = _T_5 | _GEN_71; // @[Conditional.scala 39:67]
  assign _GEN_83 = _T_5 ? 1'h0 : _GEN_72; // @[Conditional.scala 39:67]
  assign _GEN_86 = _T_2 ? 14'h7ff : _GEN_75; // @[Conditional.scala 40:58]
  assign _GEN_93 = _T_2 | _GEN_82; // @[Conditional.scala 40:58]
  assign _T_62 = fromExec_valid & fromExec_last; // @[adapter.scala 182:25]
  assign toBuf_clk = clock; // @[adapter.scala 43:13]
  assign toBuf_addr = {{18'd0}, _GEN_86}; // @[adapter.scala 81:14]
  assign toBuf_din = _T_34 ? fromExec_input : _GEN_43; // @[adapter.scala 134:21 adapter.scala 150:21 adapter.scala 157:21 adapter.scala 164:21]
  assign toBuf_we = _T_2 ? 1'h0 : _GEN_83; // @[adapter.scala 45:12 adapter.scala 138:22 adapter.scala 149:20 adapter.scala 156:20 adapter.scala 163:20]
  assign fromExec_stall = dropping ? 1'h0 : _GEN_93; // @[adapter.scala 48:18 adapter.scala 135:26 adapter.scala 181:20]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE_MEM_INIT
  integer initvar;
`endif
`ifndef SYNTHESIS
initial begin
  `ifdef RANDOMIZE
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  head = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  tail = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  dropping = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  cnt = _RAND_4[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  transferState = _RAND_5[2:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else if (_T_2) begin
      state <= 3'h2;
    end else if (_T_5) begin
      if (_T_7) begin
        state <= 3'h4;
      end else begin
        state <= 3'h1;
      end
    end else if (_T_11) begin
      if (_T_7) begin
        state <= 3'h4;
      end else begin
        state <= {{1'd0}, _GEN_9};
      end
    end else if (_T_31) begin
      if (!(_T_34)) begin
        if (!(_T_40)) begin
          if (!(_T_45)) begin
            if (!(_T_52)) begin
              if (_T_57) begin
                state <= 3'h2;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      head <= 3'h1;
    end else if (!(_T_2)) begin
      if (!(_T_5)) begin
        if (_T_11) begin
          if (_T_23) begin
            if (_T_24) begin
              if (_T_25) begin
                head <= 3'h1;
              end else begin
                head <= _T_27;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      tail <= 3'h1;
    end else if (!(_T_2)) begin
      if (!(_T_5)) begin
        if (!(_T_11)) begin
          if (_T_31) begin
            if (!(_T_34)) begin
              if (!(_T_40)) begin
                if (!(_T_45)) begin
                  if (!(_T_52)) begin
                    if (_T_57) begin
                      if (_T_17) begin
                        tail <= 3'h1;
                      end else begin
                        tail <= _T_19;
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      dropping <= 1'h0;
    end else if (dropping) begin
      if (_T_62) begin
        dropping <= 1'h0;
      end else if (!(_T_2)) begin
        if (!(_T_5)) begin
          if (_T_11) begin
            if (!(_T_7)) begin
              if (_T_16) begin
                if (!(_T_21)) begin
                  dropping <= 1'h1;
                end
              end
            end
          end
        end
      end
    end else if (!(_T_2)) begin
      if (!(_T_5)) begin
        if (_T_11) begin
          if (!(_T_7)) begin
            if (_T_16) begin
              if (!(_T_21)) begin
                dropping <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      cnt <= 11'h0;
    end else if (!(_T_2)) begin
      if (_T_5) begin
        if (_T_7) begin
          cnt <= 11'h0;
        end
      end else if (_T_11) begin
        if (_T_7) begin
          cnt <= 11'h0;
        end else if (_T_16) begin
          if (_T_21) begin
            cnt <= 11'h0;
          end
        end
      end else if (_T_31) begin
        if (_T_34) begin
          if (fromExec_valid) begin
            cnt <= _T_37;
          end
        end
      end
    end
    if (reset) begin
      transferState <= 3'h0;
    end else if (!(_T_2)) begin
      if (!(_T_5)) begin
        if (_T_11) begin
          if (!(_T_7)) begin
            if (_T_16) begin
              if (_T_21) begin
                transferState <= 3'h0;
              end
            end
          end
        end else if (_T_31) begin
          if (_T_34) begin
            if (fromExec_valid) begin
              if (fromExec_last) begin
                transferState <= 3'h2;
              end
            end
          end else if (_T_40) begin
            transferState <= 3'h3;
          end else if (_T_45) begin
            transferState <= 3'h1;
          end else if (_T_52) begin
            transferState <= 3'h4;
          end
        end
      end
    end
  end
endmodule
module Transmitter(
  input        clock,
  output       io_reader_clk,
  output       io_reader_en,
  input  [7:0] io_reader_data_data,
  input        io_reader_data_last,
  input        io_reader_empty,
  output [7:0] io_tx_tdata,
  output       io_tx_tvalid,
  output       io_tx_tlast,
  input        io_tx_tready
);
  assign io_reader_clk = clock; // @[transmitter.scala 18:17]
  assign io_reader_en = io_tx_tready; // @[transmitter.scala 17:16]
  assign io_tx_tdata = io_reader_data_data; // @[transmitter.scala 14:15]
  assign io_tx_tvalid = io_reader_empty == 1'h0; // @[transmitter.scala 16:16]
  assign io_tx_tlast = io_reader_data_last; // @[transmitter.scala 15:15]
endmodule
module Router(
  input         clock,
  input         reset,
  input         io_rx_clk,
  input         io_tx_clk,
  input  [7:0]  io_rx_tdata,
  input         io_rx_tvalid,
  input         io_rx_tlast,
  output [7:0]  io_tx_tdata,
  output        io_tx_tvalid,
  output        io_tx_tlast,
  input         io_tx_tready,
  output        io_buf_clk,
  output [31:0] io_buf_addr,
  output [7:0]  io_buf_din,
  input  [7:0]  io_buf_dout,
  output        io_buf_we
);
  wire  acceptorBridge_reset; // @[router.scala 39:30]
  wire  acceptorBridge_io_write_clk; // @[router.scala 39:30]
  wire  acceptorBridge_io_write_en; // @[router.scala 39:30]
  wire [47:0] acceptorBridge_io_write_data_eth_dest; // @[router.scala 39:30]
  wire [47:0] acceptorBridge_io_write_data_eth_sender; // @[router.scala 39:30]
  wire [1:0] acceptorBridge_io_write_data_eth_pactype; // @[router.scala 39:30]
  wire [2:0] acceptorBridge_io_write_data_eth_vlan; // @[router.scala 39:30]
  wire [3:0] acceptorBridge_io_write_data_ip_version; // @[router.scala 39:30]
  wire [3:0] acceptorBridge_io_write_data_ip_ihl; // @[router.scala 39:30]
  wire [5:0] acceptorBridge_io_write_data_ip_dscp; // @[router.scala 39:30]
  wire [1:0] acceptorBridge_io_write_data_ip_ecn; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_write_data_ip_len; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_write_data_ip_id; // @[router.scala 39:30]
  wire [2:0] acceptorBridge_io_write_data_ip_flags; // @[router.scala 39:30]
  wire [12:0] acceptorBridge_io_write_data_ip_foff; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_write_data_ip_ttl; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_write_data_ip_proto; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_write_data_ip_chksum; // @[router.scala 39:30]
  wire [31:0] acceptorBridge_io_write_data_ip_src; // @[router.scala 39:30]
  wire [31:0] acceptorBridge_io_write_data_ip_dest; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_write_data_icmp_id; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_write_data_icmp_checksum; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_write_data_icmp_code; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_write_data_icmp_imcpType; // @[router.scala 39:30]
  wire  acceptorBridge_io_read_clk; // @[router.scala 39:30]
  wire  acceptorBridge_io_read_en; // @[router.scala 39:30]
  wire [47:0] acceptorBridge_io_read_data_eth_dest; // @[router.scala 39:30]
  wire [47:0] acceptorBridge_io_read_data_eth_sender; // @[router.scala 39:30]
  wire [1:0] acceptorBridge_io_read_data_eth_pactype; // @[router.scala 39:30]
  wire [2:0] acceptorBridge_io_read_data_eth_vlan; // @[router.scala 39:30]
  wire [3:0] acceptorBridge_io_read_data_ip_version; // @[router.scala 39:30]
  wire [3:0] acceptorBridge_io_read_data_ip_ihl; // @[router.scala 39:30]
  wire [5:0] acceptorBridge_io_read_data_ip_dscp; // @[router.scala 39:30]
  wire [1:0] acceptorBridge_io_read_data_ip_ecn; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_read_data_ip_len; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_read_data_ip_id; // @[router.scala 39:30]
  wire [2:0] acceptorBridge_io_read_data_ip_flags; // @[router.scala 39:30]
  wire [12:0] acceptorBridge_io_read_data_ip_foff; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_read_data_ip_ttl; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_read_data_ip_proto; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_read_data_ip_chksum; // @[router.scala 39:30]
  wire [31:0] acceptorBridge_io_read_data_ip_src; // @[router.scala 39:30]
  wire [31:0] acceptorBridge_io_read_data_ip_dest; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_read_data_icmp_id; // @[router.scala 39:30]
  wire [15:0] acceptorBridge_io_read_data_icmp_checksum; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_read_data_icmp_code; // @[router.scala 39:30]
  wire [7:0] acceptorBridge_io_read_data_icmp_imcpType; // @[router.scala 39:30]
  wire  acceptorBridge_io_read_empty; // @[router.scala 39:30]
  wire  transmitterBridge_reset; // @[router.scala 42:33]
  wire  transmitterBridge_io_write_clk; // @[router.scala 42:33]
  wire  transmitterBridge_io_write_en; // @[router.scala 42:33]
  wire [7:0] transmitterBridge_io_write_data_data; // @[router.scala 42:33]
  wire  transmitterBridge_io_write_data_last; // @[router.scala 42:33]
  wire  transmitterBridge_io_write_full; // @[router.scala 42:33]
  wire  transmitterBridge_io_read_clk; // @[router.scala 42:33]
  wire  transmitterBridge_io_read_en; // @[router.scala 42:33]
  wire [7:0] transmitterBridge_io_read_data_data; // @[router.scala 42:33]
  wire  transmitterBridge_io_read_data_last; // @[router.scala 42:33]
  wire  transmitterBridge_io_read_empty; // @[router.scala 42:33]
  wire  payloadBridge_reset; // @[router.scala 46:29]
  wire  payloadBridge_io_write_clk; // @[router.scala 46:29]
  wire  payloadBridge_io_write_en; // @[router.scala 46:29]
  wire [7:0] payloadBridge_io_write_data_data; // @[router.scala 46:29]
  wire  payloadBridge_io_write_data_last; // @[router.scala 46:29]
  wire  payloadBridge_io_write_progfull; // @[router.scala 46:29]
  wire  payloadBridge_io_read_clk; // @[router.scala 46:29]
  wire  payloadBridge_io_read_en; // @[router.scala 46:29]
  wire [7:0] payloadBridge_io_read_data_data; // @[router.scala 46:29]
  wire  payloadBridge_io_read_data_last; // @[router.scala 46:29]
  wire  payloadBridge_io_read_empty; // @[router.scala 46:29]
  wire  Acceptor_clock; // @[router.scala 49:26]
  wire  Acceptor_reset; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 49:26]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 49:26]
  wire  Acceptor_io_rx_tlast; // @[router.scala 49:26]
  wire  Acceptor_io_writer_clk; // @[router.scala 49:26]
  wire  Acceptor_io_writer_en; // @[router.scala 49:26]
  wire [47:0] Acceptor_io_writer_data_eth_dest; // @[router.scala 49:26]
  wire [47:0] Acceptor_io_writer_data_eth_sender; // @[router.scala 49:26]
  wire [1:0] Acceptor_io_writer_data_eth_pactype; // @[router.scala 49:26]
  wire [2:0] Acceptor_io_writer_data_eth_vlan; // @[router.scala 49:26]
  wire [3:0] Acceptor_io_writer_data_ip_version; // @[router.scala 49:26]
  wire [3:0] Acceptor_io_writer_data_ip_ihl; // @[router.scala 49:26]
  wire [5:0] Acceptor_io_writer_data_ip_dscp; // @[router.scala 49:26]
  wire [1:0] Acceptor_io_writer_data_ip_ecn; // @[router.scala 49:26]
  wire [15:0] Acceptor_io_writer_data_ip_len; // @[router.scala 49:26]
  wire [15:0] Acceptor_io_writer_data_ip_id; // @[router.scala 49:26]
  wire [2:0] Acceptor_io_writer_data_ip_flags; // @[router.scala 49:26]
  wire [12:0] Acceptor_io_writer_data_ip_foff; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_writer_data_ip_ttl; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_writer_data_ip_proto; // @[router.scala 49:26]
  wire [15:0] Acceptor_io_writer_data_ip_chksum; // @[router.scala 49:26]
  wire [31:0] Acceptor_io_writer_data_ip_src; // @[router.scala 49:26]
  wire [31:0] Acceptor_io_writer_data_ip_dest; // @[router.scala 49:26]
  wire [15:0] Acceptor_io_writer_data_icmp_id; // @[router.scala 49:26]
  wire [15:0] Acceptor_io_writer_data_icmp_checksum; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_writer_data_icmp_code; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_writer_data_icmp_imcpType; // @[router.scala 49:26]
  wire  Acceptor_io_payloadWriter_clk; // @[router.scala 49:26]
  wire  Acceptor_io_payloadWriter_en; // @[router.scala 49:26]
  wire [7:0] Acceptor_io_payloadWriter_data_data; // @[router.scala 49:26]
  wire  Acceptor_io_payloadWriter_data_last; // @[router.scala 49:26]
  wire  Acceptor_io_payloadWriter_progfull; // @[router.scala 49:26]
  wire  ctrl_io_inputWait; // @[router.scala 56:20]
  wire  ctrl_io_nat_stall; // @[router.scala 56:20]
  wire  ctrl_io_nat_pause; // @[router.scala 56:20]
  wire  ctrl_io_forward_stall; // @[router.scala 56:20]
  wire  ctrl_io_forward_pause; // @[router.scala 56:20]
  wire  ctrl_io_arp_pause; // @[router.scala 56:20]
  wire  ctrl_io_encoder_stall; // @[router.scala 56:20]
  wire  ctrl_io_encoder_pause; // @[router.scala 56:20]
  wire  nat_clock; // @[router.scala 59:19]
  wire  nat_reset; // @[router.scala 59:19]
  wire [47:0] nat_io_input_eth_dest; // @[router.scala 59:19]
  wire [47:0] nat_io_input_eth_sender; // @[router.scala 59:19]
  wire [1:0] nat_io_input_eth_pactype; // @[router.scala 59:19]
  wire [2:0] nat_io_input_eth_vlan; // @[router.scala 59:19]
  wire [3:0] nat_io_input_ip_version; // @[router.scala 59:19]
  wire [3:0] nat_io_input_ip_ihl; // @[router.scala 59:19]
  wire [5:0] nat_io_input_ip_dscp; // @[router.scala 59:19]
  wire [1:0] nat_io_input_ip_ecn; // @[router.scala 59:19]
  wire [15:0] nat_io_input_ip_len; // @[router.scala 59:19]
  wire [15:0] nat_io_input_ip_id; // @[router.scala 59:19]
  wire [2:0] nat_io_input_ip_flags; // @[router.scala 59:19]
  wire [12:0] nat_io_input_ip_foff; // @[router.scala 59:19]
  wire [7:0] nat_io_input_ip_ttl; // @[router.scala 59:19]
  wire [7:0] nat_io_input_ip_proto; // @[router.scala 59:19]
  wire [15:0] nat_io_input_ip_chksum; // @[router.scala 59:19]
  wire [31:0] nat_io_input_ip_src; // @[router.scala 59:19]
  wire [31:0] nat_io_input_ip_dest; // @[router.scala 59:19]
  wire [15:0] nat_io_input_icmp_id; // @[router.scala 59:19]
  wire [15:0] nat_io_input_icmp_checksum; // @[router.scala 59:19]
  wire [7:0] nat_io_input_icmp_code; // @[router.scala 59:19]
  wire [7:0] nat_io_input_icmp_imcpType; // @[router.scala 59:19]
  wire [1:0] nat_io_status; // @[router.scala 59:19]
  wire [47:0] nat_io_output_eth_dest; // @[router.scala 59:19]
  wire [47:0] nat_io_output_eth_sender; // @[router.scala 59:19]
  wire [1:0] nat_io_output_eth_pactype; // @[router.scala 59:19]
  wire [2:0] nat_io_output_eth_vlan; // @[router.scala 59:19]
  wire [3:0] nat_io_output_ip_version; // @[router.scala 59:19]
  wire [3:0] nat_io_output_ip_ihl; // @[router.scala 59:19]
  wire [5:0] nat_io_output_ip_dscp; // @[router.scala 59:19]
  wire [1:0] nat_io_output_ip_ecn; // @[router.scala 59:19]
  wire [15:0] nat_io_output_ip_len; // @[router.scala 59:19]
  wire [15:0] nat_io_output_ip_id; // @[router.scala 59:19]
  wire [2:0] nat_io_output_ip_flags; // @[router.scala 59:19]
  wire [12:0] nat_io_output_ip_foff; // @[router.scala 59:19]
  wire [7:0] nat_io_output_ip_ttl; // @[router.scala 59:19]
  wire [7:0] nat_io_output_ip_proto; // @[router.scala 59:19]
  wire [15:0] nat_io_output_ip_chksum; // @[router.scala 59:19]
  wire [31:0] nat_io_output_ip_src; // @[router.scala 59:19]
  wire [31:0] nat_io_output_ip_dest; // @[router.scala 59:19]
  wire [15:0] nat_io_output_icmp_id; // @[router.scala 59:19]
  wire [15:0] nat_io_output_icmp_checksum; // @[router.scala 59:19]
  wire [7:0] nat_io_output_icmp_code; // @[router.scala 59:19]
  wire [7:0] nat_io_output_icmp_imcpType; // @[router.scala 59:19]
  wire [1:0] nat_io_outputStatus; // @[router.scala 59:19]
  wire  nat_io_pause; // @[router.scala 59:19]
  wire  nat_io_stall; // @[router.scala 59:19]
  wire  forward_clock; // @[router.scala 65:23]
  wire  forward_reset; // @[router.scala 65:23]
  wire [47:0] forward_io_input_eth_dest; // @[router.scala 65:23]
  wire [47:0] forward_io_input_eth_sender; // @[router.scala 65:23]
  wire [1:0] forward_io_input_eth_pactype; // @[router.scala 65:23]
  wire [2:0] forward_io_input_eth_vlan; // @[router.scala 65:23]
  wire [3:0] forward_io_input_ip_version; // @[router.scala 65:23]
  wire [3:0] forward_io_input_ip_ihl; // @[router.scala 65:23]
  wire [5:0] forward_io_input_ip_dscp; // @[router.scala 65:23]
  wire [1:0] forward_io_input_ip_ecn; // @[router.scala 65:23]
  wire [15:0] forward_io_input_ip_len; // @[router.scala 65:23]
  wire [15:0] forward_io_input_ip_id; // @[router.scala 65:23]
  wire [2:0] forward_io_input_ip_flags; // @[router.scala 65:23]
  wire [12:0] forward_io_input_ip_foff; // @[router.scala 65:23]
  wire [7:0] forward_io_input_ip_ttl; // @[router.scala 65:23]
  wire [7:0] forward_io_input_ip_proto; // @[router.scala 65:23]
  wire [15:0] forward_io_input_ip_chksum; // @[router.scala 65:23]
  wire [31:0] forward_io_input_ip_src; // @[router.scala 65:23]
  wire [31:0] forward_io_input_ip_dest; // @[router.scala 65:23]
  wire [15:0] forward_io_input_icmp_id; // @[router.scala 65:23]
  wire [15:0] forward_io_input_icmp_checksum; // @[router.scala 65:23]
  wire [7:0] forward_io_input_icmp_code; // @[router.scala 65:23]
  wire [7:0] forward_io_input_icmp_imcpType; // @[router.scala 65:23]
  wire [1:0] forward_io_status; // @[router.scala 65:23]
  wire  forward_io_stall; // @[router.scala 65:23]
  wire  forward_io_pause; // @[router.scala 65:23]
  wire [47:0] forward_io_output_packet_eth_dest; // @[router.scala 65:23]
  wire [47:0] forward_io_output_packet_eth_sender; // @[router.scala 65:23]
  wire [1:0] forward_io_output_packet_eth_pactype; // @[router.scala 65:23]
  wire [2:0] forward_io_output_packet_eth_vlan; // @[router.scala 65:23]
  wire [3:0] forward_io_output_packet_ip_version; // @[router.scala 65:23]
  wire [3:0] forward_io_output_packet_ip_ihl; // @[router.scala 65:23]
  wire [5:0] forward_io_output_packet_ip_dscp; // @[router.scala 65:23]
  wire [1:0] forward_io_output_packet_ip_ecn; // @[router.scala 65:23]
  wire [15:0] forward_io_output_packet_ip_len; // @[router.scala 65:23]
  wire [15:0] forward_io_output_packet_ip_id; // @[router.scala 65:23]
  wire [2:0] forward_io_output_packet_ip_flags; // @[router.scala 65:23]
  wire [12:0] forward_io_output_packet_ip_foff; // @[router.scala 65:23]
  wire [7:0] forward_io_output_packet_ip_ttl; // @[router.scala 65:23]
  wire [7:0] forward_io_output_packet_ip_proto; // @[router.scala 65:23]
  wire [15:0] forward_io_output_packet_ip_chksum; // @[router.scala 65:23]
  wire [31:0] forward_io_output_packet_ip_src; // @[router.scala 65:23]
  wire [31:0] forward_io_output_packet_ip_dest; // @[router.scala 65:23]
  wire [15:0] forward_io_output_packet_icmp_id; // @[router.scala 65:23]
  wire [15:0] forward_io_output_packet_icmp_checksum; // @[router.scala 65:23]
  wire [7:0] forward_io_output_packet_icmp_code; // @[router.scala 65:23]
  wire [7:0] forward_io_output_packet_icmp_imcpType; // @[router.scala 65:23]
  wire [1:0] forward_io_outputStatus; // @[router.scala 65:23]
  wire  arp_clock; // @[router.scala 71:19]
  wire  arp_reset; // @[router.scala 71:19]
  wire [47:0] arp_io_input_packet_eth_dest; // @[router.scala 71:19]
  wire [47:0] arp_io_input_packet_eth_sender; // @[router.scala 71:19]
  wire [1:0] arp_io_input_packet_eth_pactype; // @[router.scala 71:19]
  wire [2:0] arp_io_input_packet_eth_vlan; // @[router.scala 71:19]
  wire [3:0] arp_io_input_packet_ip_version; // @[router.scala 71:19]
  wire [3:0] arp_io_input_packet_ip_ihl; // @[router.scala 71:19]
  wire [5:0] arp_io_input_packet_ip_dscp; // @[router.scala 71:19]
  wire [1:0] arp_io_input_packet_ip_ecn; // @[router.scala 71:19]
  wire [15:0] arp_io_input_packet_ip_len; // @[router.scala 71:19]
  wire [15:0] arp_io_input_packet_ip_id; // @[router.scala 71:19]
  wire [2:0] arp_io_input_packet_ip_flags; // @[router.scala 71:19]
  wire [12:0] arp_io_input_packet_ip_foff; // @[router.scala 71:19]
  wire [7:0] arp_io_input_packet_ip_ttl; // @[router.scala 71:19]
  wire [7:0] arp_io_input_packet_ip_proto; // @[router.scala 71:19]
  wire [15:0] arp_io_input_packet_ip_chksum; // @[router.scala 71:19]
  wire [31:0] arp_io_input_packet_ip_src; // @[router.scala 71:19]
  wire [31:0] arp_io_input_packet_ip_dest; // @[router.scala 71:19]
  wire [15:0] arp_io_input_packet_icmp_id; // @[router.scala 71:19]
  wire [15:0] arp_io_input_packet_icmp_checksum; // @[router.scala 71:19]
  wire [7:0] arp_io_input_packet_icmp_code; // @[router.scala 71:19]
  wire [7:0] arp_io_input_packet_icmp_imcpType; // @[router.scala 71:19]
  wire [1:0] arp_io_status; // @[router.scala 71:19]
  wire  arp_io_pause; // @[router.scala 71:19]
  wire [47:0] arp_io_output_packet_eth_dest; // @[router.scala 71:19]
  wire [47:0] arp_io_output_packet_eth_sender; // @[router.scala 71:19]
  wire [1:0] arp_io_output_packet_eth_pactype; // @[router.scala 71:19]
  wire [2:0] arp_io_output_packet_eth_vlan; // @[router.scala 71:19]
  wire [3:0] arp_io_output_packet_ip_version; // @[router.scala 71:19]
  wire [3:0] arp_io_output_packet_ip_ihl; // @[router.scala 71:19]
  wire [5:0] arp_io_output_packet_ip_dscp; // @[router.scala 71:19]
  wire [1:0] arp_io_output_packet_ip_ecn; // @[router.scala 71:19]
  wire [15:0] arp_io_output_packet_ip_len; // @[router.scala 71:19]
  wire [15:0] arp_io_output_packet_ip_id; // @[router.scala 71:19]
  wire [2:0] arp_io_output_packet_ip_flags; // @[router.scala 71:19]
  wire [12:0] arp_io_output_packet_ip_foff; // @[router.scala 71:19]
  wire [7:0] arp_io_output_packet_ip_ttl; // @[router.scala 71:19]
  wire [7:0] arp_io_output_packet_ip_proto; // @[router.scala 71:19]
  wire [15:0] arp_io_output_packet_ip_chksum; // @[router.scala 71:19]
  wire [31:0] arp_io_output_packet_ip_src; // @[router.scala 71:19]
  wire [31:0] arp_io_output_packet_ip_dest; // @[router.scala 71:19]
  wire [15:0] arp_io_output_packet_icmp_id; // @[router.scala 71:19]
  wire [15:0] arp_io_output_packet_icmp_checksum; // @[router.scala 71:19]
  wire [7:0] arp_io_output_packet_icmp_code; // @[router.scala 71:19]
  wire [7:0] arp_io_output_packet_icmp_imcpType; // @[router.scala 71:19]
  wire [1:0] arp_io_outputStatus; // @[router.scala 71:19]
  wire  encoder_clock; // @[router.scala 77:23]
  wire  encoder_reset; // @[router.scala 77:23]
  wire [47:0] encoder_io_input_packet_eth_dest; // @[router.scala 77:23]
  wire [47:0] encoder_io_input_packet_eth_sender; // @[router.scala 77:23]
  wire [1:0] encoder_io_input_packet_eth_pactype; // @[router.scala 77:23]
  wire [2:0] encoder_io_input_packet_eth_vlan; // @[router.scala 77:23]
  wire [3:0] encoder_io_input_packet_ip_version; // @[router.scala 77:23]
  wire [3:0] encoder_io_input_packet_ip_ihl; // @[router.scala 77:23]
  wire [5:0] encoder_io_input_packet_ip_dscp; // @[router.scala 77:23]
  wire [1:0] encoder_io_input_packet_ip_ecn; // @[router.scala 77:23]
  wire [15:0] encoder_io_input_packet_ip_len; // @[router.scala 77:23]
  wire [15:0] encoder_io_input_packet_ip_id; // @[router.scala 77:23]
  wire [2:0] encoder_io_input_packet_ip_flags; // @[router.scala 77:23]
  wire [12:0] encoder_io_input_packet_ip_foff; // @[router.scala 77:23]
  wire [7:0] encoder_io_input_packet_ip_ttl; // @[router.scala 77:23]
  wire [7:0] encoder_io_input_packet_ip_proto; // @[router.scala 77:23]
  wire [15:0] encoder_io_input_packet_ip_chksum; // @[router.scala 77:23]
  wire [31:0] encoder_io_input_packet_ip_src; // @[router.scala 77:23]
  wire [31:0] encoder_io_input_packet_ip_dest; // @[router.scala 77:23]
  wire [15:0] encoder_io_input_packet_icmp_id; // @[router.scala 77:23]
  wire [15:0] encoder_io_input_packet_icmp_checksum; // @[router.scala 77:23]
  wire [7:0] encoder_io_input_packet_icmp_code; // @[router.scala 77:23]
  wire [7:0] encoder_io_input_packet_icmp_imcpType; // @[router.scala 77:23]
  wire [1:0] encoder_io_status; // @[router.scala 77:23]
  wire  encoder_io_stall; // @[router.scala 77:23]
  wire  encoder_io_pause; // @[router.scala 77:23]
  wire  encoder_io_writer_clk; // @[router.scala 77:23]
  wire  encoder_io_writer_en; // @[router.scala 77:23]
  wire [7:0] encoder_io_writer_data_data; // @[router.scala 77:23]
  wire  encoder_io_writer_data_last; // @[router.scala 77:23]
  wire  encoder_io_writer_full; // @[router.scala 77:23]
  wire  encoder_io_payloadReader_clk; // @[router.scala 77:23]
  wire  encoder_io_payloadReader_en; // @[router.scala 77:23]
  wire [7:0] encoder_io_payloadReader_data_data; // @[router.scala 77:23]
  wire  encoder_io_payloadReader_data_last; // @[router.scala 77:23]
  wire  encoder_io_payloadReader_empty; // @[router.scala 77:23]
  wire [7:0] encoder_toAdapter_input; // @[router.scala 77:23]
  wire  encoder_toAdapter_valid; // @[router.scala 77:23]
  wire  encoder_toAdapter_last; // @[router.scala 77:23]
  wire  encoder_toAdapter_stall; // @[router.scala 77:23]
  wire  adapter_clock; // @[router.scala 88:23]
  wire  adapter_reset; // @[router.scala 88:23]
  wire  adapter_toBuf_clk; // @[router.scala 88:23]
  wire [31:0] adapter_toBuf_addr; // @[router.scala 88:23]
  wire [7:0] adapter_toBuf_din; // @[router.scala 88:23]
  wire [7:0] adapter_toBuf_dout; // @[router.scala 88:23]
  wire  adapter_toBuf_we; // @[router.scala 88:23]
  wire [7:0] adapter_fromExec_input; // @[router.scala 88:23]
  wire  adapter_fromExec_valid; // @[router.scala 88:23]
  wire  adapter_fromExec_last; // @[router.scala 88:23]
  wire  adapter_fromExec_stall; // @[router.scala 88:23]
  wire  Transmitter_clock; // @[router.scala 94:29]
  wire  Transmitter_io_reader_clk; // @[router.scala 94:29]
  wire  Transmitter_io_reader_en; // @[router.scala 94:29]
  wire [7:0] Transmitter_io_reader_data_data; // @[router.scala 94:29]
  wire  Transmitter_io_reader_data_last; // @[router.scala 94:29]
  wire  Transmitter_io_reader_empty; // @[router.scala 94:29]
  wire [7:0] Transmitter_io_tx_tdata; // @[router.scala 94:29]
  wire  Transmitter_io_tx_tvalid; // @[router.scala 94:29]
  wire  Transmitter_io_tx_tlast; // @[router.scala 94:29]
  wire  Transmitter_io_tx_tready; // @[router.scala 94:29]
  wire  _T_1; // @[router.scala 63:23]
  AsyncBridge acceptorBridge ( // @[router.scala 39:30]
    .reset(acceptorBridge_reset),
    .io_write_clk(acceptorBridge_io_write_clk),
    .io_write_en(acceptorBridge_io_write_en),
    .io_write_data_eth_dest(acceptorBridge_io_write_data_eth_dest),
    .io_write_data_eth_sender(acceptorBridge_io_write_data_eth_sender),
    .io_write_data_eth_pactype(acceptorBridge_io_write_data_eth_pactype),
    .io_write_data_eth_vlan(acceptorBridge_io_write_data_eth_vlan),
    .io_write_data_ip_version(acceptorBridge_io_write_data_ip_version),
    .io_write_data_ip_ihl(acceptorBridge_io_write_data_ip_ihl),
    .io_write_data_ip_dscp(acceptorBridge_io_write_data_ip_dscp),
    .io_write_data_ip_ecn(acceptorBridge_io_write_data_ip_ecn),
    .io_write_data_ip_len(acceptorBridge_io_write_data_ip_len),
    .io_write_data_ip_id(acceptorBridge_io_write_data_ip_id),
    .io_write_data_ip_flags(acceptorBridge_io_write_data_ip_flags),
    .io_write_data_ip_foff(acceptorBridge_io_write_data_ip_foff),
    .io_write_data_ip_ttl(acceptorBridge_io_write_data_ip_ttl),
    .io_write_data_ip_proto(acceptorBridge_io_write_data_ip_proto),
    .io_write_data_ip_chksum(acceptorBridge_io_write_data_ip_chksum),
    .io_write_data_ip_src(acceptorBridge_io_write_data_ip_src),
    .io_write_data_ip_dest(acceptorBridge_io_write_data_ip_dest),
    .io_write_data_icmp_id(acceptorBridge_io_write_data_icmp_id),
    .io_write_data_icmp_checksum(acceptorBridge_io_write_data_icmp_checksum),
    .io_write_data_icmp_code(acceptorBridge_io_write_data_icmp_code),
    .io_write_data_icmp_imcpType(acceptorBridge_io_write_data_icmp_imcpType),
    .io_read_clk(acceptorBridge_io_read_clk),
    .io_read_en(acceptorBridge_io_read_en),
    .io_read_data_eth_dest(acceptorBridge_io_read_data_eth_dest),
    .io_read_data_eth_sender(acceptorBridge_io_read_data_eth_sender),
    .io_read_data_eth_pactype(acceptorBridge_io_read_data_eth_pactype),
    .io_read_data_eth_vlan(acceptorBridge_io_read_data_eth_vlan),
    .io_read_data_ip_version(acceptorBridge_io_read_data_ip_version),
    .io_read_data_ip_ihl(acceptorBridge_io_read_data_ip_ihl),
    .io_read_data_ip_dscp(acceptorBridge_io_read_data_ip_dscp),
    .io_read_data_ip_ecn(acceptorBridge_io_read_data_ip_ecn),
    .io_read_data_ip_len(acceptorBridge_io_read_data_ip_len),
    .io_read_data_ip_id(acceptorBridge_io_read_data_ip_id),
    .io_read_data_ip_flags(acceptorBridge_io_read_data_ip_flags),
    .io_read_data_ip_foff(acceptorBridge_io_read_data_ip_foff),
    .io_read_data_ip_ttl(acceptorBridge_io_read_data_ip_ttl),
    .io_read_data_ip_proto(acceptorBridge_io_read_data_ip_proto),
    .io_read_data_ip_chksum(acceptorBridge_io_read_data_ip_chksum),
    .io_read_data_ip_src(acceptorBridge_io_read_data_ip_src),
    .io_read_data_ip_dest(acceptorBridge_io_read_data_ip_dest),
    .io_read_data_icmp_id(acceptorBridge_io_read_data_icmp_id),
    .io_read_data_icmp_checksum(acceptorBridge_io_read_data_icmp_checksum),
    .io_read_data_icmp_code(acceptorBridge_io_read_data_icmp_code),
    .io_read_data_icmp_imcpType(acceptorBridge_io_read_data_icmp_imcpType),
    .io_read_empty(acceptorBridge_io_read_empty)
  );
  AsyncBridge_1 transmitterBridge ( // @[router.scala 42:33]
    .reset(transmitterBridge_reset),
    .io_write_clk(transmitterBridge_io_write_clk),
    .io_write_en(transmitterBridge_io_write_en),
    .io_write_data_data(transmitterBridge_io_write_data_data),
    .io_write_data_last(transmitterBridge_io_write_data_last),
    .io_write_full(transmitterBridge_io_write_full),
    .io_read_clk(transmitterBridge_io_read_clk),
    .io_read_en(transmitterBridge_io_read_en),
    .io_read_data_data(transmitterBridge_io_read_data_data),
    .io_read_data_last(transmitterBridge_io_read_data_last),
    .io_read_empty(transmitterBridge_io_read_empty)
  );
  AsyncBridge_2 payloadBridge ( // @[router.scala 46:29]
    .reset(payloadBridge_reset),
    .io_write_clk(payloadBridge_io_write_clk),
    .io_write_en(payloadBridge_io_write_en),
    .io_write_data_data(payloadBridge_io_write_data_data),
    .io_write_data_last(payloadBridge_io_write_data_last),
    .io_write_progfull(payloadBridge_io_write_progfull),
    .io_read_clk(payloadBridge_io_read_clk),
    .io_read_en(payloadBridge_io_read_en),
    .io_read_data_data(payloadBridge_io_read_data_data),
    .io_read_data_last(payloadBridge_io_read_data_last),
    .io_read_empty(payloadBridge_io_read_empty)
  );
  Acceptor Acceptor ( // @[router.scala 49:26]
    .clock(Acceptor_clock),
    .reset(Acceptor_reset),
    .io_rx_tdata(Acceptor_io_rx_tdata),
    .io_rx_tvalid(Acceptor_io_rx_tvalid),
    .io_rx_tlast(Acceptor_io_rx_tlast),
    .io_writer_clk(Acceptor_io_writer_clk),
    .io_writer_en(Acceptor_io_writer_en),
    .io_writer_data_eth_dest(Acceptor_io_writer_data_eth_dest),
    .io_writer_data_eth_sender(Acceptor_io_writer_data_eth_sender),
    .io_writer_data_eth_pactype(Acceptor_io_writer_data_eth_pactype),
    .io_writer_data_eth_vlan(Acceptor_io_writer_data_eth_vlan),
    .io_writer_data_ip_version(Acceptor_io_writer_data_ip_version),
    .io_writer_data_ip_ihl(Acceptor_io_writer_data_ip_ihl),
    .io_writer_data_ip_dscp(Acceptor_io_writer_data_ip_dscp),
    .io_writer_data_ip_ecn(Acceptor_io_writer_data_ip_ecn),
    .io_writer_data_ip_len(Acceptor_io_writer_data_ip_len),
    .io_writer_data_ip_id(Acceptor_io_writer_data_ip_id),
    .io_writer_data_ip_flags(Acceptor_io_writer_data_ip_flags),
    .io_writer_data_ip_foff(Acceptor_io_writer_data_ip_foff),
    .io_writer_data_ip_ttl(Acceptor_io_writer_data_ip_ttl),
    .io_writer_data_ip_proto(Acceptor_io_writer_data_ip_proto),
    .io_writer_data_ip_chksum(Acceptor_io_writer_data_ip_chksum),
    .io_writer_data_ip_src(Acceptor_io_writer_data_ip_src),
    .io_writer_data_ip_dest(Acceptor_io_writer_data_ip_dest),
    .io_writer_data_icmp_id(Acceptor_io_writer_data_icmp_id),
    .io_writer_data_icmp_checksum(Acceptor_io_writer_data_icmp_checksum),
    .io_writer_data_icmp_code(Acceptor_io_writer_data_icmp_code),
    .io_writer_data_icmp_imcpType(Acceptor_io_writer_data_icmp_imcpType),
    .io_payloadWriter_clk(Acceptor_io_payloadWriter_clk),
    .io_payloadWriter_en(Acceptor_io_payloadWriter_en),
    .io_payloadWriter_data_data(Acceptor_io_payloadWriter_data_data),
    .io_payloadWriter_data_last(Acceptor_io_payloadWriter_data_last),
    .io_payloadWriter_progfull(Acceptor_io_payloadWriter_progfull)
  );
  Ctrl ctrl ( // @[router.scala 56:20]
    .io_inputWait(ctrl_io_inputWait),
    .io_nat_stall(ctrl_io_nat_stall),
    .io_nat_pause(ctrl_io_nat_pause),
    .io_forward_stall(ctrl_io_forward_stall),
    .io_forward_pause(ctrl_io_forward_pause),
    .io_arp_pause(ctrl_io_arp_pause),
    .io_encoder_stall(ctrl_io_encoder_stall),
    .io_encoder_pause(ctrl_io_encoder_pause)
  );
  Nat nat ( // @[router.scala 59:19]
    .clock(nat_clock),
    .reset(nat_reset),
    .io_input_eth_dest(nat_io_input_eth_dest),
    .io_input_eth_sender(nat_io_input_eth_sender),
    .io_input_eth_pactype(nat_io_input_eth_pactype),
    .io_input_eth_vlan(nat_io_input_eth_vlan),
    .io_input_ip_version(nat_io_input_ip_version),
    .io_input_ip_ihl(nat_io_input_ip_ihl),
    .io_input_ip_dscp(nat_io_input_ip_dscp),
    .io_input_ip_ecn(nat_io_input_ip_ecn),
    .io_input_ip_len(nat_io_input_ip_len),
    .io_input_ip_id(nat_io_input_ip_id),
    .io_input_ip_flags(nat_io_input_ip_flags),
    .io_input_ip_foff(nat_io_input_ip_foff),
    .io_input_ip_ttl(nat_io_input_ip_ttl),
    .io_input_ip_proto(nat_io_input_ip_proto),
    .io_input_ip_chksum(nat_io_input_ip_chksum),
    .io_input_ip_src(nat_io_input_ip_src),
    .io_input_ip_dest(nat_io_input_ip_dest),
    .io_input_icmp_id(nat_io_input_icmp_id),
    .io_input_icmp_checksum(nat_io_input_icmp_checksum),
    .io_input_icmp_code(nat_io_input_icmp_code),
    .io_input_icmp_imcpType(nat_io_input_icmp_imcpType),
    .io_status(nat_io_status),
    .io_output_eth_dest(nat_io_output_eth_dest),
    .io_output_eth_sender(nat_io_output_eth_sender),
    .io_output_eth_pactype(nat_io_output_eth_pactype),
    .io_output_eth_vlan(nat_io_output_eth_vlan),
    .io_output_ip_version(nat_io_output_ip_version),
    .io_output_ip_ihl(nat_io_output_ip_ihl),
    .io_output_ip_dscp(nat_io_output_ip_dscp),
    .io_output_ip_ecn(nat_io_output_ip_ecn),
    .io_output_ip_len(nat_io_output_ip_len),
    .io_output_ip_id(nat_io_output_ip_id),
    .io_output_ip_flags(nat_io_output_ip_flags),
    .io_output_ip_foff(nat_io_output_ip_foff),
    .io_output_ip_ttl(nat_io_output_ip_ttl),
    .io_output_ip_proto(nat_io_output_ip_proto),
    .io_output_ip_chksum(nat_io_output_ip_chksum),
    .io_output_ip_src(nat_io_output_ip_src),
    .io_output_ip_dest(nat_io_output_ip_dest),
    .io_output_icmp_id(nat_io_output_icmp_id),
    .io_output_icmp_checksum(nat_io_output_icmp_checksum),
    .io_output_icmp_code(nat_io_output_icmp_code),
    .io_output_icmp_imcpType(nat_io_output_icmp_imcpType),
    .io_outputStatus(nat_io_outputStatus),
    .io_pause(nat_io_pause),
    .io_stall(nat_io_stall)
  );
  LLFT forward ( // @[router.scala 65:23]
    .clock(forward_clock),
    .reset(forward_reset),
    .io_input_eth_dest(forward_io_input_eth_dest),
    .io_input_eth_sender(forward_io_input_eth_sender),
    .io_input_eth_pactype(forward_io_input_eth_pactype),
    .io_input_eth_vlan(forward_io_input_eth_vlan),
    .io_input_ip_version(forward_io_input_ip_version),
    .io_input_ip_ihl(forward_io_input_ip_ihl),
    .io_input_ip_dscp(forward_io_input_ip_dscp),
    .io_input_ip_ecn(forward_io_input_ip_ecn),
    .io_input_ip_len(forward_io_input_ip_len),
    .io_input_ip_id(forward_io_input_ip_id),
    .io_input_ip_flags(forward_io_input_ip_flags),
    .io_input_ip_foff(forward_io_input_ip_foff),
    .io_input_ip_ttl(forward_io_input_ip_ttl),
    .io_input_ip_proto(forward_io_input_ip_proto),
    .io_input_ip_chksum(forward_io_input_ip_chksum),
    .io_input_ip_src(forward_io_input_ip_src),
    .io_input_ip_dest(forward_io_input_ip_dest),
    .io_input_icmp_id(forward_io_input_icmp_id),
    .io_input_icmp_checksum(forward_io_input_icmp_checksum),
    .io_input_icmp_code(forward_io_input_icmp_code),
    .io_input_icmp_imcpType(forward_io_input_icmp_imcpType),
    .io_status(forward_io_status),
    .io_stall(forward_io_stall),
    .io_pause(forward_io_pause),
    .io_output_packet_eth_dest(forward_io_output_packet_eth_dest),
    .io_output_packet_eth_sender(forward_io_output_packet_eth_sender),
    .io_output_packet_eth_pactype(forward_io_output_packet_eth_pactype),
    .io_output_packet_eth_vlan(forward_io_output_packet_eth_vlan),
    .io_output_packet_ip_version(forward_io_output_packet_ip_version),
    .io_output_packet_ip_ihl(forward_io_output_packet_ip_ihl),
    .io_output_packet_ip_dscp(forward_io_output_packet_ip_dscp),
    .io_output_packet_ip_ecn(forward_io_output_packet_ip_ecn),
    .io_output_packet_ip_len(forward_io_output_packet_ip_len),
    .io_output_packet_ip_id(forward_io_output_packet_ip_id),
    .io_output_packet_ip_flags(forward_io_output_packet_ip_flags),
    .io_output_packet_ip_foff(forward_io_output_packet_ip_foff),
    .io_output_packet_ip_ttl(forward_io_output_packet_ip_ttl),
    .io_output_packet_ip_proto(forward_io_output_packet_ip_proto),
    .io_output_packet_ip_chksum(forward_io_output_packet_ip_chksum),
    .io_output_packet_ip_src(forward_io_output_packet_ip_src),
    .io_output_packet_ip_dest(forward_io_output_packet_ip_dest),
    .io_output_packet_icmp_id(forward_io_output_packet_icmp_id),
    .io_output_packet_icmp_checksum(forward_io_output_packet_icmp_checksum),
    .io_output_packet_icmp_code(forward_io_output_packet_icmp_code),
    .io_output_packet_icmp_imcpType(forward_io_output_packet_icmp_imcpType),
    .io_outputStatus(forward_io_outputStatus)
  );
  ARPTable arp ( // @[router.scala 71:19]
    .clock(arp_clock),
    .reset(arp_reset),
    .io_input_packet_eth_dest(arp_io_input_packet_eth_dest),
    .io_input_packet_eth_sender(arp_io_input_packet_eth_sender),
    .io_input_packet_eth_pactype(arp_io_input_packet_eth_pactype),
    .io_input_packet_eth_vlan(arp_io_input_packet_eth_vlan),
    .io_input_packet_ip_version(arp_io_input_packet_ip_version),
    .io_input_packet_ip_ihl(arp_io_input_packet_ip_ihl),
    .io_input_packet_ip_dscp(arp_io_input_packet_ip_dscp),
    .io_input_packet_ip_ecn(arp_io_input_packet_ip_ecn),
    .io_input_packet_ip_len(arp_io_input_packet_ip_len),
    .io_input_packet_ip_id(arp_io_input_packet_ip_id),
    .io_input_packet_ip_flags(arp_io_input_packet_ip_flags),
    .io_input_packet_ip_foff(arp_io_input_packet_ip_foff),
    .io_input_packet_ip_ttl(arp_io_input_packet_ip_ttl),
    .io_input_packet_ip_proto(arp_io_input_packet_ip_proto),
    .io_input_packet_ip_chksum(arp_io_input_packet_ip_chksum),
    .io_input_packet_ip_src(arp_io_input_packet_ip_src),
    .io_input_packet_ip_dest(arp_io_input_packet_ip_dest),
    .io_input_packet_icmp_id(arp_io_input_packet_icmp_id),
    .io_input_packet_icmp_checksum(arp_io_input_packet_icmp_checksum),
    .io_input_packet_icmp_code(arp_io_input_packet_icmp_code),
    .io_input_packet_icmp_imcpType(arp_io_input_packet_icmp_imcpType),
    .io_status(arp_io_status),
    .io_pause(arp_io_pause),
    .io_output_packet_eth_dest(arp_io_output_packet_eth_dest),
    .io_output_packet_eth_sender(arp_io_output_packet_eth_sender),
    .io_output_packet_eth_pactype(arp_io_output_packet_eth_pactype),
    .io_output_packet_eth_vlan(arp_io_output_packet_eth_vlan),
    .io_output_packet_ip_version(arp_io_output_packet_ip_version),
    .io_output_packet_ip_ihl(arp_io_output_packet_ip_ihl),
    .io_output_packet_ip_dscp(arp_io_output_packet_ip_dscp),
    .io_output_packet_ip_ecn(arp_io_output_packet_ip_ecn),
    .io_output_packet_ip_len(arp_io_output_packet_ip_len),
    .io_output_packet_ip_id(arp_io_output_packet_ip_id),
    .io_output_packet_ip_flags(arp_io_output_packet_ip_flags),
    .io_output_packet_ip_foff(arp_io_output_packet_ip_foff),
    .io_output_packet_ip_ttl(arp_io_output_packet_ip_ttl),
    .io_output_packet_ip_proto(arp_io_output_packet_ip_proto),
    .io_output_packet_ip_chksum(arp_io_output_packet_ip_chksum),
    .io_output_packet_ip_src(arp_io_output_packet_ip_src),
    .io_output_packet_ip_dest(arp_io_output_packet_ip_dest),
    .io_output_packet_icmp_id(arp_io_output_packet_icmp_id),
    .io_output_packet_icmp_checksum(arp_io_output_packet_icmp_checksum),
    .io_output_packet_icmp_code(arp_io_output_packet_icmp_code),
    .io_output_packet_icmp_imcpType(arp_io_output_packet_icmp_imcpType),
    .io_outputStatus(arp_io_outputStatus)
  );
  Encoder encoder ( // @[router.scala 77:23]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_input_packet_eth_dest(encoder_io_input_packet_eth_dest),
    .io_input_packet_eth_sender(encoder_io_input_packet_eth_sender),
    .io_input_packet_eth_pactype(encoder_io_input_packet_eth_pactype),
    .io_input_packet_eth_vlan(encoder_io_input_packet_eth_vlan),
    .io_input_packet_ip_version(encoder_io_input_packet_ip_version),
    .io_input_packet_ip_ihl(encoder_io_input_packet_ip_ihl),
    .io_input_packet_ip_dscp(encoder_io_input_packet_ip_dscp),
    .io_input_packet_ip_ecn(encoder_io_input_packet_ip_ecn),
    .io_input_packet_ip_len(encoder_io_input_packet_ip_len),
    .io_input_packet_ip_id(encoder_io_input_packet_ip_id),
    .io_input_packet_ip_flags(encoder_io_input_packet_ip_flags),
    .io_input_packet_ip_foff(encoder_io_input_packet_ip_foff),
    .io_input_packet_ip_ttl(encoder_io_input_packet_ip_ttl),
    .io_input_packet_ip_proto(encoder_io_input_packet_ip_proto),
    .io_input_packet_ip_chksum(encoder_io_input_packet_ip_chksum),
    .io_input_packet_ip_src(encoder_io_input_packet_ip_src),
    .io_input_packet_ip_dest(encoder_io_input_packet_ip_dest),
    .io_input_packet_icmp_id(encoder_io_input_packet_icmp_id),
    .io_input_packet_icmp_checksum(encoder_io_input_packet_icmp_checksum),
    .io_input_packet_icmp_code(encoder_io_input_packet_icmp_code),
    .io_input_packet_icmp_imcpType(encoder_io_input_packet_icmp_imcpType),
    .io_status(encoder_io_status),
    .io_stall(encoder_io_stall),
    .io_pause(encoder_io_pause),
    .io_writer_clk(encoder_io_writer_clk),
    .io_writer_en(encoder_io_writer_en),
    .io_writer_data_data(encoder_io_writer_data_data),
    .io_writer_data_last(encoder_io_writer_data_last),
    .io_writer_full(encoder_io_writer_full),
    .io_payloadReader_clk(encoder_io_payloadReader_clk),
    .io_payloadReader_en(encoder_io_payloadReader_en),
    .io_payloadReader_data_data(encoder_io_payloadReader_data_data),
    .io_payloadReader_data_last(encoder_io_payloadReader_data_last),
    .io_payloadReader_empty(encoder_io_payloadReader_empty),
    .toAdapter_input(encoder_toAdapter_input),
    .toAdapter_valid(encoder_toAdapter_valid),
    .toAdapter_last(encoder_toAdapter_last),
    .toAdapter_stall(encoder_toAdapter_stall)
  );
  Adapter adapter ( // @[router.scala 88:23]
    .clock(adapter_clock),
    .reset(adapter_reset),
    .toBuf_clk(adapter_toBuf_clk),
    .toBuf_addr(adapter_toBuf_addr),
    .toBuf_din(adapter_toBuf_din),
    .toBuf_dout(adapter_toBuf_dout),
    .toBuf_we(adapter_toBuf_we),
    .fromExec_input(adapter_fromExec_input),
    .fromExec_valid(adapter_fromExec_valid),
    .fromExec_last(adapter_fromExec_last),
    .fromExec_stall(adapter_fromExec_stall)
  );
  Transmitter Transmitter ( // @[router.scala 94:29]
    .clock(Transmitter_clock),
    .io_reader_clk(Transmitter_io_reader_clk),
    .io_reader_en(Transmitter_io_reader_en),
    .io_reader_data_data(Transmitter_io_reader_data_data),
    .io_reader_data_last(Transmitter_io_reader_data_last),
    .io_reader_empty(Transmitter_io_reader_empty),
    .io_tx_tdata(Transmitter_io_tx_tdata),
    .io_tx_tvalid(Transmitter_io_tx_tvalid),
    .io_tx_tlast(Transmitter_io_tx_tlast),
    .io_tx_tready(Transmitter_io_tx_tready)
  );
  assign _T_1 = acceptorBridge_io_read_empty ? 1'h0 : 1'h1; // @[router.scala 63:23]
  assign io_tx_tdata = Transmitter_io_tx_tdata; // @[router.scala 96:23]
  assign io_tx_tvalid = Transmitter_io_tx_tvalid; // @[router.scala 96:23]
  assign io_tx_tlast = Transmitter_io_tx_tlast; // @[router.scala 96:23]
  assign io_buf_clk = adapter_toBuf_clk; // @[router.scala 89:17]
  assign io_buf_addr = adapter_toBuf_addr; // @[router.scala 89:17]
  assign io_buf_din = adapter_toBuf_din; // @[router.scala 89:17]
  assign io_buf_we = adapter_toBuf_we; // @[router.scala 89:17]
  assign acceptorBridge_reset = reset;
  assign acceptorBridge_io_write_clk = Acceptor_io_writer_clk; // @[router.scala 52:29]
  assign acceptorBridge_io_write_en = Acceptor_io_writer_en; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_eth_dest = Acceptor_io_writer_data_eth_dest; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_eth_sender = Acceptor_io_writer_data_eth_sender; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_eth_pactype = Acceptor_io_writer_data_eth_pactype; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_eth_vlan = Acceptor_io_writer_data_eth_vlan; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_version = Acceptor_io_writer_data_ip_version; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_ihl = Acceptor_io_writer_data_ip_ihl; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_dscp = Acceptor_io_writer_data_ip_dscp; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_ecn = Acceptor_io_writer_data_ip_ecn; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_len = Acceptor_io_writer_data_ip_len; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_id = Acceptor_io_writer_data_ip_id; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_flags = Acceptor_io_writer_data_ip_flags; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_foff = Acceptor_io_writer_data_ip_foff; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_ttl = Acceptor_io_writer_data_ip_ttl; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_proto = Acceptor_io_writer_data_ip_proto; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_chksum = Acceptor_io_writer_data_ip_chksum; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_src = Acceptor_io_writer_data_ip_src; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_ip_dest = Acceptor_io_writer_data_ip_dest; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_icmp_id = Acceptor_io_writer_data_icmp_id; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_icmp_checksum = Acceptor_io_writer_data_icmp_checksum; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_icmp_code = Acceptor_io_writer_data_icmp_code; // @[router.scala 52:29]
  assign acceptorBridge_io_write_data_icmp_imcpType = Acceptor_io_writer_data_icmp_imcpType; // @[router.scala 52:29]
  assign acceptorBridge_io_read_clk = clock; // @[router.scala 40:30]
  assign acceptorBridge_io_read_en = ctrl_io_inputWait == 1'h0; // @[router.scala 57:29]
  assign transmitterBridge_reset = reset;
  assign transmitterBridge_io_write_clk = encoder_io_writer_clk; // @[router.scala 43:34 router.scala 85:21]
  assign transmitterBridge_io_write_en = encoder_io_writer_en; // @[router.scala 85:21]
  assign transmitterBridge_io_write_data_data = encoder_io_writer_data_data; // @[router.scala 85:21]
  assign transmitterBridge_io_write_data_last = encoder_io_writer_data_last; // @[router.scala 85:21]
  assign transmitterBridge_io_read_clk = Transmitter_io_reader_clk; // @[router.scala 95:27]
  assign transmitterBridge_io_read_en = Transmitter_io_reader_en; // @[router.scala 95:27]
  assign payloadBridge_reset = reset;
  assign payloadBridge_io_write_clk = Acceptor_io_payloadWriter_clk; // @[router.scala 53:28]
  assign payloadBridge_io_write_en = Acceptor_io_payloadWriter_en; // @[router.scala 53:28]
  assign payloadBridge_io_write_data_data = Acceptor_io_payloadWriter_data_data; // @[router.scala 53:28]
  assign payloadBridge_io_write_data_last = Acceptor_io_payloadWriter_data_last; // @[router.scala 53:28]
  assign payloadBridge_io_read_clk = encoder_io_payloadReader_clk; // @[router.scala 86:28]
  assign payloadBridge_io_read_en = encoder_io_payloadReader_en; // @[router.scala 86:28]
  assign Acceptor_clock = io_rx_clk;
  assign Acceptor_reset = reset;
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 51:20]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 51:20]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 51:20]
  assign Acceptor_io_payloadWriter_progfull = payloadBridge_io_write_progfull; // @[router.scala 53:28]
  assign ctrl_io_nat_stall = nat_io_stall; // @[router.scala 60:21]
  assign ctrl_io_forward_stall = forward_io_stall; // @[router.scala 66:25]
  assign ctrl_io_encoder_stall = encoder_io_stall; // @[router.scala 78:25]
  assign nat_clock = clock;
  assign nat_reset = reset;
  assign nat_io_input_eth_dest = acceptorBridge_io_read_data_eth_dest; // @[router.scala 62:16]
  assign nat_io_input_eth_sender = acceptorBridge_io_read_data_eth_sender; // @[router.scala 62:16]
  assign nat_io_input_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 62:16]
  assign nat_io_input_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 62:16]
  assign nat_io_input_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 62:16]
  assign nat_io_input_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 62:16]
  assign nat_io_input_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 62:16]
  assign nat_io_input_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 62:16]
  assign nat_io_input_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 62:16]
  assign nat_io_input_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 62:16]
  assign nat_io_input_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 62:16]
  assign nat_io_input_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 62:16]
  assign nat_io_input_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 62:16]
  assign nat_io_input_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 62:16]
  assign nat_io_input_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 62:16]
  assign nat_io_input_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 62:16]
  assign nat_io_input_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 62:16]
  assign nat_io_input_icmp_id = acceptorBridge_io_read_data_icmp_id; // @[router.scala 62:16]
  assign nat_io_input_icmp_checksum = acceptorBridge_io_read_data_icmp_checksum; // @[router.scala 62:16]
  assign nat_io_input_icmp_code = acceptorBridge_io_read_data_icmp_code; // @[router.scala 62:16]
  assign nat_io_input_icmp_imcpType = acceptorBridge_io_read_data_icmp_imcpType; // @[router.scala 62:16]
  assign nat_io_status = {{1'd0}, _T_1}; // @[router.scala 63:17]
  assign nat_io_pause = ctrl_io_nat_pause; // @[router.scala 61:16]
  assign forward_clock = clock;
  assign forward_reset = reset;
  assign forward_io_input_eth_dest = nat_io_output_eth_dest; // @[router.scala 68:20]
  assign forward_io_input_eth_sender = nat_io_output_eth_sender; // @[router.scala 68:20]
  assign forward_io_input_eth_pactype = nat_io_output_eth_pactype; // @[router.scala 68:20]
  assign forward_io_input_eth_vlan = nat_io_output_eth_vlan; // @[router.scala 68:20]
  assign forward_io_input_ip_version = nat_io_output_ip_version; // @[router.scala 68:20]
  assign forward_io_input_ip_ihl = nat_io_output_ip_ihl; // @[router.scala 68:20]
  assign forward_io_input_ip_dscp = nat_io_output_ip_dscp; // @[router.scala 68:20]
  assign forward_io_input_ip_ecn = nat_io_output_ip_ecn; // @[router.scala 68:20]
  assign forward_io_input_ip_len = nat_io_output_ip_len; // @[router.scala 68:20]
  assign forward_io_input_ip_id = nat_io_output_ip_id; // @[router.scala 68:20]
  assign forward_io_input_ip_flags = nat_io_output_ip_flags; // @[router.scala 68:20]
  assign forward_io_input_ip_foff = nat_io_output_ip_foff; // @[router.scala 68:20]
  assign forward_io_input_ip_ttl = nat_io_output_ip_ttl; // @[router.scala 68:20]
  assign forward_io_input_ip_proto = nat_io_output_ip_proto; // @[router.scala 68:20]
  assign forward_io_input_ip_chksum = nat_io_output_ip_chksum; // @[router.scala 68:20]
  assign forward_io_input_ip_src = nat_io_output_ip_src; // @[router.scala 68:20]
  assign forward_io_input_ip_dest = nat_io_output_ip_dest; // @[router.scala 68:20]
  assign forward_io_input_icmp_id = nat_io_output_icmp_id; // @[router.scala 68:20]
  assign forward_io_input_icmp_checksum = nat_io_output_icmp_checksum; // @[router.scala 68:20]
  assign forward_io_input_icmp_code = nat_io_output_icmp_code; // @[router.scala 68:20]
  assign forward_io_input_icmp_imcpType = nat_io_output_icmp_imcpType; // @[router.scala 68:20]
  assign forward_io_status = nat_io_outputStatus; // @[router.scala 69:21]
  assign forward_io_pause = ctrl_io_forward_pause; // @[router.scala 67:25]
  assign arp_clock = clock;
  assign arp_reset = reset;
  assign arp_io_input_packet_eth_dest = forward_io_output_packet_eth_dest; // @[router.scala 74:21]
  assign arp_io_input_packet_eth_sender = forward_io_output_packet_eth_sender; // @[router.scala 74:21]
  assign arp_io_input_packet_eth_pactype = forward_io_output_packet_eth_pactype; // @[router.scala 74:21]
  assign arp_io_input_packet_eth_vlan = forward_io_output_packet_eth_vlan; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_version = forward_io_output_packet_ip_version; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_ihl = forward_io_output_packet_ip_ihl; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_dscp = forward_io_output_packet_ip_dscp; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_ecn = forward_io_output_packet_ip_ecn; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_len = forward_io_output_packet_ip_len; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_id = forward_io_output_packet_ip_id; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_flags = forward_io_output_packet_ip_flags; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_foff = forward_io_output_packet_ip_foff; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_ttl = forward_io_output_packet_ip_ttl; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_proto = forward_io_output_packet_ip_proto; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_chksum = forward_io_output_packet_ip_chksum; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_src = forward_io_output_packet_ip_src; // @[router.scala 74:21]
  assign arp_io_input_packet_ip_dest = forward_io_output_packet_ip_dest; // @[router.scala 74:21]
  assign arp_io_input_packet_icmp_id = forward_io_output_packet_icmp_id; // @[router.scala 74:21]
  assign arp_io_input_packet_icmp_checksum = forward_io_output_packet_icmp_checksum; // @[router.scala 74:21]
  assign arp_io_input_packet_icmp_code = forward_io_output_packet_icmp_code; // @[router.scala 74:21]
  assign arp_io_input_packet_icmp_imcpType = forward_io_output_packet_icmp_imcpType; // @[router.scala 74:21]
  assign arp_io_status = forward_io_outputStatus; // @[router.scala 75:27]
  assign arp_io_pause = ctrl_io_arp_pause; // @[router.scala 73:21]
  assign encoder_clock = clock;
  assign encoder_reset = reset;
  assign encoder_io_input_packet_eth_dest = arp_io_output_packet_eth_dest; // @[router.scala 83:20]
  assign encoder_io_input_packet_eth_sender = arp_io_output_packet_eth_sender; // @[router.scala 83:20]
  assign encoder_io_input_packet_eth_pactype = arp_io_output_packet_eth_pactype; // @[router.scala 83:20]
  assign encoder_io_input_packet_eth_vlan = arp_io_output_packet_eth_vlan; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_version = arp_io_output_packet_ip_version; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_ihl = arp_io_output_packet_ip_ihl; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_dscp = arp_io_output_packet_ip_dscp; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_ecn = arp_io_output_packet_ip_ecn; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_len = arp_io_output_packet_ip_len; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_id = arp_io_output_packet_ip_id; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_flags = arp_io_output_packet_ip_flags; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_foff = arp_io_output_packet_ip_foff; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_ttl = arp_io_output_packet_ip_ttl; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_proto = arp_io_output_packet_ip_proto; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_chksum = arp_io_output_packet_ip_chksum; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_src = arp_io_output_packet_ip_src; // @[router.scala 83:20]
  assign encoder_io_input_packet_ip_dest = arp_io_output_packet_ip_dest; // @[router.scala 83:20]
  assign encoder_io_input_packet_icmp_id = arp_io_output_packet_icmp_id; // @[router.scala 83:20]
  assign encoder_io_input_packet_icmp_checksum = arp_io_output_packet_icmp_checksum; // @[router.scala 83:20]
  assign encoder_io_input_packet_icmp_code = arp_io_output_packet_icmp_code; // @[router.scala 83:20]
  assign encoder_io_input_packet_icmp_imcpType = arp_io_output_packet_icmp_imcpType; // @[router.scala 83:20]
  assign encoder_io_status = arp_io_outputStatus; // @[router.scala 84:21]
  assign encoder_io_pause = ctrl_io_encoder_pause; // @[router.scala 79:25]
  assign encoder_io_writer_full = transmitterBridge_io_write_full; // @[router.scala 85:21]
  assign encoder_io_payloadReader_data_data = payloadBridge_io_read_data_data; // @[router.scala 86:28]
  assign encoder_io_payloadReader_data_last = payloadBridge_io_read_data_last; // @[router.scala 86:28]
  assign encoder_io_payloadReader_empty = payloadBridge_io_read_empty; // @[router.scala 86:28]
  assign encoder_toAdapter_stall = adapter_fromExec_stall; // @[router.scala 90:21]
  assign adapter_clock = clock;
  assign adapter_reset = reset;
  assign adapter_toBuf_dout = io_buf_dout; // @[router.scala 89:17]
  assign adapter_fromExec_input = encoder_toAdapter_input; // @[router.scala 90:21]
  assign adapter_fromExec_valid = encoder_toAdapter_valid; // @[router.scala 90:21]
  assign adapter_fromExec_last = encoder_toAdapter_last; // @[router.scala 90:21]
  assign Transmitter_clock = io_tx_clk;
  assign Transmitter_io_reader_data_data = transmitterBridge_io_read_data_data; // @[router.scala 95:27]
  assign Transmitter_io_reader_data_last = transmitterBridge_io_read_data_last; // @[router.scala 95:27]
  assign Transmitter_io_reader_empty = transmitterBridge_io_read_empty; // @[router.scala 95:27]
  assign Transmitter_io_tx_tready = io_tx_tready; // @[router.scala 96:23]
endmodule
module Top(
  input         clock,
  input         reset,
  input         io_rx_clk,
  input         io_tx_clk,
  input  [7:0]  io_rx_tdata,
  input         io_rx_tvalid,
  input         io_rx_tlast,
  output [7:0]  io_tx_tdata,
  output        io_tx_tvalid,
  output        io_tx_tlast,
  input         io_tx_tready,
  output        io_tx_tuser,
  output        io_buf_clk,
  output [31:0] io_buf_addr,
  output [7:0]  io_buf_din,
  input  [7:0]  io_buf_dout,
  output        io_buf_we
);
  wire  router_clock; // @[top.scala 28:22]
  wire  router_reset; // @[top.scala 28:22]
  wire  router_io_rx_clk; // @[top.scala 28:22]
  wire  router_io_tx_clk; // @[top.scala 28:22]
  wire [7:0] router_io_rx_tdata; // @[top.scala 28:22]
  wire  router_io_rx_tvalid; // @[top.scala 28:22]
  wire  router_io_rx_tlast; // @[top.scala 28:22]
  wire [7:0] router_io_tx_tdata; // @[top.scala 28:22]
  wire  router_io_tx_tvalid; // @[top.scala 28:22]
  wire  router_io_tx_tlast; // @[top.scala 28:22]
  wire  router_io_tx_tready; // @[top.scala 28:22]
  wire  router_io_buf_clk; // @[top.scala 28:22]
  wire [31:0] router_io_buf_addr; // @[top.scala 28:22]
  wire [7:0] router_io_buf_din; // @[top.scala 28:22]
  wire [7:0] router_io_buf_dout; // @[top.scala 28:22]
  wire  router_io_buf_we; // @[top.scala 28:22]
  Router router ( // @[top.scala 28:22]
    .clock(router_clock),
    .reset(router_reset),
    .io_rx_clk(router_io_rx_clk),
    .io_tx_clk(router_io_tx_clk),
    .io_rx_tdata(router_io_rx_tdata),
    .io_rx_tvalid(router_io_rx_tvalid),
    .io_rx_tlast(router_io_rx_tlast),
    .io_tx_tdata(router_io_tx_tdata),
    .io_tx_tvalid(router_io_tx_tvalid),
    .io_tx_tlast(router_io_tx_tlast),
    .io_tx_tready(router_io_tx_tready),
    .io_buf_clk(router_io_buf_clk),
    .io_buf_addr(router_io_buf_addr),
    .io_buf_din(router_io_buf_din),
    .io_buf_dout(router_io_buf_dout),
    .io_buf_we(router_io_buf_we)
  );
  assign io_tx_tdata = router_io_tx_tdata; // @[top.scala 38:15]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 40:16]
  assign io_tx_tlast = router_io_tx_tlast; // @[top.scala 39:15]
  assign io_tx_tuser = 1'h0; // @[top.scala 49:15]
  assign io_buf_clk = router_io_buf_clk; // @[top.scala 44:14]
  assign io_buf_addr = router_io_buf_addr; // @[top.scala 43:15]
  assign io_buf_din = router_io_buf_din; // @[top.scala 45:14]
  assign io_buf_we = router_io_buf_we; // @[top.scala 47:13]
  assign router_clock = clock;
  assign router_reset = reset;
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 30:20]
  assign router_io_tx_clk = io_tx_clk; // @[top.scala 31:20]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 33:22]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 34:23]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 35:22]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 41:23]
  assign router_io_buf_dout = io_buf_dout; // @[top.scala 46:22]
endmodule
