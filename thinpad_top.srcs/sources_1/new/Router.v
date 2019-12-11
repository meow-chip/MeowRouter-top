module AsyncBridge( // @[:@24.2]
  input         reset, // @[:@26.4]
  input         io_write_clk, // @[:@27.4]
  input         io_write_en, // @[:@27.4]
  input  [47:0] io_write_data_eth_dest, // @[:@27.4]
  input  [47:0] io_write_data_eth_sender, // @[:@27.4]
  input  [1:0]  io_write_data_eth_pactype, // @[:@27.4]
  input  [2:0]  io_write_data_eth_vlan, // @[:@27.4]
  input  [15:0] io_write_data_arp_htype, // @[:@27.4]
  input  [15:0] io_write_data_arp_ptype, // @[:@27.4]
  input  [7:0]  io_write_data_arp_hlen, // @[:@27.4]
  input  [7:0]  io_write_data_arp_plen, // @[:@27.4]
  input  [15:0] io_write_data_arp_oper, // @[:@27.4]
  input  [47:0] io_write_data_arp_sha, // @[:@27.4]
  input  [31:0] io_write_data_arp_spa, // @[:@27.4]
  input  [47:0] io_write_data_arp_tha, // @[:@27.4]
  input  [31:0] io_write_data_arp_tpa, // @[:@27.4]
  input  [3:0]  io_write_data_ip_version, // @[:@27.4]
  input  [3:0]  io_write_data_ip_ihl, // @[:@27.4]
  input  [5:0]  io_write_data_ip_dscp, // @[:@27.4]
  input  [1:0]  io_write_data_ip_ecn, // @[:@27.4]
  input  [15:0] io_write_data_ip_len, // @[:@27.4]
  input  [15:0] io_write_data_ip_id, // @[:@27.4]
  input  [2:0]  io_write_data_ip_flags, // @[:@27.4]
  input  [12:0] io_write_data_ip_foff, // @[:@27.4]
  input  [7:0]  io_write_data_ip_ttl, // @[:@27.4]
  input  [7:0]  io_write_data_ip_proto, // @[:@27.4]
  input  [15:0] io_write_data_ip_chksum, // @[:@27.4]
  input  [31:0] io_write_data_ip_src, // @[:@27.4]
  input  [31:0] io_write_data_ip_dest, // @[:@27.4]
  input  [15:0] io_write_data_icmp_id, // @[:@27.4]
  input  [15:0] io_write_data_icmp_checksum, // @[:@27.4]
  input  [7:0]  io_write_data_icmp_code, // @[:@27.4]
  input  [7:0]  io_write_data_icmp_imcpType, // @[:@27.4]
  input         io_read_clk, // @[:@27.4]
  input         io_read_en, // @[:@27.4]
  output [47:0] io_read_data_eth_dest, // @[:@27.4]
  output [47:0] io_read_data_eth_sender, // @[:@27.4]
  output [1:0]  io_read_data_eth_pactype, // @[:@27.4]
  output [2:0]  io_read_data_eth_vlan, // @[:@27.4]
  output [15:0] io_read_data_arp_htype, // @[:@27.4]
  output [15:0] io_read_data_arp_ptype, // @[:@27.4]
  output [7:0]  io_read_data_arp_hlen, // @[:@27.4]
  output [7:0]  io_read_data_arp_plen, // @[:@27.4]
  output [15:0] io_read_data_arp_oper, // @[:@27.4]
  output [47:0] io_read_data_arp_sha, // @[:@27.4]
  output [31:0] io_read_data_arp_spa, // @[:@27.4]
  output [47:0] io_read_data_arp_tha, // @[:@27.4]
  output [31:0] io_read_data_arp_tpa, // @[:@27.4]
  output [3:0]  io_read_data_ip_version, // @[:@27.4]
  output [3:0]  io_read_data_ip_ihl, // @[:@27.4]
  output [5:0]  io_read_data_ip_dscp, // @[:@27.4]
  output [1:0]  io_read_data_ip_ecn, // @[:@27.4]
  output [15:0] io_read_data_ip_len, // @[:@27.4]
  output [15:0] io_read_data_ip_id, // @[:@27.4]
  output [2:0]  io_read_data_ip_flags, // @[:@27.4]
  output [12:0] io_read_data_ip_foff, // @[:@27.4]
  output [7:0]  io_read_data_ip_ttl, // @[:@27.4]
  output [7:0]  io_read_data_ip_proto, // @[:@27.4]
  output [15:0] io_read_data_ip_chksum, // @[:@27.4]
  output [31:0] io_read_data_ip_src, // @[:@27.4]
  output [31:0] io_read_data_ip_dest, // @[:@27.4]
  output [15:0] io_read_data_icmp_id, // @[:@27.4]
  output [15:0] io_read_data_icmp_checksum, // @[:@27.4]
  output [7:0]  io_read_data_icmp_code, // @[:@27.4]
  output [7:0]  io_read_data_icmp_imcpType, // @[:@27.4]
  output        io_read_empty // @[:@27.4]
);
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23:@29.4]
  wire [532:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23:@29.4]
  wire [532:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23:@29.4]
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23:@29.4]
  wire [127:0] _T_26; // @[asyncBridge.scala 75:35:@48.4]
  wire [199:0] _T_34; // @[asyncBridge.scala 75:35:@56.4]
  wire [183:0] _T_40; // @[asyncBridge.scala 75:35:@62.4]
  wire [332:0] _T_48; // @[asyncBridge.scala 75:35:@70.4]
  wire [532:0] _T_53; // @[:@78.4 :@79.4]
  xpm_fifo_async #(.READ_DATA_WIDTH(533), .WRITE_DATA_WIDTH(533), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(7), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23:@29.4]
    .prog_full(xpm_fifo_async_prog_full),
    .empty(xpm_fifo_async_empty),
    .dout(xpm_fifo_async_dout),
    .rd_en(xpm_fifo_async_rd_en),
    .rd_clk(xpm_fifo_async_rd_clk),
    .full(xpm_fifo_async_full),
    .din(xpm_fifo_async_din),
    .wr_en(xpm_fifo_async_wr_en),
    .wr_clk(xpm_fifo_async_wr_clk),
    .rst(xpm_fifo_async_rst)
  );
  assign _T_26 = {io_write_data_ip_chksum,io_write_data_ip_src,io_write_data_ip_dest,io_write_data_icmp_id,io_write_data_icmp_checksum,io_write_data_icmp_code,io_write_data_icmp_imcpType}; // @[asyncBridge.scala 75:35:@48.4]
  assign _T_34 = {io_write_data_ip_dscp,io_write_data_ip_ecn,io_write_data_ip_len,io_write_data_ip_id,io_write_data_ip_flags,io_write_data_ip_foff,io_write_data_ip_ttl,io_write_data_ip_proto,_T_26}; // @[asyncBridge.scala 75:35:@56.4]
  assign _T_40 = {io_write_data_arp_oper,io_write_data_arp_sha,io_write_data_arp_spa,io_write_data_arp_tha,io_write_data_arp_tpa,io_write_data_ip_version,io_write_data_ip_ihl}; // @[asyncBridge.scala 75:35:@62.4]
  assign _T_48 = {io_write_data_eth_dest,io_write_data_eth_sender,io_write_data_eth_pactype,io_write_data_eth_vlan,io_write_data_arp_htype,io_write_data_arp_ptype,io_write_data_arp_hlen,io_write_data_arp_plen,_T_40}; // @[asyncBridge.scala 75:35:@70.4]
  assign _T_53 = xpm_fifo_async_dout; // @[:@78.4 :@79.4]
  assign io_read_data_eth_dest = _T_53[532:485]; // @[asyncBridge.scala 81:18:@169.4]
  assign io_read_data_eth_sender = _T_53[484:437]; // @[asyncBridge.scala 81:18:@168.4]
  assign io_read_data_eth_pactype = _T_53[436:435]; // @[asyncBridge.scala 81:18:@167.4]
  assign io_read_data_eth_vlan = _T_53[434:432]; // @[asyncBridge.scala 81:18:@166.4]
  assign io_read_data_arp_htype = _T_53[431:416]; // @[asyncBridge.scala 81:18:@165.4]
  assign io_read_data_arp_ptype = _T_53[415:400]; // @[asyncBridge.scala 81:18:@164.4]
  assign io_read_data_arp_hlen = _T_53[399:392]; // @[asyncBridge.scala 81:18:@163.4]
  assign io_read_data_arp_plen = _T_53[391:384]; // @[asyncBridge.scala 81:18:@162.4]
  assign io_read_data_arp_oper = _T_53[383:368]; // @[asyncBridge.scala 81:18:@161.4]
  assign io_read_data_arp_sha = _T_53[367:320]; // @[asyncBridge.scala 81:18:@160.4]
  assign io_read_data_arp_spa = _T_53[319:288]; // @[asyncBridge.scala 81:18:@159.4]
  assign io_read_data_arp_tha = _T_53[287:240]; // @[asyncBridge.scala 81:18:@158.4]
  assign io_read_data_arp_tpa = _T_53[239:208]; // @[asyncBridge.scala 81:18:@157.4]
  assign io_read_data_ip_version = _T_53[207:204]; // @[asyncBridge.scala 81:18:@156.4]
  assign io_read_data_ip_ihl = _T_53[203:200]; // @[asyncBridge.scala 81:18:@155.4]
  assign io_read_data_ip_dscp = _T_53[199:194]; // @[asyncBridge.scala 81:18:@154.4]
  assign io_read_data_ip_ecn = _T_53[193:192]; // @[asyncBridge.scala 81:18:@153.4]
  assign io_read_data_ip_len = _T_53[191:176]; // @[asyncBridge.scala 81:18:@152.4]
  assign io_read_data_ip_id = _T_53[175:160]; // @[asyncBridge.scala 81:18:@151.4]
  assign io_read_data_ip_flags = _T_53[159:157]; // @[asyncBridge.scala 81:18:@150.4]
  assign io_read_data_ip_foff = _T_53[156:144]; // @[asyncBridge.scala 81:18:@149.4]
  assign io_read_data_ip_ttl = _T_53[143:136]; // @[asyncBridge.scala 81:18:@148.4]
  assign io_read_data_ip_proto = _T_53[135:128]; // @[asyncBridge.scala 81:18:@147.4]
  assign io_read_data_ip_chksum = _T_53[127:112]; // @[asyncBridge.scala 81:18:@146.4]
  assign io_read_data_ip_src = _T_53[111:80]; // @[asyncBridge.scala 81:18:@145.4]
  assign io_read_data_ip_dest = _T_53[79:48]; // @[asyncBridge.scala 81:18:@144.4]
  assign io_read_data_icmp_id = _T_53[47:32]; // @[asyncBridge.scala 81:18:@143.4]
  assign io_read_data_icmp_checksum = _T_53[31:16]; // @[asyncBridge.scala 81:18:@142.4]
  assign io_read_data_icmp_code = _T_53[15:8]; // @[asyncBridge.scala 81:18:@141.4]
  assign io_read_data_icmp_imcpType = _T_53[7:0]; // @[asyncBridge.scala 81:18:@140.4]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19:@170.4]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20:@76.4]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21:@75.4]
  assign xpm_fifo_async_din = {_T_48,_T_34}; // @[asyncBridge.scala 75:18:@72.4]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20:@42.4]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21:@41.4]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18:@40.4]
endmodule
module AsyncBridge_1( // @[:@193.2]
  input        reset, // @[:@195.4]
  input        io_write_clk, // @[:@196.4]
  input        io_write_en, // @[:@196.4]
  input  [7:0] io_write_data_data, // @[:@196.4]
  input        io_write_data_last, // @[:@196.4]
  output       io_write_full, // @[:@196.4]
  input        io_read_clk, // @[:@196.4]
  input        io_read_en, // @[:@196.4]
  output [7:0] io_read_data_data, // @[:@196.4]
  output       io_read_data_last, // @[:@196.4]
  output       io_read_empty // @[:@196.4]
);
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23:@198.4]
  wire [8:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23:@198.4]
  wire [8:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23:@198.4]
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23:@198.4]
  wire [8:0] _T_25; // @[:@219.4 :@220.4]
  xpm_fifo_async #(.READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(7), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23:@198.4]
    .prog_full(xpm_fifo_async_prog_full),
    .empty(xpm_fifo_async_empty),
    .dout(xpm_fifo_async_dout),
    .rd_en(xpm_fifo_async_rd_en),
    .rd_clk(xpm_fifo_async_rd_clk),
    .full(xpm_fifo_async_full),
    .din(xpm_fifo_async_din),
    .wr_en(xpm_fifo_async_wr_en),
    .wr_clk(xpm_fifo_async_wr_clk),
    .rst(xpm_fifo_async_rst)
  );
  assign _T_25 = xpm_fifo_async_dout; // @[:@219.4 :@220.4]
  assign io_write_full = xpm_fifo_async_full; // @[asyncBridge.scala 76:19:@214.4]
  assign io_read_data_data = _T_25[8:1]; // @[asyncBridge.scala 81:18:@226.4]
  assign io_read_data_last = _T_25[0]; // @[asyncBridge.scala 81:18:@225.4]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19:@227.4]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20:@217.4]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21:@216.4]
  assign xpm_fifo_async_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 75:18:@213.4]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20:@211.4]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21:@210.4]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18:@209.4]
endmodule
module AsyncBridge_2( // @[:@250.2]
  input        reset, // @[:@252.4]
  input        io_write_clk, // @[:@253.4]
  input        io_write_en, // @[:@253.4]
  input  [7:0] io_write_data_data, // @[:@253.4]
  input        io_write_data_last, // @[:@253.4]
  output       io_write_progfull, // @[:@253.4]
  input        io_read_clk, // @[:@253.4]
  input        io_read_en, // @[:@253.4]
  output [7:0] io_read_data_data, // @[:@253.4]
  output       io_read_data_last, // @[:@253.4]
  output       io_read_empty // @[:@253.4]
);
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23:@255.4]
  wire [8:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23:@255.4]
  wire [8:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23:@255.4]
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23:@255.4]
  wire [8:0] _T_25; // @[:@276.4 :@277.4]
  xpm_fifo_async #(.READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(4096), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(2497), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23:@255.4]
    .prog_full(xpm_fifo_async_prog_full),
    .empty(xpm_fifo_async_empty),
    .dout(xpm_fifo_async_dout),
    .rd_en(xpm_fifo_async_rd_en),
    .rd_clk(xpm_fifo_async_rd_clk),
    .full(xpm_fifo_async_full),
    .din(xpm_fifo_async_din),
    .wr_en(xpm_fifo_async_wr_en),
    .wr_clk(xpm_fifo_async_wr_clk),
    .rst(xpm_fifo_async_rst)
  );
  assign _T_25 = xpm_fifo_async_dout; // @[:@276.4 :@277.4]
  assign io_write_progfull = xpm_fifo_async_prog_full; // @[asyncBridge.scala 77:23:@272.4]
  assign io_read_data_data = _T_25[8:1]; // @[asyncBridge.scala 81:18:@283.4]
  assign io_read_data_last = _T_25[0]; // @[asyncBridge.scala 81:18:@282.4]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19:@284.4]
  assign xpm_fifo_async_rd_en = io_read_en; // @[asyncBridge.scala 80:20:@274.4]
  assign xpm_fifo_async_rd_clk = io_read_clk; // @[asyncBridge.scala 79:21:@273.4]
  assign xpm_fifo_async_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 75:18:@270.4]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20:@268.4]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21:@267.4]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18:@266.4]
endmodule
module ARPAcceptor( // @[:@286.2]
  input         clock, // @[:@287.4]
  input         reset, // @[:@288.4]
  input  [7:0]  io_rx_tdata, // @[:@289.4]
  input         io_rx_tvalid, // @[:@289.4]
  output [15:0] io_output_htype, // @[:@289.4]
  output [15:0] io_output_ptype, // @[:@289.4]
  output [7:0]  io_output_hlen, // @[:@289.4]
  output [7:0]  io_output_plen, // @[:@289.4]
  output [15:0] io_output_oper, // @[:@289.4]
  output [47:0] io_output_sha, // @[:@289.4]
  output [31:0] io_output_spa, // @[:@289.4]
  output [47:0] io_output_tha, // @[:@289.4]
  output [31:0] io_output_tpa, // @[:@289.4]
  input         io_start, // @[:@289.4]
  output        io_finished // @[:@289.4]
);
  reg [7:0] buf_0; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_0;
  reg [7:0] buf_1; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_1;
  reg [7:0] buf_2; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_2;
  reg [7:0] buf_3; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_3;
  reg [7:0] buf_4; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_4;
  reg [7:0] buf_5; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_5;
  reg [7:0] buf_6; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_6;
  reg [7:0] buf_7; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_7;
  reg [7:0] buf_8; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_8;
  reg [7:0] buf_9; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_9;
  reg [7:0] buf_10; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_10;
  reg [7:0] buf_11; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_11;
  reg [7:0] buf_12; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_12;
  reg [7:0] buf_13; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_13;
  reg [7:0] buf_14; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_14;
  reg [7:0] buf_15; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_15;
  reg [7:0] buf_16; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_16;
  reg [7:0] buf_17; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_17;
  reg [7:0] buf_18; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_18;
  reg [7:0] buf_19; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_19;
  reg [7:0] buf_20; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_20;
  reg [7:0] buf_21; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_21;
  reg [7:0] buf_22; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_22;
  reg [7:0] buf_23; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_23;
  reg [7:0] buf_24; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_24;
  reg [7:0] buf_25; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_25;
  reg [7:0] buf_26; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_26;
  reg [7:0] buf_27; // @[arp.scala 14:16:@291.4]
  reg [31:0] _RAND_27;
  reg [4:0] cnt; // @[arp.scala 15:20:@292.4]
  reg [31:0] _RAND_28;
  reg  reading; // @[arp.scala 16:24:@293.4]
  reg [31:0] _RAND_29;
  wire  _GEN_0; // @[arp.scala 18:18:@294.4]
  wire  _T_67; // @[arp.scala 22:34:@297.4]
  wire  _T_68; // @[arp.scala 22:21:@298.4]
  wire  _T_70; // @[arp.scala 23:14:@300.6]
  wire [5:0] _T_72; // @[arp.scala 24:16:@302.8]
  wire [5:0] _T_73; // @[arp.scala 24:16:@303.8]
  wire [4:0] _T_74; // @[arp.scala 24:16:@304.8]
  wire [7:0] _GEN_1; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_2; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_3; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_4; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_5; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_6; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_7; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_8; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_9; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_10; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_11; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_12; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_13; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_14; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_15; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_16; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_17; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_18; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_19; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_20; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_21; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_22; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_23; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_24; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_25; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_26; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_27; // @[arp.scala 24:23:@305.8]
  wire [7:0] _GEN_28; // @[arp.scala 24:23:@305.8]
  wire [5:0] _T_77; // @[arp.scala 25:18:@306.8]
  wire [4:0] _T_78; // @[arp.scala 25:18:@307.8]
  wire [7:0] _GEN_29; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_30; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_31; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_32; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_33; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_34; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_35; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_36; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_37; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_38; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_39; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_40; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_41; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_42; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_43; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_44; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_45; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_46; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_47; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_48; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_49; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_50; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_51; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_52; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_53; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_54; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_55; // @[arp.scala 23:22:@301.6]
  wire [7:0] _GEN_56; // @[arp.scala 23:22:@301.6]
  wire [4:0] _GEN_57; // @[arp.scala 23:22:@301.6]
  wire  _T_80; // @[arp.scala 28:14:@310.6]
  reg [4:0] _T_82; // @[arp.scala 28:34:@311.6]
  reg [31:0] _RAND_30;
  wire  _T_84; // @[arp.scala 28:40:@313.6]
  wire  _T_85; // @[arp.scala 28:23:@314.6]
  wire  _GEN_58; // @[arp.scala 28:51:@315.6]
  wire [4:0] _GEN_59; // @[arp.scala 28:51:@315.6]
  wire [4:0] _GEN_88; // @[arp.scala 22:47:@299.4]
  wire  _GEN_89; // @[arp.scala 22:47:@299.4]
  wire [55:0] _T_93; // @[arp.scala 34:20:@325.4]
  wire [111:0] _T_100; // @[arp.scala 34:20:@332.4]
  wire [55:0] _T_106; // @[arp.scala 34:20:@338.4]
  wire [223:0] _T_114; // @[arp.scala 34:20:@346.4]
  assign _GEN_0 = io_start ? 1'h1 : reading; // @[arp.scala 18:18:@294.4]
  assign _T_67 = io_start | reading; // @[arp.scala 22:34:@297.4]
  assign _T_68 = io_rx_tvalid & _T_67; // @[arp.scala 22:21:@298.4]
  assign _T_70 = cnt < 5'h1c; // @[arp.scala 23:14:@300.6]
  assign _T_72 = 5'h1b - cnt; // @[arp.scala 24:16:@302.8]
  assign _T_73 = $unsigned(_T_72); // @[arp.scala 24:16:@303.8]
  assign _T_74 = _T_73[4:0]; // @[arp.scala 24:16:@304.8]
  assign _GEN_1 = 5'h0 == _T_74 ? io_rx_tdata : buf_0; // @[arp.scala 24:23:@305.8]
  assign _GEN_2 = 5'h1 == _T_74 ? io_rx_tdata : buf_1; // @[arp.scala 24:23:@305.8]
  assign _GEN_3 = 5'h2 == _T_74 ? io_rx_tdata : buf_2; // @[arp.scala 24:23:@305.8]
  assign _GEN_4 = 5'h3 == _T_74 ? io_rx_tdata : buf_3; // @[arp.scala 24:23:@305.8]
  assign _GEN_5 = 5'h4 == _T_74 ? io_rx_tdata : buf_4; // @[arp.scala 24:23:@305.8]
  assign _GEN_6 = 5'h5 == _T_74 ? io_rx_tdata : buf_5; // @[arp.scala 24:23:@305.8]
  assign _GEN_7 = 5'h6 == _T_74 ? io_rx_tdata : buf_6; // @[arp.scala 24:23:@305.8]
  assign _GEN_8 = 5'h7 == _T_74 ? io_rx_tdata : buf_7; // @[arp.scala 24:23:@305.8]
  assign _GEN_9 = 5'h8 == _T_74 ? io_rx_tdata : buf_8; // @[arp.scala 24:23:@305.8]
  assign _GEN_10 = 5'h9 == _T_74 ? io_rx_tdata : buf_9; // @[arp.scala 24:23:@305.8]
  assign _GEN_11 = 5'ha == _T_74 ? io_rx_tdata : buf_10; // @[arp.scala 24:23:@305.8]
  assign _GEN_12 = 5'hb == _T_74 ? io_rx_tdata : buf_11; // @[arp.scala 24:23:@305.8]
  assign _GEN_13 = 5'hc == _T_74 ? io_rx_tdata : buf_12; // @[arp.scala 24:23:@305.8]
  assign _GEN_14 = 5'hd == _T_74 ? io_rx_tdata : buf_13; // @[arp.scala 24:23:@305.8]
  assign _GEN_15 = 5'he == _T_74 ? io_rx_tdata : buf_14; // @[arp.scala 24:23:@305.8]
  assign _GEN_16 = 5'hf == _T_74 ? io_rx_tdata : buf_15; // @[arp.scala 24:23:@305.8]
  assign _GEN_17 = 5'h10 == _T_74 ? io_rx_tdata : buf_16; // @[arp.scala 24:23:@305.8]
  assign _GEN_18 = 5'h11 == _T_74 ? io_rx_tdata : buf_17; // @[arp.scala 24:23:@305.8]
  assign _GEN_19 = 5'h12 == _T_74 ? io_rx_tdata : buf_18; // @[arp.scala 24:23:@305.8]
  assign _GEN_20 = 5'h13 == _T_74 ? io_rx_tdata : buf_19; // @[arp.scala 24:23:@305.8]
  assign _GEN_21 = 5'h14 == _T_74 ? io_rx_tdata : buf_20; // @[arp.scala 24:23:@305.8]
  assign _GEN_22 = 5'h15 == _T_74 ? io_rx_tdata : buf_21; // @[arp.scala 24:23:@305.8]
  assign _GEN_23 = 5'h16 == _T_74 ? io_rx_tdata : buf_22; // @[arp.scala 24:23:@305.8]
  assign _GEN_24 = 5'h17 == _T_74 ? io_rx_tdata : buf_23; // @[arp.scala 24:23:@305.8]
  assign _GEN_25 = 5'h18 == _T_74 ? io_rx_tdata : buf_24; // @[arp.scala 24:23:@305.8]
  assign _GEN_26 = 5'h19 == _T_74 ? io_rx_tdata : buf_25; // @[arp.scala 24:23:@305.8]
  assign _GEN_27 = 5'h1a == _T_74 ? io_rx_tdata : buf_26; // @[arp.scala 24:23:@305.8]
  assign _GEN_28 = 5'h1b == _T_74 ? io_rx_tdata : buf_27; // @[arp.scala 24:23:@305.8]
  assign _T_77 = cnt + 5'h1; // @[arp.scala 25:18:@306.8]
  assign _T_78 = cnt + 5'h1; // @[arp.scala 25:18:@307.8]
  assign _GEN_29 = _T_70 ? _GEN_1 : buf_0; // @[arp.scala 23:22:@301.6]
  assign _GEN_30 = _T_70 ? _GEN_2 : buf_1; // @[arp.scala 23:22:@301.6]
  assign _GEN_31 = _T_70 ? _GEN_3 : buf_2; // @[arp.scala 23:22:@301.6]
  assign _GEN_32 = _T_70 ? _GEN_4 : buf_3; // @[arp.scala 23:22:@301.6]
  assign _GEN_33 = _T_70 ? _GEN_5 : buf_4; // @[arp.scala 23:22:@301.6]
  assign _GEN_34 = _T_70 ? _GEN_6 : buf_5; // @[arp.scala 23:22:@301.6]
  assign _GEN_35 = _T_70 ? _GEN_7 : buf_6; // @[arp.scala 23:22:@301.6]
  assign _GEN_36 = _T_70 ? _GEN_8 : buf_7; // @[arp.scala 23:22:@301.6]
  assign _GEN_37 = _T_70 ? _GEN_9 : buf_8; // @[arp.scala 23:22:@301.6]
  assign _GEN_38 = _T_70 ? _GEN_10 : buf_9; // @[arp.scala 23:22:@301.6]
  assign _GEN_39 = _T_70 ? _GEN_11 : buf_10; // @[arp.scala 23:22:@301.6]
  assign _GEN_40 = _T_70 ? _GEN_12 : buf_11; // @[arp.scala 23:22:@301.6]
  assign _GEN_41 = _T_70 ? _GEN_13 : buf_12; // @[arp.scala 23:22:@301.6]
  assign _GEN_42 = _T_70 ? _GEN_14 : buf_13; // @[arp.scala 23:22:@301.6]
  assign _GEN_43 = _T_70 ? _GEN_15 : buf_14; // @[arp.scala 23:22:@301.6]
  assign _GEN_44 = _T_70 ? _GEN_16 : buf_15; // @[arp.scala 23:22:@301.6]
  assign _GEN_45 = _T_70 ? _GEN_17 : buf_16; // @[arp.scala 23:22:@301.6]
  assign _GEN_46 = _T_70 ? _GEN_18 : buf_17; // @[arp.scala 23:22:@301.6]
  assign _GEN_47 = _T_70 ? _GEN_19 : buf_18; // @[arp.scala 23:22:@301.6]
  assign _GEN_48 = _T_70 ? _GEN_20 : buf_19; // @[arp.scala 23:22:@301.6]
  assign _GEN_49 = _T_70 ? _GEN_21 : buf_20; // @[arp.scala 23:22:@301.6]
  assign _GEN_50 = _T_70 ? _GEN_22 : buf_21; // @[arp.scala 23:22:@301.6]
  assign _GEN_51 = _T_70 ? _GEN_23 : buf_22; // @[arp.scala 23:22:@301.6]
  assign _GEN_52 = _T_70 ? _GEN_24 : buf_23; // @[arp.scala 23:22:@301.6]
  assign _GEN_53 = _T_70 ? _GEN_25 : buf_24; // @[arp.scala 23:22:@301.6]
  assign _GEN_54 = _T_70 ? _GEN_26 : buf_25; // @[arp.scala 23:22:@301.6]
  assign _GEN_55 = _T_70 ? _GEN_27 : buf_26; // @[arp.scala 23:22:@301.6]
  assign _GEN_56 = _T_70 ? _GEN_28 : buf_27; // @[arp.scala 23:22:@301.6]
  assign _GEN_57 = _T_70 ? _T_78 : cnt; // @[arp.scala 23:22:@301.6]
  assign _T_80 = cnt == 5'h1c; // @[arp.scala 28:14:@310.6]
  assign _T_84 = _T_82 != 5'h1c; // @[arp.scala 28:40:@313.6]
  assign _T_85 = _T_80 & _T_84; // @[arp.scala 28:23:@314.6]
  assign _GEN_58 = _T_85 ? 1'h0 : _GEN_0; // @[arp.scala 28:51:@315.6]
  assign _GEN_59 = _T_85 ? 5'h0 : _GEN_57; // @[arp.scala 28:51:@315.6]
  assign _GEN_88 = _T_68 ? _GEN_59 : cnt; // @[arp.scala 22:47:@299.4]
  assign _GEN_89 = _T_68 ? _GEN_58 : _GEN_0; // @[arp.scala 22:47:@299.4]
  assign _T_93 = {buf_6,buf_5,buf_4,buf_3,buf_2,buf_1,buf_0}; // @[arp.scala 34:20:@325.4]
  assign _T_100 = {buf_13,buf_12,buf_11,buf_10,buf_9,buf_8,buf_7,_T_93}; // @[arp.scala 34:20:@332.4]
  assign _T_106 = {buf_20,buf_19,buf_18,buf_17,buf_16,buf_15,buf_14}; // @[arp.scala 34:20:@338.4]
  assign _T_114 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21,_T_106,_T_100}; // @[arp.scala 34:20:@346.4]
  assign io_output_htype = _T_114[223:208]; // @[arp.scala 34:13:@376.4]
  assign io_output_ptype = _T_114[207:192]; // @[arp.scala 34:13:@375.4]
  assign io_output_hlen = _T_114[191:184]; // @[arp.scala 34:13:@374.4]
  assign io_output_plen = _T_114[183:176]; // @[arp.scala 34:13:@373.4]
  assign io_output_oper = _T_114[175:160]; // @[arp.scala 34:13:@372.4]
  assign io_output_sha = _T_114[159:112]; // @[arp.scala 34:13:@371.4]
  assign io_output_spa = _T_114[111:80]; // @[arp.scala 34:13:@370.4]
  assign io_output_tha = _T_114[79:32]; // @[arp.scala 34:13:@369.4]
  assign io_output_tpa = _T_114[31:0]; // @[arp.scala 34:13:@368.4]
  assign io_finished = reading == 1'h0; // @[arp.scala 35:15:@378.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  buf_0 = _RAND_0[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  buf_1 = _RAND_1[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  buf_2 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  buf_3 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  buf_4 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  buf_5 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  buf_6 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  buf_7 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  buf_8 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  buf_9 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  buf_10 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  buf_11 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  buf_12 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  buf_13 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  buf_14 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  buf_15 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  buf_16 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  buf_17 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  buf_18 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  buf_19 = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  buf_20 = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  buf_21 = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  buf_22 = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  buf_23 = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  buf_24 = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  buf_25 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  buf_26 = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  buf_27 = _RAND_27[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  cnt = _RAND_28[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  reading = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  _T_82 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_68) begin
      if (_T_70) begin
        if (5'h0 == _T_74) begin
          buf_0 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h1 == _T_74) begin
          buf_1 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h2 == _T_74) begin
          buf_2 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h3 == _T_74) begin
          buf_3 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h4 == _T_74) begin
          buf_4 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h5 == _T_74) begin
          buf_5 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h6 == _T_74) begin
          buf_6 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h7 == _T_74) begin
          buf_7 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h8 == _T_74) begin
          buf_8 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h9 == _T_74) begin
          buf_9 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'ha == _T_74) begin
          buf_10 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'hb == _T_74) begin
          buf_11 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'hc == _T_74) begin
          buf_12 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'hd == _T_74) begin
          buf_13 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'he == _T_74) begin
          buf_14 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'hf == _T_74) begin
          buf_15 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h10 == _T_74) begin
          buf_16 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h11 == _T_74) begin
          buf_17 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h12 == _T_74) begin
          buf_18 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h13 == _T_74) begin
          buf_19 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h14 == _T_74) begin
          buf_20 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h15 == _T_74) begin
          buf_21 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h16 == _T_74) begin
          buf_22 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h17 == _T_74) begin
          buf_23 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h18 == _T_74) begin
          buf_24 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h19 == _T_74) begin
          buf_25 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h1a == _T_74) begin
          buf_26 <= io_rx_tdata;
        end
      end
    end
    if (_T_68) begin
      if (_T_70) begin
        if (5'h1b == _T_74) begin
          buf_27 <= io_rx_tdata;
        end
      end
    end
    if (reset) begin
      cnt <= 5'h0;
    end else begin
      if (_T_68) begin
        if (_T_85) begin
          cnt <= 5'h0;
        end else begin
          if (_T_70) begin
            cnt <= _T_78;
          end
        end
      end
    end
    if (reset) begin
      reading <= 1'h0;
    end else begin
      if (_T_68) begin
        if (_T_85) begin
          reading <= 1'h0;
        end else begin
          if (io_start) begin
            reading <= 1'h1;
          end
        end
      end else begin
        if (io_start) begin
          reading <= 1'h1;
        end
      end
    end
    _T_82 <= cnt;
  end
endmodule
module IPAcceptor( // @[:@381.2]
  input         clock, // @[:@382.4]
  input         reset, // @[:@383.4]
  input  [7:0]  io_rx_tdata, // @[:@384.4]
  input         io_rx_tvalid, // @[:@384.4]
  input         io_rx_tlast, // @[:@384.4]
  output [3:0]  io_ip_version, // @[:@384.4]
  output [3:0]  io_ip_ihl, // @[:@384.4]
  output [5:0]  io_ip_dscp, // @[:@384.4]
  output [1:0]  io_ip_ecn, // @[:@384.4]
  output [15:0] io_ip_len, // @[:@384.4]
  output [15:0] io_ip_id, // @[:@384.4]
  output [2:0]  io_ip_flags, // @[:@384.4]
  output [12:0] io_ip_foff, // @[:@384.4]
  output [7:0]  io_ip_ttl, // @[:@384.4]
  output [7:0]  io_ip_proto, // @[:@384.4]
  output [15:0] io_ip_chksum, // @[:@384.4]
  output [31:0] io_ip_src, // @[:@384.4]
  output [31:0] io_ip_dest, // @[:@384.4]
  output [15:0] io_icmp_id, // @[:@384.4]
  output [15:0] io_icmp_checksum, // @[:@384.4]
  output [7:0]  io_icmp_code, // @[:@384.4]
  output [7:0]  io_icmp_imcpType, // @[:@384.4]
  input         io_start, // @[:@384.4]
  output        io_headerFinished, // @[:@384.4]
  output        io_ignored, // @[:@384.4]
  output        io_payloadWriter_clk, // @[:@384.4]
  output        io_payloadWriter_en, // @[:@384.4]
  output [7:0]  io_payloadWriter_data_data, // @[:@384.4]
  output        io_payloadWriter_data_last, // @[:@384.4]
  input         io_payloadWriter_progfull // @[:@384.4]
);
  reg [7:0] ipBuf_0; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_0;
  reg [7:0] ipBuf_1; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_1;
  reg [7:0] ipBuf_2; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_2;
  reg [7:0] ipBuf_3; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_3;
  reg [7:0] ipBuf_4; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_4;
  reg [7:0] ipBuf_5; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_5;
  reg [7:0] ipBuf_6; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_6;
  reg [7:0] ipBuf_7; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_7;
  reg [7:0] ipBuf_8; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_8;
  reg [7:0] ipBuf_9; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_9;
  reg [7:0] ipBuf_10; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_10;
  reg [7:0] ipBuf_11; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_11;
  reg [7:0] ipBuf_12; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_12;
  reg [7:0] ipBuf_13; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_13;
  reg [7:0] ipBuf_14; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_14;
  reg [7:0] ipBuf_15; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_15;
  reg [7:0] ipBuf_16; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_16;
  reg [7:0] ipBuf_17; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_17;
  reg [7:0] ipBuf_18; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_18;
  reg [7:0] ipBuf_19; // @[ip.scala 25:18:@386.4]
  reg [31:0] _RAND_19;
  reg [7:0] icmpBuf_0; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_20;
  reg [7:0] icmpBuf_1; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_21;
  reg [7:0] icmpBuf_2; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_22;
  reg [7:0] icmpBuf_3; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_23;
  reg [7:0] icmpBuf_4; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_24;
  reg [7:0] icmpBuf_5; // @[ip.scala 26:20:@387.4]
  reg [31:0] _RAND_25;
  reg [10:0] cnt; // @[ip.scala 28:20:@388.4]
  reg [31:0] _RAND_26;
  reg  reading; // @[ip.scala 29:24:@389.4]
  reg [31:0] _RAND_27;
  reg  ignored; // @[ip.scala 30:24:@390.4]
  reg [31:0] _RAND_28;
  reg [1:0] state; // @[ip.scala 33:22:@391.4]
  reg [31:0] _RAND_29;
  wire  _GEN_0; // @[ip.scala 35:18:@392.4]
  wire  _GEN_1; // @[ip.scala 35:18:@392.4]
  wire [1:0] _GEN_2; // @[ip.scala 35:18:@392.4]
  wire  _T_100; // @[ip.scala 47:34:@401.4]
  wire  _T_101; // @[ip.scala 47:21:@402.4]
  wire  _T_102; // @[Conditional.scala 37:30:@404.6]
  wire [11:0] _T_104; // @[ip.scala 52:37:@406.8]
  wire [11:0] _T_105; // @[ip.scala 52:37:@407.8]
  wire [10:0] _T_106; // @[ip.scala 52:37:@408.8]
  wire [4:0] _T_108; // @[:@409.8]
  wire [7:0] _GEN_3; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_4; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_5; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_6; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_7; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_8; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_9; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_10; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_11; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_12; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_13; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_14; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_15; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_16; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_17; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_18; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_19; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_20; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_21; // @[ip.scala 52:44:@410.8]
  wire [7:0] _GEN_22; // @[ip.scala 52:44:@410.8]
  wire  _T_110; // @[ip.scala 54:18:@411.8]
  wire [11:0] _T_112; // @[ip.scala 56:22:@413.10]
  wire [10:0] _T_113; // @[ip.scala 56:22:@414.10]
  wire  _T_115; // @[ip.scala 58:29:@418.10]
  wire [10:0] _GEN_23; // @[ip.scala 58:50:@419.10]
  wire [1:0] _GEN_24; // @[ip.scala 58:50:@419.10]
  wire  _T_118; // @[ip.scala 64:61:@426.10]
  wire  _T_119; // @[ip.scala 64:48:@427.10]
  wire [10:0] _GEN_25; // @[ip.scala 54:43:@412.8]
  wire [1:0] _GEN_26; // @[ip.scala 54:43:@412.8]
  wire  _GEN_27; // @[ip.scala 54:43:@412.8]
  wire  _T_120; // @[Conditional.scala 37:30:@432.8]
  wire [11:0] _T_122; // @[ip.scala 71:41:@434.10]
  wire [11:0] _T_123; // @[ip.scala 71:41:@435.10]
  wire [10:0] _T_124; // @[ip.scala 71:41:@436.10]
  wire [2:0] _T_126; // @[:@437.10]
  wire [7:0] _GEN_28; // @[ip.scala 71:48:@438.10]
  wire [7:0] _GEN_29; // @[ip.scala 71:48:@438.10]
  wire [7:0] _GEN_30; // @[ip.scala 71:48:@438.10]
  wire [7:0] _GEN_31; // @[ip.scala 71:48:@438.10]
  wire [7:0] _GEN_32; // @[ip.scala 71:48:@438.10]
  wire [7:0] _GEN_33; // @[ip.scala 71:48:@438.10]
  wire  _T_128; // @[ip.scala 73:19:@439.10]
  wire [10:0] _GEN_34; // @[ip.scala 73:46:@440.10]
  wire [1:0] _GEN_35; // @[ip.scala 73:46:@440.10]
  wire  _T_132; // @[Conditional.scala 37:30:@450.10]
  wire  _T_134; // @[ip.scala 83:32:@452.12]
  wire  _GEN_36; // @[Conditional.scala 39:67:@451.10]
  wire [7:0] _GEN_37; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_38; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_39; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_40; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_41; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_42; // @[Conditional.scala 39:67:@433.8]
  wire [10:0] _GEN_43; // @[Conditional.scala 39:67:@433.8]
  wire [1:0] _GEN_44; // @[Conditional.scala 39:67:@433.8]
  wire  _GEN_45; // @[Conditional.scala 39:67:@433.8]
  wire [7:0] _GEN_46; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_47; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_48; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_49; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_50; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_51; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_52; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_53; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_54; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_55; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_56; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_57; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_58; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_59; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_60; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_61; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_62; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_63; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_64; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_65; // @[Conditional.scala 40:58:@405.6]
  wire [10:0] _GEN_66; // @[Conditional.scala 40:58:@405.6]
  wire [1:0] _GEN_67; // @[Conditional.scala 40:58:@405.6]
  wire  _GEN_68; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_69; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_70; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_71; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_72; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_73; // @[Conditional.scala 40:58:@405.6]
  wire [7:0] _GEN_74; // @[Conditional.scala 40:58:@405.6]
  wire  _GEN_75; // @[Conditional.scala 40:58:@405.6]
  wire  _GEN_77; // @[ip.scala 88:23:@455.6]
  wire [10:0] _GEN_78; // @[ip.scala 88:23:@455.6]
  wire [1:0] _GEN_79; // @[ip.scala 88:23:@455.6]
  wire [10:0] _GEN_100; // @[ip.scala 47:47:@403.4]
  wire [1:0] _GEN_101; // @[ip.scala 47:47:@403.4]
  wire  _GEN_102; // @[ip.scala 47:47:@403.4]
  wire  _GEN_111; // @[ip.scala 47:47:@403.4]
  wire [79:0] _T_146; // @[ip.scala 96:18:@470.4]
  wire [79:0] _T_155; // @[ip.scala 96:18:@479.4]
  wire [159:0] _T_156; // @[ip.scala 96:18:@480.4]
  wire [47:0] _T_178; // @[ip.scala 97:22:@527.4]
  assign _GEN_0 = io_start ? 1'h1 : reading; // @[ip.scala 35:18:@392.4]
  assign _GEN_1 = io_start ? 1'h0 : ignored; // @[ip.scala 35:18:@392.4]
  assign _GEN_2 = io_start ? 2'h0 : state; // @[ip.scala 35:18:@392.4]
  assign _T_100 = io_start | reading; // @[ip.scala 47:34:@401.4]
  assign _T_101 = io_rx_tvalid & _T_100; // @[ip.scala 47:21:@402.4]
  assign _T_102 = 2'h0 == state; // @[Conditional.scala 37:30:@404.6]
  assign _T_104 = 11'h13 - cnt; // @[ip.scala 52:37:@406.8]
  assign _T_105 = $unsigned(_T_104); // @[ip.scala 52:37:@407.8]
  assign _T_106 = _T_105[10:0]; // @[ip.scala 52:37:@408.8]
  assign _T_108 = _T_106[4:0]; // @[:@409.8]
  assign _GEN_3 = 5'h0 == _T_108 ? io_rx_tdata : ipBuf_0; // @[ip.scala 52:44:@410.8]
  assign _GEN_4 = 5'h1 == _T_108 ? io_rx_tdata : ipBuf_1; // @[ip.scala 52:44:@410.8]
  assign _GEN_5 = 5'h2 == _T_108 ? io_rx_tdata : ipBuf_2; // @[ip.scala 52:44:@410.8]
  assign _GEN_6 = 5'h3 == _T_108 ? io_rx_tdata : ipBuf_3; // @[ip.scala 52:44:@410.8]
  assign _GEN_7 = 5'h4 == _T_108 ? io_rx_tdata : ipBuf_4; // @[ip.scala 52:44:@410.8]
  assign _GEN_8 = 5'h5 == _T_108 ? io_rx_tdata : ipBuf_5; // @[ip.scala 52:44:@410.8]
  assign _GEN_9 = 5'h6 == _T_108 ? io_rx_tdata : ipBuf_6; // @[ip.scala 52:44:@410.8]
  assign _GEN_10 = 5'h7 == _T_108 ? io_rx_tdata : ipBuf_7; // @[ip.scala 52:44:@410.8]
  assign _GEN_11 = 5'h8 == _T_108 ? io_rx_tdata : ipBuf_8; // @[ip.scala 52:44:@410.8]
  assign _GEN_12 = 5'h9 == _T_108 ? io_rx_tdata : ipBuf_9; // @[ip.scala 52:44:@410.8]
  assign _GEN_13 = 5'ha == _T_108 ? io_rx_tdata : ipBuf_10; // @[ip.scala 52:44:@410.8]
  assign _GEN_14 = 5'hb == _T_108 ? io_rx_tdata : ipBuf_11; // @[ip.scala 52:44:@410.8]
  assign _GEN_15 = 5'hc == _T_108 ? io_rx_tdata : ipBuf_12; // @[ip.scala 52:44:@410.8]
  assign _GEN_16 = 5'hd == _T_108 ? io_rx_tdata : ipBuf_13; // @[ip.scala 52:44:@410.8]
  assign _GEN_17 = 5'he == _T_108 ? io_rx_tdata : ipBuf_14; // @[ip.scala 52:44:@410.8]
  assign _GEN_18 = 5'hf == _T_108 ? io_rx_tdata : ipBuf_15; // @[ip.scala 52:44:@410.8]
  assign _GEN_19 = 5'h10 == _T_108 ? io_rx_tdata : ipBuf_16; // @[ip.scala 52:44:@410.8]
  assign _GEN_20 = 5'h11 == _T_108 ? io_rx_tdata : ipBuf_17; // @[ip.scala 52:44:@410.8]
  assign _GEN_21 = 5'h12 == _T_108 ? io_rx_tdata : ipBuf_18; // @[ip.scala 52:44:@410.8]
  assign _GEN_22 = 5'h13 == _T_108 ? io_rx_tdata : ipBuf_19; // @[ip.scala 52:44:@410.8]
  assign _T_110 = cnt < 11'h13; // @[ip.scala 54:18:@411.8]
  assign _T_112 = cnt + 11'h1; // @[ip.scala 56:22:@413.10]
  assign _T_113 = cnt + 11'h1; // @[ip.scala 56:22:@414.10]
  assign _T_115 = io_ip_proto == 8'h1; // @[ip.scala 58:29:@418.10]
  assign _GEN_23 = _T_115 ? 11'h0 : cnt; // @[ip.scala 58:50:@419.10]
  assign _GEN_24 = _T_115 ? 2'h1 : 2'h2; // @[ip.scala 58:50:@419.10]
  assign _T_118 = io_ip_len > 16'h640; // @[ip.scala 64:61:@426.10]
  assign _T_119 = io_payloadWriter_progfull | _T_118; // @[ip.scala 64:48:@427.10]
  assign _GEN_25 = _T_110 ? _T_113 : _GEN_23; // @[ip.scala 54:43:@412.8]
  assign _GEN_26 = _T_110 ? _GEN_2 : _GEN_24; // @[ip.scala 54:43:@412.8]
  assign _GEN_27 = _T_110 ? _GEN_1 : _T_119; // @[ip.scala 54:43:@412.8]
  assign _T_120 = 2'h1 == state; // @[Conditional.scala 37:30:@432.8]
  assign _T_122 = 11'h5 - cnt; // @[ip.scala 71:41:@434.10]
  assign _T_123 = $unsigned(_T_122); // @[ip.scala 71:41:@435.10]
  assign _T_124 = _T_123[10:0]; // @[ip.scala 71:41:@436.10]
  assign _T_126 = _T_124[2:0]; // @[:@437.10]
  assign _GEN_28 = 3'h0 == _T_126 ? io_rx_tdata : icmpBuf_0; // @[ip.scala 71:48:@438.10]
  assign _GEN_29 = 3'h1 == _T_126 ? io_rx_tdata : icmpBuf_1; // @[ip.scala 71:48:@438.10]
  assign _GEN_30 = 3'h2 == _T_126 ? io_rx_tdata : icmpBuf_2; // @[ip.scala 71:48:@438.10]
  assign _GEN_31 = 3'h3 == _T_126 ? io_rx_tdata : icmpBuf_3; // @[ip.scala 71:48:@438.10]
  assign _GEN_32 = 3'h4 == _T_126 ? io_rx_tdata : icmpBuf_4; // @[ip.scala 71:48:@438.10]
  assign _GEN_33 = 3'h5 == _T_126 ? io_rx_tdata : icmpBuf_5; // @[ip.scala 71:48:@438.10]
  assign _T_128 = cnt < 11'h5; // @[ip.scala 73:19:@439.10]
  assign _GEN_34 = _T_128 ? _T_113 : cnt; // @[ip.scala 73:46:@440.10]
  assign _GEN_35 = _T_128 ? _GEN_2 : 2'h2; // @[ip.scala 73:46:@440.10]
  assign _T_132 = 2'h2 == state; // @[Conditional.scala 37:30:@450.10]
  assign _T_134 = ignored == 1'h0; // @[ip.scala 83:32:@452.12]
  assign _GEN_36 = _T_132 ? _T_134 : 1'h0; // @[Conditional.scala 39:67:@451.10]
  assign _GEN_37 = _T_120 ? _GEN_28 : icmpBuf_0; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_38 = _T_120 ? _GEN_29 : icmpBuf_1; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_39 = _T_120 ? _GEN_30 : icmpBuf_2; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_40 = _T_120 ? _GEN_31 : icmpBuf_3; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_41 = _T_120 ? _GEN_32 : icmpBuf_4; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_42 = _T_120 ? _GEN_33 : icmpBuf_5; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_43 = _T_120 ? _GEN_34 : cnt; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_44 = _T_120 ? _GEN_35 : _GEN_2; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_45 = _T_120 ? 1'h0 : _GEN_36; // @[Conditional.scala 39:67:@433.8]
  assign _GEN_46 = _T_102 ? _GEN_3 : ipBuf_0; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_47 = _T_102 ? _GEN_4 : ipBuf_1; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_48 = _T_102 ? _GEN_5 : ipBuf_2; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_49 = _T_102 ? _GEN_6 : ipBuf_3; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_50 = _T_102 ? _GEN_7 : ipBuf_4; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_51 = _T_102 ? _GEN_8 : ipBuf_5; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_52 = _T_102 ? _GEN_9 : ipBuf_6; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_53 = _T_102 ? _GEN_10 : ipBuf_7; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_54 = _T_102 ? _GEN_11 : ipBuf_8; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_55 = _T_102 ? _GEN_12 : ipBuf_9; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_56 = _T_102 ? _GEN_13 : ipBuf_10; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_57 = _T_102 ? _GEN_14 : ipBuf_11; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_58 = _T_102 ? _GEN_15 : ipBuf_12; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_59 = _T_102 ? _GEN_16 : ipBuf_13; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_60 = _T_102 ? _GEN_17 : ipBuf_14; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_61 = _T_102 ? _GEN_18 : ipBuf_15; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_62 = _T_102 ? _GEN_19 : ipBuf_16; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_63 = _T_102 ? _GEN_20 : ipBuf_17; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_64 = _T_102 ? _GEN_21 : ipBuf_18; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_65 = _T_102 ? _GEN_22 : ipBuf_19; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_66 = _T_102 ? _GEN_25 : _GEN_43; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_67 = _T_102 ? _GEN_26 : _GEN_44; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_68 = _T_102 ? _GEN_27 : _GEN_1; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_69 = _T_102 ? icmpBuf_0 : _GEN_37; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_70 = _T_102 ? icmpBuf_1 : _GEN_38; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_71 = _T_102 ? icmpBuf_2 : _GEN_39; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_72 = _T_102 ? icmpBuf_3 : _GEN_40; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_73 = _T_102 ? icmpBuf_4 : _GEN_41; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_74 = _T_102 ? icmpBuf_5 : _GEN_42; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_75 = _T_102 ? 1'h0 : _GEN_45; // @[Conditional.scala 40:58:@405.6]
  assign _GEN_77 = io_rx_tlast ? 1'h0 : _GEN_0; // @[ip.scala 88:23:@455.6]
  assign _GEN_78 = io_rx_tlast ? 11'h0 : _GEN_66; // @[ip.scala 88:23:@455.6]
  assign _GEN_79 = io_rx_tlast ? 2'h0 : _GEN_67; // @[ip.scala 88:23:@455.6]
  assign _GEN_100 = _T_101 ? _GEN_78 : cnt; // @[ip.scala 47:47:@403.4]
  assign _GEN_101 = _T_101 ? _GEN_79 : _GEN_2; // @[ip.scala 47:47:@403.4]
  assign _GEN_102 = _T_101 ? _GEN_68 : _GEN_1; // @[ip.scala 47:47:@403.4]
  assign _GEN_111 = _T_101 ? _GEN_77 : _GEN_0; // @[ip.scala 47:47:@403.4]
  assign _T_146 = {ipBuf_9,ipBuf_8,ipBuf_7,ipBuf_6,ipBuf_5,ipBuf_4,ipBuf_3,ipBuf_2,ipBuf_1,ipBuf_0}; // @[ip.scala 96:18:@470.4]
  assign _T_155 = {ipBuf_19,ipBuf_18,ipBuf_17,ipBuf_16,ipBuf_15,ipBuf_14,ipBuf_13,ipBuf_12,ipBuf_11,ipBuf_10}; // @[ip.scala 96:18:@479.4]
  assign _T_156 = {_T_155,_T_146}; // @[ip.scala 96:18:@480.4]
  assign _T_178 = {icmpBuf_5,icmpBuf_4,icmpBuf_3,icmpBuf_2,icmpBuf_1,icmpBuf_0}; // @[ip.scala 97:22:@527.4]
  assign io_ip_version = _T_156[159:156]; // @[ip.scala 96:9:@522.4]
  assign io_ip_ihl = _T_156[155:152]; // @[ip.scala 96:9:@521.4]
  assign io_ip_dscp = _T_156[151:146]; // @[ip.scala 96:9:@520.4]
  assign io_ip_ecn = _T_156[145:144]; // @[ip.scala 96:9:@519.4]
  assign io_ip_len = _T_156[143:128]; // @[ip.scala 96:9:@518.4]
  assign io_ip_id = _T_156[127:112]; // @[ip.scala 96:9:@517.4]
  assign io_ip_flags = _T_156[111:109]; // @[ip.scala 96:9:@516.4]
  assign io_ip_foff = _T_156[108:96]; // @[ip.scala 96:9:@515.4]
  assign io_ip_ttl = _T_156[95:88]; // @[ip.scala 96:9:@514.4]
  assign io_ip_proto = _T_156[87:80]; // @[ip.scala 96:9:@513.4]
  assign io_ip_chksum = _T_156[79:64]; // @[ip.scala 96:9:@512.4]
  assign io_ip_src = _T_156[63:32]; // @[ip.scala 96:9:@511.4]
  assign io_ip_dest = _T_156[31:0]; // @[ip.scala 96:9:@510.4]
  assign io_icmp_id = _T_178[47:32]; // @[ip.scala 97:11:@542.4]
  assign io_icmp_checksum = _T_178[31:16]; // @[ip.scala 97:11:@541.4]
  assign io_icmp_code = _T_178[15:8]; // @[ip.scala 97:11:@540.4]
  assign io_icmp_imcpType = _T_178[7:0]; // @[ip.scala 97:11:@539.4]
  assign io_headerFinished = state == 2'h2; // @[ip.scala 99:21:@545.4]
  assign io_ignored = ignored; // @[ip.scala 98:14:@543.4]
  assign io_payloadWriter_clk = clock; // @[ip.scala 42:24:@397.4]
  assign io_payloadWriter_en = _T_101 ? _GEN_75 : 1'h0; // @[ip.scala 45:23:@400.4 ip.scala 83:29:@453.12]
  assign io_payloadWriter_data_data = io_rx_tdata; // @[ip.scala 43:30:@398.4]
  assign io_payloadWriter_data_last = _T_101 ? io_rx_tlast : 1'h0; // @[ip.scala 44:30:@399.4 ip.scala 89:34:@456.8]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
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
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_101) begin
      if (_T_102) begin
        if (5'h0 == _T_108) begin
          ipBuf_0 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h1 == _T_108) begin
          ipBuf_1 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h2 == _T_108) begin
          ipBuf_2 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h3 == _T_108) begin
          ipBuf_3 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h4 == _T_108) begin
          ipBuf_4 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h5 == _T_108) begin
          ipBuf_5 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h6 == _T_108) begin
          ipBuf_6 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h7 == _T_108) begin
          ipBuf_7 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h8 == _T_108) begin
          ipBuf_8 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h9 == _T_108) begin
          ipBuf_9 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'ha == _T_108) begin
          ipBuf_10 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'hb == _T_108) begin
          ipBuf_11 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'hc == _T_108) begin
          ipBuf_12 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'hd == _T_108) begin
          ipBuf_13 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'he == _T_108) begin
          ipBuf_14 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'hf == _T_108) begin
          ipBuf_15 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h10 == _T_108) begin
          ipBuf_16 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h11 == _T_108) begin
          ipBuf_17 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h12 == _T_108) begin
          ipBuf_18 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (_T_102) begin
        if (5'h13 == _T_108) begin
          ipBuf_19 <= io_rx_tdata;
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h0 == _T_126) begin
            icmpBuf_0 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h1 == _T_126) begin
            icmpBuf_1 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h2 == _T_126) begin
            icmpBuf_2 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h3 == _T_126) begin
            icmpBuf_3 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h4 == _T_126) begin
            icmpBuf_4 <= io_rx_tdata;
          end
        end
      end
    end
    if (_T_101) begin
      if (!(_T_102)) begin
        if (_T_120) begin
          if (3'h5 == _T_126) begin
            icmpBuf_5 <= io_rx_tdata;
          end
        end
      end
    end
    if (reset) begin
      cnt <= 11'h0;
    end else begin
      if (_T_101) begin
        if (io_rx_tlast) begin
          cnt <= 11'h0;
        end else begin
          if (_T_102) begin
            if (_T_110) begin
              cnt <= _T_113;
            end else begin
              if (_T_115) begin
                cnt <= 11'h0;
              end
            end
          end else begin
            if (_T_120) begin
              if (_T_128) begin
                cnt <= _T_113;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      reading <= 1'h0;
    end else begin
      if (_T_101) begin
        if (io_rx_tlast) begin
          reading <= 1'h0;
        end else begin
          if (io_start) begin
            reading <= 1'h1;
          end
        end
      end else begin
        if (io_start) begin
          reading <= 1'h1;
        end
      end
    end
    if (reset) begin
      ignored <= 1'h0;
    end else begin
      if (_T_101) begin
        if (_T_102) begin
          if (_T_110) begin
            if (io_start) begin
              ignored <= 1'h0;
            end
          end else begin
            ignored <= _T_119;
          end
        end else begin
          if (io_start) begin
            ignored <= 1'h0;
          end
        end
      end else begin
        if (io_start) begin
          ignored <= 1'h0;
        end
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else begin
      if (_T_101) begin
        if (io_rx_tlast) begin
          state <= 2'h0;
        end else begin
          if (_T_102) begin
            if (_T_110) begin
              if (io_start) begin
                state <= 2'h0;
              end
            end else begin
              if (_T_115) begin
                state <= 2'h1;
              end else begin
                state <= 2'h2;
              end
            end
          end else begin
            if (_T_120) begin
              if (_T_128) begin
                if (io_start) begin
                  state <= 2'h0;
                end
              end else begin
                state <= 2'h2;
              end
            end else begin
              if (io_start) begin
                state <= 2'h0;
              end
            end
          end
        end
      end else begin
        if (io_start) begin
          state <= 2'h0;
        end
      end
    end
  end
endmodule
module Acceptor( // @[:@548.2]
  input         clock, // @[:@549.4]
  input         reset, // @[:@550.4]
  input  [7:0]  io_rx_tdata, // @[:@551.4]
  input         io_rx_tvalid, // @[:@551.4]
  input         io_rx_tlast, // @[:@551.4]
  output        io_writer_clk, // @[:@551.4]
  output        io_writer_en, // @[:@551.4]
  output [47:0] io_writer_data_eth_dest, // @[:@551.4]
  output [47:0] io_writer_data_eth_sender, // @[:@551.4]
  output [1:0]  io_writer_data_eth_pactype, // @[:@551.4]
  output [2:0]  io_writer_data_eth_vlan, // @[:@551.4]
  output [15:0] io_writer_data_arp_htype, // @[:@551.4]
  output [15:0] io_writer_data_arp_ptype, // @[:@551.4]
  output [7:0]  io_writer_data_arp_hlen, // @[:@551.4]
  output [7:0]  io_writer_data_arp_plen, // @[:@551.4]
  output [15:0] io_writer_data_arp_oper, // @[:@551.4]
  output [47:0] io_writer_data_arp_sha, // @[:@551.4]
  output [31:0] io_writer_data_arp_spa, // @[:@551.4]
  output [47:0] io_writer_data_arp_tha, // @[:@551.4]
  output [31:0] io_writer_data_arp_tpa, // @[:@551.4]
  output [3:0]  io_writer_data_ip_version, // @[:@551.4]
  output [3:0]  io_writer_data_ip_ihl, // @[:@551.4]
  output [5:0]  io_writer_data_ip_dscp, // @[:@551.4]
  output [1:0]  io_writer_data_ip_ecn, // @[:@551.4]
  output [15:0] io_writer_data_ip_len, // @[:@551.4]
  output [15:0] io_writer_data_ip_id, // @[:@551.4]
  output [2:0]  io_writer_data_ip_flags, // @[:@551.4]
  output [12:0] io_writer_data_ip_foff, // @[:@551.4]
  output [7:0]  io_writer_data_ip_ttl, // @[:@551.4]
  output [7:0]  io_writer_data_ip_proto, // @[:@551.4]
  output [15:0] io_writer_data_ip_chksum, // @[:@551.4]
  output [31:0] io_writer_data_ip_src, // @[:@551.4]
  output [31:0] io_writer_data_ip_dest, // @[:@551.4]
  output [15:0] io_writer_data_icmp_id, // @[:@551.4]
  output [15:0] io_writer_data_icmp_checksum, // @[:@551.4]
  output [7:0]  io_writer_data_icmp_code, // @[:@551.4]
  output [7:0]  io_writer_data_icmp_imcpType, // @[:@551.4]
  output        io_ipWriter_clk, // @[:@551.4]
  output        io_ipWriter_en, // @[:@551.4]
  output [7:0]  io_ipWriter_data_data, // @[:@551.4]
  output        io_ipWriter_data_last, // @[:@551.4]
  input         io_ipWriter_progfull // @[:@551.4]
);
  wire  arpAcceptor_clock; // @[acceptor.scala 49:27:@642.4]
  wire  arpAcceptor_reset; // @[acceptor.scala 49:27:@642.4]
  wire [7:0] arpAcceptor_io_rx_tdata; // @[acceptor.scala 49:27:@642.4]
  wire  arpAcceptor_io_rx_tvalid; // @[acceptor.scala 49:27:@642.4]
  wire [15:0] arpAcceptor_io_output_htype; // @[acceptor.scala 49:27:@642.4]
  wire [15:0] arpAcceptor_io_output_ptype; // @[acceptor.scala 49:27:@642.4]
  wire [7:0] arpAcceptor_io_output_hlen; // @[acceptor.scala 49:27:@642.4]
  wire [7:0] arpAcceptor_io_output_plen; // @[acceptor.scala 49:27:@642.4]
  wire [15:0] arpAcceptor_io_output_oper; // @[acceptor.scala 49:27:@642.4]
  wire [47:0] arpAcceptor_io_output_sha; // @[acceptor.scala 49:27:@642.4]
  wire [31:0] arpAcceptor_io_output_spa; // @[acceptor.scala 49:27:@642.4]
  wire [47:0] arpAcceptor_io_output_tha; // @[acceptor.scala 49:27:@642.4]
  wire [31:0] arpAcceptor_io_output_tpa; // @[acceptor.scala 49:27:@642.4]
  wire  arpAcceptor_io_start; // @[acceptor.scala 49:27:@642.4]
  wire  arpAcceptor_io_finished; // @[acceptor.scala 49:27:@642.4]
  wire  ipAcceptor_clock; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_reset; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_rx_tdata; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_rx_tvalid; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_rx_tlast; // @[acceptor.scala 50:26:@645.4]
  wire [3:0] ipAcceptor_io_ip_version; // @[acceptor.scala 50:26:@645.4]
  wire [3:0] ipAcceptor_io_ip_ihl; // @[acceptor.scala 50:26:@645.4]
  wire [5:0] ipAcceptor_io_ip_dscp; // @[acceptor.scala 50:26:@645.4]
  wire [1:0] ipAcceptor_io_ip_ecn; // @[acceptor.scala 50:26:@645.4]
  wire [15:0] ipAcceptor_io_ip_len; // @[acceptor.scala 50:26:@645.4]
  wire [15:0] ipAcceptor_io_ip_id; // @[acceptor.scala 50:26:@645.4]
  wire [2:0] ipAcceptor_io_ip_flags; // @[acceptor.scala 50:26:@645.4]
  wire [12:0] ipAcceptor_io_ip_foff; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_ip_ttl; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_ip_proto; // @[acceptor.scala 50:26:@645.4]
  wire [15:0] ipAcceptor_io_ip_chksum; // @[acceptor.scala 50:26:@645.4]
  wire [31:0] ipAcceptor_io_ip_src; // @[acceptor.scala 50:26:@645.4]
  wire [31:0] ipAcceptor_io_ip_dest; // @[acceptor.scala 50:26:@645.4]
  wire [15:0] ipAcceptor_io_icmp_id; // @[acceptor.scala 50:26:@645.4]
  wire [15:0] ipAcceptor_io_icmp_checksum; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_icmp_code; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_icmp_imcpType; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_start; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_headerFinished; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_ignored; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 50:26:@645.4]
  wire [7:0] ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 50:26:@645.4]
  wire  ipAcceptor_io_payloadWriter_progfull; // @[acceptor.scala 50:26:@645.4]
  reg [11:0] cnt; // @[acceptor.scala 21:20:@559.4]
  reg [31:0] _RAND_0;
  reg [7:0] header_0; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_1;
  reg [7:0] header_1; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_2;
  reg [7:0] header_2; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_3;
  reg [7:0] header_3; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_4;
  reg [7:0] header_4; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_5;
  reg [7:0] header_5; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_6;
  reg [7:0] header_6; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_7;
  reg [7:0] header_7; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_8;
  reg [7:0] header_8; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_9;
  reg [7:0] header_9; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_10;
  reg [7:0] header_10; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_11;
  reg [7:0] header_11; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_12;
  reg [7:0] header_12; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_13;
  reg [7:0] header_13; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_14;
  reg [7:0] header_14; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_15;
  reg [7:0] header_15; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_16;
  reg [7:0] header_16; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_17;
  reg [7:0] header_17; // @[acceptor.scala 22:19:@560.4]
  reg [31:0] _RAND_18;
  wire  _T_100; // @[pactype.scala 14:16:@562.4]
  wire  _T_102; // @[pactype.scala 14:34:@563.4]
  wire  _T_103; // @[pactype.scala 14:25:@564.4]
  wire  _T_107; // @[pactype.scala 16:40:@570.6]
  wire  _T_108; // @[pactype.scala 16:31:@571.6]
  wire [1:0] _GEN_0; // @[pactype.scala 16:50:@572.6]
  wire [1:0] pactype; // @[pactype.scala 14:44:@565.4]
  wire [71:0] _T_117; // @[acceptor.scala 28:32:@586.4]
  wire [143:0] _T_126; // @[acceptor.scala 28:32:@595.4]
  wire [95:0] _T_127; // @[acceptor.scala 28:39:@596.4]
  wire [47:0] output_eth_dest; // @[acceptor.scala 29:37:@615.4]
  wire [12:0] _T_148; // @[acceptor.scala 37:18:@624.8]
  wire [11:0] _T_149; // @[acceptor.scala 37:18:@625.8]
  wire [11:0] _GEN_2; // @[acceptor.scala 34:23:@620.6]
  wire [11:0] _GEN_3; // @[acceptor.scala 33:22:@619.4]
  wire  _T_151; // @[acceptor.scala 42:14:@630.6]
  wire [12:0] _T_153; // @[acceptor.scala 43:19:@632.8]
  wire [12:0] _T_154; // @[acceptor.scala 43:19:@633.8]
  wire [11:0] _T_155; // @[acceptor.scala 43:19:@634.8]
  wire [4:0] _T_157; // @[:@635.8]
  wire [7:0] _GEN_4; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_5; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_6; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_7; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_8; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_9; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_10; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_11; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_12; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_13; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_14; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_15; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_16; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_17; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_18; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_19; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_20; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_21; // @[acceptor.scala 43:26:@636.8]
  wire [7:0] _GEN_22; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_23; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_24; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_25; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_26; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_27; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_28; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_29; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_30; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_31; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_32; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_33; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_34; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_35; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_36; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_37; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_38; // @[acceptor.scala 42:30:@631.6]
  wire [7:0] _GEN_39; // @[acceptor.scala 42:30:@631.6]
  wire  _T_159; // @[acceptor.scala 47:35:@639.4]
  wire [2:0] output_eth_vlan; // @[acceptor.scala 25:20:@578.4 acceptor.scala 30:19:@617.4]
  wire [47:0] _GEN_59; // @[acceptor.scala 47:76:@640.4]
  wire [47:0] _GEN_60; // @[acceptor.scala 47:76:@640.4]
  wire [47:0] _GEN_61; // @[acceptor.scala 47:76:@640.4]
  wire [47:0] _GEN_62; // @[acceptor.scala 47:76:@640.4]
  wire  _T_161; // @[acceptor.scala 47:76:@640.4]
  wire  destMatch; // @[acceptor.scala 47:57:@641.4]
  wire  _T_184; // @[acceptor.scala 58:23:@673.4]
  reg [11:0] _T_186; // @[acceptor.scala 58:50:@674.4]
  reg [31:0] _RAND_19;
  wire  _T_188; // @[acceptor.scala 58:56:@676.4]
  wire  headerEnd; // @[acceptor.scala 58:40:@677.4]
  wire  _T_189; // @[acceptor.scala 59:35:@678.4]
  wire  _T_190; // @[acceptor.scala 59:51:@679.4]
  wire  _T_192; // @[acceptor.scala 60:34:@682.4]
  wire  _T_193; // @[acceptor.scala 60:51:@683.4]
  wire  _T_196; // @[acceptor.scala 62:41:@687.4]
  reg  _T_198; // @[acceptor.scala 62:79:@688.4]
  reg [31:0] _RAND_20;
  wire  _T_200; // @[acceptor.scala 62:71:@690.4]
  wire  arpEmit; // @[acceptor.scala 62:68:@691.4]
  wire  _T_202; // @[acceptor.scala 63:41:@693.4]
  reg  _T_204; // @[acceptor.scala 63:84:@694.4]
  reg [31:0] _RAND_21;
  wire  _T_206; // @[acceptor.scala 63:76:@696.4]
  wire  ipEmit; // @[acceptor.scala 63:73:@697.4]
  wire  ipIgnore; // @[acceptor.scala 64:43:@699.4]
  wire  _T_209; // @[acceptor.scala 70:41:@726.4]
  wire  _T_210; // @[acceptor.scala 70:38:@727.4]
  ARPAcceptor arpAcceptor ( // @[acceptor.scala 49:27:@642.4]
    .clock(arpAcceptor_clock),
    .reset(arpAcceptor_reset),
    .io_rx_tdata(arpAcceptor_io_rx_tdata),
    .io_rx_tvalid(arpAcceptor_io_rx_tvalid),
    .io_output_htype(arpAcceptor_io_output_htype),
    .io_output_ptype(arpAcceptor_io_output_ptype),
    .io_output_hlen(arpAcceptor_io_output_hlen),
    .io_output_plen(arpAcceptor_io_output_plen),
    .io_output_oper(arpAcceptor_io_output_oper),
    .io_output_sha(arpAcceptor_io_output_sha),
    .io_output_spa(arpAcceptor_io_output_spa),
    .io_output_tha(arpAcceptor_io_output_tha),
    .io_output_tpa(arpAcceptor_io_output_tpa),
    .io_start(arpAcceptor_io_start),
    .io_finished(arpAcceptor_io_finished)
  );
  IPAcceptor ipAcceptor ( // @[acceptor.scala 50:26:@645.4]
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
  assign _T_100 = header_1 == 8'h8; // @[pactype.scala 14:16:@562.4]
  assign _T_102 = header_0 == 8'h0; // @[pactype.scala 14:34:@563.4]
  assign _T_103 = _T_100 & _T_102; // @[pactype.scala 14:25:@564.4]
  assign _T_107 = header_0 == 8'h6; // @[pactype.scala 16:40:@570.6]
  assign _T_108 = _T_100 & _T_107; // @[pactype.scala 16:31:@571.6]
  assign _GEN_0 = _T_108 ? 2'h2 : 2'h0; // @[pactype.scala 16:50:@572.6]
  assign pactype = _T_103 ? 2'h1 : _GEN_0; // @[pactype.scala 14:44:@565.4]
  assign _T_117 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 28:32:@586.4]
  assign _T_126 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_117}; // @[acceptor.scala 28:32:@595.4]
  assign _T_127 = _T_126[143:48]; // @[acceptor.scala 28:39:@596.4]
  assign output_eth_dest = _T_126[143:96]; // @[acceptor.scala 29:37:@615.4]
  assign _T_148 = cnt + 12'h1; // @[acceptor.scala 37:18:@624.8]
  assign _T_149 = cnt + 12'h1; // @[acceptor.scala 37:18:@625.8]
  assign _GEN_2 = io_rx_tlast ? 12'h0 : _T_149; // @[acceptor.scala 34:23:@620.6]
  assign _GEN_3 = io_rx_tvalid ? _GEN_2 : cnt; // @[acceptor.scala 33:22:@619.4]
  assign _T_151 = cnt < 12'h12; // @[acceptor.scala 42:14:@630.6]
  assign _T_153 = 12'h11 - cnt; // @[acceptor.scala 43:19:@632.8]
  assign _T_154 = $unsigned(_T_153); // @[acceptor.scala 43:19:@633.8]
  assign _T_155 = _T_154[11:0]; // @[acceptor.scala 43:19:@634.8]
  assign _T_157 = _T_155[4:0]; // @[:@635.8]
  assign _GEN_4 = 5'h0 == _T_157 ? io_rx_tdata : header_0; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_5 = 5'h1 == _T_157 ? io_rx_tdata : header_1; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_6 = 5'h2 == _T_157 ? io_rx_tdata : header_2; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_7 = 5'h3 == _T_157 ? io_rx_tdata : header_3; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_8 = 5'h4 == _T_157 ? io_rx_tdata : header_4; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_9 = 5'h5 == _T_157 ? io_rx_tdata : header_5; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_10 = 5'h6 == _T_157 ? io_rx_tdata : header_6; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_11 = 5'h7 == _T_157 ? io_rx_tdata : header_7; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_12 = 5'h8 == _T_157 ? io_rx_tdata : header_8; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_13 = 5'h9 == _T_157 ? io_rx_tdata : header_9; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_14 = 5'ha == _T_157 ? io_rx_tdata : header_10; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_15 = 5'hb == _T_157 ? io_rx_tdata : header_11; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_16 = 5'hc == _T_157 ? io_rx_tdata : header_12; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_17 = 5'hd == _T_157 ? io_rx_tdata : header_13; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_18 = 5'he == _T_157 ? io_rx_tdata : header_14; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_19 = 5'hf == _T_157 ? io_rx_tdata : header_15; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_20 = 5'h10 == _T_157 ? io_rx_tdata : header_16; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_21 = 5'h11 == _T_157 ? io_rx_tdata : header_17; // @[acceptor.scala 43:26:@636.8]
  assign _GEN_22 = _T_151 ? _GEN_4 : header_0; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_23 = _T_151 ? _GEN_5 : header_1; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_24 = _T_151 ? _GEN_6 : header_2; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_25 = _T_151 ? _GEN_7 : header_3; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_26 = _T_151 ? _GEN_8 : header_4; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_27 = _T_151 ? _GEN_9 : header_5; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_28 = _T_151 ? _GEN_10 : header_6; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_29 = _T_151 ? _GEN_11 : header_7; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_30 = _T_151 ? _GEN_12 : header_8; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_31 = _T_151 ? _GEN_13 : header_9; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_32 = _T_151 ? _GEN_14 : header_10; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_33 = _T_151 ? _GEN_15 : header_11; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_34 = _T_151 ? _GEN_16 : header_12; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_35 = _T_151 ? _GEN_17 : header_13; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_36 = _T_151 ? _GEN_18 : header_14; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_37 = _T_151 ? _GEN_19 : header_15; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_38 = _T_151 ? _GEN_20 : header_16; // @[acceptor.scala 42:30:@631.6]
  assign _GEN_39 = _T_151 ? _GEN_21 : header_17; // @[acceptor.scala 42:30:@631.6]
  assign _T_159 = output_eth_dest == 48'hffffffffffff; // @[acceptor.scala 47:35:@639.4]
  assign output_eth_vlan = header_2[2:0]; // @[acceptor.scala 25:20:@578.4 acceptor.scala 30:19:@617.4]
  assign _GEN_59 = 3'h1 == output_eth_vlan ? 48'h1 : 48'h0; // @[acceptor.scala 47:76:@640.4]
  assign _GEN_60 = 3'h2 == output_eth_vlan ? 48'h2 : _GEN_59; // @[acceptor.scala 47:76:@640.4]
  assign _GEN_61 = 3'h3 == output_eth_vlan ? 48'h3 : _GEN_60; // @[acceptor.scala 47:76:@640.4]
  assign _GEN_62 = 3'h4 == output_eth_vlan ? 48'h4 : _GEN_61; // @[acceptor.scala 47:76:@640.4]
  assign _T_161 = output_eth_dest == _GEN_62; // @[acceptor.scala 47:76:@640.4]
  assign destMatch = _T_159 | _T_161; // @[acceptor.scala 47:57:@641.4]
  assign _T_184 = cnt == 12'h12; // @[acceptor.scala 58:23:@673.4]
  assign _T_188 = _T_186 != 12'h12; // @[acceptor.scala 58:56:@676.4]
  assign headerEnd = _T_184 & _T_188; // @[acceptor.scala 58:40:@677.4]
  assign _T_189 = pactype == 2'h2; // @[acceptor.scala 59:35:@678.4]
  assign _T_190 = _T_189 & destMatch; // @[acceptor.scala 59:51:@679.4]
  assign _T_192 = pactype == 2'h1; // @[acceptor.scala 60:34:@682.4]
  assign _T_193 = _T_192 & destMatch; // @[acceptor.scala 60:51:@683.4]
  assign _T_196 = _T_189 & arpAcceptor_io_finished; // @[acceptor.scala 62:41:@687.4]
  assign _T_200 = _T_198 == 1'h0; // @[acceptor.scala 62:71:@690.4]
  assign arpEmit = _T_196 & _T_200; // @[acceptor.scala 62:68:@691.4]
  assign _T_202 = _T_192 & ipAcceptor_io_headerFinished; // @[acceptor.scala 63:41:@693.4]
  assign _T_206 = _T_204 == 1'h0; // @[acceptor.scala 63:76:@696.4]
  assign ipEmit = _T_202 & _T_206; // @[acceptor.scala 63:73:@697.4]
  assign ipIgnore = _T_192 & ipAcceptor_io_ignored; // @[acceptor.scala 64:43:@699.4]
  assign _T_209 = ipIgnore == 1'h0; // @[acceptor.scala 70:41:@726.4]
  assign _T_210 = ipEmit & _T_209; // @[acceptor.scala 70:38:@727.4]
  assign io_writer_clk = clock; // @[acceptor.scala 75:17:@762.4]
  assign io_writer_en = arpEmit | _T_210; // @[acceptor.scala 70:16:@729.4]
  assign io_writer_data_eth_dest = _T_126[143:96]; // @[acceptor.scala 71:18:@759.4]
  assign io_writer_data_eth_sender = _T_127[47:0]; // @[acceptor.scala 71:18:@758.4]
  assign io_writer_data_eth_pactype = _T_103 ? 2'h1 : _GEN_0; // @[acceptor.scala 71:18:@757.4]
  assign io_writer_data_eth_vlan = header_2[2:0]; // @[acceptor.scala 71:18:@756.4]
  assign io_writer_data_arp_htype = arpAcceptor_io_output_htype; // @[acceptor.scala 71:18:@755.4]
  assign io_writer_data_arp_ptype = arpAcceptor_io_output_ptype; // @[acceptor.scala 71:18:@754.4]
  assign io_writer_data_arp_hlen = arpAcceptor_io_output_hlen; // @[acceptor.scala 71:18:@753.4]
  assign io_writer_data_arp_plen = arpAcceptor_io_output_plen; // @[acceptor.scala 71:18:@752.4]
  assign io_writer_data_arp_oper = arpAcceptor_io_output_oper; // @[acceptor.scala 71:18:@751.4]
  assign io_writer_data_arp_sha = arpAcceptor_io_output_sha; // @[acceptor.scala 71:18:@750.4]
  assign io_writer_data_arp_spa = arpAcceptor_io_output_spa; // @[acceptor.scala 71:18:@749.4]
  assign io_writer_data_arp_tha = arpAcceptor_io_output_tha; // @[acceptor.scala 71:18:@748.4]
  assign io_writer_data_arp_tpa = arpAcceptor_io_output_tpa; // @[acceptor.scala 71:18:@747.4]
  assign io_writer_data_ip_version = ipAcceptor_io_ip_version; // @[acceptor.scala 71:18:@746.4]
  assign io_writer_data_ip_ihl = ipAcceptor_io_ip_ihl; // @[acceptor.scala 71:18:@745.4]
  assign io_writer_data_ip_dscp = ipAcceptor_io_ip_dscp; // @[acceptor.scala 71:18:@744.4]
  assign io_writer_data_ip_ecn = ipAcceptor_io_ip_ecn; // @[acceptor.scala 71:18:@743.4]
  assign io_writer_data_ip_len = ipAcceptor_io_ip_len; // @[acceptor.scala 71:18:@742.4]
  assign io_writer_data_ip_id = ipAcceptor_io_ip_id; // @[acceptor.scala 71:18:@741.4]
  assign io_writer_data_ip_flags = ipAcceptor_io_ip_flags; // @[acceptor.scala 71:18:@740.4]
  assign io_writer_data_ip_foff = ipAcceptor_io_ip_foff; // @[acceptor.scala 71:18:@739.4]
  assign io_writer_data_ip_ttl = ipAcceptor_io_ip_ttl; // @[acceptor.scala 71:18:@738.4]
  assign io_writer_data_ip_proto = ipAcceptor_io_ip_proto; // @[acceptor.scala 71:18:@737.4]
  assign io_writer_data_ip_chksum = ipAcceptor_io_ip_chksum; // @[acceptor.scala 71:18:@736.4]
  assign io_writer_data_ip_src = ipAcceptor_io_ip_src; // @[acceptor.scala 71:18:@735.4]
  assign io_writer_data_ip_dest = ipAcceptor_io_ip_dest; // @[acceptor.scala 71:18:@734.4]
  assign io_writer_data_icmp_id = ipAcceptor_io_icmp_id; // @[acceptor.scala 71:18:@733.4]
  assign io_writer_data_icmp_checksum = ipAcceptor_io_icmp_checksum; // @[acceptor.scala 71:18:@732.4]
  assign io_writer_data_icmp_code = ipAcceptor_io_icmp_code; // @[acceptor.scala 71:18:@731.4]
  assign io_writer_data_icmp_imcpType = ipAcceptor_io_icmp_imcpType; // @[acceptor.scala 71:18:@730.4]
  assign io_ipWriter_clk = ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 56:31:@672.4]
  assign io_ipWriter_en = ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 56:31:@671.4]
  assign io_ipWriter_data_data = ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 56:31:@670.4]
  assign io_ipWriter_data_last = ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 56:31:@669.4]
  assign arpAcceptor_clock = clock; // @[:@643.4]
  assign arpAcceptor_reset = reset; // @[:@644.4]
  assign arpAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 53:21:@662.4]
  assign arpAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 53:21:@661.4]
  assign arpAcceptor_io_start = _T_190 & headerEnd; // @[acceptor.scala 59:24:@681.4]
  assign ipAcceptor_clock = clock; // @[:@646.4]
  assign ipAcceptor_reset = reset; // @[:@647.4]
  assign ipAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 54:20:@666.4]
  assign ipAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 54:20:@665.4]
  assign ipAcceptor_io_rx_tlast = io_rx_tlast; // @[acceptor.scala 54:20:@664.4]
  assign ipAcceptor_io_start = _T_193 & headerEnd; // @[acceptor.scala 60:23:@685.4]
  assign ipAcceptor_io_payloadWriter_progfull = io_ipWriter_progfull; // @[acceptor.scala 56:31:@667.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
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
  _T_186 = _RAND_19[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_198 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_204 = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 12'h0;
    end else begin
      if (io_rx_tvalid) begin
        if (io_rx_tlast) begin
          cnt <= 12'h0;
        end else begin
          cnt <= _T_149;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h0 == _T_157) begin
          header_0 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h1 == _T_157) begin
          header_1 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h2 == _T_157) begin
          header_2 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h3 == _T_157) begin
          header_3 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h4 == _T_157) begin
          header_4 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h5 == _T_157) begin
          header_5 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h6 == _T_157) begin
          header_6 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h7 == _T_157) begin
          header_7 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h8 == _T_157) begin
          header_8 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h9 == _T_157) begin
          header_9 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'ha == _T_157) begin
          header_10 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'hb == _T_157) begin
          header_11 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'hc == _T_157) begin
          header_12 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'hd == _T_157) begin
          header_13 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'he == _T_157) begin
          header_14 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'hf == _T_157) begin
          header_15 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h10 == _T_157) begin
          header_16 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_151) begin
        if (5'h11 == _T_157) begin
          header_17 <= io_rx_tdata;
        end
      end
    end
    _T_186 <= cnt;
    _T_198 <= arpAcceptor_io_finished;
    _T_204 <= ipAcceptor_io_headerFinished;
  end
endmodule
module Ctrl( // @[:@764.2]
  output  io_inputWait, // @[:@767.4]
  input   io_nat_stall, // @[:@767.4]
  output  io_nat_pause, // @[:@767.4]
  input   io_forward_stall, // @[:@767.4]
  output  io_forward_pause, // @[:@767.4]
  output  io_arp_pause, // @[:@767.4]
  input   io_encoder_stall, // @[:@767.4]
  output  io_encoder_pause // @[:@767.4]
);
  wire  _T_23; // @[ctrl.scala 29:33:@769.4]
  assign _T_23 = io_nat_stall | io_forward_stall; // @[ctrl.scala 29:33:@769.4]
  assign io_inputWait = _T_23 | io_encoder_stall; // @[ctrl.scala 30:16:@772.4]
  assign io_nat_pause = _T_23 | io_encoder_stall; // @[ctrl.scala 31:16:@773.4]
  assign io_forward_pause = _T_23 | io_encoder_stall; // @[ctrl.scala 32:20:@774.4]
  assign io_arp_pause = _T_23 | io_encoder_stall; // @[ctrl.scala 33:16:@775.4]
  assign io_encoder_pause = _T_23 | io_encoder_stall; // @[ctrl.scala 34:20:@776.4]
endmodule
module Nat( // @[:@778.2]
  input         clock, // @[:@779.4]
  input         reset, // @[:@780.4]
  input  [47:0] io_input_eth_dest, // @[:@781.4]
  input  [47:0] io_input_eth_sender, // @[:@781.4]
  input  [1:0]  io_input_eth_pactype, // @[:@781.4]
  input  [2:0]  io_input_eth_vlan, // @[:@781.4]
  input  [15:0] io_input_arp_htype, // @[:@781.4]
  input  [15:0] io_input_arp_ptype, // @[:@781.4]
  input  [7:0]  io_input_arp_hlen, // @[:@781.4]
  input  [7:0]  io_input_arp_plen, // @[:@781.4]
  input  [15:0] io_input_arp_oper, // @[:@781.4]
  input  [47:0] io_input_arp_sha, // @[:@781.4]
  input  [31:0] io_input_arp_spa, // @[:@781.4]
  input  [47:0] io_input_arp_tha, // @[:@781.4]
  input  [31:0] io_input_arp_tpa, // @[:@781.4]
  input  [3:0]  io_input_ip_version, // @[:@781.4]
  input  [3:0]  io_input_ip_ihl, // @[:@781.4]
  input  [5:0]  io_input_ip_dscp, // @[:@781.4]
  input  [1:0]  io_input_ip_ecn, // @[:@781.4]
  input  [15:0] io_input_ip_len, // @[:@781.4]
  input  [15:0] io_input_ip_id, // @[:@781.4]
  input  [2:0]  io_input_ip_flags, // @[:@781.4]
  input  [12:0] io_input_ip_foff, // @[:@781.4]
  input  [7:0]  io_input_ip_ttl, // @[:@781.4]
  input  [7:0]  io_input_ip_proto, // @[:@781.4]
  input  [15:0] io_input_ip_chksum, // @[:@781.4]
  input  [31:0] io_input_ip_src, // @[:@781.4]
  input  [31:0] io_input_ip_dest, // @[:@781.4]
  input  [15:0] io_input_icmp_id, // @[:@781.4]
  input  [15:0] io_input_icmp_checksum, // @[:@781.4]
  input  [7:0]  io_input_icmp_code, // @[:@781.4]
  input  [7:0]  io_input_icmp_imcpType, // @[:@781.4]
  input  [1:0]  io_status, // @[:@781.4]
  output [47:0] io_output_eth_dest, // @[:@781.4]
  output [47:0] io_output_eth_sender, // @[:@781.4]
  output [1:0]  io_output_eth_pactype, // @[:@781.4]
  output [2:0]  io_output_eth_vlan, // @[:@781.4]
  output [15:0] io_output_arp_htype, // @[:@781.4]
  output [15:0] io_output_arp_ptype, // @[:@781.4]
  output [7:0]  io_output_arp_hlen, // @[:@781.4]
  output [7:0]  io_output_arp_plen, // @[:@781.4]
  output [15:0] io_output_arp_oper, // @[:@781.4]
  output [47:0] io_output_arp_sha, // @[:@781.4]
  output [31:0] io_output_arp_spa, // @[:@781.4]
  output [47:0] io_output_arp_tha, // @[:@781.4]
  output [31:0] io_output_arp_tpa, // @[:@781.4]
  output [3:0]  io_output_ip_version, // @[:@781.4]
  output [3:0]  io_output_ip_ihl, // @[:@781.4]
  output [5:0]  io_output_ip_dscp, // @[:@781.4]
  output [1:0]  io_output_ip_ecn, // @[:@781.4]
  output [15:0] io_output_ip_len, // @[:@781.4]
  output [15:0] io_output_ip_id, // @[:@781.4]
  output [2:0]  io_output_ip_flags, // @[:@781.4]
  output [12:0] io_output_ip_foff, // @[:@781.4]
  output [7:0]  io_output_ip_ttl, // @[:@781.4]
  output [7:0]  io_output_ip_proto, // @[:@781.4]
  output [15:0] io_output_ip_chksum, // @[:@781.4]
  output [31:0] io_output_ip_src, // @[:@781.4]
  output [31:0] io_output_ip_dest, // @[:@781.4]
  output [15:0] io_output_icmp_id, // @[:@781.4]
  output [15:0] io_output_icmp_checksum, // @[:@781.4]
  output [7:0]  io_output_icmp_code, // @[:@781.4]
  output [7:0]  io_output_icmp_imcpType, // @[:@781.4]
  output [1:0]  io_outputStatus, // @[:@781.4]
  input         io_pause, // @[:@781.4]
  output        io_stall // @[:@781.4]
);
  reg  state; // @[nat.scala 43:22:@784.4]
  reg [31:0] _RAND_0;
  reg [7:0] searchingP; // @[nat.scala 45:27:@785.4]
  reg [31:0] _RAND_1;
  reg [47:0] packet_eth_dest; // @[nat.scala 48:19:@786.4]
  reg [63:0] _RAND_2;
  reg [47:0] packet_eth_sender; // @[nat.scala 48:19:@786.4]
  reg [63:0] _RAND_3;
  reg [1:0] packet_eth_pactype; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_4;
  reg [2:0] packet_eth_vlan; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_5;
  reg [15:0] packet_arp_htype; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_6;
  reg [15:0] packet_arp_ptype; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_7;
  reg [7:0] packet_arp_hlen; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_8;
  reg [7:0] packet_arp_plen; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_9;
  reg [15:0] packet_arp_oper; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_10;
  reg [47:0] packet_arp_sha; // @[nat.scala 48:19:@786.4]
  reg [63:0] _RAND_11;
  reg [31:0] packet_arp_spa; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_12;
  reg [47:0] packet_arp_tha; // @[nat.scala 48:19:@786.4]
  reg [63:0] _RAND_13;
  reg [31:0] packet_arp_tpa; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_14;
  reg [3:0] packet_ip_version; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_15;
  reg [3:0] packet_ip_ihl; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_16;
  reg [5:0] packet_ip_dscp; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_17;
  reg [1:0] packet_ip_ecn; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_18;
  reg [15:0] packet_ip_len; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_19;
  reg [15:0] packet_ip_id; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_20;
  reg [2:0] packet_ip_flags; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_21;
  reg [12:0] packet_ip_foff; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_22;
  reg [7:0] packet_ip_ttl; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_23;
  reg [7:0] packet_ip_proto; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_24;
  reg [15:0] packet_ip_chksum; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_25;
  reg [31:0] packet_ip_src; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_26;
  reg [31:0] packet_ip_dest; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_27;
  reg [15:0] packet_icmp_id; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_28;
  reg [15:0] packet_icmp_checksum; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_29;
  reg [7:0] packet_icmp_code; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_30;
  reg [7:0] packet_icmp_imcpType; // @[nat.scala 48:19:@786.4]
  reg [31:0] _RAND_31;
  reg [1:0] status; // @[nat.scala 49:23:@787.4]
  reg [31:0] _RAND_32;
  wire  _T_231; // @[Conditional.scala 37:30:@821.4]
  wire  _T_233; // @[nat.scala 63:12:@823.6]
  wire  _T_234; // @[nat.scala 66:24:@856.8]
  wire  _T_235; // @[nat.scala 67:38:@858.10]
  wire  _T_237; // @[nat.scala 67:76:@859.10]
  wire  _T_238; // @[nat.scala 67:55:@860.10]
  wire  _GEN_0; // @[nat.scala 67:97:@861.10]
  wire [1:0] _GEN_1; // @[nat.scala 67:97:@861.10]
  wire [7:0] _GEN_2; // @[nat.scala 67:97:@861.10]
  wire  _GEN_3; // @[nat.scala 66:43:@857.8]
  wire [1:0] _GEN_4; // @[nat.scala 66:43:@857.8]
  wire [7:0] _GEN_5; // @[nat.scala 66:43:@857.8]
  wire [1:0] _GEN_6; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_7; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_8; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_9; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_10; // @[nat.scala 63:23:@824.6]
  wire [31:0] _GEN_11; // @[nat.scala 63:23:@824.6]
  wire [31:0] _GEN_12; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_13; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_14; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_15; // @[nat.scala 63:23:@824.6]
  wire [12:0] _GEN_16; // @[nat.scala 63:23:@824.6]
  wire [2:0] _GEN_17; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_18; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_19; // @[nat.scala 63:23:@824.6]
  wire [1:0] _GEN_20; // @[nat.scala 63:23:@824.6]
  wire [5:0] _GEN_21; // @[nat.scala 63:23:@824.6]
  wire [3:0] _GEN_22; // @[nat.scala 63:23:@824.6]
  wire [3:0] _GEN_23; // @[nat.scala 63:23:@824.6]
  wire [31:0] _GEN_24; // @[nat.scala 63:23:@824.6]
  wire [47:0] _GEN_25; // @[nat.scala 63:23:@824.6]
  wire [31:0] _GEN_26; // @[nat.scala 63:23:@824.6]
  wire [47:0] _GEN_27; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_28; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_29; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_30; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_31; // @[nat.scala 63:23:@824.6]
  wire [15:0] _GEN_32; // @[nat.scala 63:23:@824.6]
  wire [2:0] _GEN_33; // @[nat.scala 63:23:@824.6]
  wire [1:0] _GEN_34; // @[nat.scala 63:23:@824.6]
  wire [47:0] _GEN_35; // @[nat.scala 63:23:@824.6]
  wire [47:0] _GEN_36; // @[nat.scala 63:23:@824.6]
  wire  _GEN_37; // @[nat.scala 63:23:@824.6]
  wire [7:0] _GEN_38; // @[nat.scala 63:23:@824.6]
  wire [8:0] _T_276; // @[nat.scala 94:26:@900.12]
  wire [7:0] _T_277; // @[nat.scala 94:26:@901.12]
  wire  _T_279; // @[nat.scala 94:32:@902.12]
  wire [7:0] _GEN_1639; // @[nat.scala 94:47:@903.12]
  wire  _GEN_1640; // @[nat.scala 94:47:@903.12]
  wire [1:0] _GEN_1641; // @[nat.scala 94:47:@903.12]
  wire [7:0] _GEN_1658; // @[Conditional.scala 39:67:@871.6]
  wire  _GEN_1659; // @[Conditional.scala 39:67:@871.6]
  wire [1:0] _GEN_1660; // @[Conditional.scala 39:67:@871.6]
  wire [1:0] _GEN_1661; // @[Conditional.scala 40:58:@822.4]
  wire  _GEN_1692; // @[Conditional.scala 40:58:@822.4]
  wire [7:0] _GEN_1693; // @[Conditional.scala 40:58:@822.4]
  assign _T_231 = 1'h0 == state; // @[Conditional.scala 37:30:@821.4]
  assign _T_233 = io_pause == 1'h0; // @[nat.scala 63:12:@823.6]
  assign _T_234 = io_status == 2'h1; // @[nat.scala 66:24:@856.8]
  assign _T_235 = io_input_eth_pactype == 2'h1; // @[nat.scala 67:38:@858.10]
  assign _T_237 = io_input_ip_proto == 8'h1; // @[nat.scala 67:76:@859.10]
  assign _T_238 = _T_235 & _T_237; // @[nat.scala 67:55:@860.10]
  assign _GEN_0 = _T_238 ? 1'h1 : state; // @[nat.scala 67:97:@861.10]
  assign _GEN_1 = _T_238 ? 2'h0 : io_status; // @[nat.scala 67:97:@861.10]
  assign _GEN_2 = _T_238 ? 8'h0 : searchingP; // @[nat.scala 67:97:@861.10]
  assign _GEN_3 = _T_234 ? _GEN_0 : state; // @[nat.scala 66:43:@857.8]
  assign _GEN_4 = _T_234 ? _GEN_1 : io_status; // @[nat.scala 66:43:@857.8]
  assign _GEN_5 = _T_234 ? _GEN_2 : searchingP; // @[nat.scala 66:43:@857.8]
  assign _GEN_6 = _T_233 ? _GEN_4 : status; // @[nat.scala 63:23:@824.6]
  assign _GEN_7 = _T_233 ? io_input_icmp_imcpType : packet_icmp_imcpType; // @[nat.scala 63:23:@824.6]
  assign _GEN_8 = _T_233 ? io_input_icmp_code : packet_icmp_code; // @[nat.scala 63:23:@824.6]
  assign _GEN_9 = _T_233 ? io_input_icmp_checksum : packet_icmp_checksum; // @[nat.scala 63:23:@824.6]
  assign _GEN_10 = _T_233 ? io_input_icmp_id : packet_icmp_id; // @[nat.scala 63:23:@824.6]
  assign _GEN_11 = _T_233 ? io_input_ip_dest : packet_ip_dest; // @[nat.scala 63:23:@824.6]
  assign _GEN_12 = _T_233 ? io_input_ip_src : packet_ip_src; // @[nat.scala 63:23:@824.6]
  assign _GEN_13 = _T_233 ? io_input_ip_chksum : packet_ip_chksum; // @[nat.scala 63:23:@824.6]
  assign _GEN_14 = _T_233 ? io_input_ip_proto : packet_ip_proto; // @[nat.scala 63:23:@824.6]
  assign _GEN_15 = _T_233 ? io_input_ip_ttl : packet_ip_ttl; // @[nat.scala 63:23:@824.6]
  assign _GEN_16 = _T_233 ? io_input_ip_foff : packet_ip_foff; // @[nat.scala 63:23:@824.6]
  assign _GEN_17 = _T_233 ? io_input_ip_flags : packet_ip_flags; // @[nat.scala 63:23:@824.6]
  assign _GEN_18 = _T_233 ? io_input_ip_id : packet_ip_id; // @[nat.scala 63:23:@824.6]
  assign _GEN_19 = _T_233 ? io_input_ip_len : packet_ip_len; // @[nat.scala 63:23:@824.6]
  assign _GEN_20 = _T_233 ? io_input_ip_ecn : packet_ip_ecn; // @[nat.scala 63:23:@824.6]
  assign _GEN_21 = _T_233 ? io_input_ip_dscp : packet_ip_dscp; // @[nat.scala 63:23:@824.6]
  assign _GEN_22 = _T_233 ? io_input_ip_ihl : packet_ip_ihl; // @[nat.scala 63:23:@824.6]
  assign _GEN_23 = _T_233 ? io_input_ip_version : packet_ip_version; // @[nat.scala 63:23:@824.6]
  assign _GEN_24 = _T_233 ? io_input_arp_tpa : packet_arp_tpa; // @[nat.scala 63:23:@824.6]
  assign _GEN_25 = _T_233 ? io_input_arp_tha : packet_arp_tha; // @[nat.scala 63:23:@824.6]
  assign _GEN_26 = _T_233 ? io_input_arp_spa : packet_arp_spa; // @[nat.scala 63:23:@824.6]
  assign _GEN_27 = _T_233 ? io_input_arp_sha : packet_arp_sha; // @[nat.scala 63:23:@824.6]
  assign _GEN_28 = _T_233 ? io_input_arp_oper : packet_arp_oper; // @[nat.scala 63:23:@824.6]
  assign _GEN_29 = _T_233 ? io_input_arp_plen : packet_arp_plen; // @[nat.scala 63:23:@824.6]
  assign _GEN_30 = _T_233 ? io_input_arp_hlen : packet_arp_hlen; // @[nat.scala 63:23:@824.6]
  assign _GEN_31 = _T_233 ? io_input_arp_ptype : packet_arp_ptype; // @[nat.scala 63:23:@824.6]
  assign _GEN_32 = _T_233 ? io_input_arp_htype : packet_arp_htype; // @[nat.scala 63:23:@824.6]
  assign _GEN_33 = _T_233 ? io_input_eth_vlan : packet_eth_vlan; // @[nat.scala 63:23:@824.6]
  assign _GEN_34 = _T_233 ? io_input_eth_pactype : packet_eth_pactype; // @[nat.scala 63:23:@824.6]
  assign _GEN_35 = _T_233 ? io_input_eth_sender : packet_eth_sender; // @[nat.scala 63:23:@824.6]
  assign _GEN_36 = _T_233 ? io_input_eth_dest : packet_eth_dest; // @[nat.scala 63:23:@824.6]
  assign _GEN_37 = _T_233 ? _GEN_3 : state; // @[nat.scala 63:23:@824.6]
  assign _GEN_38 = _T_233 ? _GEN_5 : searchingP; // @[nat.scala 63:23:@824.6]
  assign _T_276 = searchingP + 8'h1; // @[nat.scala 94:26:@900.12]
  assign _T_277 = searchingP + 8'h1; // @[nat.scala 94:26:@901.12]
  assign _T_279 = _T_277 < 8'hc8; // @[nat.scala 94:32:@902.12]
  assign _GEN_1639 = _T_279 ? _T_277 : searchingP; // @[nat.scala 94:47:@903.12]
  assign _GEN_1640 = _T_279 ? state : 1'h0; // @[nat.scala 94:47:@903.12]
  assign _GEN_1641 = _T_279 ? status : 2'h1; // @[nat.scala 94:47:@903.12]
  assign _GEN_1658 = state ? _GEN_1639 : searchingP; // @[Conditional.scala 39:67:@871.6]
  assign _GEN_1659 = state ? _GEN_1640 : state; // @[Conditional.scala 39:67:@871.6]
  assign _GEN_1660 = state ? _GEN_1641 : status; // @[Conditional.scala 39:67:@871.6]
  assign _GEN_1661 = _T_231 ? _GEN_6 : _GEN_1660; // @[Conditional.scala 40:58:@822.4]
  assign _GEN_1692 = _T_231 ? _GEN_37 : _GEN_1659; // @[Conditional.scala 40:58:@822.4]
  assign _GEN_1693 = _T_231 ? _GEN_38 : _GEN_1658; // @[Conditional.scala 40:58:@822.4]
  assign io_output_eth_dest = packet_eth_dest; // @[nat.scala 58:13:@819.4]
  assign io_output_eth_sender = packet_eth_sender; // @[nat.scala 58:13:@818.4]
  assign io_output_eth_pactype = packet_eth_pactype; // @[nat.scala 58:13:@817.4]
  assign io_output_eth_vlan = packet_eth_vlan; // @[nat.scala 58:13:@816.4]
  assign io_output_arp_htype = packet_arp_htype; // @[nat.scala 58:13:@815.4]
  assign io_output_arp_ptype = packet_arp_ptype; // @[nat.scala 58:13:@814.4]
  assign io_output_arp_hlen = packet_arp_hlen; // @[nat.scala 58:13:@813.4]
  assign io_output_arp_plen = packet_arp_plen; // @[nat.scala 58:13:@812.4]
  assign io_output_arp_oper = packet_arp_oper; // @[nat.scala 58:13:@811.4]
  assign io_output_arp_sha = packet_arp_sha; // @[nat.scala 58:13:@810.4]
  assign io_output_arp_spa = packet_arp_spa; // @[nat.scala 58:13:@809.4]
  assign io_output_arp_tha = packet_arp_tha; // @[nat.scala 58:13:@808.4]
  assign io_output_arp_tpa = packet_arp_tpa; // @[nat.scala 58:13:@807.4]
  assign io_output_ip_version = packet_ip_version; // @[nat.scala 58:13:@806.4]
  assign io_output_ip_ihl = packet_ip_ihl; // @[nat.scala 58:13:@805.4]
  assign io_output_ip_dscp = packet_ip_dscp; // @[nat.scala 58:13:@804.4]
  assign io_output_ip_ecn = packet_ip_ecn; // @[nat.scala 58:13:@803.4]
  assign io_output_ip_len = packet_ip_len; // @[nat.scala 58:13:@802.4]
  assign io_output_ip_id = packet_ip_id; // @[nat.scala 58:13:@801.4]
  assign io_output_ip_flags = packet_ip_flags; // @[nat.scala 58:13:@800.4]
  assign io_output_ip_foff = packet_ip_foff; // @[nat.scala 58:13:@799.4]
  assign io_output_ip_ttl = packet_ip_ttl; // @[nat.scala 58:13:@798.4]
  assign io_output_ip_proto = packet_ip_proto; // @[nat.scala 58:13:@797.4]
  assign io_output_ip_chksum = packet_ip_chksum; // @[nat.scala 58:13:@796.4]
  assign io_output_ip_src = packet_ip_src; // @[nat.scala 58:13:@795.4]
  assign io_output_ip_dest = packet_ip_dest; // @[nat.scala 58:13:@794.4]
  assign io_output_icmp_id = packet_icmp_id; // @[nat.scala 58:13:@793.4]
  assign io_output_icmp_checksum = packet_icmp_checksum; // @[nat.scala 58:13:@792.4]
  assign io_output_icmp_code = packet_icmp_code; // @[nat.scala 58:13:@791.4]
  assign io_output_icmp_imcpType = packet_icmp_imcpType; // @[nat.scala 58:13:@790.4]
  assign io_outputStatus = status; // @[nat.scala 59:19:@820.4]
  assign io_stall = state; // @[nat.scala 57:12:@789.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
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
  packet_arp_htype = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  packet_arp_ptype = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  packet_arp_hlen = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  packet_arp_plen = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  packet_arp_oper = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  packet_arp_sha = _RAND_11[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  packet_arp_spa = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  packet_arp_tha = _RAND_13[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  packet_arp_tpa = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  packet_ip_version = _RAND_15[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  packet_ip_ihl = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  packet_ip_dscp = _RAND_17[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  packet_ip_ecn = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  packet_ip_len = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  packet_ip_id = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  packet_ip_flags = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  packet_ip_foff = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  packet_ip_ttl = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  packet_ip_proto = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  packet_ip_chksum = _RAND_25[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  packet_ip_src = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  packet_ip_dest = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  packet_icmp_id = _RAND_28[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  packet_icmp_checksum = _RAND_29[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  packet_icmp_code = _RAND_30[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  packet_icmp_imcpType = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  status = _RAND_32[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_231) begin
        if (_T_233) begin
          if (_T_234) begin
            if (_T_238) begin
              state <= 1'h1;
            end
          end
        end
      end else begin
        if (state) begin
          if (!(_T_279)) begin
            state <= 1'h0;
          end
        end
      end
    end
    if (reset) begin
      searchingP <= 8'h0;
    end else begin
      if (_T_231) begin
        if (_T_233) begin
          if (_T_234) begin
            if (_T_238) begin
              searchingP <= 8'h0;
            end
          end
        end
      end else begin
        if (state) begin
          if (_T_279) begin
            searchingP <= _T_277;
          end
        end
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_eth_dest <= io_input_eth_dest;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_eth_sender <= io_input_eth_sender;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_htype <= io_input_arp_htype;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_ptype <= io_input_arp_ptype;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_hlen <= io_input_arp_hlen;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_plen <= io_input_arp_plen;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_oper <= io_input_arp_oper;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_sha <= io_input_arp_sha;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_spa <= io_input_arp_spa;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_tha <= io_input_arp_tha;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_arp_tpa <= io_input_arp_tpa;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_version <= io_input_ip_version;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_len <= io_input_ip_len;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_id <= io_input_ip_id;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_src <= io_input_ip_src;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_ip_dest <= io_input_ip_dest;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_icmp_id <= io_input_icmp_id;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_icmp_checksum <= io_input_icmp_checksum;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_icmp_code <= io_input_icmp_code;
      end
    end
    if (_T_231) begin
      if (_T_233) begin
        packet_icmp_imcpType <= io_input_icmp_imcpType;
      end
    end
    if (reset) begin
      status <= 2'h0;
    end else begin
      if (_T_231) begin
        if (_T_233) begin
          if (_T_234) begin
            if (_T_238) begin
              status <= 2'h0;
            end else begin
              status <= io_status;
            end
          end else begin
            status <= io_status;
          end
        end
      end else begin
        if (state) begin
          if (!(_T_279)) begin
            status <= 2'h1;
          end
        end
      end
    end
  end
endmodule
module LLFT( // @[:@920.2]
  input         clock, // @[:@921.4]
  input         reset, // @[:@922.4]
  input  [47:0] io_input_eth_dest, // @[:@923.4]
  input  [47:0] io_input_eth_sender, // @[:@923.4]
  input  [1:0]  io_input_eth_pactype, // @[:@923.4]
  input  [2:0]  io_input_eth_vlan, // @[:@923.4]
  input  [15:0] io_input_arp_htype, // @[:@923.4]
  input  [15:0] io_input_arp_ptype, // @[:@923.4]
  input  [7:0]  io_input_arp_hlen, // @[:@923.4]
  input  [7:0]  io_input_arp_plen, // @[:@923.4]
  input  [15:0] io_input_arp_oper, // @[:@923.4]
  input  [47:0] io_input_arp_sha, // @[:@923.4]
  input  [31:0] io_input_arp_spa, // @[:@923.4]
  input  [47:0] io_input_arp_tha, // @[:@923.4]
  input  [31:0] io_input_arp_tpa, // @[:@923.4]
  input  [3:0]  io_input_ip_version, // @[:@923.4]
  input  [3:0]  io_input_ip_ihl, // @[:@923.4]
  input  [5:0]  io_input_ip_dscp, // @[:@923.4]
  input  [1:0]  io_input_ip_ecn, // @[:@923.4]
  input  [15:0] io_input_ip_len, // @[:@923.4]
  input  [15:0] io_input_ip_id, // @[:@923.4]
  input  [2:0]  io_input_ip_flags, // @[:@923.4]
  input  [12:0] io_input_ip_foff, // @[:@923.4]
  input  [7:0]  io_input_ip_ttl, // @[:@923.4]
  input  [7:0]  io_input_ip_proto, // @[:@923.4]
  input  [15:0] io_input_ip_chksum, // @[:@923.4]
  input  [31:0] io_input_ip_src, // @[:@923.4]
  input  [31:0] io_input_ip_dest, // @[:@923.4]
  input  [15:0] io_input_icmp_id, // @[:@923.4]
  input  [15:0] io_input_icmp_checksum, // @[:@923.4]
  input  [7:0]  io_input_icmp_code, // @[:@923.4]
  input  [7:0]  io_input_icmp_imcpType, // @[:@923.4]
  input  [1:0]  io_status, // @[:@923.4]
  output        io_stall, // @[:@923.4]
  input         io_pause, // @[:@923.4]
  output [47:0] io_output_packet_eth_dest, // @[:@923.4]
  output [47:0] io_output_packet_eth_sender, // @[:@923.4]
  output [1:0]  io_output_packet_eth_pactype, // @[:@923.4]
  output [2:0]  io_output_packet_eth_vlan, // @[:@923.4]
  output [15:0] io_output_packet_arp_htype, // @[:@923.4]
  output [15:0] io_output_packet_arp_ptype, // @[:@923.4]
  output [7:0]  io_output_packet_arp_hlen, // @[:@923.4]
  output [7:0]  io_output_packet_arp_plen, // @[:@923.4]
  output [15:0] io_output_packet_arp_oper, // @[:@923.4]
  output [47:0] io_output_packet_arp_sha, // @[:@923.4]
  output [31:0] io_output_packet_arp_spa, // @[:@923.4]
  output [47:0] io_output_packet_arp_tha, // @[:@923.4]
  output [31:0] io_output_packet_arp_tpa, // @[:@923.4]
  output [3:0]  io_output_packet_ip_version, // @[:@923.4]
  output [3:0]  io_output_packet_ip_ihl, // @[:@923.4]
  output [5:0]  io_output_packet_ip_dscp, // @[:@923.4]
  output [1:0]  io_output_packet_ip_ecn, // @[:@923.4]
  output [15:0] io_output_packet_ip_len, // @[:@923.4]
  output [15:0] io_output_packet_ip_id, // @[:@923.4]
  output [2:0]  io_output_packet_ip_flags, // @[:@923.4]
  output [12:0] io_output_packet_ip_foff, // @[:@923.4]
  output [7:0]  io_output_packet_ip_ttl, // @[:@923.4]
  output [7:0]  io_output_packet_ip_proto, // @[:@923.4]
  output [15:0] io_output_packet_ip_chksum, // @[:@923.4]
  output [31:0] io_output_packet_ip_src, // @[:@923.4]
  output [31:0] io_output_packet_ip_dest, // @[:@923.4]
  output [15:0] io_output_packet_icmp_id, // @[:@923.4]
  output [15:0] io_output_packet_icmp_checksum, // @[:@923.4]
  output [7:0]  io_output_packet_icmp_code, // @[:@923.4]
  output [7:0]  io_output_packet_icmp_imcpType, // @[:@923.4]
  output [31:0] io_output_lookup_nextHop, // @[:@923.4]
  output [1:0]  io_outputStatus // @[:@923.4]
);
  reg [2:0] cnt; // @[linear.scala 53:16:@982.4]
  reg [31:0] _RAND_0;
  reg [5:0] shiftCnt; // @[linear.scala 54:21:@983.4]
  reg [31:0] _RAND_1;
  reg [47:0] working_eth_dest; // @[linear.scala 56:20:@984.4]
  reg [63:0] _RAND_2;
  reg [47:0] working_eth_sender; // @[linear.scala 56:20:@984.4]
  reg [63:0] _RAND_3;
  reg [1:0] working_eth_pactype; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_4;
  reg [2:0] working_eth_vlan; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_5;
  reg [15:0] working_arp_htype; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_6;
  reg [15:0] working_arp_ptype; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_7;
  reg [7:0] working_arp_hlen; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_8;
  reg [7:0] working_arp_plen; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_9;
  reg [15:0] working_arp_oper; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_10;
  reg [47:0] working_arp_sha; // @[linear.scala 56:20:@984.4]
  reg [63:0] _RAND_11;
  reg [31:0] working_arp_spa; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_12;
  reg [47:0] working_arp_tha; // @[linear.scala 56:20:@984.4]
  reg [63:0] _RAND_13;
  reg [31:0] working_arp_tpa; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_14;
  reg [3:0] working_ip_version; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_15;
  reg [3:0] working_ip_ihl; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_16;
  reg [5:0] working_ip_dscp; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_17;
  reg [1:0] working_ip_ecn; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_18;
  reg [15:0] working_ip_len; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_19;
  reg [15:0] working_ip_id; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_20;
  reg [2:0] working_ip_flags; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_21;
  reg [12:0] working_ip_foff; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_22;
  reg [7:0] working_ip_ttl; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_23;
  reg [7:0] working_ip_proto; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_24;
  reg [15:0] working_ip_chksum; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_25;
  reg [31:0] working_ip_src; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_26;
  reg [31:0] working_ip_dest; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_27;
  reg [15:0] working_icmp_id; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_28;
  reg [15:0] working_icmp_checksum; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_29;
  reg [7:0] working_icmp_code; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_30;
  reg [7:0] working_icmp_imcpType; // @[linear.scala 56:20:@984.4]
  reg [31:0] _RAND_31;
  reg [31:0] lookup_nextHop; // @[linear.scala 57:19:@985.4]
  reg [31:0] _RAND_32;
  reg [31:0] addr; // @[linear.scala 58:17:@986.4]
  reg [31:0] _RAND_33;
  reg [1:0] status; // @[linear.scala 59:23:@987.4]
  reg [31:0] _RAND_34;
  reg  state; // @[linear.scala 66:22:@1021.4]
  reg [31:0] _RAND_35;
  wire  _T_111; // @[Conditional.scala 37:30:@1024.4]
  wire  _T_113; // @[linear.scala 72:12:@1026.6]
  wire  _T_114; // @[linear.scala 75:24:@1059.8]
  wire  _T_115; // @[linear.scala 76:37:@1061.10]
  wire [31:0] _GEN_0; // @[linear.scala 76:55:@1062.10]
  wire [2:0] _GEN_1; // @[linear.scala 76:55:@1062.10]
  wire [5:0] _GEN_2; // @[linear.scala 76:55:@1062.10]
  wire  _GEN_3; // @[linear.scala 76:55:@1062.10]
  wire [31:0] _GEN_5; // @[linear.scala 75:43:@1060.8]
  wire [2:0] _GEN_6; // @[linear.scala 75:43:@1060.8]
  wire [5:0] _GEN_7; // @[linear.scala 75:43:@1060.8]
  wire  _GEN_8; // @[linear.scala 75:43:@1060.8]
  wire [1:0] _GEN_10; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_11; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_12; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_13; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_14; // @[linear.scala 72:23:@1027.6]
  wire [31:0] _GEN_15; // @[linear.scala 72:23:@1027.6]
  wire [31:0] _GEN_16; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_17; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_18; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_19; // @[linear.scala 72:23:@1027.6]
  wire [12:0] _GEN_20; // @[linear.scala 72:23:@1027.6]
  wire [2:0] _GEN_21; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_22; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_23; // @[linear.scala 72:23:@1027.6]
  wire [1:0] _GEN_24; // @[linear.scala 72:23:@1027.6]
  wire [5:0] _GEN_25; // @[linear.scala 72:23:@1027.6]
  wire [3:0] _GEN_26; // @[linear.scala 72:23:@1027.6]
  wire [3:0] _GEN_27; // @[linear.scala 72:23:@1027.6]
  wire [31:0] _GEN_28; // @[linear.scala 72:23:@1027.6]
  wire [47:0] _GEN_29; // @[linear.scala 72:23:@1027.6]
  wire [31:0] _GEN_30; // @[linear.scala 72:23:@1027.6]
  wire [47:0] _GEN_31; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_32; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_33; // @[linear.scala 72:23:@1027.6]
  wire [7:0] _GEN_34; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_35; // @[linear.scala 72:23:@1027.6]
  wire [15:0] _GEN_36; // @[linear.scala 72:23:@1027.6]
  wire [2:0] _GEN_37; // @[linear.scala 72:23:@1027.6]
  wire [1:0] _GEN_38; // @[linear.scala 72:23:@1027.6]
  wire [47:0] _GEN_39; // @[linear.scala 72:23:@1027.6]
  wire [47:0] _GEN_40; // @[linear.scala 72:23:@1027.6]
  wire [31:0] _GEN_41; // @[linear.scala 72:23:@1027.6]
  wire [2:0] _GEN_42; // @[linear.scala 72:23:@1027.6]
  wire [5:0] _GEN_43; // @[linear.scala 72:23:@1027.6]
  wire  _GEN_44; // @[linear.scala 72:23:@1027.6]
  wire  _T_120; // @[linear.scala 89:16:@1077.8]
  wire [1:0] _T_122; // @[:@1083.10]
  wire [31:0] _GEN_49; // @[linear.scala 92:28:@1084.10]
  wire [31:0] _GEN_51; // @[linear.scala 92:28:@1084.10]
  wire [31:0] _GEN_52; // @[linear.scala 92:28:@1084.10]
  wire [31:0] _GEN_54; // @[linear.scala 92:28:@1084.10]
  wire [31:0] _GEN_55; // @[linear.scala 92:28:@1084.10]
  wire [31:0] _GEN_57; // @[linear.scala 92:28:@1084.10]
  wire  _T_123; // @[linear.scala 92:28:@1084.10]
  wire [6:0] _T_125; // @[linear.scala 93:30:@1086.12]
  wire [6:0] _T_126; // @[linear.scala 93:30:@1087.12]
  wire [5:0] _T_127; // @[linear.scala 93:30:@1088.12]
  wire [30:0] _T_128; // @[linear.scala 94:22:@1090.12]
  wire  _T_131; // @[linear.scala 96:32:@1095.12]
  wire [3:0] _T_135; // @[linear.scala 101:22:@1103.14]
  wire [2:0] _T_136; // @[linear.scala 101:22:@1104.14]
  wire [31:0] _GEN_83; // @[linear.scala 96:42:@1096.12]
  wire  _GEN_84; // @[linear.scala 96:42:@1096.12]
  wire [2:0] _GEN_85; // @[linear.scala 96:42:@1096.12]
  wire [5:0] _GEN_86; // @[linear.scala 92:48:@1085.10]
  wire [31:0] _GEN_87; // @[linear.scala 92:48:@1085.10]
  wire [31:0] _GEN_89; // @[linear.scala 92:48:@1085.10]
  wire  _GEN_90; // @[linear.scala 92:48:@1085.10]
  wire [2:0] _GEN_91; // @[linear.scala 92:48:@1085.10]
  wire  _GEN_92; // @[linear.scala 89:36:@1078.8]
  wire [5:0] _GEN_94; // @[linear.scala 89:36:@1078.8]
  wire [31:0] _GEN_95; // @[linear.scala 89:36:@1078.8]
  wire [31:0] _GEN_96; // @[linear.scala 89:36:@1078.8]
  wire [2:0] _GEN_97; // @[linear.scala 89:36:@1078.8]
  wire  _GEN_98; // @[Conditional.scala 39:67:@1076.6]
  wire [5:0] _GEN_100; // @[Conditional.scala 39:67:@1076.6]
  wire [31:0] _GEN_101; // @[Conditional.scala 39:67:@1076.6]
  wire [31:0] _GEN_102; // @[Conditional.scala 39:67:@1076.6]
  wire [2:0] _GEN_103; // @[Conditional.scala 39:67:@1076.6]
  wire [1:0] _GEN_104; // @[Conditional.scala 40:58:@1025.4]
  wire  _GEN_138; // @[Conditional.scala 40:58:@1025.4]
  assign _T_111 = 1'h0 == state; // @[Conditional.scala 37:30:@1024.4]
  assign _T_113 = io_pause == 1'h0; // @[linear.scala 72:12:@1026.6]
  assign _T_114 = io_status != 2'h0; // @[linear.scala 75:24:@1059.8]
  assign _T_115 = io_input_eth_pactype == 2'h1; // @[linear.scala 76:37:@1061.10]
  assign _GEN_0 = _T_115 ? io_input_ip_dest : addr; // @[linear.scala 76:55:@1062.10]
  assign _GEN_1 = _T_115 ? 3'h0 : cnt; // @[linear.scala 76:55:@1062.10]
  assign _GEN_2 = _T_115 ? 6'h20 : shiftCnt; // @[linear.scala 76:55:@1062.10]
  assign _GEN_3 = _T_115 ? 1'h1 : state; // @[linear.scala 76:55:@1062.10]
  assign _GEN_5 = _T_114 ? _GEN_0 : addr; // @[linear.scala 75:43:@1060.8]
  assign _GEN_6 = _T_114 ? _GEN_1 : cnt; // @[linear.scala 75:43:@1060.8]
  assign _GEN_7 = _T_114 ? _GEN_2 : shiftCnt; // @[linear.scala 75:43:@1060.8]
  assign _GEN_8 = _T_114 ? _GEN_3 : state; // @[linear.scala 75:43:@1060.8]
  assign _GEN_10 = _T_113 ? io_status : status; // @[linear.scala 72:23:@1027.6]
  assign _GEN_11 = _T_113 ? io_input_icmp_imcpType : working_icmp_imcpType; // @[linear.scala 72:23:@1027.6]
  assign _GEN_12 = _T_113 ? io_input_icmp_code : working_icmp_code; // @[linear.scala 72:23:@1027.6]
  assign _GEN_13 = _T_113 ? io_input_icmp_checksum : working_icmp_checksum; // @[linear.scala 72:23:@1027.6]
  assign _GEN_14 = _T_113 ? io_input_icmp_id : working_icmp_id; // @[linear.scala 72:23:@1027.6]
  assign _GEN_15 = _T_113 ? io_input_ip_dest : working_ip_dest; // @[linear.scala 72:23:@1027.6]
  assign _GEN_16 = _T_113 ? io_input_ip_src : working_ip_src; // @[linear.scala 72:23:@1027.6]
  assign _GEN_17 = _T_113 ? io_input_ip_chksum : working_ip_chksum; // @[linear.scala 72:23:@1027.6]
  assign _GEN_18 = _T_113 ? io_input_ip_proto : working_ip_proto; // @[linear.scala 72:23:@1027.6]
  assign _GEN_19 = _T_113 ? io_input_ip_ttl : working_ip_ttl; // @[linear.scala 72:23:@1027.6]
  assign _GEN_20 = _T_113 ? io_input_ip_foff : working_ip_foff; // @[linear.scala 72:23:@1027.6]
  assign _GEN_21 = _T_113 ? io_input_ip_flags : working_ip_flags; // @[linear.scala 72:23:@1027.6]
  assign _GEN_22 = _T_113 ? io_input_ip_id : working_ip_id; // @[linear.scala 72:23:@1027.6]
  assign _GEN_23 = _T_113 ? io_input_ip_len : working_ip_len; // @[linear.scala 72:23:@1027.6]
  assign _GEN_24 = _T_113 ? io_input_ip_ecn : working_ip_ecn; // @[linear.scala 72:23:@1027.6]
  assign _GEN_25 = _T_113 ? io_input_ip_dscp : working_ip_dscp; // @[linear.scala 72:23:@1027.6]
  assign _GEN_26 = _T_113 ? io_input_ip_ihl : working_ip_ihl; // @[linear.scala 72:23:@1027.6]
  assign _GEN_27 = _T_113 ? io_input_ip_version : working_ip_version; // @[linear.scala 72:23:@1027.6]
  assign _GEN_28 = _T_113 ? io_input_arp_tpa : working_arp_tpa; // @[linear.scala 72:23:@1027.6]
  assign _GEN_29 = _T_113 ? io_input_arp_tha : working_arp_tha; // @[linear.scala 72:23:@1027.6]
  assign _GEN_30 = _T_113 ? io_input_arp_spa : working_arp_spa; // @[linear.scala 72:23:@1027.6]
  assign _GEN_31 = _T_113 ? io_input_arp_sha : working_arp_sha; // @[linear.scala 72:23:@1027.6]
  assign _GEN_32 = _T_113 ? io_input_arp_oper : working_arp_oper; // @[linear.scala 72:23:@1027.6]
  assign _GEN_33 = _T_113 ? io_input_arp_plen : working_arp_plen; // @[linear.scala 72:23:@1027.6]
  assign _GEN_34 = _T_113 ? io_input_arp_hlen : working_arp_hlen; // @[linear.scala 72:23:@1027.6]
  assign _GEN_35 = _T_113 ? io_input_arp_ptype : working_arp_ptype; // @[linear.scala 72:23:@1027.6]
  assign _GEN_36 = _T_113 ? io_input_arp_htype : working_arp_htype; // @[linear.scala 72:23:@1027.6]
  assign _GEN_37 = _T_113 ? io_input_eth_vlan : working_eth_vlan; // @[linear.scala 72:23:@1027.6]
  assign _GEN_38 = _T_113 ? io_input_eth_pactype : working_eth_pactype; // @[linear.scala 72:23:@1027.6]
  assign _GEN_39 = _T_113 ? io_input_eth_sender : working_eth_sender; // @[linear.scala 72:23:@1027.6]
  assign _GEN_40 = _T_113 ? io_input_eth_dest : working_eth_dest; // @[linear.scala 72:23:@1027.6]
  assign _GEN_41 = _T_113 ? _GEN_5 : addr; // @[linear.scala 72:23:@1027.6]
  assign _GEN_42 = _T_113 ? _GEN_6 : cnt; // @[linear.scala 72:23:@1027.6]
  assign _GEN_43 = _T_113 ? _GEN_7 : shiftCnt; // @[linear.scala 72:23:@1027.6]
  assign _GEN_44 = _T_113 ? _GEN_8 : state; // @[linear.scala 72:23:@1027.6]
  assign _T_120 = cnt == 3'h4; // @[linear.scala 89:16:@1077.8]
  assign _T_122 = cnt[1:0]; // @[:@1083.10]
  assign _GEN_49 = 2'h1 == _T_122 ? 32'ha0002 : 32'ha0001; // @[linear.scala 92:28:@1084.10]
  assign _GEN_51 = 2'h1 == _T_122 ? 32'ha000202 : 32'ha000102; // @[linear.scala 92:28:@1084.10]
  assign _GEN_52 = 2'h2 == _T_122 ? 32'ha0003 : _GEN_49; // @[linear.scala 92:28:@1084.10]
  assign _GEN_54 = 2'h2 == _T_122 ? 32'ha000302 : _GEN_51; // @[linear.scala 92:28:@1084.10]
  assign _GEN_55 = 2'h3 == _T_122 ? 32'ha0004 : _GEN_52; // @[linear.scala 92:28:@1084.10]
  assign _GEN_57 = 2'h3 == _T_122 ? 32'ha000402 : _GEN_54; // @[linear.scala 92:28:@1084.10]
  assign _T_123 = shiftCnt != 6'h18; // @[linear.scala 92:28:@1084.10]
  assign _T_125 = shiftCnt - 6'h1; // @[linear.scala 93:30:@1086.12]
  assign _T_126 = $unsigned(_T_125); // @[linear.scala 93:30:@1087.12]
  assign _T_127 = _T_126[5:0]; // @[linear.scala 93:30:@1088.12]
  assign _T_128 = addr[31:1]; // @[linear.scala 94:22:@1090.12]
  assign _T_131 = _GEN_55 == addr; // @[linear.scala 96:32:@1095.12]
  assign _T_135 = cnt + 3'h1; // @[linear.scala 101:22:@1103.14]
  assign _T_136 = cnt + 3'h1; // @[linear.scala 101:22:@1104.14]
  assign _GEN_83 = _T_131 ? _GEN_57 : lookup_nextHop; // @[linear.scala 96:42:@1096.12]
  assign _GEN_84 = _T_131 ? 1'h0 : state; // @[linear.scala 96:42:@1096.12]
  assign _GEN_85 = _T_131 ? cnt : _T_136; // @[linear.scala 96:42:@1096.12]
  assign _GEN_86 = _T_123 ? _T_127 : shiftCnt; // @[linear.scala 92:48:@1085.10]
  assign _GEN_87 = _T_123 ? {{1'd0}, _T_128} : addr; // @[linear.scala 92:48:@1085.10]
  assign _GEN_89 = _T_123 ? lookup_nextHop : _GEN_83; // @[linear.scala 92:48:@1085.10]
  assign _GEN_90 = _T_123 ? state : _GEN_84; // @[linear.scala 92:48:@1085.10]
  assign _GEN_91 = _T_123 ? cnt : _GEN_85; // @[linear.scala 92:48:@1085.10]
  assign _GEN_92 = _T_120 ? 1'h0 : _GEN_90; // @[linear.scala 89:36:@1078.8]
  assign _GEN_94 = _T_120 ? shiftCnt : _GEN_86; // @[linear.scala 89:36:@1078.8]
  assign _GEN_95 = _T_120 ? addr : _GEN_87; // @[linear.scala 89:36:@1078.8]
  assign _GEN_96 = _T_120 ? lookup_nextHop : _GEN_89; // @[linear.scala 89:36:@1078.8]
  assign _GEN_97 = _T_120 ? cnt : _GEN_91; // @[linear.scala 89:36:@1078.8]
  assign _GEN_98 = state ? _GEN_92 : state; // @[Conditional.scala 39:67:@1076.6]
  assign _GEN_100 = state ? _GEN_94 : shiftCnt; // @[Conditional.scala 39:67:@1076.6]
  assign _GEN_101 = state ? _GEN_95 : addr; // @[Conditional.scala 39:67:@1076.6]
  assign _GEN_102 = state ? _GEN_96 : lookup_nextHop; // @[Conditional.scala 39:67:@1076.6]
  assign _GEN_103 = state ? _GEN_97 : cnt; // @[Conditional.scala 39:67:@1076.6]
  assign _GEN_104 = _T_111 ? _GEN_10 : status; // @[Conditional.scala 40:58:@1025.4]
  assign _GEN_138 = _T_111 ? _GEN_44 : _GEN_98; // @[Conditional.scala 40:58:@1025.4]
  assign io_stall = state; // @[linear.scala 68:12:@1023.4]
  assign io_output_packet_eth_dest = working_eth_dest; // @[linear.scala 61:20:@1017.4]
  assign io_output_packet_eth_sender = working_eth_sender; // @[linear.scala 61:20:@1016.4]
  assign io_output_packet_eth_pactype = working_eth_pactype; // @[linear.scala 61:20:@1015.4]
  assign io_output_packet_eth_vlan = working_eth_vlan; // @[linear.scala 61:20:@1014.4]
  assign io_output_packet_arp_htype = working_arp_htype; // @[linear.scala 61:20:@1013.4]
  assign io_output_packet_arp_ptype = working_arp_ptype; // @[linear.scala 61:20:@1012.4]
  assign io_output_packet_arp_hlen = working_arp_hlen; // @[linear.scala 61:20:@1011.4]
  assign io_output_packet_arp_plen = working_arp_plen; // @[linear.scala 61:20:@1010.4]
  assign io_output_packet_arp_oper = working_arp_oper; // @[linear.scala 61:20:@1009.4]
  assign io_output_packet_arp_sha = working_arp_sha; // @[linear.scala 61:20:@1008.4]
  assign io_output_packet_arp_spa = working_arp_spa; // @[linear.scala 61:20:@1007.4]
  assign io_output_packet_arp_tha = working_arp_tha; // @[linear.scala 61:20:@1006.4]
  assign io_output_packet_arp_tpa = working_arp_tpa; // @[linear.scala 61:20:@1005.4]
  assign io_output_packet_ip_version = working_ip_version; // @[linear.scala 61:20:@1004.4]
  assign io_output_packet_ip_ihl = working_ip_ihl; // @[linear.scala 61:20:@1003.4]
  assign io_output_packet_ip_dscp = working_ip_dscp; // @[linear.scala 61:20:@1002.4]
  assign io_output_packet_ip_ecn = working_ip_ecn; // @[linear.scala 61:20:@1001.4]
  assign io_output_packet_ip_len = working_ip_len; // @[linear.scala 61:20:@1000.4]
  assign io_output_packet_ip_id = working_ip_id; // @[linear.scala 61:20:@999.4]
  assign io_output_packet_ip_flags = working_ip_flags; // @[linear.scala 61:20:@998.4]
  assign io_output_packet_ip_foff = working_ip_foff; // @[linear.scala 61:20:@997.4]
  assign io_output_packet_ip_ttl = working_ip_ttl; // @[linear.scala 61:20:@996.4]
  assign io_output_packet_ip_proto = working_ip_proto; // @[linear.scala 61:20:@995.4]
  assign io_output_packet_ip_chksum = working_ip_chksum; // @[linear.scala 61:20:@994.4]
  assign io_output_packet_ip_src = working_ip_src; // @[linear.scala 61:20:@993.4]
  assign io_output_packet_ip_dest = working_ip_dest; // @[linear.scala 61:20:@992.4]
  assign io_output_packet_icmp_id = working_icmp_id; // @[linear.scala 61:20:@991.4]
  assign io_output_packet_icmp_checksum = working_icmp_checksum; // @[linear.scala 61:20:@990.4]
  assign io_output_packet_icmp_code = working_icmp_code; // @[linear.scala 61:20:@989.4]
  assign io_output_packet_icmp_imcpType = working_icmp_imcpType; // @[linear.scala 61:20:@988.4]
  assign io_output_lookup_nextHop = lookup_nextHop; // @[linear.scala 62:20:@1018.4]
  assign io_outputStatus = status; // @[linear.scala 63:19:@1020.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
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
  working_arp_htype = _RAND_6[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  working_arp_ptype = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  working_arp_hlen = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  working_arp_plen = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  working_arp_oper = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  working_arp_sha = _RAND_11[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  working_arp_spa = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  working_arp_tha = _RAND_13[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  working_arp_tpa = _RAND_14[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  working_ip_version = _RAND_15[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  working_ip_ihl = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  working_ip_dscp = _RAND_17[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  working_ip_ecn = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  working_ip_len = _RAND_19[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  working_ip_id = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  working_ip_flags = _RAND_21[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  working_ip_foff = _RAND_22[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  working_ip_ttl = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  working_ip_proto = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  working_ip_chksum = _RAND_25[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  working_ip_src = _RAND_26[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  working_ip_dest = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  working_icmp_id = _RAND_28[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  working_icmp_checksum = _RAND_29[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  working_icmp_code = _RAND_30[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  working_icmp_imcpType = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  lookup_nextHop = _RAND_32[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  addr = _RAND_33[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  status = _RAND_34[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  state = _RAND_35[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_111) begin
      if (_T_113) begin
        if (_T_114) begin
          if (_T_115) begin
            cnt <= 3'h0;
          end
        end
      end
    end else begin
      if (state) begin
        if (!(_T_120)) begin
          if (!(_T_123)) begin
            if (!(_T_131)) begin
              cnt <= _T_136;
            end
          end
        end
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        if (_T_114) begin
          if (_T_115) begin
            shiftCnt <= 6'h20;
          end
        end
      end
    end else begin
      if (state) begin
        if (!(_T_120)) begin
          if (_T_123) begin
            shiftCnt <= _T_127;
          end
        end
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_eth_dest <= io_input_eth_dest;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_eth_sender <= io_input_eth_sender;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_htype <= io_input_arp_htype;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_ptype <= io_input_arp_ptype;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_hlen <= io_input_arp_hlen;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_plen <= io_input_arp_plen;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_oper <= io_input_arp_oper;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_sha <= io_input_arp_sha;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_spa <= io_input_arp_spa;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_tha <= io_input_arp_tha;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_arp_tpa <= io_input_arp_tpa;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_version <= io_input_ip_version;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_len <= io_input_ip_len;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_id <= io_input_ip_id;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_src <= io_input_ip_src;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_ip_dest <= io_input_ip_dest;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_icmp_id <= io_input_icmp_id;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_icmp_checksum <= io_input_icmp_checksum;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_icmp_code <= io_input_icmp_code;
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        working_icmp_imcpType <= io_input_icmp_imcpType;
      end
    end
    if (!(_T_111)) begin
      if (state) begin
        if (!(_T_120)) begin
          if (!(_T_123)) begin
            if (_T_131) begin
              if (2'h3 == _T_122) begin
                lookup_nextHop <= 32'ha000402;
              end else begin
                if (2'h2 == _T_122) begin
                  lookup_nextHop <= 32'ha000302;
                end else begin
                  if (2'h1 == _T_122) begin
                    lookup_nextHop <= 32'ha000202;
                  end else begin
                    lookup_nextHop <= 32'ha000102;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (_T_111) begin
      if (_T_113) begin
        if (_T_114) begin
          if (_T_115) begin
            addr <= io_input_ip_dest;
          end
        end
      end
    end else begin
      if (state) begin
        if (!(_T_120)) begin
          if (_T_123) begin
            addr <= {{1'd0}, _T_128};
          end
        end
      end
    end
    if (reset) begin
      status <= 2'h0;
    end else begin
      if (_T_111) begin
        if (_T_113) begin
          status <= io_status;
        end
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_111) begin
        if (_T_113) begin
          if (_T_114) begin
            if (_T_115) begin
              state <= 1'h1;
            end
          end
        end
      end else begin
        if (state) begin
          if (_T_120) begin
            state <= 1'h0;
          end else begin
            if (!(_T_123)) begin
              if (_T_131) begin
                state <= 1'h0;
              end
            end
          end
        end
      end
    end
  end
endmodule
module ARPTable( // @[:@1110.2]
  input         clock, // @[:@1111.4]
  input         reset, // @[:@1112.4]
  input  [47:0] io_input_packet_eth_dest, // @[:@1113.4]
  input  [47:0] io_input_packet_eth_sender, // @[:@1113.4]
  input  [1:0]  io_input_packet_eth_pactype, // @[:@1113.4]
  input  [2:0]  io_input_packet_eth_vlan, // @[:@1113.4]
  input  [15:0] io_input_packet_arp_htype, // @[:@1113.4]
  input  [15:0] io_input_packet_arp_ptype, // @[:@1113.4]
  input  [7:0]  io_input_packet_arp_hlen, // @[:@1113.4]
  input  [7:0]  io_input_packet_arp_plen, // @[:@1113.4]
  input  [15:0] io_input_packet_arp_oper, // @[:@1113.4]
  input  [47:0] io_input_packet_arp_sha, // @[:@1113.4]
  input  [31:0] io_input_packet_arp_spa, // @[:@1113.4]
  input  [47:0] io_input_packet_arp_tha, // @[:@1113.4]
  input  [31:0] io_input_packet_arp_tpa, // @[:@1113.4]
  input  [3:0]  io_input_packet_ip_version, // @[:@1113.4]
  input  [3:0]  io_input_packet_ip_ihl, // @[:@1113.4]
  input  [5:0]  io_input_packet_ip_dscp, // @[:@1113.4]
  input  [1:0]  io_input_packet_ip_ecn, // @[:@1113.4]
  input  [15:0] io_input_packet_ip_len, // @[:@1113.4]
  input  [15:0] io_input_packet_ip_id, // @[:@1113.4]
  input  [2:0]  io_input_packet_ip_flags, // @[:@1113.4]
  input  [12:0] io_input_packet_ip_foff, // @[:@1113.4]
  input  [7:0]  io_input_packet_ip_ttl, // @[:@1113.4]
  input  [7:0]  io_input_packet_ip_proto, // @[:@1113.4]
  input  [15:0] io_input_packet_ip_chksum, // @[:@1113.4]
  input  [31:0] io_input_packet_ip_src, // @[:@1113.4]
  input  [31:0] io_input_packet_ip_dest, // @[:@1113.4]
  input  [15:0] io_input_packet_icmp_id, // @[:@1113.4]
  input  [15:0] io_input_packet_icmp_checksum, // @[:@1113.4]
  input  [7:0]  io_input_packet_icmp_code, // @[:@1113.4]
  input  [7:0]  io_input_packet_icmp_imcpType, // @[:@1113.4]
  input  [31:0] io_input_lookup_nextHop, // @[:@1113.4]
  input  [1:0]  io_status, // @[:@1113.4]
  input         io_pause, // @[:@1113.4]
  output        io_output_arp_found, // @[:@1113.4]
  output [31:0] io_output_forward_nextHop, // @[:@1113.4]
  output [47:0] io_output_packet_eth_dest, // @[:@1113.4]
  output [47:0] io_output_packet_eth_sender, // @[:@1113.4]
  output [1:0]  io_output_packet_eth_pactype, // @[:@1113.4]
  output [2:0]  io_output_packet_eth_vlan, // @[:@1113.4]
  output [15:0] io_output_packet_arp_htype, // @[:@1113.4]
  output [15:0] io_output_packet_arp_ptype, // @[:@1113.4]
  output [7:0]  io_output_packet_arp_hlen, // @[:@1113.4]
  output [7:0]  io_output_packet_arp_plen, // @[:@1113.4]
  output [15:0] io_output_packet_arp_oper, // @[:@1113.4]
  output [47:0] io_output_packet_arp_sha, // @[:@1113.4]
  output [31:0] io_output_packet_arp_spa, // @[:@1113.4]
  output [47:0] io_output_packet_arp_tha, // @[:@1113.4]
  output [31:0] io_output_packet_arp_tpa, // @[:@1113.4]
  output [3:0]  io_output_packet_ip_version, // @[:@1113.4]
  output [3:0]  io_output_packet_ip_ihl, // @[:@1113.4]
  output [5:0]  io_output_packet_ip_dscp, // @[:@1113.4]
  output [1:0]  io_output_packet_ip_ecn, // @[:@1113.4]
  output [15:0] io_output_packet_ip_len, // @[:@1113.4]
  output [15:0] io_output_packet_ip_id, // @[:@1113.4]
  output [2:0]  io_output_packet_ip_flags, // @[:@1113.4]
  output [12:0] io_output_packet_ip_foff, // @[:@1113.4]
  output [7:0]  io_output_packet_ip_ttl, // @[:@1113.4]
  output [7:0]  io_output_packet_ip_proto, // @[:@1113.4]
  output [15:0] io_output_packet_ip_chksum, // @[:@1113.4]
  output [31:0] io_output_packet_ip_src, // @[:@1113.4]
  output [31:0] io_output_packet_ip_dest, // @[:@1113.4]
  output [15:0] io_output_packet_icmp_id, // @[:@1113.4]
  output [15:0] io_output_packet_icmp_checksum, // @[:@1113.4]
  output [7:0]  io_output_packet_icmp_code, // @[:@1113.4]
  output [7:0]  io_output_packet_icmp_imcpType, // @[:@1113.4]
  output [1:0]  io_outputStatus // @[:@1113.4]
);
  reg [31:0] store_0_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_0;
  reg  store_0_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_1;
  reg [47:0] store_0_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_2;
  reg [2:0] store_0_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_3;
  reg [31:0] store_1_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_4;
  reg  store_1_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_5;
  reg [47:0] store_1_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_6;
  reg [2:0] store_1_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_7;
  reg [31:0] store_2_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_8;
  reg  store_2_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_9;
  reg [47:0] store_2_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_10;
  reg [2:0] store_2_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_11;
  reg [31:0] store_3_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_12;
  reg  store_3_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_13;
  reg [47:0] store_3_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_14;
  reg [2:0] store_3_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_15;
  reg [31:0] store_4_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_16;
  reg  store_4_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_17;
  reg [47:0] store_4_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_18;
  reg [2:0] store_4_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_19;
  reg [31:0] store_5_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_20;
  reg  store_5_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_21;
  reg [47:0] store_5_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_22;
  reg [2:0] store_5_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_23;
  reg [31:0] store_6_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_24;
  reg  store_6_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_25;
  reg [47:0] store_6_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_26;
  reg [2:0] store_6_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_27;
  reg [31:0] store_7_ip; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_28;
  reg  store_7_valid; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_29;
  reg [47:0] store_7_mac; // @[arp.scala 40:22:@1248.4]
  reg [63:0] _RAND_30;
  reg [2:0] store_7_at; // @[arp.scala 40:22:@1248.4]
  reg [31:0] _RAND_31;
  reg [2:0] ptr; // @[arp.scala 41:20:@1249.4]
  reg [31:0] _RAND_32;
  wire  _T_184; // @[arp.scala 44:37:@1261.4]
  wire  _T_185; // @[arp.scala 44:27:@1262.4]
  wire [31:0] _T_196_ip; // @[arp.scala 46:26:@1275.4]
  wire  _T_196_valid; // @[arp.scala 46:26:@1275.4]
  wire [47:0] _T_196_mac; // @[arp.scala 46:26:@1275.4]
  wire [2:0] _T_196_at; // @[arp.scala 46:26:@1275.4]
  wire [83:0] _T_199; // @[arp.scala 17:52:@1278.4]
  wire [2:0] _T_208; // @[arp.scala 17:80:@1286.4]
  wire [47:0] _T_209; // @[arp.scala 17:80:@1288.4]
  wire  _T_210; // @[arp.scala 17:80:@1290.4]
  wire [31:0] _T_211; // @[arp.scala 17:80:@1292.4]
  wire  _T_212; // @[arp.scala 44:37:@1294.4]
  wire  _T_213; // @[arp.scala 44:27:@1295.4]
  wire  _T_214; // @[arp.scala 46:12:@1296.4]
  wire [31:0] _T_224_ip; // @[arp.scala 46:26:@1308.4]
  wire  _T_224_valid; // @[arp.scala 46:26:@1308.4]
  wire [47:0] _T_224_mac; // @[arp.scala 46:26:@1308.4]
  wire [2:0] _T_224_at; // @[arp.scala 46:26:@1308.4]
  wire [83:0] _T_227; // @[arp.scala 17:52:@1311.4]
  wire [83:0] _T_230; // @[arp.scala 17:68:@1314.4]
  wire [83:0] _T_231; // @[arp.scala 17:55:@1315.4]
  wire [2:0] _T_236; // @[arp.scala 17:80:@1319.4]
  wire [47:0] _T_237; // @[arp.scala 17:80:@1321.4]
  wire  _T_238; // @[arp.scala 17:80:@1323.4]
  wire [31:0] _T_239; // @[arp.scala 17:80:@1325.4]
  wire  _T_240; // @[arp.scala 44:37:@1327.4]
  wire  _T_241; // @[arp.scala 44:27:@1328.4]
  wire  _T_242; // @[arp.scala 46:12:@1329.4]
  wire [31:0] _T_252_ip; // @[arp.scala 46:26:@1341.4]
  wire  _T_252_valid; // @[arp.scala 46:26:@1341.4]
  wire [47:0] _T_252_mac; // @[arp.scala 46:26:@1341.4]
  wire [2:0] _T_252_at; // @[arp.scala 46:26:@1341.4]
  wire [83:0] _T_255; // @[arp.scala 17:52:@1344.4]
  wire [83:0] _T_258; // @[arp.scala 17:68:@1347.4]
  wire [83:0] _T_259; // @[arp.scala 17:55:@1348.4]
  wire [2:0] _T_264; // @[arp.scala 17:80:@1352.4]
  wire [47:0] _T_265; // @[arp.scala 17:80:@1354.4]
  wire  _T_266; // @[arp.scala 17:80:@1356.4]
  wire [31:0] _T_267; // @[arp.scala 17:80:@1358.4]
  wire  _T_268; // @[arp.scala 44:37:@1360.4]
  wire  _T_269; // @[arp.scala 44:27:@1361.4]
  wire  _T_270; // @[arp.scala 46:12:@1362.4]
  wire [31:0] _T_280_ip; // @[arp.scala 46:26:@1374.4]
  wire  _T_280_valid; // @[arp.scala 46:26:@1374.4]
  wire [47:0] _T_280_mac; // @[arp.scala 46:26:@1374.4]
  wire [2:0] _T_280_at; // @[arp.scala 46:26:@1374.4]
  wire [83:0] _T_283; // @[arp.scala 17:52:@1377.4]
  wire [83:0] _T_286; // @[arp.scala 17:68:@1380.4]
  wire [83:0] _T_287; // @[arp.scala 17:55:@1381.4]
  wire [2:0] _T_292; // @[arp.scala 17:80:@1385.4]
  wire [47:0] _T_293; // @[arp.scala 17:80:@1387.4]
  wire  _T_294; // @[arp.scala 17:80:@1389.4]
  wire [31:0] _T_295; // @[arp.scala 17:80:@1391.4]
  wire  _T_296; // @[arp.scala 44:37:@1393.4]
  wire  _T_297; // @[arp.scala 44:27:@1394.4]
  wire  _T_298; // @[arp.scala 46:12:@1395.4]
  wire [31:0] _T_308_ip; // @[arp.scala 46:26:@1407.4]
  wire  _T_308_valid; // @[arp.scala 46:26:@1407.4]
  wire [47:0] _T_308_mac; // @[arp.scala 46:26:@1407.4]
  wire [2:0] _T_308_at; // @[arp.scala 46:26:@1407.4]
  wire [83:0] _T_311; // @[arp.scala 17:52:@1410.4]
  wire [83:0] _T_314; // @[arp.scala 17:68:@1413.4]
  wire [83:0] _T_315; // @[arp.scala 17:55:@1414.4]
  wire [2:0] _T_320; // @[arp.scala 17:80:@1418.4]
  wire [47:0] _T_321; // @[arp.scala 17:80:@1420.4]
  wire  _T_322; // @[arp.scala 17:80:@1422.4]
  wire [31:0] _T_323; // @[arp.scala 17:80:@1424.4]
  wire  _T_324; // @[arp.scala 44:37:@1426.4]
  wire  _T_325; // @[arp.scala 44:27:@1427.4]
  wire  _T_326; // @[arp.scala 46:12:@1428.4]
  wire [31:0] _T_336_ip; // @[arp.scala 46:26:@1440.4]
  wire  _T_336_valid; // @[arp.scala 46:26:@1440.4]
  wire [47:0] _T_336_mac; // @[arp.scala 46:26:@1440.4]
  wire [2:0] _T_336_at; // @[arp.scala 46:26:@1440.4]
  wire [83:0] _T_339; // @[arp.scala 17:52:@1443.4]
  wire [83:0] _T_342; // @[arp.scala 17:68:@1446.4]
  wire [83:0] _T_343; // @[arp.scala 17:55:@1447.4]
  wire [2:0] _T_348; // @[arp.scala 17:80:@1451.4]
  wire [47:0] _T_349; // @[arp.scala 17:80:@1453.4]
  wire  _T_350; // @[arp.scala 17:80:@1455.4]
  wire [31:0] _T_351; // @[arp.scala 17:80:@1457.4]
  wire  _T_352; // @[arp.scala 44:37:@1459.4]
  wire  _T_353; // @[arp.scala 44:27:@1460.4]
  wire  _T_354; // @[arp.scala 46:12:@1461.4]
  wire [31:0] _T_364_ip; // @[arp.scala 46:26:@1473.4]
  wire  _T_364_valid; // @[arp.scala 46:26:@1473.4]
  wire [47:0] _T_364_mac; // @[arp.scala 46:26:@1473.4]
  wire [2:0] _T_364_at; // @[arp.scala 46:26:@1473.4]
  wire [83:0] _T_367; // @[arp.scala 17:52:@1476.4]
  wire [83:0] _T_370; // @[arp.scala 17:68:@1479.4]
  wire [83:0] _T_371; // @[arp.scala 17:55:@1480.4]
  wire [2:0] _T_376; // @[arp.scala 17:80:@1484.4]
  wire [47:0] _T_377; // @[arp.scala 17:80:@1486.4]
  wire  _T_378; // @[arp.scala 17:80:@1488.4]
  wire [31:0] _T_379; // @[arp.scala 17:80:@1490.4]
  wire  _T_380; // @[arp.scala 44:37:@1492.4]
  wire  _T_381; // @[arp.scala 44:27:@1493.4]
  wire  found; // @[arp.scala 46:12:@1494.4]
  wire [31:0] _T_391_ip; // @[arp.scala 46:26:@1506.4]
  wire  _T_391_valid; // @[arp.scala 46:26:@1506.4]
  wire [47:0] _T_391_mac; // @[arp.scala 46:26:@1506.4]
  wire [2:0] _T_391_at; // @[arp.scala 46:26:@1506.4]
  wire [83:0] _T_394; // @[arp.scala 17:52:@1509.4]
  wire [83:0] _T_397; // @[arp.scala 17:68:@1512.4]
  wire [83:0] _T_398; // @[arp.scala 17:55:@1513.4]
  wire [2:0] entry_at; // @[arp.scala 17:80:@1517.4]
  wire [47:0] entry_mac; // @[arp.scala 17:80:@1519.4]
  reg  pipe_arp_found; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_33;
  reg [31:0] pipe_forward_nextHop; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_34;
  reg [47:0] pipe_packet_eth_dest; // @[arp.scala 51:17:@1526.4]
  reg [63:0] _RAND_35;
  reg [47:0] pipe_packet_eth_sender; // @[arp.scala 51:17:@1526.4]
  reg [63:0] _RAND_36;
  reg [1:0] pipe_packet_eth_pactype; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_37;
  reg [2:0] pipe_packet_eth_vlan; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_38;
  reg [15:0] pipe_packet_arp_htype; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_39;
  reg [15:0] pipe_packet_arp_ptype; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_40;
  reg [7:0] pipe_packet_arp_hlen; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_41;
  reg [7:0] pipe_packet_arp_plen; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_42;
  reg [15:0] pipe_packet_arp_oper; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_43;
  reg [47:0] pipe_packet_arp_sha; // @[arp.scala 51:17:@1526.4]
  reg [63:0] _RAND_44;
  reg [31:0] pipe_packet_arp_spa; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_45;
  reg [47:0] pipe_packet_arp_tha; // @[arp.scala 51:17:@1526.4]
  reg [63:0] _RAND_46;
  reg [31:0] pipe_packet_arp_tpa; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_47;
  reg [3:0] pipe_packet_ip_version; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_48;
  reg [3:0] pipe_packet_ip_ihl; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_49;
  reg [5:0] pipe_packet_ip_dscp; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_50;
  reg [1:0] pipe_packet_ip_ecn; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_51;
  reg [15:0] pipe_packet_ip_len; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_52;
  reg [15:0] pipe_packet_ip_id; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_53;
  reg [2:0] pipe_packet_ip_flags; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_54;
  reg [12:0] pipe_packet_ip_foff; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_55;
  reg [7:0] pipe_packet_ip_ttl; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_56;
  reg [7:0] pipe_packet_ip_proto; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_57;
  reg [15:0] pipe_packet_ip_chksum; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_58;
  reg [31:0] pipe_packet_ip_src; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_59;
  reg [31:0] pipe_packet_ip_dest; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_60;
  reg [15:0] pipe_packet_icmp_id; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_61;
  reg [15:0] pipe_packet_icmp_checksum; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_62;
  reg [7:0] pipe_packet_icmp_code; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_63;
  reg [7:0] pipe_packet_icmp_imcpType; // @[arp.scala 51:17:@1526.4]
  reg [31:0] _RAND_64;
  reg [1:0] pipeStatus; // @[arp.scala 52:27:@1527.4]
  reg [31:0] _RAND_65;
  wire  _T_410; // @[arp.scala 54:8:@1528.4]
  wire  _T_411; // @[arp.scala 60:20:@1566.6]
  wire  _T_412; // @[arp.scala 61:40:@1568.8]
  wire  _T_417; // @[arp.scala 61:84:@1569.8]
  wire  _T_418; // @[arp.scala 61:56:@1570.8]
  wire  _GEN_0; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_1; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_2; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_3; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_4; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_5; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_6; // @[arp.scala 62:26:@1572.10]
  wire  _GEN_7; // @[arp.scala 62:26:@1572.10]
  wire [31:0] _GEN_8; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_9; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_10; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_11; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_12; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_13; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_14; // @[arp.scala 63:23:@1573.10]
  wire [31:0] _GEN_15; // @[arp.scala 63:23:@1573.10]
  wire [47:0] _GEN_16; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_17; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_18; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_19; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_20; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_21; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_22; // @[arp.scala 64:24:@1574.10]
  wire [47:0] _GEN_23; // @[arp.scala 64:24:@1574.10]
  wire [2:0] _GEN_24; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_25; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_26; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_27; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_28; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_29; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_30; // @[arp.scala 65:23:@1575.10]
  wire [2:0] _GEN_31; // @[arp.scala 65:23:@1575.10]
  wire [3:0] _T_433; // @[arp.scala 66:20:@1576.10]
  wire [2:0] _T_434; // @[arp.scala 66:20:@1577.10]
  wire  _T_435; // @[arp.scala 68:28:@1579.10]
  wire  _T_437; // @[arp.scala 68:63:@1580.10]
  wire  _T_438; // @[arp.scala 68:56:@1581.10]
  wire  _GEN_32; // @[arp.scala 68:72:@1582.10]
  wire  _T_440; // @[arp.scala 68:28:@1585.10]
  wire  _T_442; // @[arp.scala 68:63:@1586.10]
  wire  _T_443; // @[arp.scala 68:56:@1587.10]
  wire  _GEN_33; // @[arp.scala 68:72:@1588.10]
  wire  _T_445; // @[arp.scala 68:28:@1591.10]
  wire  _T_447; // @[arp.scala 68:63:@1592.10]
  wire  _T_448; // @[arp.scala 68:56:@1593.10]
  wire  _GEN_34; // @[arp.scala 68:72:@1594.10]
  wire  _T_450; // @[arp.scala 68:28:@1597.10]
  wire  _T_452; // @[arp.scala 68:63:@1598.10]
  wire  _T_453; // @[arp.scala 68:56:@1599.10]
  wire  _GEN_35; // @[arp.scala 68:72:@1600.10]
  wire  _T_455; // @[arp.scala 68:28:@1603.10]
  wire  _T_457; // @[arp.scala 68:63:@1604.10]
  wire  _T_458; // @[arp.scala 68:56:@1605.10]
  wire  _GEN_36; // @[arp.scala 68:72:@1606.10]
  wire  _T_460; // @[arp.scala 68:28:@1609.10]
  wire  _T_462; // @[arp.scala 68:63:@1610.10]
  wire  _T_463; // @[arp.scala 68:56:@1611.10]
  wire  _GEN_37; // @[arp.scala 68:72:@1612.10]
  wire  _T_465; // @[arp.scala 68:28:@1615.10]
  wire  _T_467; // @[arp.scala 68:63:@1616.10]
  wire  _T_468; // @[arp.scala 68:56:@1617.10]
  wire  _GEN_38; // @[arp.scala 68:72:@1618.10]
  wire  _T_470; // @[arp.scala 68:28:@1621.10]
  wire  _T_472; // @[arp.scala 68:63:@1622.10]
  wire  _T_473; // @[arp.scala 68:56:@1623.10]
  wire  _GEN_39; // @[arp.scala 68:72:@1624.10]
  wire  _T_476; // @[arp.scala 72:90:@1630.10]
  wire  _T_477; // @[arp.scala 72:62:@1631.10]
  wire [31:0] _GEN_41; // @[arp.scala 73:38:@1633.12]
  wire [31:0] _GEN_42; // @[arp.scala 73:38:@1633.12]
  wire [31:0] _GEN_43; // @[arp.scala 73:38:@1633.12]
  wire [31:0] _GEN_44; // @[arp.scala 73:38:@1633.12]
  wire  _T_479; // @[arp.scala 73:38:@1633.12]
  wire [47:0] _GEN_46; // @[arp.scala 75:34:@1636.14]
  wire [47:0] _GEN_47; // @[arp.scala 75:34:@1636.14]
  wire [47:0] _GEN_48; // @[arp.scala 75:34:@1636.14]
  wire [47:0] _GEN_49; // @[arp.scala 75:34:@1636.14]
  wire [47:0] _GEN_50; // @[arp.scala 73:73:@1634.12]
  wire [47:0] _GEN_51; // @[arp.scala 73:73:@1634.12]
  wire [15:0] _GEN_52; // @[arp.scala 73:73:@1634.12]
  wire [47:0] _GEN_53; // @[arp.scala 73:73:@1634.12]
  wire [31:0] _GEN_54; // @[arp.scala 73:73:@1634.12]
  wire [47:0] _GEN_55; // @[arp.scala 73:73:@1634.12]
  wire [31:0] _GEN_56; // @[arp.scala 73:73:@1634.12]
  wire [47:0] _GEN_58; // @[arp.scala 88:32:@1650.12]
  wire [47:0] _GEN_59; // @[arp.scala 88:32:@1650.12]
  wire [47:0] _GEN_60; // @[arp.scala 88:32:@1650.12]
  wire [47:0] _GEN_61; // @[arp.scala 88:32:@1650.12]
  wire [47:0] _GEN_62; // @[arp.scala 72:111:@1632.10]
  wire [47:0] _GEN_63; // @[arp.scala 72:111:@1632.10]
  wire [15:0] _GEN_64; // @[arp.scala 72:111:@1632.10]
  wire [47:0] _GEN_65; // @[arp.scala 72:111:@1632.10]
  wire [31:0] _GEN_66; // @[arp.scala 72:111:@1632.10]
  wire [47:0] _GEN_67; // @[arp.scala 72:111:@1632.10]
  wire [31:0] _GEN_68; // @[arp.scala 72:111:@1632.10]
  wire [2:0] _GEN_72; // @[arp.scala 72:111:@1632.10]
  wire  _GEN_73; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_74; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_75; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_76; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_77; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_78; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_79; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_80; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_81; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_82; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_83; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_84; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_85; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_86; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_87; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_88; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_89; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_90; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_91; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_92; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_93; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_94; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_95; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_96; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_97; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_98; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_99; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_100; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_101; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_102; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_103; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_104; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_105; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_106; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_107; // @[arp.scala 61:103:@1571.8]
  wire [15:0] _GEN_108; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_109; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_110; // @[arp.scala 61:103:@1571.8]
  wire [47:0] _GEN_111; // @[arp.scala 61:103:@1571.8]
  wire [31:0] _GEN_112; // @[arp.scala 61:103:@1571.8]
  wire [2:0] _GEN_116; // @[arp.scala 61:103:@1571.8]
  wire  _GEN_117; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_118; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_119; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_120; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_121; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_122; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_123; // @[arp.scala 60:39:@1567.6]
  wire  _GEN_124; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_125; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_126; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_127; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_128; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_129; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_130; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_131; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_132; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_133; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_134; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_135; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_136; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_137; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_138; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_139; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_140; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_141; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_142; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_143; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_144; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_145; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_146; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_147; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_148; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_149; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_150; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_151; // @[arp.scala 60:39:@1567.6]
  wire [15:0] _GEN_152; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_153; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_154; // @[arp.scala 60:39:@1567.6]
  wire [47:0] _GEN_155; // @[arp.scala 60:39:@1567.6]
  wire [31:0] _GEN_156; // @[arp.scala 60:39:@1567.6]
  wire [2:0] _GEN_160; // @[arp.scala 60:39:@1567.6]
  wire [1:0] _GEN_161; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_197; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_198; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_199; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_200; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_201; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_202; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_203; // @[arp.scala 54:19:@1529.4]
  wire  _GEN_204; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_205; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_206; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_207; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_208; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_209; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_210; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_211; // @[arp.scala 54:19:@1529.4]
  wire [31:0] _GEN_212; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_213; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_214; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_215; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_216; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_217; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_218; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_219; // @[arp.scala 54:19:@1529.4]
  wire [47:0] _GEN_220; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_221; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_222; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_223; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_224; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_225; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_226; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_227; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_228; // @[arp.scala 54:19:@1529.4]
  wire [2:0] _GEN_229; // @[arp.scala 54:19:@1529.4]
  assign _T_184 = store_0_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1261.4]
  assign _T_185 = store_0_valid & _T_184; // @[arp.scala 44:27:@1262.4]
  assign _T_196_ip = _T_185 ? store_0_ip : 32'h0; // @[arp.scala 46:26:@1275.4]
  assign _T_196_valid = _T_185 ? store_0_valid : 1'h0; // @[arp.scala 46:26:@1275.4]
  assign _T_196_mac = _T_185 ? store_0_mac : 48'h0; // @[arp.scala 46:26:@1275.4]
  assign _T_196_at = _T_185 ? store_0_at : 3'h0; // @[arp.scala 46:26:@1275.4]
  assign _T_199 = {_T_196_ip,_T_196_valid,_T_196_mac,_T_196_at}; // @[arp.scala 17:52:@1278.4]
  assign _T_208 = _T_199[2:0]; // @[arp.scala 17:80:@1286.4]
  assign _T_209 = _T_199[50:3]; // @[arp.scala 17:80:@1288.4]
  assign _T_210 = _T_199[51]; // @[arp.scala 17:80:@1290.4]
  assign _T_211 = _T_199[83:52]; // @[arp.scala 17:80:@1292.4]
  assign _T_212 = store_1_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1294.4]
  assign _T_213 = store_1_valid & _T_212; // @[arp.scala 44:27:@1295.4]
  assign _T_214 = _T_213 | _T_185; // @[arp.scala 46:12:@1296.4]
  assign _T_224_ip = _T_213 ? store_1_ip : 32'h0; // @[arp.scala 46:26:@1308.4]
  assign _T_224_valid = _T_213 ? store_1_valid : 1'h0; // @[arp.scala 46:26:@1308.4]
  assign _T_224_mac = _T_213 ? store_1_mac : 48'h0; // @[arp.scala 46:26:@1308.4]
  assign _T_224_at = _T_213 ? store_1_at : 3'h0; // @[arp.scala 46:26:@1308.4]
  assign _T_227 = {_T_224_ip,_T_224_valid,_T_224_mac,_T_224_at}; // @[arp.scala 17:52:@1311.4]
  assign _T_230 = {_T_211,_T_210,_T_209,_T_208}; // @[arp.scala 17:68:@1314.4]
  assign _T_231 = _T_227 | _T_230; // @[arp.scala 17:55:@1315.4]
  assign _T_236 = _T_231[2:0]; // @[arp.scala 17:80:@1319.4]
  assign _T_237 = _T_231[50:3]; // @[arp.scala 17:80:@1321.4]
  assign _T_238 = _T_231[51]; // @[arp.scala 17:80:@1323.4]
  assign _T_239 = _T_231[83:52]; // @[arp.scala 17:80:@1325.4]
  assign _T_240 = store_2_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1327.4]
  assign _T_241 = store_2_valid & _T_240; // @[arp.scala 44:27:@1328.4]
  assign _T_242 = _T_241 | _T_214; // @[arp.scala 46:12:@1329.4]
  assign _T_252_ip = _T_241 ? store_2_ip : 32'h0; // @[arp.scala 46:26:@1341.4]
  assign _T_252_valid = _T_241 ? store_2_valid : 1'h0; // @[arp.scala 46:26:@1341.4]
  assign _T_252_mac = _T_241 ? store_2_mac : 48'h0; // @[arp.scala 46:26:@1341.4]
  assign _T_252_at = _T_241 ? store_2_at : 3'h0; // @[arp.scala 46:26:@1341.4]
  assign _T_255 = {_T_252_ip,_T_252_valid,_T_252_mac,_T_252_at}; // @[arp.scala 17:52:@1344.4]
  assign _T_258 = {_T_239,_T_238,_T_237,_T_236}; // @[arp.scala 17:68:@1347.4]
  assign _T_259 = _T_255 | _T_258; // @[arp.scala 17:55:@1348.4]
  assign _T_264 = _T_259[2:0]; // @[arp.scala 17:80:@1352.4]
  assign _T_265 = _T_259[50:3]; // @[arp.scala 17:80:@1354.4]
  assign _T_266 = _T_259[51]; // @[arp.scala 17:80:@1356.4]
  assign _T_267 = _T_259[83:52]; // @[arp.scala 17:80:@1358.4]
  assign _T_268 = store_3_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1360.4]
  assign _T_269 = store_3_valid & _T_268; // @[arp.scala 44:27:@1361.4]
  assign _T_270 = _T_269 | _T_242; // @[arp.scala 46:12:@1362.4]
  assign _T_280_ip = _T_269 ? store_3_ip : 32'h0; // @[arp.scala 46:26:@1374.4]
  assign _T_280_valid = _T_269 ? store_3_valid : 1'h0; // @[arp.scala 46:26:@1374.4]
  assign _T_280_mac = _T_269 ? store_3_mac : 48'h0; // @[arp.scala 46:26:@1374.4]
  assign _T_280_at = _T_269 ? store_3_at : 3'h0; // @[arp.scala 46:26:@1374.4]
  assign _T_283 = {_T_280_ip,_T_280_valid,_T_280_mac,_T_280_at}; // @[arp.scala 17:52:@1377.4]
  assign _T_286 = {_T_267,_T_266,_T_265,_T_264}; // @[arp.scala 17:68:@1380.4]
  assign _T_287 = _T_283 | _T_286; // @[arp.scala 17:55:@1381.4]
  assign _T_292 = _T_287[2:0]; // @[arp.scala 17:80:@1385.4]
  assign _T_293 = _T_287[50:3]; // @[arp.scala 17:80:@1387.4]
  assign _T_294 = _T_287[51]; // @[arp.scala 17:80:@1389.4]
  assign _T_295 = _T_287[83:52]; // @[arp.scala 17:80:@1391.4]
  assign _T_296 = store_4_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1393.4]
  assign _T_297 = store_4_valid & _T_296; // @[arp.scala 44:27:@1394.4]
  assign _T_298 = _T_297 | _T_270; // @[arp.scala 46:12:@1395.4]
  assign _T_308_ip = _T_297 ? store_4_ip : 32'h0; // @[arp.scala 46:26:@1407.4]
  assign _T_308_valid = _T_297 ? store_4_valid : 1'h0; // @[arp.scala 46:26:@1407.4]
  assign _T_308_mac = _T_297 ? store_4_mac : 48'h0; // @[arp.scala 46:26:@1407.4]
  assign _T_308_at = _T_297 ? store_4_at : 3'h0; // @[arp.scala 46:26:@1407.4]
  assign _T_311 = {_T_308_ip,_T_308_valid,_T_308_mac,_T_308_at}; // @[arp.scala 17:52:@1410.4]
  assign _T_314 = {_T_295,_T_294,_T_293,_T_292}; // @[arp.scala 17:68:@1413.4]
  assign _T_315 = _T_311 | _T_314; // @[arp.scala 17:55:@1414.4]
  assign _T_320 = _T_315[2:0]; // @[arp.scala 17:80:@1418.4]
  assign _T_321 = _T_315[50:3]; // @[arp.scala 17:80:@1420.4]
  assign _T_322 = _T_315[51]; // @[arp.scala 17:80:@1422.4]
  assign _T_323 = _T_315[83:52]; // @[arp.scala 17:80:@1424.4]
  assign _T_324 = store_5_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1426.4]
  assign _T_325 = store_5_valid & _T_324; // @[arp.scala 44:27:@1427.4]
  assign _T_326 = _T_325 | _T_298; // @[arp.scala 46:12:@1428.4]
  assign _T_336_ip = _T_325 ? store_5_ip : 32'h0; // @[arp.scala 46:26:@1440.4]
  assign _T_336_valid = _T_325 ? store_5_valid : 1'h0; // @[arp.scala 46:26:@1440.4]
  assign _T_336_mac = _T_325 ? store_5_mac : 48'h0; // @[arp.scala 46:26:@1440.4]
  assign _T_336_at = _T_325 ? store_5_at : 3'h0; // @[arp.scala 46:26:@1440.4]
  assign _T_339 = {_T_336_ip,_T_336_valid,_T_336_mac,_T_336_at}; // @[arp.scala 17:52:@1443.4]
  assign _T_342 = {_T_323,_T_322,_T_321,_T_320}; // @[arp.scala 17:68:@1446.4]
  assign _T_343 = _T_339 | _T_342; // @[arp.scala 17:55:@1447.4]
  assign _T_348 = _T_343[2:0]; // @[arp.scala 17:80:@1451.4]
  assign _T_349 = _T_343[50:3]; // @[arp.scala 17:80:@1453.4]
  assign _T_350 = _T_343[51]; // @[arp.scala 17:80:@1455.4]
  assign _T_351 = _T_343[83:52]; // @[arp.scala 17:80:@1457.4]
  assign _T_352 = store_6_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1459.4]
  assign _T_353 = store_6_valid & _T_352; // @[arp.scala 44:27:@1460.4]
  assign _T_354 = _T_353 | _T_326; // @[arp.scala 46:12:@1461.4]
  assign _T_364_ip = _T_353 ? store_6_ip : 32'h0; // @[arp.scala 46:26:@1473.4]
  assign _T_364_valid = _T_353 ? store_6_valid : 1'h0; // @[arp.scala 46:26:@1473.4]
  assign _T_364_mac = _T_353 ? store_6_mac : 48'h0; // @[arp.scala 46:26:@1473.4]
  assign _T_364_at = _T_353 ? store_6_at : 3'h0; // @[arp.scala 46:26:@1473.4]
  assign _T_367 = {_T_364_ip,_T_364_valid,_T_364_mac,_T_364_at}; // @[arp.scala 17:52:@1476.4]
  assign _T_370 = {_T_351,_T_350,_T_349,_T_348}; // @[arp.scala 17:68:@1479.4]
  assign _T_371 = _T_367 | _T_370; // @[arp.scala 17:55:@1480.4]
  assign _T_376 = _T_371[2:0]; // @[arp.scala 17:80:@1484.4]
  assign _T_377 = _T_371[50:3]; // @[arp.scala 17:80:@1486.4]
  assign _T_378 = _T_371[51]; // @[arp.scala 17:80:@1488.4]
  assign _T_379 = _T_371[83:52]; // @[arp.scala 17:80:@1490.4]
  assign _T_380 = store_7_ip == io_input_lookup_nextHop; // @[arp.scala 44:37:@1492.4]
  assign _T_381 = store_7_valid & _T_380; // @[arp.scala 44:27:@1493.4]
  assign found = _T_381 | _T_354; // @[arp.scala 46:12:@1494.4]
  assign _T_391_ip = _T_381 ? store_7_ip : 32'h0; // @[arp.scala 46:26:@1506.4]
  assign _T_391_valid = _T_381 ? store_7_valid : 1'h0; // @[arp.scala 46:26:@1506.4]
  assign _T_391_mac = _T_381 ? store_7_mac : 48'h0; // @[arp.scala 46:26:@1506.4]
  assign _T_391_at = _T_381 ? store_7_at : 3'h0; // @[arp.scala 46:26:@1506.4]
  assign _T_394 = {_T_391_ip,_T_391_valid,_T_391_mac,_T_391_at}; // @[arp.scala 17:52:@1509.4]
  assign _T_397 = {_T_379,_T_378,_T_377,_T_376}; // @[arp.scala 17:68:@1512.4]
  assign _T_398 = _T_394 | _T_397; // @[arp.scala 17:55:@1513.4]
  assign entry_at = _T_398[2:0]; // @[arp.scala 17:80:@1517.4]
  assign entry_mac = _T_398[50:3]; // @[arp.scala 17:80:@1519.4]
  assign _T_410 = io_pause == 1'h0; // @[arp.scala 54:8:@1528.4]
  assign _T_411 = io_status == 2'h1; // @[arp.scala 60:20:@1566.6]
  assign _T_412 = io_input_packet_eth_pactype == 2'h2; // @[arp.scala 61:40:@1568.8]
  assign _T_417 = io_input_packet_arp_oper == 16'h2; // @[arp.scala 61:84:@1569.8]
  assign _T_418 = _T_412 & _T_417; // @[arp.scala 61:56:@1570.8]
  assign _GEN_0 = 3'h0 == ptr ? 1'h1 : store_0_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_1 = 3'h1 == ptr ? 1'h1 : store_1_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_2 = 3'h2 == ptr ? 1'h1 : store_2_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_3 = 3'h3 == ptr ? 1'h1 : store_3_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_4 = 3'h4 == ptr ? 1'h1 : store_4_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_5 = 3'h5 == ptr ? 1'h1 : store_5_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_6 = 3'h6 == ptr ? 1'h1 : store_6_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_7 = 3'h7 == ptr ? 1'h1 : store_7_valid; // @[arp.scala 62:26:@1572.10]
  assign _GEN_8 = 3'h0 == ptr ? io_input_packet_arp_spa : store_0_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_9 = 3'h1 == ptr ? io_input_packet_arp_spa : store_1_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_10 = 3'h2 == ptr ? io_input_packet_arp_spa : store_2_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_11 = 3'h3 == ptr ? io_input_packet_arp_spa : store_3_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_12 = 3'h4 == ptr ? io_input_packet_arp_spa : store_4_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_13 = 3'h5 == ptr ? io_input_packet_arp_spa : store_5_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_14 = 3'h6 == ptr ? io_input_packet_arp_spa : store_6_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_15 = 3'h7 == ptr ? io_input_packet_arp_spa : store_7_ip; // @[arp.scala 63:23:@1573.10]
  assign _GEN_16 = 3'h0 == ptr ? io_input_packet_arp_sha : store_0_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_17 = 3'h1 == ptr ? io_input_packet_arp_sha : store_1_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_18 = 3'h2 == ptr ? io_input_packet_arp_sha : store_2_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_19 = 3'h3 == ptr ? io_input_packet_arp_sha : store_3_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_20 = 3'h4 == ptr ? io_input_packet_arp_sha : store_4_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_21 = 3'h5 == ptr ? io_input_packet_arp_sha : store_5_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_22 = 3'h6 == ptr ? io_input_packet_arp_sha : store_6_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_23 = 3'h7 == ptr ? io_input_packet_arp_sha : store_7_mac; // @[arp.scala 64:24:@1574.10]
  assign _GEN_24 = 3'h0 == ptr ? io_input_packet_eth_vlan : store_0_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_25 = 3'h1 == ptr ? io_input_packet_eth_vlan : store_1_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_26 = 3'h2 == ptr ? io_input_packet_eth_vlan : store_2_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_27 = 3'h3 == ptr ? io_input_packet_eth_vlan : store_3_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_28 = 3'h4 == ptr ? io_input_packet_eth_vlan : store_4_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_29 = 3'h5 == ptr ? io_input_packet_eth_vlan : store_5_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_30 = 3'h6 == ptr ? io_input_packet_eth_vlan : store_6_at; // @[arp.scala 65:23:@1575.10]
  assign _GEN_31 = 3'h7 == ptr ? io_input_packet_eth_vlan : store_7_at; // @[arp.scala 65:23:@1575.10]
  assign _T_433 = ptr + 3'h1; // @[arp.scala 66:20:@1576.10]
  assign _T_434 = ptr + 3'h1; // @[arp.scala 66:20:@1577.10]
  assign _T_435 = store_0_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1579.10]
  assign _T_437 = 3'h0 != ptr; // @[arp.scala 68:63:@1580.10]
  assign _T_438 = _T_435 & _T_437; // @[arp.scala 68:56:@1581.10]
  assign _GEN_32 = _T_438 ? 1'h0 : _GEN_0; // @[arp.scala 68:72:@1582.10]
  assign _T_440 = store_1_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1585.10]
  assign _T_442 = 3'h1 != ptr; // @[arp.scala 68:63:@1586.10]
  assign _T_443 = _T_440 & _T_442; // @[arp.scala 68:56:@1587.10]
  assign _GEN_33 = _T_443 ? 1'h0 : _GEN_1; // @[arp.scala 68:72:@1588.10]
  assign _T_445 = store_2_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1591.10]
  assign _T_447 = 3'h2 != ptr; // @[arp.scala 68:63:@1592.10]
  assign _T_448 = _T_445 & _T_447; // @[arp.scala 68:56:@1593.10]
  assign _GEN_34 = _T_448 ? 1'h0 : _GEN_2; // @[arp.scala 68:72:@1594.10]
  assign _T_450 = store_3_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1597.10]
  assign _T_452 = 3'h3 != ptr; // @[arp.scala 68:63:@1598.10]
  assign _T_453 = _T_450 & _T_452; // @[arp.scala 68:56:@1599.10]
  assign _GEN_35 = _T_453 ? 1'h0 : _GEN_3; // @[arp.scala 68:72:@1600.10]
  assign _T_455 = store_4_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1603.10]
  assign _T_457 = 3'h4 != ptr; // @[arp.scala 68:63:@1604.10]
  assign _T_458 = _T_455 & _T_457; // @[arp.scala 68:56:@1605.10]
  assign _GEN_36 = _T_458 ? 1'h0 : _GEN_4; // @[arp.scala 68:72:@1606.10]
  assign _T_460 = store_5_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1609.10]
  assign _T_462 = 3'h5 != ptr; // @[arp.scala 68:63:@1610.10]
  assign _T_463 = _T_460 & _T_462; // @[arp.scala 68:56:@1611.10]
  assign _GEN_37 = _T_463 ? 1'h0 : _GEN_5; // @[arp.scala 68:72:@1612.10]
  assign _T_465 = store_6_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1615.10]
  assign _T_467 = 3'h6 != ptr; // @[arp.scala 68:63:@1616.10]
  assign _T_468 = _T_465 & _T_467; // @[arp.scala 68:56:@1617.10]
  assign _GEN_38 = _T_468 ? 1'h0 : _GEN_6; // @[arp.scala 68:72:@1618.10]
  assign _T_470 = store_7_ip == io_input_packet_arp_spa; // @[arp.scala 68:28:@1621.10]
  assign _T_472 = 3'h7 != ptr; // @[arp.scala 68:63:@1622.10]
  assign _T_473 = _T_470 & _T_472; // @[arp.scala 68:56:@1623.10]
  assign _GEN_39 = _T_473 ? 1'h0 : _GEN_7; // @[arp.scala 68:72:@1624.10]
  assign _T_476 = io_input_packet_arp_oper == 16'h1; // @[arp.scala 72:90:@1630.10]
  assign _T_477 = _T_412 & _T_476; // @[arp.scala 72:62:@1631.10]
  assign _GEN_41 = 3'h1 == io_input_packet_eth_vlan ? 32'ha000101 : 32'ha010001; // @[arp.scala 73:38:@1633.12]
  assign _GEN_42 = 3'h2 == io_input_packet_eth_vlan ? 32'ha000201 : _GEN_41; // @[arp.scala 73:38:@1633.12]
  assign _GEN_43 = 3'h3 == io_input_packet_eth_vlan ? 32'ha000301 : _GEN_42; // @[arp.scala 73:38:@1633.12]
  assign _GEN_44 = 3'h4 == io_input_packet_eth_vlan ? 32'ha000401 : _GEN_43; // @[arp.scala 73:38:@1633.12]
  assign _T_479 = io_input_packet_arp_tpa == _GEN_44; // @[arp.scala 73:38:@1633.12]
  assign _GEN_46 = 3'h1 == io_input_packet_eth_vlan ? 48'h1 : 48'h0; // @[arp.scala 75:34:@1636.14]
  assign _GEN_47 = 3'h2 == io_input_packet_eth_vlan ? 48'h2 : _GEN_46; // @[arp.scala 75:34:@1636.14]
  assign _GEN_48 = 3'h3 == io_input_packet_eth_vlan ? 48'h3 : _GEN_47; // @[arp.scala 75:34:@1636.14]
  assign _GEN_49 = 3'h4 == io_input_packet_eth_vlan ? 48'h4 : _GEN_48; // @[arp.scala 75:34:@1636.14]
  assign _GEN_50 = _T_479 ? io_input_packet_eth_sender : io_input_packet_eth_dest; // @[arp.scala 73:73:@1634.12]
  assign _GEN_51 = _T_479 ? _GEN_49 : io_input_packet_eth_sender; // @[arp.scala 73:73:@1634.12]
  assign _GEN_52 = _T_479 ? 16'h2 : io_input_packet_arp_oper; // @[arp.scala 73:73:@1634.12]
  assign _GEN_53 = _T_479 ? io_input_packet_arp_sha : io_input_packet_arp_tha; // @[arp.scala 73:73:@1634.12]
  assign _GEN_54 = _T_479 ? io_input_packet_arp_spa : io_input_packet_arp_tpa; // @[arp.scala 73:73:@1634.12]
  assign _GEN_55 = _T_479 ? _GEN_49 : io_input_packet_arp_sha; // @[arp.scala 73:73:@1634.12]
  assign _GEN_56 = _T_479 ? _GEN_44 : io_input_packet_arp_spa; // @[arp.scala 73:73:@1634.12]
  assign _GEN_58 = 3'h1 == entry_at ? 48'h1 : 48'h0; // @[arp.scala 88:32:@1650.12]
  assign _GEN_59 = 3'h2 == entry_at ? 48'h2 : _GEN_58; // @[arp.scala 88:32:@1650.12]
  assign _GEN_60 = 3'h3 == entry_at ? 48'h3 : _GEN_59; // @[arp.scala 88:32:@1650.12]
  assign _GEN_61 = 3'h4 == entry_at ? 48'h4 : _GEN_60; // @[arp.scala 88:32:@1650.12]
  assign _GEN_62 = _T_477 ? _GEN_50 : entry_mac; // @[arp.scala 72:111:@1632.10]
  assign _GEN_63 = _T_477 ? _GEN_51 : _GEN_61; // @[arp.scala 72:111:@1632.10]
  assign _GEN_64 = _T_477 ? _GEN_52 : io_input_packet_arp_oper; // @[arp.scala 72:111:@1632.10]
  assign _GEN_65 = _T_477 ? _GEN_53 : io_input_packet_arp_tha; // @[arp.scala 72:111:@1632.10]
  assign _GEN_66 = _T_477 ? _GEN_54 : io_input_packet_arp_tpa; // @[arp.scala 72:111:@1632.10]
  assign _GEN_67 = _T_477 ? _GEN_55 : io_input_packet_arp_sha; // @[arp.scala 72:111:@1632.10]
  assign _GEN_68 = _T_477 ? _GEN_56 : io_input_packet_arp_spa; // @[arp.scala 72:111:@1632.10]
  assign _GEN_72 = _T_477 ? io_input_packet_eth_vlan : entry_at; // @[arp.scala 72:111:@1632.10]
  assign _GEN_73 = _T_418 ? _GEN_32 : store_0_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_74 = _T_418 ? _GEN_33 : store_1_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_75 = _T_418 ? _GEN_34 : store_2_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_76 = _T_418 ? _GEN_35 : store_3_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_77 = _T_418 ? _GEN_36 : store_4_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_78 = _T_418 ? _GEN_37 : store_5_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_79 = _T_418 ? _GEN_38 : store_6_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_80 = _T_418 ? _GEN_39 : store_7_valid; // @[arp.scala 61:103:@1571.8]
  assign _GEN_81 = _T_418 ? _GEN_8 : store_0_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_82 = _T_418 ? _GEN_9 : store_1_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_83 = _T_418 ? _GEN_10 : store_2_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_84 = _T_418 ? _GEN_11 : store_3_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_85 = _T_418 ? _GEN_12 : store_4_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_86 = _T_418 ? _GEN_13 : store_5_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_87 = _T_418 ? _GEN_14 : store_6_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_88 = _T_418 ? _GEN_15 : store_7_ip; // @[arp.scala 61:103:@1571.8]
  assign _GEN_89 = _T_418 ? _GEN_16 : store_0_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_90 = _T_418 ? _GEN_17 : store_1_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_91 = _T_418 ? _GEN_18 : store_2_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_92 = _T_418 ? _GEN_19 : store_3_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_93 = _T_418 ? _GEN_20 : store_4_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_94 = _T_418 ? _GEN_21 : store_5_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_95 = _T_418 ? _GEN_22 : store_6_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_96 = _T_418 ? _GEN_23 : store_7_mac; // @[arp.scala 61:103:@1571.8]
  assign _GEN_97 = _T_418 ? _GEN_24 : store_0_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_98 = _T_418 ? _GEN_25 : store_1_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_99 = _T_418 ? _GEN_26 : store_2_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_100 = _T_418 ? _GEN_27 : store_3_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_101 = _T_418 ? _GEN_28 : store_4_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_102 = _T_418 ? _GEN_29 : store_5_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_103 = _T_418 ? _GEN_30 : store_6_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_104 = _T_418 ? _GEN_31 : store_7_at; // @[arp.scala 61:103:@1571.8]
  assign _GEN_105 = _T_418 ? _T_434 : ptr; // @[arp.scala 61:103:@1571.8]
  assign _GEN_106 = _T_418 ? io_input_packet_eth_dest : _GEN_62; // @[arp.scala 61:103:@1571.8]
  assign _GEN_107 = _T_418 ? io_input_packet_eth_sender : _GEN_63; // @[arp.scala 61:103:@1571.8]
  assign _GEN_108 = _T_418 ? io_input_packet_arp_oper : _GEN_64; // @[arp.scala 61:103:@1571.8]
  assign _GEN_109 = _T_418 ? io_input_packet_arp_tha : _GEN_65; // @[arp.scala 61:103:@1571.8]
  assign _GEN_110 = _T_418 ? io_input_packet_arp_tpa : _GEN_66; // @[arp.scala 61:103:@1571.8]
  assign _GEN_111 = _T_418 ? io_input_packet_arp_sha : _GEN_67; // @[arp.scala 61:103:@1571.8]
  assign _GEN_112 = _T_418 ? io_input_packet_arp_spa : _GEN_68; // @[arp.scala 61:103:@1571.8]
  assign _GEN_116 = _T_418 ? io_input_packet_eth_vlan : _GEN_72; // @[arp.scala 61:103:@1571.8]
  assign _GEN_117 = _T_411 ? _GEN_73 : store_0_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_118 = _T_411 ? _GEN_74 : store_1_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_119 = _T_411 ? _GEN_75 : store_2_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_120 = _T_411 ? _GEN_76 : store_3_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_121 = _T_411 ? _GEN_77 : store_4_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_122 = _T_411 ? _GEN_78 : store_5_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_123 = _T_411 ? _GEN_79 : store_6_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_124 = _T_411 ? _GEN_80 : store_7_valid; // @[arp.scala 60:39:@1567.6]
  assign _GEN_125 = _T_411 ? _GEN_81 : store_0_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_126 = _T_411 ? _GEN_82 : store_1_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_127 = _T_411 ? _GEN_83 : store_2_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_128 = _T_411 ? _GEN_84 : store_3_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_129 = _T_411 ? _GEN_85 : store_4_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_130 = _T_411 ? _GEN_86 : store_5_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_131 = _T_411 ? _GEN_87 : store_6_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_132 = _T_411 ? _GEN_88 : store_7_ip; // @[arp.scala 60:39:@1567.6]
  assign _GEN_133 = _T_411 ? _GEN_89 : store_0_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_134 = _T_411 ? _GEN_90 : store_1_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_135 = _T_411 ? _GEN_91 : store_2_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_136 = _T_411 ? _GEN_92 : store_3_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_137 = _T_411 ? _GEN_93 : store_4_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_138 = _T_411 ? _GEN_94 : store_5_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_139 = _T_411 ? _GEN_95 : store_6_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_140 = _T_411 ? _GEN_96 : store_7_mac; // @[arp.scala 60:39:@1567.6]
  assign _GEN_141 = _T_411 ? _GEN_97 : store_0_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_142 = _T_411 ? _GEN_98 : store_1_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_143 = _T_411 ? _GEN_99 : store_2_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_144 = _T_411 ? _GEN_100 : store_3_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_145 = _T_411 ? _GEN_101 : store_4_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_146 = _T_411 ? _GEN_102 : store_5_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_147 = _T_411 ? _GEN_103 : store_6_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_148 = _T_411 ? _GEN_104 : store_7_at; // @[arp.scala 60:39:@1567.6]
  assign _GEN_149 = _T_411 ? _GEN_105 : ptr; // @[arp.scala 60:39:@1567.6]
  assign _GEN_150 = _T_411 ? _GEN_106 : io_input_packet_eth_dest; // @[arp.scala 60:39:@1567.6]
  assign _GEN_151 = _T_411 ? _GEN_107 : io_input_packet_eth_sender; // @[arp.scala 60:39:@1567.6]
  assign _GEN_152 = _T_411 ? _GEN_108 : io_input_packet_arp_oper; // @[arp.scala 60:39:@1567.6]
  assign _GEN_153 = _T_411 ? _GEN_109 : io_input_packet_arp_tha; // @[arp.scala 60:39:@1567.6]
  assign _GEN_154 = _T_411 ? _GEN_110 : io_input_packet_arp_tpa; // @[arp.scala 60:39:@1567.6]
  assign _GEN_155 = _T_411 ? _GEN_111 : io_input_packet_arp_sha; // @[arp.scala 60:39:@1567.6]
  assign _GEN_156 = _T_411 ? _GEN_112 : io_input_packet_arp_spa; // @[arp.scala 60:39:@1567.6]
  assign _GEN_160 = _T_411 ? _GEN_116 : io_input_packet_eth_vlan; // @[arp.scala 60:39:@1567.6]
  assign _GEN_161 = _T_410 ? io_status : pipeStatus; // @[arp.scala 54:19:@1529.4]
  assign _GEN_197 = _T_410 ? _GEN_117 : store_0_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_198 = _T_410 ? _GEN_118 : store_1_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_199 = _T_410 ? _GEN_119 : store_2_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_200 = _T_410 ? _GEN_120 : store_3_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_201 = _T_410 ? _GEN_121 : store_4_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_202 = _T_410 ? _GEN_122 : store_5_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_203 = _T_410 ? _GEN_123 : store_6_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_204 = _T_410 ? _GEN_124 : store_7_valid; // @[arp.scala 54:19:@1529.4]
  assign _GEN_205 = _T_410 ? _GEN_125 : store_0_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_206 = _T_410 ? _GEN_126 : store_1_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_207 = _T_410 ? _GEN_127 : store_2_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_208 = _T_410 ? _GEN_128 : store_3_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_209 = _T_410 ? _GEN_129 : store_4_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_210 = _T_410 ? _GEN_130 : store_5_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_211 = _T_410 ? _GEN_131 : store_6_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_212 = _T_410 ? _GEN_132 : store_7_ip; // @[arp.scala 54:19:@1529.4]
  assign _GEN_213 = _T_410 ? _GEN_133 : store_0_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_214 = _T_410 ? _GEN_134 : store_1_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_215 = _T_410 ? _GEN_135 : store_2_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_216 = _T_410 ? _GEN_136 : store_3_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_217 = _T_410 ? _GEN_137 : store_4_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_218 = _T_410 ? _GEN_138 : store_5_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_219 = _T_410 ? _GEN_139 : store_6_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_220 = _T_410 ? _GEN_140 : store_7_mac; // @[arp.scala 54:19:@1529.4]
  assign _GEN_221 = _T_410 ? _GEN_141 : store_0_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_222 = _T_410 ? _GEN_142 : store_1_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_223 = _T_410 ? _GEN_143 : store_2_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_224 = _T_410 ? _GEN_144 : store_3_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_225 = _T_410 ? _GEN_145 : store_4_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_226 = _T_410 ? _GEN_146 : store_5_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_227 = _T_410 ? _GEN_147 : store_6_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_228 = _T_410 ? _GEN_148 : store_7_at; // @[arp.scala 54:19:@1529.4]
  assign _GEN_229 = _T_410 ? _GEN_149 : ptr; // @[arp.scala 54:19:@1529.4]
  assign io_output_arp_found = pipe_arp_found; // @[arp.scala 94:13:@1689.4]
  assign io_output_forward_nextHop = pipe_forward_nextHop; // @[arp.scala 94:13:@1685.4]
  assign io_output_packet_eth_dest = pipe_packet_eth_dest; // @[arp.scala 94:13:@1684.4]
  assign io_output_packet_eth_sender = pipe_packet_eth_sender; // @[arp.scala 94:13:@1683.4]
  assign io_output_packet_eth_pactype = pipe_packet_eth_pactype; // @[arp.scala 94:13:@1682.4]
  assign io_output_packet_eth_vlan = pipe_packet_eth_vlan; // @[arp.scala 94:13:@1681.4]
  assign io_output_packet_arp_htype = pipe_packet_arp_htype; // @[arp.scala 94:13:@1680.4]
  assign io_output_packet_arp_ptype = pipe_packet_arp_ptype; // @[arp.scala 94:13:@1679.4]
  assign io_output_packet_arp_hlen = pipe_packet_arp_hlen; // @[arp.scala 94:13:@1678.4]
  assign io_output_packet_arp_plen = pipe_packet_arp_plen; // @[arp.scala 94:13:@1677.4]
  assign io_output_packet_arp_oper = pipe_packet_arp_oper; // @[arp.scala 94:13:@1676.4]
  assign io_output_packet_arp_sha = pipe_packet_arp_sha; // @[arp.scala 94:13:@1675.4]
  assign io_output_packet_arp_spa = pipe_packet_arp_spa; // @[arp.scala 94:13:@1674.4]
  assign io_output_packet_arp_tha = pipe_packet_arp_tha; // @[arp.scala 94:13:@1673.4]
  assign io_output_packet_arp_tpa = pipe_packet_arp_tpa; // @[arp.scala 94:13:@1672.4]
  assign io_output_packet_ip_version = pipe_packet_ip_version; // @[arp.scala 94:13:@1671.4]
  assign io_output_packet_ip_ihl = pipe_packet_ip_ihl; // @[arp.scala 94:13:@1670.4]
  assign io_output_packet_ip_dscp = pipe_packet_ip_dscp; // @[arp.scala 94:13:@1669.4]
  assign io_output_packet_ip_ecn = pipe_packet_ip_ecn; // @[arp.scala 94:13:@1668.4]
  assign io_output_packet_ip_len = pipe_packet_ip_len; // @[arp.scala 94:13:@1667.4]
  assign io_output_packet_ip_id = pipe_packet_ip_id; // @[arp.scala 94:13:@1666.4]
  assign io_output_packet_ip_flags = pipe_packet_ip_flags; // @[arp.scala 94:13:@1665.4]
  assign io_output_packet_ip_foff = pipe_packet_ip_foff; // @[arp.scala 94:13:@1664.4]
  assign io_output_packet_ip_ttl = pipe_packet_ip_ttl; // @[arp.scala 94:13:@1663.4]
  assign io_output_packet_ip_proto = pipe_packet_ip_proto; // @[arp.scala 94:13:@1662.4]
  assign io_output_packet_ip_chksum = pipe_packet_ip_chksum; // @[arp.scala 94:13:@1661.4]
  assign io_output_packet_ip_src = pipe_packet_ip_src; // @[arp.scala 94:13:@1660.4]
  assign io_output_packet_ip_dest = pipe_packet_ip_dest; // @[arp.scala 94:13:@1659.4]
  assign io_output_packet_icmp_id = pipe_packet_icmp_id; // @[arp.scala 94:13:@1658.4]
  assign io_output_packet_icmp_checksum = pipe_packet_icmp_checksum; // @[arp.scala 94:13:@1657.4]
  assign io_output_packet_icmp_code = pipe_packet_icmp_code; // @[arp.scala 94:13:@1656.4]
  assign io_output_packet_icmp_imcpType = pipe_packet_icmp_imcpType; // @[arp.scala 94:13:@1655.4]
  assign io_outputStatus = pipeStatus; // @[arp.scala 93:19:@1654.4]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  store_0_ip = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  store_0_valid = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  store_0_mac = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  store_0_at = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  store_1_ip = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  store_1_valid = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  store_1_mac = _RAND_6[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  store_1_at = _RAND_7[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  store_2_ip = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  store_2_valid = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  store_2_mac = _RAND_10[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  store_2_at = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  store_3_ip = _RAND_12[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  store_3_valid = _RAND_13[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  store_3_mac = _RAND_14[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  store_3_at = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  store_4_ip = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  store_4_valid = _RAND_17[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  store_4_mac = _RAND_18[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  store_4_at = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  store_5_ip = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  store_5_valid = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{`RANDOM}};
  store_5_mac = _RAND_22[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  store_5_at = _RAND_23[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  store_6_ip = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  store_6_valid = _RAND_25[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{`RANDOM}};
  store_6_mac = _RAND_26[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  store_6_at = _RAND_27[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  store_7_ip = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  store_7_valid = _RAND_29[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{`RANDOM}};
  store_7_mac = _RAND_30[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  store_7_at = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  ptr = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  pipe_arp_found = _RAND_33[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  pipe_forward_nextHop = _RAND_34[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {2{`RANDOM}};
  pipe_packet_eth_dest = _RAND_35[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {2{`RANDOM}};
  pipe_packet_eth_sender = _RAND_36[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  pipe_packet_eth_pactype = _RAND_37[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  pipe_packet_eth_vlan = _RAND_38[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  pipe_packet_arp_htype = _RAND_39[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  pipe_packet_arp_ptype = _RAND_40[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  pipe_packet_arp_hlen = _RAND_41[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_42 = {1{`RANDOM}};
  pipe_packet_arp_plen = _RAND_42[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_43 = {1{`RANDOM}};
  pipe_packet_arp_oper = _RAND_43[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_44 = {2{`RANDOM}};
  pipe_packet_arp_sha = _RAND_44[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_45 = {1{`RANDOM}};
  pipe_packet_arp_spa = _RAND_45[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_46 = {2{`RANDOM}};
  pipe_packet_arp_tha = _RAND_46[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_47 = {1{`RANDOM}};
  pipe_packet_arp_tpa = _RAND_47[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_48 = {1{`RANDOM}};
  pipe_packet_ip_version = _RAND_48[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_49 = {1{`RANDOM}};
  pipe_packet_ip_ihl = _RAND_49[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_50 = {1{`RANDOM}};
  pipe_packet_ip_dscp = _RAND_50[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_51 = {1{`RANDOM}};
  pipe_packet_ip_ecn = _RAND_51[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_52 = {1{`RANDOM}};
  pipe_packet_ip_len = _RAND_52[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_53 = {1{`RANDOM}};
  pipe_packet_ip_id = _RAND_53[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_54 = {1{`RANDOM}};
  pipe_packet_ip_flags = _RAND_54[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_55 = {1{`RANDOM}};
  pipe_packet_ip_foff = _RAND_55[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_56 = {1{`RANDOM}};
  pipe_packet_ip_ttl = _RAND_56[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_57 = {1{`RANDOM}};
  pipe_packet_ip_proto = _RAND_57[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_58 = {1{`RANDOM}};
  pipe_packet_ip_chksum = _RAND_58[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_59 = {1{`RANDOM}};
  pipe_packet_ip_src = _RAND_59[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_60 = {1{`RANDOM}};
  pipe_packet_ip_dest = _RAND_60[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_61 = {1{`RANDOM}};
  pipe_packet_icmp_id = _RAND_61[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_62 = {1{`RANDOM}};
  pipe_packet_icmp_checksum = _RAND_62[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_63 = {1{`RANDOM}};
  pipe_packet_icmp_code = _RAND_63[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_64 = {1{`RANDOM}};
  pipe_packet_icmp_imcpType = _RAND_64[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_65 = {1{`RANDOM}};
  pipeStatus = _RAND_65[1:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      store_0_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h0 == ptr) begin
              store_0_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_0_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_438) begin
              store_0_valid <= 1'h0;
            end else begin
              if (3'h0 == ptr) begin
                store_0_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_0_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h0 == ptr) begin
              store_0_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_0_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h0 == ptr) begin
              store_0_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_1_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h1 == ptr) begin
              store_1_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_1_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_443) begin
              store_1_valid <= 1'h0;
            end else begin
              if (3'h1 == ptr) begin
                store_1_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_1_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h1 == ptr) begin
              store_1_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_1_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h1 == ptr) begin
              store_1_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_2_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h2 == ptr) begin
              store_2_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_2_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_448) begin
              store_2_valid <= 1'h0;
            end else begin
              if (3'h2 == ptr) begin
                store_2_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_2_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h2 == ptr) begin
              store_2_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_2_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h2 == ptr) begin
              store_2_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_3_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h3 == ptr) begin
              store_3_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_3_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_453) begin
              store_3_valid <= 1'h0;
            end else begin
              if (3'h3 == ptr) begin
                store_3_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_3_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h3 == ptr) begin
              store_3_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_3_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h3 == ptr) begin
              store_3_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_4_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h4 == ptr) begin
              store_4_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_4_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_458) begin
              store_4_valid <= 1'h0;
            end else begin
              if (3'h4 == ptr) begin
                store_4_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_4_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h4 == ptr) begin
              store_4_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_4_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h4 == ptr) begin
              store_4_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_5_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h5 == ptr) begin
              store_5_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_5_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_463) begin
              store_5_valid <= 1'h0;
            end else begin
              if (3'h5 == ptr) begin
                store_5_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_5_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h5 == ptr) begin
              store_5_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_5_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h5 == ptr) begin
              store_5_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_6_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h6 == ptr) begin
              store_6_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_6_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_468) begin
              store_6_valid <= 1'h0;
            end else begin
              if (3'h6 == ptr) begin
                store_6_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_6_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h6 == ptr) begin
              store_6_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_6_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h6 == ptr) begin
              store_6_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      store_7_ip <= 32'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h7 == ptr) begin
              store_7_ip <= io_input_packet_arp_spa;
            end
          end
        end
      end
    end
    if (reset) begin
      store_7_valid <= 1'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (_T_473) begin
              store_7_valid <= 1'h0;
            end else begin
              if (3'h7 == ptr) begin
                store_7_valid <= 1'h1;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      store_7_mac <= 48'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h7 == ptr) begin
              store_7_mac <= io_input_packet_arp_sha;
            end
          end
        end
      end
    end
    if (reset) begin
      store_7_at <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            if (3'h7 == ptr) begin
              store_7_at <= io_input_packet_eth_vlan;
            end
          end
        end
      end
    end
    if (reset) begin
      ptr <= 3'h0;
    end else begin
      if (_T_410) begin
        if (_T_411) begin
          if (_T_418) begin
            ptr <= _T_434;
          end
        end
      end
    end
    if (_T_410) begin
      pipe_arp_found <= found;
    end
    if (_T_410) begin
      pipe_forward_nextHop <= io_input_lookup_nextHop;
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_eth_dest <= io_input_packet_eth_dest;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              pipe_packet_eth_dest <= io_input_packet_eth_sender;
            end else begin
              pipe_packet_eth_dest <= io_input_packet_eth_dest;
            end
          end else begin
            pipe_packet_eth_dest <= entry_mac;
          end
        end
      end else begin
        pipe_packet_eth_dest <= io_input_packet_eth_dest;
      end
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_eth_sender <= io_input_packet_eth_sender;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              if (3'h4 == io_input_packet_eth_vlan) begin
                pipe_packet_eth_sender <= 48'h4;
              end else begin
                if (3'h3 == io_input_packet_eth_vlan) begin
                  pipe_packet_eth_sender <= 48'h3;
                end else begin
                  if (3'h2 == io_input_packet_eth_vlan) begin
                    pipe_packet_eth_sender <= 48'h2;
                  end else begin
                    if (3'h1 == io_input_packet_eth_vlan) begin
                      pipe_packet_eth_sender <= 48'h1;
                    end else begin
                      pipe_packet_eth_sender <= 48'h0;
                    end
                  end
                end
              end
            end else begin
              pipe_packet_eth_sender <= io_input_packet_eth_sender;
            end
          end else begin
            if (3'h4 == entry_at) begin
              pipe_packet_eth_sender <= 48'h4;
            end else begin
              if (3'h3 == entry_at) begin
                pipe_packet_eth_sender <= 48'h3;
              end else begin
                if (3'h2 == entry_at) begin
                  pipe_packet_eth_sender <= 48'h2;
                end else begin
                  if (3'h1 == entry_at) begin
                    pipe_packet_eth_sender <= 48'h1;
                  end else begin
                    pipe_packet_eth_sender <= 48'h0;
                  end
                end
              end
            end
          end
        end
      end else begin
        pipe_packet_eth_sender <= io_input_packet_eth_sender;
      end
    end
    if (_T_410) begin
      pipe_packet_eth_pactype <= io_input_packet_eth_pactype;
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_eth_vlan <= io_input_packet_eth_vlan;
        end else begin
          if (_T_477) begin
            pipe_packet_eth_vlan <= io_input_packet_eth_vlan;
          end else begin
            pipe_packet_eth_vlan <= entry_at;
          end
        end
      end else begin
        pipe_packet_eth_vlan <= io_input_packet_eth_vlan;
      end
    end
    if (_T_410) begin
      pipe_packet_arp_htype <= io_input_packet_arp_htype;
    end
    if (_T_410) begin
      pipe_packet_arp_ptype <= io_input_packet_arp_ptype;
    end
    if (_T_410) begin
      pipe_packet_arp_hlen <= io_input_packet_arp_hlen;
    end
    if (_T_410) begin
      pipe_packet_arp_plen <= io_input_packet_arp_plen;
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_arp_oper <= io_input_packet_arp_oper;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              pipe_packet_arp_oper <= 16'h2;
            end else begin
              pipe_packet_arp_oper <= io_input_packet_arp_oper;
            end
          end else begin
            pipe_packet_arp_oper <= io_input_packet_arp_oper;
          end
        end
      end else begin
        pipe_packet_arp_oper <= io_input_packet_arp_oper;
      end
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_arp_sha <= io_input_packet_arp_sha;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              if (3'h4 == io_input_packet_eth_vlan) begin
                pipe_packet_arp_sha <= 48'h4;
              end else begin
                if (3'h3 == io_input_packet_eth_vlan) begin
                  pipe_packet_arp_sha <= 48'h3;
                end else begin
                  if (3'h2 == io_input_packet_eth_vlan) begin
                    pipe_packet_arp_sha <= 48'h2;
                  end else begin
                    if (3'h1 == io_input_packet_eth_vlan) begin
                      pipe_packet_arp_sha <= 48'h1;
                    end else begin
                      pipe_packet_arp_sha <= 48'h0;
                    end
                  end
                end
              end
            end else begin
              pipe_packet_arp_sha <= io_input_packet_arp_sha;
            end
          end else begin
            pipe_packet_arp_sha <= io_input_packet_arp_sha;
          end
        end
      end else begin
        pipe_packet_arp_sha <= io_input_packet_arp_sha;
      end
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_arp_spa <= io_input_packet_arp_spa;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              if (3'h4 == io_input_packet_eth_vlan) begin
                pipe_packet_arp_spa <= 32'ha000401;
              end else begin
                if (3'h3 == io_input_packet_eth_vlan) begin
                  pipe_packet_arp_spa <= 32'ha000301;
                end else begin
                  if (3'h2 == io_input_packet_eth_vlan) begin
                    pipe_packet_arp_spa <= 32'ha000201;
                  end else begin
                    if (3'h1 == io_input_packet_eth_vlan) begin
                      pipe_packet_arp_spa <= 32'ha000101;
                    end else begin
                      pipe_packet_arp_spa <= 32'ha010001;
                    end
                  end
                end
              end
            end else begin
              pipe_packet_arp_spa <= io_input_packet_arp_spa;
            end
          end else begin
            pipe_packet_arp_spa <= io_input_packet_arp_spa;
          end
        end
      end else begin
        pipe_packet_arp_spa <= io_input_packet_arp_spa;
      end
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_arp_tha <= io_input_packet_arp_tha;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              pipe_packet_arp_tha <= io_input_packet_arp_sha;
            end else begin
              pipe_packet_arp_tha <= io_input_packet_arp_tha;
            end
          end else begin
            pipe_packet_arp_tha <= io_input_packet_arp_tha;
          end
        end
      end else begin
        pipe_packet_arp_tha <= io_input_packet_arp_tha;
      end
    end
    if (_T_410) begin
      if (_T_411) begin
        if (_T_418) begin
          pipe_packet_arp_tpa <= io_input_packet_arp_tpa;
        end else begin
          if (_T_477) begin
            if (_T_479) begin
              pipe_packet_arp_tpa <= io_input_packet_arp_spa;
            end else begin
              pipe_packet_arp_tpa <= io_input_packet_arp_tpa;
            end
          end else begin
            pipe_packet_arp_tpa <= io_input_packet_arp_tpa;
          end
        end
      end else begin
        pipe_packet_arp_tpa <= io_input_packet_arp_tpa;
      end
    end
    if (_T_410) begin
      pipe_packet_ip_version <= io_input_packet_ip_version;
    end
    if (_T_410) begin
      pipe_packet_ip_ihl <= io_input_packet_ip_ihl;
    end
    if (_T_410) begin
      pipe_packet_ip_dscp <= io_input_packet_ip_dscp;
    end
    if (_T_410) begin
      pipe_packet_ip_ecn <= io_input_packet_ip_ecn;
    end
    if (_T_410) begin
      pipe_packet_ip_len <= io_input_packet_ip_len;
    end
    if (_T_410) begin
      pipe_packet_ip_id <= io_input_packet_ip_id;
    end
    if (_T_410) begin
      pipe_packet_ip_flags <= io_input_packet_ip_flags;
    end
    if (_T_410) begin
      pipe_packet_ip_foff <= io_input_packet_ip_foff;
    end
    if (_T_410) begin
      pipe_packet_ip_ttl <= io_input_packet_ip_ttl;
    end
    if (_T_410) begin
      pipe_packet_ip_proto <= io_input_packet_ip_proto;
    end
    if (_T_410) begin
      pipe_packet_ip_chksum <= io_input_packet_ip_chksum;
    end
    if (_T_410) begin
      pipe_packet_ip_src <= io_input_packet_ip_src;
    end
    if (_T_410) begin
      pipe_packet_ip_dest <= io_input_packet_ip_dest;
    end
    if (_T_410) begin
      pipe_packet_icmp_id <= io_input_packet_icmp_id;
    end
    if (_T_410) begin
      pipe_packet_icmp_checksum <= io_input_packet_icmp_checksum;
    end
    if (_T_410) begin
      pipe_packet_icmp_code <= io_input_packet_icmp_code;
    end
    if (_T_410) begin
      pipe_packet_icmp_imcpType <= io_input_packet_icmp_imcpType;
    end
    if (reset) begin
      pipeStatus <= 2'h0;
    end else begin
      if (_T_410) begin
        pipeStatus <= io_status;
      end
    end
  end
endmodule
module Encoder( // @[:@1691.2]
  input         clock, // @[:@1692.4]
  input         reset, // @[:@1693.4]
  input         io_input_arp_found, // @[:@1694.4]
  input  [31:0] io_input_forward_nextHop, // @[:@1694.4]
  input  [47:0] io_input_packet_eth_dest, // @[:@1694.4]
  input  [47:0] io_input_packet_eth_sender, // @[:@1694.4]
  input  [1:0]  io_input_packet_eth_pactype, // @[:@1694.4]
  input  [2:0]  io_input_packet_eth_vlan, // @[:@1694.4]
  input  [15:0] io_input_packet_arp_htype, // @[:@1694.4]
  input  [15:0] io_input_packet_arp_ptype, // @[:@1694.4]
  input  [7:0]  io_input_packet_arp_hlen, // @[:@1694.4]
  input  [7:0]  io_input_packet_arp_plen, // @[:@1694.4]
  input  [15:0] io_input_packet_arp_oper, // @[:@1694.4]
  input  [47:0] io_input_packet_arp_sha, // @[:@1694.4]
  input  [31:0] io_input_packet_arp_spa, // @[:@1694.4]
  input  [47:0] io_input_packet_arp_tha, // @[:@1694.4]
  input  [31:0] io_input_packet_arp_tpa, // @[:@1694.4]
  input  [3:0]  io_input_packet_ip_version, // @[:@1694.4]
  input  [3:0]  io_input_packet_ip_ihl, // @[:@1694.4]
  input  [5:0]  io_input_packet_ip_dscp, // @[:@1694.4]
  input  [1:0]  io_input_packet_ip_ecn, // @[:@1694.4]
  input  [15:0] io_input_packet_ip_len, // @[:@1694.4]
  input  [15:0] io_input_packet_ip_id, // @[:@1694.4]
  input  [2:0]  io_input_packet_ip_flags, // @[:@1694.4]
  input  [12:0] io_input_packet_ip_foff, // @[:@1694.4]
  input  [7:0]  io_input_packet_ip_ttl, // @[:@1694.4]
  input  [7:0]  io_input_packet_ip_proto, // @[:@1694.4]
  input  [15:0] io_input_packet_ip_chksum, // @[:@1694.4]
  input  [31:0] io_input_packet_ip_src, // @[:@1694.4]
  input  [31:0] io_input_packet_ip_dest, // @[:@1694.4]
  input  [15:0] io_input_packet_icmp_id, // @[:@1694.4]
  input  [15:0] io_input_packet_icmp_checksum, // @[:@1694.4]
  input  [7:0]  io_input_packet_icmp_code, // @[:@1694.4]
  input  [7:0]  io_input_packet_icmp_imcpType, // @[:@1694.4]
  input  [1:0]  io_status, // @[:@1694.4]
  output        io_stall, // @[:@1694.4]
  input         io_pause, // @[:@1694.4]
  output        io_writer_clk, // @[:@1694.4]
  output        io_writer_en, // @[:@1694.4]
  output [7:0]  io_writer_data_data, // @[:@1694.4]
  output        io_writer_data_last, // @[:@1694.4]
  input         io_writer_full, // @[:@1694.4]
  output        io_ipReader_clk, // @[:@1694.4]
  output        io_ipReader_en, // @[:@1694.4]
  input  [7:0]  io_ipReader_data_data, // @[:@1694.4]
  input         io_ipReader_data_last, // @[:@1694.4]
  input         io_ipReader_empty // @[:@1694.4]
);
  reg [5:0] cnt; // @[encoder.scala 32:20:@1709.4]
  reg [31:0] _RAND_0;
  reg [2:0] state; // @[encoder.scala 35:22:@1710.4]
  reg [31:0] _RAND_1;
  reg [31:0] sending_forward_nextHop; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_2;
  reg [47:0] sending_packet_eth_dest; // @[encoder.scala 37:20:@1711.4]
  reg [63:0] _RAND_3;
  reg [47:0] sending_packet_eth_sender; // @[encoder.scala 37:20:@1711.4]
  reg [63:0] _RAND_4;
  reg [1:0] sending_packet_eth_pactype; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_5;
  reg [2:0] sending_packet_eth_vlan; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_6;
  reg [15:0] sending_packet_arp_htype; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_7;
  reg [15:0] sending_packet_arp_ptype; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_8;
  reg [7:0] sending_packet_arp_hlen; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_9;
  reg [7:0] sending_packet_arp_plen; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_10;
  reg [15:0] sending_packet_arp_oper; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_11;
  reg [47:0] sending_packet_arp_sha; // @[encoder.scala 37:20:@1711.4]
  reg [63:0] _RAND_12;
  reg [31:0] sending_packet_arp_spa; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_13;
  reg [47:0] sending_packet_arp_tha; // @[encoder.scala 37:20:@1711.4]
  reg [63:0] _RAND_14;
  reg [31:0] sending_packet_arp_tpa; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_15;
  reg [3:0] sending_packet_ip_version; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_16;
  reg [3:0] sending_packet_ip_ihl; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_17;
  reg [5:0] sending_packet_ip_dscp; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_18;
  reg [1:0] sending_packet_ip_ecn; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_19;
  reg [15:0] sending_packet_ip_len; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_20;
  reg [15:0] sending_packet_ip_id; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_21;
  reg [2:0] sending_packet_ip_flags; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_22;
  reg [12:0] sending_packet_ip_foff; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_23;
  reg [7:0] sending_packet_ip_ttl; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_24;
  reg [7:0] sending_packet_ip_proto; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_25;
  reg [15:0] sending_packet_ip_chksum; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_26;
  reg [31:0] sending_packet_ip_src; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_27;
  reg [31:0] sending_packet_ip_dest; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_28;
  reg [15:0] sending_packet_icmp_id; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_29;
  reg [15:0] sending_packet_icmp_checksum; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_30;
  reg [7:0] sending_packet_icmp_code; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_31;
  reg [7:0] sending_packet_icmp_imcpType; // @[encoder.scala 37:20:@1711.4]
  reg [31:0] _RAND_32;
  wire [223:0] _T_82; // @[encoder.scala 38:36:@1719.4]
  wire [7:0] arpView_0; // @[encoder.scala 38:51:@1723.4]
  wire [7:0] arpView_1; // @[encoder.scala 38:51:@1725.4]
  wire [7:0] arpView_2; // @[encoder.scala 38:51:@1727.4]
  wire [7:0] arpView_3; // @[encoder.scala 38:51:@1729.4]
  wire [7:0] arpView_4; // @[encoder.scala 38:51:@1731.4]
  wire [7:0] arpView_5; // @[encoder.scala 38:51:@1733.4]
  wire [7:0] arpView_6; // @[encoder.scala 38:51:@1735.4]
  wire [7:0] arpView_7; // @[encoder.scala 38:51:@1737.4]
  wire [7:0] arpView_8; // @[encoder.scala 38:51:@1739.4]
  wire [7:0] arpView_9; // @[encoder.scala 38:51:@1741.4]
  wire [7:0] arpView_10; // @[encoder.scala 38:51:@1743.4]
  wire [7:0] arpView_11; // @[encoder.scala 38:51:@1745.4]
  wire [7:0] arpView_12; // @[encoder.scala 38:51:@1747.4]
  wire [7:0] arpView_13; // @[encoder.scala 38:51:@1749.4]
  wire [7:0] arpView_14; // @[encoder.scala 38:51:@1751.4]
  wire [7:0] arpView_15; // @[encoder.scala 38:51:@1753.4]
  wire [7:0] arpView_16; // @[encoder.scala 38:51:@1755.4]
  wire [7:0] arpView_17; // @[encoder.scala 38:51:@1757.4]
  wire [7:0] arpView_18; // @[encoder.scala 38:51:@1759.4]
  wire [7:0] arpView_19; // @[encoder.scala 38:51:@1761.4]
  wire [7:0] arpView_20; // @[encoder.scala 38:51:@1763.4]
  wire [7:0] arpView_21; // @[encoder.scala 38:51:@1765.4]
  wire [7:0] arpView_22; // @[encoder.scala 38:51:@1767.4]
  wire [7:0] arpView_23; // @[encoder.scala 38:51:@1769.4]
  wire [7:0] arpView_24; // @[encoder.scala 38:51:@1771.4]
  wire [7:0] arpView_25; // @[encoder.scala 38:51:@1773.4]
  wire [7:0] arpView_26; // @[encoder.scala 38:51:@1775.4]
  wire [7:0] arpView_27; // @[encoder.scala 38:51:@1777.4]
  wire [108:0] _T_210; // @[encoder.scala 39:34:@1783.4]
  wire [159:0] _T_217; // @[encoder.scala 39:34:@1790.4]
  wire [7:0] ipView_0; // @[encoder.scala 39:49:@1794.4]
  wire [7:0] ipView_1; // @[encoder.scala 39:49:@1796.4]
  wire [7:0] ipView_2; // @[encoder.scala 39:49:@1798.4]
  wire [7:0] ipView_3; // @[encoder.scala 39:49:@1800.4]
  wire [7:0] ipView_4; // @[encoder.scala 39:49:@1802.4]
  wire [7:0] ipView_5; // @[encoder.scala 39:49:@1804.4]
  wire [7:0] ipView_6; // @[encoder.scala 39:49:@1806.4]
  wire [7:0] ipView_7; // @[encoder.scala 39:49:@1808.4]
  wire [7:0] ipView_8; // @[encoder.scala 39:49:@1810.4]
  wire [7:0] ipView_9; // @[encoder.scala 39:49:@1812.4]
  wire [7:0] ipView_10; // @[encoder.scala 39:49:@1814.4]
  wire [7:0] ipView_11; // @[encoder.scala 39:49:@1816.4]
  wire [7:0] ipView_12; // @[encoder.scala 39:49:@1818.4]
  wire [7:0] ipView_13; // @[encoder.scala 39:49:@1820.4]
  wire [7:0] ipView_14; // @[encoder.scala 39:49:@1822.4]
  wire [7:0] ipView_15; // @[encoder.scala 39:49:@1824.4]
  wire [7:0] ipView_16; // @[encoder.scala 39:49:@1826.4]
  wire [7:0] ipView_17; // @[encoder.scala 39:49:@1828.4]
  wire [7:0] ipView_18; // @[encoder.scala 39:49:@1830.4]
  wire [7:0] ipView_19; // @[encoder.scala 39:49:@1832.4]
  wire [47:0] _T_311; // @[encoder.scala 40:38:@1836.4]
  wire [7:0] icmpView_0; // @[encoder.scala 40:53:@1840.4]
  wire [7:0] icmpView_1; // @[encoder.scala 40:53:@1842.4]
  wire [7:0] icmpView_2; // @[encoder.scala 40:53:@1844.4]
  wire [7:0] icmpView_3; // @[encoder.scala 40:53:@1846.4]
  wire [7:0] icmpView_4; // @[encoder.scala 40:53:@1848.4]
  wire [7:0] icmpView_5; // @[encoder.scala 40:53:@1850.4]
  wire  _T_353; // @[pactype.scala 27:12:@1855.4]
  wire  _T_355; // @[pactype.scala 29:19:@1860.6]
  wire [15:0] _GEN_0; // @[pactype.scala 29:36:@1861.6]
  wire [15:0] _GEN_1; // @[pactype.scala 27:30:@1856.4]
  wire [7:0] _T_350; // @[eth.scala 17:18:@1852.4 eth.scala 17:18:@1853.4]
  wire [143:0] _T_361; // @[Cat.scala 30:58:@1870.4]
  wire [7:0] headerView_0; // @[eth.scala 21:44:@1874.4]
  wire [7:0] headerView_1; // @[eth.scala 21:44:@1876.4]
  wire [7:0] headerView_2; // @[eth.scala 21:44:@1878.4]
  wire [7:0] headerView_3; // @[eth.scala 21:44:@1880.4]
  wire [7:0] headerView_4; // @[eth.scala 21:44:@1882.4]
  wire [7:0] headerView_5; // @[eth.scala 21:44:@1884.4]
  wire [7:0] headerView_6; // @[eth.scala 21:44:@1886.4]
  wire [7:0] headerView_7; // @[eth.scala 21:44:@1888.4]
  wire [7:0] headerView_8; // @[eth.scala 21:44:@1890.4]
  wire [7:0] headerView_9; // @[eth.scala 21:44:@1892.4]
  wire [7:0] headerView_10; // @[eth.scala 21:44:@1894.4]
  wire [7:0] headerView_11; // @[eth.scala 21:44:@1896.4]
  wire [7:0] headerView_12; // @[eth.scala 21:44:@1898.4]
  wire [7:0] headerView_13; // @[eth.scala 21:44:@1900.4]
  wire [7:0] headerView_14; // @[eth.scala 21:44:@1902.4]
  wire [7:0] headerView_15; // @[eth.scala 21:44:@1904.4]
  wire [7:0] headerView_16; // @[eth.scala 21:44:@1906.4]
  wire [7:0] headerView_17; // @[eth.scala 21:44:@1908.4]
  reg [2:0] port; // @[encoder.scala 65:21:@1930.4]
  reg [31:0] _RAND_33;
  wire [47:0] _GEN_3; // @[encoder.scala 67:17:@1932.4]
  wire [47:0] _GEN_4; // @[encoder.scala 67:17:@1932.4]
  wire [47:0] _GEN_5; // @[encoder.scala 67:17:@1932.4]
  wire [47:0] arpEth_sender; // @[encoder.scala 67:17:@1932.4]
  wire [31:0] _GEN_8; // @[encoder.scala 69:14:@1934.4]
  wire [31:0] _GEN_9; // @[encoder.scala 69:14:@1934.4]
  wire [31:0] _GEN_10; // @[encoder.scala 69:14:@1934.4]
  wire [31:0] arpReq_spa; // @[encoder.scala 69:14:@1934.4]
  wire [7:0] _T_466; // @[eth.scala 17:18:@1935.4 eth.scala 17:18:@1936.4]
  wire [367:0] _T_486; // @[Cat.scala 30:58:@1962.4]
  wire [7:0] arpMissPayload_0; // @[encoder.scala 71:70:@1966.4]
  wire [7:0] arpMissPayload_1; // @[encoder.scala 71:70:@1968.4]
  wire [7:0] arpMissPayload_2; // @[encoder.scala 71:70:@1970.4]
  wire [7:0] arpMissPayload_3; // @[encoder.scala 71:70:@1972.4]
  wire [7:0] arpMissPayload_4; // @[encoder.scala 71:70:@1974.4]
  wire [7:0] arpMissPayload_5; // @[encoder.scala 71:70:@1976.4]
  wire [7:0] arpMissPayload_6; // @[encoder.scala 71:70:@1978.4]
  wire [7:0] arpMissPayload_7; // @[encoder.scala 71:70:@1980.4]
  wire [7:0] arpMissPayload_8; // @[encoder.scala 71:70:@1982.4]
  wire [7:0] arpMissPayload_9; // @[encoder.scala 71:70:@1984.4]
  wire [7:0] arpMissPayload_10; // @[encoder.scala 71:70:@1986.4]
  wire [7:0] arpMissPayload_11; // @[encoder.scala 71:70:@1988.4]
  wire [7:0] arpMissPayload_12; // @[encoder.scala 71:70:@1990.4]
  wire [7:0] arpMissPayload_13; // @[encoder.scala 71:70:@1992.4]
  wire [7:0] arpMissPayload_14; // @[encoder.scala 71:70:@1994.4]
  wire [7:0] arpMissPayload_15; // @[encoder.scala 71:70:@1996.4]
  wire [7:0] arpMissPayload_16; // @[encoder.scala 71:70:@1998.4]
  wire [7:0] arpMissPayload_17; // @[encoder.scala 71:70:@2000.4]
  wire [7:0] arpMissPayload_18; // @[encoder.scala 71:70:@2002.4]
  wire [7:0] arpMissPayload_19; // @[encoder.scala 71:70:@2004.4]
  wire [7:0] arpMissPayload_20; // @[encoder.scala 71:70:@2006.4]
  wire [7:0] arpMissPayload_21; // @[encoder.scala 71:70:@2008.4]
  wire [7:0] arpMissPayload_22; // @[encoder.scala 71:70:@2010.4]
  wire [7:0] arpMissPayload_23; // @[encoder.scala 71:70:@2012.4]
  wire [7:0] arpMissPayload_24; // @[encoder.scala 71:70:@2014.4]
  wire [7:0] arpMissPayload_25; // @[encoder.scala 71:70:@2016.4]
  wire [7:0] arpMissPayload_26; // @[encoder.scala 71:70:@2018.4]
  wire [7:0] arpMissPayload_27; // @[encoder.scala 71:70:@2020.4]
  wire [7:0] arpMissPayload_28; // @[encoder.scala 71:70:@2022.4]
  wire [7:0] arpMissPayload_29; // @[encoder.scala 71:70:@2024.4]
  wire [7:0] arpMissPayload_30; // @[encoder.scala 71:70:@2026.4]
  wire [7:0] arpMissPayload_31; // @[encoder.scala 71:70:@2028.4]
  wire [7:0] arpMissPayload_32; // @[encoder.scala 71:70:@2030.4]
  wire [7:0] arpMissPayload_33; // @[encoder.scala 71:70:@2032.4]
  wire [7:0] arpMissPayload_34; // @[encoder.scala 71:70:@2034.4]
  wire [7:0] arpMissPayload_35; // @[encoder.scala 71:70:@2036.4]
  wire [7:0] arpMissPayload_36; // @[encoder.scala 71:70:@2038.4]
  wire [7:0] arpMissPayload_37; // @[encoder.scala 71:70:@2040.4]
  wire [7:0] arpMissPayload_38; // @[encoder.scala 71:70:@2042.4]
  wire [7:0] arpMissPayload_39; // @[encoder.scala 71:70:@2044.4]
  wire [7:0] arpMissPayload_40; // @[encoder.scala 71:70:@2046.4]
  wire [7:0] arpMissPayload_41; // @[encoder.scala 71:70:@2048.4]
  wire [7:0] arpMissPayload_42; // @[encoder.scala 71:70:@2050.4]
  wire [7:0] arpMissPayload_43; // @[encoder.scala 71:70:@2052.4]
  wire [7:0] arpMissPayload_44; // @[encoder.scala 71:70:@2054.4]
  wire [7:0] arpMissPayload_45; // @[encoder.scala 71:70:@2056.4]
  wire  _T_682; // @[Conditional.scala 37:30:@2058.4]
  wire  _T_684; // @[encoder.scala 75:12:@2060.6]
  wire  _T_685; // @[encoder.scala 75:35:@2061.6]
  wire  _T_686; // @[encoder.scala 75:22:@2062.6]
  wire  _T_687; // @[encoder.scala 77:42:@2099.8]
  wire  _T_689; // @[encoder.scala 77:61:@2100.8]
  wire  _T_690; // @[encoder.scala 77:58:@2101.8]
  wire [47:0] _GEN_15; // @[encoder.scala 82:41:@2109.10]
  wire [47:0] _GEN_16; // @[encoder.scala 82:41:@2109.10]
  wire [47:0] _GEN_17; // @[encoder.scala 82:41:@2109.10]
  wire [47:0] _GEN_18; // @[encoder.scala 82:41:@2109.10]
  wire  _T_695; // @[encoder.scala 82:41:@2109.10]
  wire  _T_696; // @[encoder.scala 82:11:@2110.10]
  wire [2:0] _GEN_19; // @[encoder.scala 83:11:@2111.10]
  wire [5:0] _GEN_20; // @[encoder.scala 83:11:@2111.10]
  wire [2:0] _GEN_21; // @[encoder.scala 77:82:@2102.8]
  wire [2:0] _GEN_22; // @[encoder.scala 77:82:@2102.8]
  wire [5:0] _GEN_23; // @[encoder.scala 77:82:@2102.8]
  wire [7:0] _GEN_24; // @[encoder.scala 75:54:@2063.6]
  wire [7:0] _GEN_25; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_26; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_27; // @[encoder.scala 75:54:@2063.6]
  wire [31:0] _GEN_28; // @[encoder.scala 75:54:@2063.6]
  wire [31:0] _GEN_29; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_30; // @[encoder.scala 75:54:@2063.6]
  wire [7:0] _GEN_31; // @[encoder.scala 75:54:@2063.6]
  wire [7:0] _GEN_32; // @[encoder.scala 75:54:@2063.6]
  wire [12:0] _GEN_33; // @[encoder.scala 75:54:@2063.6]
  wire [2:0] _GEN_34; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_35; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_36; // @[encoder.scala 75:54:@2063.6]
  wire [1:0] _GEN_37; // @[encoder.scala 75:54:@2063.6]
  wire [5:0] _GEN_38; // @[encoder.scala 75:54:@2063.6]
  wire [3:0] _GEN_39; // @[encoder.scala 75:54:@2063.6]
  wire [3:0] _GEN_40; // @[encoder.scala 75:54:@2063.6]
  wire [31:0] _GEN_41; // @[encoder.scala 75:54:@2063.6]
  wire [47:0] _GEN_42; // @[encoder.scala 75:54:@2063.6]
  wire [31:0] _GEN_43; // @[encoder.scala 75:54:@2063.6]
  wire [47:0] _GEN_44; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_45; // @[encoder.scala 75:54:@2063.6]
  wire [7:0] _GEN_46; // @[encoder.scala 75:54:@2063.6]
  wire [7:0] _GEN_47; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_48; // @[encoder.scala 75:54:@2063.6]
  wire [15:0] _GEN_49; // @[encoder.scala 75:54:@2063.6]
  wire [2:0] _GEN_50; // @[encoder.scala 75:54:@2063.6]
  wire [1:0] _GEN_51; // @[encoder.scala 75:54:@2063.6]
  wire [47:0] _GEN_52; // @[encoder.scala 75:54:@2063.6]
  wire [47:0] _GEN_53; // @[encoder.scala 75:54:@2063.6]
  wire [31:0] _GEN_54; // @[encoder.scala 75:54:@2063.6]
  wire [2:0] _GEN_59; // @[encoder.scala 75:54:@2063.6]
  wire [2:0] _GEN_60; // @[encoder.scala 75:54:@2063.6]
  wire [5:0] _GEN_61; // @[encoder.scala 75:54:@2063.6]
  wire  _T_698; // @[Conditional.scala 37:30:@2118.6]
  wire [7:0] _GEN_63; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_64; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_65; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_66; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_67; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_68; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_69; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_70; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_71; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_72; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_73; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_74; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_75; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_76; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_77; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_78; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_79; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_80; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_81; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_82; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_83; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_84; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_85; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_86; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_87; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_88; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_89; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_90; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_91; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_92; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_93; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_94; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_95; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_96; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_97; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_98; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_99; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_100; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_101; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_102; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_103; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_104; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_105; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_106; // @[encoder.scala 91:27:@2122.8]
  wire [7:0] _GEN_107; // @[encoder.scala 91:27:@2122.8]
  wire  _T_705; // @[encoder.scala 92:34:@2123.8]
  wire  _T_708; // @[encoder.scala 95:12:@2126.8]
  wire  _T_710; // @[encoder.scala 96:18:@2128.10]
  wire [6:0] _T_712; // @[encoder.scala 97:22:@2130.12]
  wire [6:0] _T_713; // @[encoder.scala 97:22:@2131.12]
  wire [5:0] _T_714; // @[encoder.scala 97:22:@2132.12]
  wire  _T_716; // @[encoder.scala 98:26:@2136.12]
  wire [3:0] _T_719; // @[encoder.scala 100:24:@2139.14]
  wire [2:0] _T_720; // @[encoder.scala 100:24:@2140.14]
  wire [5:0] _GEN_108; // @[encoder.scala 98:42:@2137.12]
  wire [2:0] _GEN_109; // @[encoder.scala 98:42:@2137.12]
  wire [2:0] _GEN_110; // @[encoder.scala 98:42:@2137.12]
  wire [5:0] _GEN_111; // @[encoder.scala 96:25:@2129.10]
  wire [2:0] _GEN_112; // @[encoder.scala 96:25:@2129.10]
  wire [2:0] _GEN_113; // @[encoder.scala 96:25:@2129.10]
  wire [5:0] _GEN_114; // @[encoder.scala 95:29:@2127.8]
  wire [2:0] _GEN_115; // @[encoder.scala 95:29:@2127.8]
  wire [2:0] _GEN_116; // @[encoder.scala 95:29:@2127.8]
  wire  _T_721; // @[Conditional.scala 37:30:@2149.8]
  wire [4:0] _T_726; // @[:@2152.10]
  wire [7:0] _GEN_118; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_119; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_120; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_121; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_122; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_123; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_124; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_125; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_126; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_127; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_128; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_129; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_130; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_131; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_132; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_133; // @[encoder.scala 109:27:@2153.10]
  wire [7:0] _GEN_134; // @[encoder.scala 109:27:@2153.10]
  wire [2:0] _GEN_135; // @[encoder.scala 115:65:@2166.14]
  wire [4:0] _GEN_136; // @[encoder.scala 115:65:@2166.14]
  wire [5:0] _GEN_137; // @[encoder.scala 113:25:@2158.12]
  wire [2:0] _GEN_138; // @[encoder.scala 113:25:@2158.12]
  wire [5:0] _GEN_139; // @[encoder.scala 112:29:@2156.10]
  wire [2:0] _GEN_140; // @[encoder.scala 112:29:@2156.10]
  wire  _T_739; // @[Conditional.scala 37:30:@2177.10]
  wire [7:0] _GEN_142; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_143; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_144; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_145; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_146; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_147; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_148; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_149; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_150; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_151; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_152; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_153; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_154; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_155; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_156; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_157; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_158; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_159; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_160; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_161; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_162; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_163; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_164; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_165; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_166; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_167; // @[encoder.scala 128:27:@2181.12]
  wire [7:0] _GEN_168; // @[encoder.scala 128:27:@2181.12]
  wire [5:0] _GEN_169; // @[encoder.scala 133:25:@2188.14]
  wire [2:0] _GEN_170; // @[encoder.scala 133:25:@2188.14]
  wire [5:0] _GEN_171; // @[encoder.scala 132:29:@2186.12]
  wire [2:0] _GEN_172; // @[encoder.scala 132:29:@2186.12]
  wire  _T_756; // @[Conditional.scala 37:30:@2200.12]
  wire [7:0] _GEN_174; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_175; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_176; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_177; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_178; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_179; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_180; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_181; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_182; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_183; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_184; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_185; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_186; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_187; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_188; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_189; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_190; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_191; // @[encoder.scala 142:27:@2204.14]
  wire [7:0] _GEN_192; // @[encoder.scala 142:27:@2204.14]
  wire  _T_773; // @[encoder.scala 150:41:@2217.18]
  wire [5:0] _GEN_193; // @[encoder.scala 150:62:@2218.18]
  wire [2:0] _GEN_194; // @[encoder.scala 150:62:@2218.18]
  wire [5:0] _GEN_195; // @[encoder.scala 147:25:@2210.16]
  wire [2:0] _GEN_196; // @[encoder.scala 147:25:@2210.16]
  wire [5:0] _GEN_197; // @[encoder.scala 146:29:@2208.14]
  wire [2:0] _GEN_198; // @[encoder.scala 146:29:@2208.14]
  wire  _T_775; // @[Conditional.scala 37:30:@2229.14]
  wire [2:0] _T_780; // @[:@2232.16]
  wire [7:0] _GEN_200; // @[encoder.scala 161:27:@2233.16]
  wire [7:0] _GEN_201; // @[encoder.scala 161:27:@2233.16]
  wire [7:0] _GEN_202; // @[encoder.scala 161:27:@2233.16]
  wire [7:0] _GEN_203; // @[encoder.scala 161:27:@2233.16]
  wire [7:0] _GEN_204; // @[encoder.scala 161:27:@2233.16]
  wire [2:0] _GEN_206; // @[encoder.scala 166:25:@2239.18]
  wire [2:0] _GEN_208; // @[encoder.scala 165:29:@2237.16]
  wire  _T_791; // @[Conditional.scala 37:30:@2251.16]
  wire  _T_793; // @[encoder.scala 176:23:@2255.18]
  wire  _T_796; // @[encoder.scala 176:43:@2257.18]
  wire  _T_797; // @[encoder.scala 180:34:@2260.18]
  wire [2:0] _GEN_209; // @[encoder.scala 180:47:@2261.18]
  wire  _T_798; // @[Conditional.scala 37:30:@2266.18]
  wire [2:0] _GEN_210; // @[encoder.scala 187:35:@2269.20]
  wire [2:0] _GEN_212; // @[Conditional.scala 39:67:@2267.18]
  wire  _GEN_213; // @[Conditional.scala 39:67:@2252.16]
  wire [7:0] _GEN_214; // @[Conditional.scala 39:67:@2252.16]
  wire  _GEN_215; // @[Conditional.scala 39:67:@2252.16]
  wire  _GEN_216; // @[Conditional.scala 39:67:@2252.16]
  wire [2:0] _GEN_217; // @[Conditional.scala 39:67:@2252.16]
  wire [7:0] _GEN_218; // @[Conditional.scala 39:67:@2230.14]
  wire  _GEN_219; // @[Conditional.scala 39:67:@2230.14]
  wire  _GEN_220; // @[Conditional.scala 39:67:@2230.14]
  wire [5:0] _GEN_221; // @[Conditional.scala 39:67:@2230.14]
  wire [2:0] _GEN_222; // @[Conditional.scala 39:67:@2230.14]
  wire  _GEN_223; // @[Conditional.scala 39:67:@2230.14]
  wire [7:0] _GEN_224; // @[Conditional.scala 39:67:@2201.12]
  wire  _GEN_225; // @[Conditional.scala 39:67:@2201.12]
  wire  _GEN_226; // @[Conditional.scala 39:67:@2201.12]
  wire [5:0] _GEN_227; // @[Conditional.scala 39:67:@2201.12]
  wire [2:0] _GEN_228; // @[Conditional.scala 39:67:@2201.12]
  wire  _GEN_229; // @[Conditional.scala 39:67:@2201.12]
  wire [7:0] _GEN_230; // @[Conditional.scala 39:67:@2178.10]
  wire  _GEN_231; // @[Conditional.scala 39:67:@2178.10]
  wire  _GEN_232; // @[Conditional.scala 39:67:@2178.10]
  wire [5:0] _GEN_233; // @[Conditional.scala 39:67:@2178.10]
  wire [2:0] _GEN_234; // @[Conditional.scala 39:67:@2178.10]
  wire  _GEN_235; // @[Conditional.scala 39:67:@2178.10]
  wire [7:0] _GEN_236; // @[Conditional.scala 39:67:@2150.8]
  wire  _GEN_237; // @[Conditional.scala 39:67:@2150.8]
  wire [5:0] _GEN_238; // @[Conditional.scala 39:67:@2150.8]
  wire [2:0] _GEN_239; // @[Conditional.scala 39:67:@2150.8]
  wire  _GEN_240; // @[Conditional.scala 39:67:@2150.8]
  wire  _GEN_241; // @[Conditional.scala 39:67:@2150.8]
  wire [7:0] _GEN_242; // @[Conditional.scala 39:67:@2119.6]
  wire  _GEN_243; // @[Conditional.scala 39:67:@2119.6]
  wire  _GEN_244; // @[Conditional.scala 39:67:@2119.6]
  wire [5:0] _GEN_245; // @[Conditional.scala 39:67:@2119.6]
  wire [2:0] _GEN_246; // @[Conditional.scala 39:67:@2119.6]
  wire [2:0] _GEN_247; // @[Conditional.scala 39:67:@2119.6]
  wire  _GEN_248; // @[Conditional.scala 39:67:@2119.6]
  wire [2:0] _GEN_284; // @[Conditional.scala 40:58:@2059.4]
  wire [2:0] _GEN_285; // @[Conditional.scala 40:58:@2059.4]
  wire [5:0] _GEN_286; // @[Conditional.scala 40:58:@2059.4]
  assign _T_82 = {sending_packet_arp_htype,sending_packet_arp_ptype,sending_packet_arp_hlen,sending_packet_arp_plen,sending_packet_arp_oper,sending_packet_arp_sha,sending_packet_arp_spa,sending_packet_arp_tha,sending_packet_arp_tpa}; // @[encoder.scala 38:36:@1719.4]
  assign arpView_0 = _T_82[7:0]; // @[encoder.scala 38:51:@1723.4]
  assign arpView_1 = _T_82[15:8]; // @[encoder.scala 38:51:@1725.4]
  assign arpView_2 = _T_82[23:16]; // @[encoder.scala 38:51:@1727.4]
  assign arpView_3 = _T_82[31:24]; // @[encoder.scala 38:51:@1729.4]
  assign arpView_4 = _T_82[39:32]; // @[encoder.scala 38:51:@1731.4]
  assign arpView_5 = _T_82[47:40]; // @[encoder.scala 38:51:@1733.4]
  assign arpView_6 = _T_82[55:48]; // @[encoder.scala 38:51:@1735.4]
  assign arpView_7 = _T_82[63:56]; // @[encoder.scala 38:51:@1737.4]
  assign arpView_8 = _T_82[71:64]; // @[encoder.scala 38:51:@1739.4]
  assign arpView_9 = _T_82[79:72]; // @[encoder.scala 38:51:@1741.4]
  assign arpView_10 = _T_82[87:80]; // @[encoder.scala 38:51:@1743.4]
  assign arpView_11 = _T_82[95:88]; // @[encoder.scala 38:51:@1745.4]
  assign arpView_12 = _T_82[103:96]; // @[encoder.scala 38:51:@1747.4]
  assign arpView_13 = _T_82[111:104]; // @[encoder.scala 38:51:@1749.4]
  assign arpView_14 = _T_82[119:112]; // @[encoder.scala 38:51:@1751.4]
  assign arpView_15 = _T_82[127:120]; // @[encoder.scala 38:51:@1753.4]
  assign arpView_16 = _T_82[135:128]; // @[encoder.scala 38:51:@1755.4]
  assign arpView_17 = _T_82[143:136]; // @[encoder.scala 38:51:@1757.4]
  assign arpView_18 = _T_82[151:144]; // @[encoder.scala 38:51:@1759.4]
  assign arpView_19 = _T_82[159:152]; // @[encoder.scala 38:51:@1761.4]
  assign arpView_20 = _T_82[167:160]; // @[encoder.scala 38:51:@1763.4]
  assign arpView_21 = _T_82[175:168]; // @[encoder.scala 38:51:@1765.4]
  assign arpView_22 = _T_82[183:176]; // @[encoder.scala 38:51:@1767.4]
  assign arpView_23 = _T_82[191:184]; // @[encoder.scala 38:51:@1769.4]
  assign arpView_24 = _T_82[199:192]; // @[encoder.scala 38:51:@1771.4]
  assign arpView_25 = _T_82[207:200]; // @[encoder.scala 38:51:@1773.4]
  assign arpView_26 = _T_82[215:208]; // @[encoder.scala 38:51:@1775.4]
  assign arpView_27 = _T_82[223:216]; // @[encoder.scala 38:51:@1777.4]
  assign _T_210 = {sending_packet_ip_foff,sending_packet_ip_ttl,sending_packet_ip_proto,sending_packet_ip_chksum,sending_packet_ip_src,sending_packet_ip_dest}; // @[encoder.scala 39:34:@1783.4]
  assign _T_217 = {sending_packet_ip_version,sending_packet_ip_ihl,sending_packet_ip_dscp,sending_packet_ip_ecn,sending_packet_ip_len,sending_packet_ip_id,sending_packet_ip_flags,_T_210}; // @[encoder.scala 39:34:@1790.4]
  assign ipView_0 = _T_217[7:0]; // @[encoder.scala 39:49:@1794.4]
  assign ipView_1 = _T_217[15:8]; // @[encoder.scala 39:49:@1796.4]
  assign ipView_2 = _T_217[23:16]; // @[encoder.scala 39:49:@1798.4]
  assign ipView_3 = _T_217[31:24]; // @[encoder.scala 39:49:@1800.4]
  assign ipView_4 = _T_217[39:32]; // @[encoder.scala 39:49:@1802.4]
  assign ipView_5 = _T_217[47:40]; // @[encoder.scala 39:49:@1804.4]
  assign ipView_6 = _T_217[55:48]; // @[encoder.scala 39:49:@1806.4]
  assign ipView_7 = _T_217[63:56]; // @[encoder.scala 39:49:@1808.4]
  assign ipView_8 = _T_217[71:64]; // @[encoder.scala 39:49:@1810.4]
  assign ipView_9 = _T_217[79:72]; // @[encoder.scala 39:49:@1812.4]
  assign ipView_10 = _T_217[87:80]; // @[encoder.scala 39:49:@1814.4]
  assign ipView_11 = _T_217[95:88]; // @[encoder.scala 39:49:@1816.4]
  assign ipView_12 = _T_217[103:96]; // @[encoder.scala 39:49:@1818.4]
  assign ipView_13 = _T_217[111:104]; // @[encoder.scala 39:49:@1820.4]
  assign ipView_14 = _T_217[119:112]; // @[encoder.scala 39:49:@1822.4]
  assign ipView_15 = _T_217[127:120]; // @[encoder.scala 39:49:@1824.4]
  assign ipView_16 = _T_217[135:128]; // @[encoder.scala 39:49:@1826.4]
  assign ipView_17 = _T_217[143:136]; // @[encoder.scala 39:49:@1828.4]
  assign ipView_18 = _T_217[151:144]; // @[encoder.scala 39:49:@1830.4]
  assign ipView_19 = _T_217[159:152]; // @[encoder.scala 39:49:@1832.4]
  assign _T_311 = {sending_packet_icmp_id,sending_packet_icmp_checksum,sending_packet_icmp_code,sending_packet_icmp_imcpType}; // @[encoder.scala 40:38:@1836.4]
  assign icmpView_0 = _T_311[7:0]; // @[encoder.scala 40:53:@1840.4]
  assign icmpView_1 = _T_311[15:8]; // @[encoder.scala 40:53:@1842.4]
  assign icmpView_2 = _T_311[23:16]; // @[encoder.scala 40:53:@1844.4]
  assign icmpView_3 = _T_311[31:24]; // @[encoder.scala 40:53:@1846.4]
  assign icmpView_4 = _T_311[39:32]; // @[encoder.scala 40:53:@1848.4]
  assign icmpView_5 = _T_311[47:40]; // @[encoder.scala 40:53:@1850.4]
  assign _T_353 = sending_packet_eth_pactype == 2'h1; // @[pactype.scala 27:12:@1855.4]
  assign _T_355 = sending_packet_eth_pactype == 2'h2; // @[pactype.scala 29:19:@1860.6]
  assign _GEN_0 = _T_355 ? 16'h806 : 16'h0; // @[pactype.scala 29:36:@1861.6]
  assign _GEN_1 = _T_353 ? 16'h800 : _GEN_0; // @[pactype.scala 27:30:@1856.4]
  assign _T_350 = {{5'd0}, sending_packet_eth_vlan}; // @[eth.scala 17:18:@1852.4 eth.scala 17:18:@1853.4]
  assign _T_361 = {sending_packet_eth_dest,sending_packet_eth_sender,24'h810000,_T_350,_GEN_1}; // @[Cat.scala 30:58:@1870.4]
  assign headerView_0 = _T_361[7:0]; // @[eth.scala 21:44:@1874.4]
  assign headerView_1 = _T_361[15:8]; // @[eth.scala 21:44:@1876.4]
  assign headerView_2 = _T_361[23:16]; // @[eth.scala 21:44:@1878.4]
  assign headerView_3 = _T_361[31:24]; // @[eth.scala 21:44:@1880.4]
  assign headerView_4 = _T_361[39:32]; // @[eth.scala 21:44:@1882.4]
  assign headerView_5 = _T_361[47:40]; // @[eth.scala 21:44:@1884.4]
  assign headerView_6 = _T_361[55:48]; // @[eth.scala 21:44:@1886.4]
  assign headerView_7 = _T_361[63:56]; // @[eth.scala 21:44:@1888.4]
  assign headerView_8 = _T_361[71:64]; // @[eth.scala 21:44:@1890.4]
  assign headerView_9 = _T_361[79:72]; // @[eth.scala 21:44:@1892.4]
  assign headerView_10 = _T_361[87:80]; // @[eth.scala 21:44:@1894.4]
  assign headerView_11 = _T_361[95:88]; // @[eth.scala 21:44:@1896.4]
  assign headerView_12 = _T_361[103:96]; // @[eth.scala 21:44:@1898.4]
  assign headerView_13 = _T_361[111:104]; // @[eth.scala 21:44:@1900.4]
  assign headerView_14 = _T_361[119:112]; // @[eth.scala 21:44:@1902.4]
  assign headerView_15 = _T_361[127:120]; // @[eth.scala 21:44:@1904.4]
  assign headerView_16 = _T_361[135:128]; // @[eth.scala 21:44:@1906.4]
  assign headerView_17 = _T_361[143:136]; // @[eth.scala 21:44:@1908.4]
  assign _GEN_3 = 3'h1 == port ? 48'h1 : 48'h0; // @[encoder.scala 67:17:@1932.4]
  assign _GEN_4 = 3'h2 == port ? 48'h2 : _GEN_3; // @[encoder.scala 67:17:@1932.4]
  assign _GEN_5 = 3'h3 == port ? 48'h3 : _GEN_4; // @[encoder.scala 67:17:@1932.4]
  assign arpEth_sender = 3'h4 == port ? 48'h4 : _GEN_5; // @[encoder.scala 67:17:@1932.4]
  assign _GEN_8 = 3'h1 == port ? 32'ha000101 : 32'ha010001; // @[encoder.scala 69:14:@1934.4]
  assign _GEN_9 = 3'h2 == port ? 32'ha000201 : _GEN_8; // @[encoder.scala 69:14:@1934.4]
  assign _GEN_10 = 3'h3 == port ? 32'ha000301 : _GEN_9; // @[encoder.scala 69:14:@1934.4]
  assign arpReq_spa = 3'h4 == port ? 32'ha000401 : _GEN_10; // @[encoder.scala 69:14:@1934.4]
  assign _T_466 = {{5'd0}, port}; // @[eth.scala 17:18:@1935.4 eth.scala 17:18:@1936.4]
  assign _T_486 = {48'hffffffffffff,arpEth_sender,24'h810000,_T_466,16'h806,64'h1080006040001,arpEth_sender,arpReq_spa,48'h0,sending_forward_nextHop}; // @[Cat.scala 30:58:@1962.4]
  assign arpMissPayload_0 = _T_486[7:0]; // @[encoder.scala 71:70:@1966.4]
  assign arpMissPayload_1 = _T_486[15:8]; // @[encoder.scala 71:70:@1968.4]
  assign arpMissPayload_2 = _T_486[23:16]; // @[encoder.scala 71:70:@1970.4]
  assign arpMissPayload_3 = _T_486[31:24]; // @[encoder.scala 71:70:@1972.4]
  assign arpMissPayload_4 = _T_486[39:32]; // @[encoder.scala 71:70:@1974.4]
  assign arpMissPayload_5 = _T_486[47:40]; // @[encoder.scala 71:70:@1976.4]
  assign arpMissPayload_6 = _T_486[55:48]; // @[encoder.scala 71:70:@1978.4]
  assign arpMissPayload_7 = _T_486[63:56]; // @[encoder.scala 71:70:@1980.4]
  assign arpMissPayload_8 = _T_486[71:64]; // @[encoder.scala 71:70:@1982.4]
  assign arpMissPayload_9 = _T_486[79:72]; // @[encoder.scala 71:70:@1984.4]
  assign arpMissPayload_10 = _T_486[87:80]; // @[encoder.scala 71:70:@1986.4]
  assign arpMissPayload_11 = _T_486[95:88]; // @[encoder.scala 71:70:@1988.4]
  assign arpMissPayload_12 = _T_486[103:96]; // @[encoder.scala 71:70:@1990.4]
  assign arpMissPayload_13 = _T_486[111:104]; // @[encoder.scala 71:70:@1992.4]
  assign arpMissPayload_14 = _T_486[119:112]; // @[encoder.scala 71:70:@1994.4]
  assign arpMissPayload_15 = _T_486[127:120]; // @[encoder.scala 71:70:@1996.4]
  assign arpMissPayload_16 = _T_486[135:128]; // @[encoder.scala 71:70:@1998.4]
  assign arpMissPayload_17 = _T_486[143:136]; // @[encoder.scala 71:70:@2000.4]
  assign arpMissPayload_18 = _T_486[151:144]; // @[encoder.scala 71:70:@2002.4]
  assign arpMissPayload_19 = _T_486[159:152]; // @[encoder.scala 71:70:@2004.4]
  assign arpMissPayload_20 = _T_486[167:160]; // @[encoder.scala 71:70:@2006.4]
  assign arpMissPayload_21 = _T_486[175:168]; // @[encoder.scala 71:70:@2008.4]
  assign arpMissPayload_22 = _T_486[183:176]; // @[encoder.scala 71:70:@2010.4]
  assign arpMissPayload_23 = _T_486[191:184]; // @[encoder.scala 71:70:@2012.4]
  assign arpMissPayload_24 = _T_486[199:192]; // @[encoder.scala 71:70:@2014.4]
  assign arpMissPayload_25 = _T_486[207:200]; // @[encoder.scala 71:70:@2016.4]
  assign arpMissPayload_26 = _T_486[215:208]; // @[encoder.scala 71:70:@2018.4]
  assign arpMissPayload_27 = _T_486[223:216]; // @[encoder.scala 71:70:@2020.4]
  assign arpMissPayload_28 = _T_486[231:224]; // @[encoder.scala 71:70:@2022.4]
  assign arpMissPayload_29 = _T_486[239:232]; // @[encoder.scala 71:70:@2024.4]
  assign arpMissPayload_30 = _T_486[247:240]; // @[encoder.scala 71:70:@2026.4]
  assign arpMissPayload_31 = _T_486[255:248]; // @[encoder.scala 71:70:@2028.4]
  assign arpMissPayload_32 = _T_486[263:256]; // @[encoder.scala 71:70:@2030.4]
  assign arpMissPayload_33 = _T_486[271:264]; // @[encoder.scala 71:70:@2032.4]
  assign arpMissPayload_34 = _T_486[279:272]; // @[encoder.scala 71:70:@2034.4]
  assign arpMissPayload_35 = _T_486[287:280]; // @[encoder.scala 71:70:@2036.4]
  assign arpMissPayload_36 = _T_486[295:288]; // @[encoder.scala 71:70:@2038.4]
  assign arpMissPayload_37 = _T_486[303:296]; // @[encoder.scala 71:70:@2040.4]
  assign arpMissPayload_38 = _T_486[311:304]; // @[encoder.scala 71:70:@2042.4]
  assign arpMissPayload_39 = _T_486[319:312]; // @[encoder.scala 71:70:@2044.4]
  assign arpMissPayload_40 = _T_486[327:320]; // @[encoder.scala 71:70:@2046.4]
  assign arpMissPayload_41 = _T_486[335:328]; // @[encoder.scala 71:70:@2048.4]
  assign arpMissPayload_42 = _T_486[343:336]; // @[encoder.scala 71:70:@2050.4]
  assign arpMissPayload_43 = _T_486[351:344]; // @[encoder.scala 71:70:@2052.4]
  assign arpMissPayload_44 = _T_486[359:352]; // @[encoder.scala 71:70:@2054.4]
  assign arpMissPayload_45 = _T_486[367:360]; // @[encoder.scala 71:70:@2056.4]
  assign _T_682 = 3'h0 == state; // @[Conditional.scala 37:30:@2058.4]
  assign _T_684 = io_pause == 1'h0; // @[encoder.scala 75:12:@2060.6]
  assign _T_685 = io_status == 2'h1; // @[encoder.scala 75:35:@2061.6]
  assign _T_686 = _T_684 & _T_685; // @[encoder.scala 75:22:@2062.6]
  assign _T_687 = io_input_packet_eth_pactype != 2'h2; // @[encoder.scala 77:42:@2099.8]
  assign _T_689 = io_input_arp_found == 1'h0; // @[encoder.scala 77:61:@2100.8]
  assign _T_690 = _T_687 & _T_689; // @[encoder.scala 77:58:@2101.8]
  assign _GEN_15 = 3'h1 == io_input_packet_eth_vlan ? 48'h1 : 48'h0; // @[encoder.scala 82:41:@2109.10]
  assign _GEN_16 = 3'h2 == io_input_packet_eth_vlan ? 48'h2 : _GEN_15; // @[encoder.scala 82:41:@2109.10]
  assign _GEN_17 = 3'h3 == io_input_packet_eth_vlan ? 48'h3 : _GEN_16; // @[encoder.scala 82:41:@2109.10]
  assign _GEN_18 = 3'h4 == io_input_packet_eth_vlan ? 48'h4 : _GEN_17; // @[encoder.scala 82:41:@2109.10]
  assign _T_695 = io_input_packet_eth_sender == _GEN_18; // @[encoder.scala 82:41:@2109.10]
  assign _T_696 = _T_687 | _T_695; // @[encoder.scala 82:11:@2110.10]
  assign _GEN_19 = _T_696 ? 3'h1 : state; // @[encoder.scala 83:11:@2111.10]
  assign _GEN_20 = _T_696 ? 6'h11 : cnt; // @[encoder.scala 83:11:@2111.10]
  assign _GEN_21 = _T_690 ? 3'h6 : _GEN_19; // @[encoder.scala 77:82:@2102.8]
  assign _GEN_22 = _T_690 ? 3'h1 : port; // @[encoder.scala 77:82:@2102.8]
  assign _GEN_23 = _T_690 ? 6'h2d : _GEN_20; // @[encoder.scala 77:82:@2102.8]
  assign _GEN_24 = _T_686 ? io_input_packet_icmp_imcpType : sending_packet_icmp_imcpType; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_25 = _T_686 ? io_input_packet_icmp_code : sending_packet_icmp_code; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_26 = _T_686 ? io_input_packet_icmp_checksum : sending_packet_icmp_checksum; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_27 = _T_686 ? io_input_packet_icmp_id : sending_packet_icmp_id; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_28 = _T_686 ? io_input_packet_ip_dest : sending_packet_ip_dest; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_29 = _T_686 ? io_input_packet_ip_src : sending_packet_ip_src; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_30 = _T_686 ? io_input_packet_ip_chksum : sending_packet_ip_chksum; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_31 = _T_686 ? io_input_packet_ip_proto : sending_packet_ip_proto; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_32 = _T_686 ? io_input_packet_ip_ttl : sending_packet_ip_ttl; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_33 = _T_686 ? io_input_packet_ip_foff : sending_packet_ip_foff; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_34 = _T_686 ? io_input_packet_ip_flags : sending_packet_ip_flags; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_35 = _T_686 ? io_input_packet_ip_id : sending_packet_ip_id; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_36 = _T_686 ? io_input_packet_ip_len : sending_packet_ip_len; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_37 = _T_686 ? io_input_packet_ip_ecn : sending_packet_ip_ecn; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_38 = _T_686 ? io_input_packet_ip_dscp : sending_packet_ip_dscp; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_39 = _T_686 ? io_input_packet_ip_ihl : sending_packet_ip_ihl; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_40 = _T_686 ? io_input_packet_ip_version : sending_packet_ip_version; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_41 = _T_686 ? io_input_packet_arp_tpa : sending_packet_arp_tpa; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_42 = _T_686 ? io_input_packet_arp_tha : sending_packet_arp_tha; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_43 = _T_686 ? io_input_packet_arp_spa : sending_packet_arp_spa; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_44 = _T_686 ? io_input_packet_arp_sha : sending_packet_arp_sha; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_45 = _T_686 ? io_input_packet_arp_oper : sending_packet_arp_oper; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_46 = _T_686 ? io_input_packet_arp_plen : sending_packet_arp_plen; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_47 = _T_686 ? io_input_packet_arp_hlen : sending_packet_arp_hlen; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_48 = _T_686 ? io_input_packet_arp_ptype : sending_packet_arp_ptype; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_49 = _T_686 ? io_input_packet_arp_htype : sending_packet_arp_htype; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_50 = _T_686 ? io_input_packet_eth_vlan : sending_packet_eth_vlan; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_51 = _T_686 ? io_input_packet_eth_pactype : sending_packet_eth_pactype; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_52 = _T_686 ? io_input_packet_eth_sender : sending_packet_eth_sender; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_53 = _T_686 ? io_input_packet_eth_dest : sending_packet_eth_dest; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_54 = _T_686 ? io_input_forward_nextHop : sending_forward_nextHop; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_59 = _T_686 ? _GEN_21 : state; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_60 = _T_686 ? _GEN_22 : port; // @[encoder.scala 75:54:@2063.6]
  assign _GEN_61 = _T_686 ? _GEN_23 : cnt; // @[encoder.scala 75:54:@2063.6]
  assign _T_698 = 3'h6 == state; // @[Conditional.scala 37:30:@2118.6]
  assign _GEN_63 = 6'h1 == cnt ? arpMissPayload_1 : arpMissPayload_0; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_64 = 6'h2 == cnt ? arpMissPayload_2 : _GEN_63; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_65 = 6'h3 == cnt ? arpMissPayload_3 : _GEN_64; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_66 = 6'h4 == cnt ? arpMissPayload_4 : _GEN_65; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_67 = 6'h5 == cnt ? arpMissPayload_5 : _GEN_66; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_68 = 6'h6 == cnt ? arpMissPayload_6 : _GEN_67; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_69 = 6'h7 == cnt ? arpMissPayload_7 : _GEN_68; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_70 = 6'h8 == cnt ? arpMissPayload_8 : _GEN_69; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_71 = 6'h9 == cnt ? arpMissPayload_9 : _GEN_70; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_72 = 6'ha == cnt ? arpMissPayload_10 : _GEN_71; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_73 = 6'hb == cnt ? arpMissPayload_11 : _GEN_72; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_74 = 6'hc == cnt ? arpMissPayload_12 : _GEN_73; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_75 = 6'hd == cnt ? arpMissPayload_13 : _GEN_74; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_76 = 6'he == cnt ? arpMissPayload_14 : _GEN_75; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_77 = 6'hf == cnt ? arpMissPayload_15 : _GEN_76; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_78 = 6'h10 == cnt ? arpMissPayload_16 : _GEN_77; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_79 = 6'h11 == cnt ? arpMissPayload_17 : _GEN_78; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_80 = 6'h12 == cnt ? arpMissPayload_18 : _GEN_79; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_81 = 6'h13 == cnt ? arpMissPayload_19 : _GEN_80; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_82 = 6'h14 == cnt ? arpMissPayload_20 : _GEN_81; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_83 = 6'h15 == cnt ? arpMissPayload_21 : _GEN_82; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_84 = 6'h16 == cnt ? arpMissPayload_22 : _GEN_83; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_85 = 6'h17 == cnt ? arpMissPayload_23 : _GEN_84; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_86 = 6'h18 == cnt ? arpMissPayload_24 : _GEN_85; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_87 = 6'h19 == cnt ? arpMissPayload_25 : _GEN_86; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_88 = 6'h1a == cnt ? arpMissPayload_26 : _GEN_87; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_89 = 6'h1b == cnt ? arpMissPayload_27 : _GEN_88; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_90 = 6'h1c == cnt ? arpMissPayload_28 : _GEN_89; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_91 = 6'h1d == cnt ? arpMissPayload_29 : _GEN_90; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_92 = 6'h1e == cnt ? arpMissPayload_30 : _GEN_91; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_93 = 6'h1f == cnt ? arpMissPayload_31 : _GEN_92; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_94 = 6'h20 == cnt ? arpMissPayload_32 : _GEN_93; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_95 = 6'h21 == cnt ? arpMissPayload_33 : _GEN_94; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_96 = 6'h22 == cnt ? arpMissPayload_34 : _GEN_95; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_97 = 6'h23 == cnt ? arpMissPayload_35 : _GEN_96; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_98 = 6'h24 == cnt ? arpMissPayload_36 : _GEN_97; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_99 = 6'h25 == cnt ? arpMissPayload_37 : _GEN_98; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_100 = 6'h26 == cnt ? arpMissPayload_38 : _GEN_99; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_101 = 6'h27 == cnt ? arpMissPayload_39 : _GEN_100; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_102 = 6'h28 == cnt ? arpMissPayload_40 : _GEN_101; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_103 = 6'h29 == cnt ? arpMissPayload_41 : _GEN_102; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_104 = 6'h2a == cnt ? arpMissPayload_42 : _GEN_103; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_105 = 6'h2b == cnt ? arpMissPayload_43 : _GEN_104; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_106 = 6'h2c == cnt ? arpMissPayload_44 : _GEN_105; // @[encoder.scala 91:27:@2122.8]
  assign _GEN_107 = 6'h2d == cnt ? arpMissPayload_45 : _GEN_106; // @[encoder.scala 91:27:@2122.8]
  assign _T_705 = cnt == 6'h0; // @[encoder.scala 92:34:@2123.8]
  assign _T_708 = io_writer_full == 1'h0; // @[encoder.scala 95:12:@2126.8]
  assign _T_710 = cnt > 6'h0; // @[encoder.scala 96:18:@2128.10]
  assign _T_712 = cnt - 6'h1; // @[encoder.scala 97:22:@2130.12]
  assign _T_713 = $unsigned(_T_712); // @[encoder.scala 97:22:@2131.12]
  assign _T_714 = _T_713[5:0]; // @[encoder.scala 97:22:@2132.12]
  assign _T_716 = port < 3'h4; // @[encoder.scala 98:26:@2136.12]
  assign _T_719 = port + 3'h1; // @[encoder.scala 100:24:@2139.14]
  assign _T_720 = port + 3'h1; // @[encoder.scala 100:24:@2140.14]
  assign _GEN_108 = _T_716 ? 6'h2d : cnt; // @[encoder.scala 98:42:@2137.12]
  assign _GEN_109 = _T_716 ? _T_720 : port; // @[encoder.scala 98:42:@2137.12]
  assign _GEN_110 = _T_716 ? state : 3'h7; // @[encoder.scala 98:42:@2137.12]
  assign _GEN_111 = _T_710 ? _T_714 : _GEN_108; // @[encoder.scala 96:25:@2129.10]
  assign _GEN_112 = _T_710 ? port : _GEN_109; // @[encoder.scala 96:25:@2129.10]
  assign _GEN_113 = _T_710 ? state : _GEN_110; // @[encoder.scala 96:25:@2129.10]
  assign _GEN_114 = _T_708 ? _GEN_111 : cnt; // @[encoder.scala 95:29:@2127.8]
  assign _GEN_115 = _T_708 ? _GEN_112 : port; // @[encoder.scala 95:29:@2127.8]
  assign _GEN_116 = _T_708 ? _GEN_113 : state; // @[encoder.scala 95:29:@2127.8]
  assign _T_721 = 3'h1 == state; // @[Conditional.scala 37:30:@2149.8]
  assign _T_726 = cnt[4:0]; // @[:@2152.10]
  assign _GEN_118 = 5'h1 == _T_726 ? headerView_1 : headerView_0; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_119 = 5'h2 == _T_726 ? headerView_2 : _GEN_118; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_120 = 5'h3 == _T_726 ? headerView_3 : _GEN_119; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_121 = 5'h4 == _T_726 ? headerView_4 : _GEN_120; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_122 = 5'h5 == _T_726 ? headerView_5 : _GEN_121; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_123 = 5'h6 == _T_726 ? headerView_6 : _GEN_122; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_124 = 5'h7 == _T_726 ? headerView_7 : _GEN_123; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_125 = 5'h8 == _T_726 ? headerView_8 : _GEN_124; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_126 = 5'h9 == _T_726 ? headerView_9 : _GEN_125; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_127 = 5'ha == _T_726 ? headerView_10 : _GEN_126; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_128 = 5'hb == _T_726 ? headerView_11 : _GEN_127; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_129 = 5'hc == _T_726 ? headerView_12 : _GEN_128; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_130 = 5'hd == _T_726 ? headerView_13 : _GEN_129; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_131 = 5'he == _T_726 ? headerView_14 : _GEN_130; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_132 = 5'hf == _T_726 ? headerView_15 : _GEN_131; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_133 = 5'h10 == _T_726 ? headerView_16 : _GEN_132; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_134 = 5'h11 == _T_726 ? headerView_17 : _GEN_133; // @[encoder.scala 109:27:@2153.10]
  assign _GEN_135 = _T_355 ? 3'h2 : 3'h3; // @[encoder.scala 115:65:@2166.14]
  assign _GEN_136 = _T_355 ? 5'h1b : 5'h13; // @[encoder.scala 115:65:@2166.14]
  assign _GEN_137 = _T_710 ? _T_714 : {{1'd0}, _GEN_136}; // @[encoder.scala 113:25:@2158.12]
  assign _GEN_138 = _T_710 ? state : _GEN_135; // @[encoder.scala 113:25:@2158.12]
  assign _GEN_139 = _T_708 ? _GEN_137 : cnt; // @[encoder.scala 112:29:@2156.10]
  assign _GEN_140 = _T_708 ? _GEN_138 : state; // @[encoder.scala 112:29:@2156.10]
  assign _T_739 = 3'h2 == state; // @[Conditional.scala 37:30:@2177.10]
  assign _GEN_142 = 5'h1 == _T_726 ? arpView_1 : arpView_0; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_143 = 5'h2 == _T_726 ? arpView_2 : _GEN_142; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_144 = 5'h3 == _T_726 ? arpView_3 : _GEN_143; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_145 = 5'h4 == _T_726 ? arpView_4 : _GEN_144; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_146 = 5'h5 == _T_726 ? arpView_5 : _GEN_145; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_147 = 5'h6 == _T_726 ? arpView_6 : _GEN_146; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_148 = 5'h7 == _T_726 ? arpView_7 : _GEN_147; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_149 = 5'h8 == _T_726 ? arpView_8 : _GEN_148; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_150 = 5'h9 == _T_726 ? arpView_9 : _GEN_149; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_151 = 5'ha == _T_726 ? arpView_10 : _GEN_150; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_152 = 5'hb == _T_726 ? arpView_11 : _GEN_151; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_153 = 5'hc == _T_726 ? arpView_12 : _GEN_152; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_154 = 5'hd == _T_726 ? arpView_13 : _GEN_153; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_155 = 5'he == _T_726 ? arpView_14 : _GEN_154; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_156 = 5'hf == _T_726 ? arpView_15 : _GEN_155; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_157 = 5'h10 == _T_726 ? arpView_16 : _GEN_156; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_158 = 5'h11 == _T_726 ? arpView_17 : _GEN_157; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_159 = 5'h12 == _T_726 ? arpView_18 : _GEN_158; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_160 = 5'h13 == _T_726 ? arpView_19 : _GEN_159; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_161 = 5'h14 == _T_726 ? arpView_20 : _GEN_160; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_162 = 5'h15 == _T_726 ? arpView_21 : _GEN_161; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_163 = 5'h16 == _T_726 ? arpView_22 : _GEN_162; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_164 = 5'h17 == _T_726 ? arpView_23 : _GEN_163; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_165 = 5'h18 == _T_726 ? arpView_24 : _GEN_164; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_166 = 5'h19 == _T_726 ? arpView_25 : _GEN_165; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_167 = 5'h1a == _T_726 ? arpView_26 : _GEN_166; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_168 = 5'h1b == _T_726 ? arpView_27 : _GEN_167; // @[encoder.scala 128:27:@2181.12]
  assign _GEN_169 = _T_710 ? _T_714 : cnt; // @[encoder.scala 133:25:@2188.14]
  assign _GEN_170 = _T_710 ? state : 3'h0; // @[encoder.scala 133:25:@2188.14]
  assign _GEN_171 = _T_708 ? _GEN_169 : cnt; // @[encoder.scala 132:29:@2186.12]
  assign _GEN_172 = _T_708 ? _GEN_170 : state; // @[encoder.scala 132:29:@2186.12]
  assign _T_756 = 3'h3 == state; // @[Conditional.scala 37:30:@2200.12]
  assign _GEN_174 = 5'h1 == _T_726 ? ipView_1 : ipView_0; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_175 = 5'h2 == _T_726 ? ipView_2 : _GEN_174; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_176 = 5'h3 == _T_726 ? ipView_3 : _GEN_175; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_177 = 5'h4 == _T_726 ? ipView_4 : _GEN_176; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_178 = 5'h5 == _T_726 ? ipView_5 : _GEN_177; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_179 = 5'h6 == _T_726 ? ipView_6 : _GEN_178; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_180 = 5'h7 == _T_726 ? ipView_7 : _GEN_179; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_181 = 5'h8 == _T_726 ? ipView_8 : _GEN_180; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_182 = 5'h9 == _T_726 ? ipView_9 : _GEN_181; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_183 = 5'ha == _T_726 ? ipView_10 : _GEN_182; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_184 = 5'hb == _T_726 ? ipView_11 : _GEN_183; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_185 = 5'hc == _T_726 ? ipView_12 : _GEN_184; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_186 = 5'hd == _T_726 ? ipView_13 : _GEN_185; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_187 = 5'he == _T_726 ? ipView_14 : _GEN_186; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_188 = 5'hf == _T_726 ? ipView_15 : _GEN_187; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_189 = 5'h10 == _T_726 ? ipView_16 : _GEN_188; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_190 = 5'h11 == _T_726 ? ipView_17 : _GEN_189; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_191 = 5'h12 == _T_726 ? ipView_18 : _GEN_190; // @[encoder.scala 142:27:@2204.14]
  assign _GEN_192 = 5'h13 == _T_726 ? ipView_19 : _GEN_191; // @[encoder.scala 142:27:@2204.14]
  assign _T_773 = sending_packet_ip_proto == 8'h1; // @[encoder.scala 150:41:@2217.18]
  assign _GEN_193 = _T_773 ? 6'h5 : cnt; // @[encoder.scala 150:62:@2218.18]
  assign _GEN_194 = _T_773 ? 3'h4 : 3'h5; // @[encoder.scala 150:62:@2218.18]
  assign _GEN_195 = _T_710 ? _T_714 : _GEN_193; // @[encoder.scala 147:25:@2210.16]
  assign _GEN_196 = _T_710 ? state : _GEN_194; // @[encoder.scala 147:25:@2210.16]
  assign _GEN_197 = _T_708 ? _GEN_195 : cnt; // @[encoder.scala 146:29:@2208.14]
  assign _GEN_198 = _T_708 ? _GEN_196 : state; // @[encoder.scala 146:29:@2208.14]
  assign _T_775 = 3'h4 == state; // @[Conditional.scala 37:30:@2229.14]
  assign _T_780 = cnt[2:0]; // @[:@2232.16]
  assign _GEN_200 = 3'h1 == _T_780 ? icmpView_1 : icmpView_0; // @[encoder.scala 161:27:@2233.16]
  assign _GEN_201 = 3'h2 == _T_780 ? icmpView_2 : _GEN_200; // @[encoder.scala 161:27:@2233.16]
  assign _GEN_202 = 3'h3 == _T_780 ? icmpView_3 : _GEN_201; // @[encoder.scala 161:27:@2233.16]
  assign _GEN_203 = 3'h4 == _T_780 ? icmpView_4 : _GEN_202; // @[encoder.scala 161:27:@2233.16]
  assign _GEN_204 = 3'h5 == _T_780 ? icmpView_5 : _GEN_203; // @[encoder.scala 161:27:@2233.16]
  assign _GEN_206 = _T_710 ? state : 3'h5; // @[encoder.scala 166:25:@2239.18]
  assign _GEN_208 = _T_708 ? _GEN_206 : state; // @[encoder.scala 165:29:@2237.16]
  assign _T_791 = 3'h5 == state; // @[Conditional.scala 37:30:@2251.16]
  assign _T_793 = io_ipReader_empty == 1'h0; // @[encoder.scala 176:23:@2255.18]
  assign _T_796 = _T_793 & _T_708; // @[encoder.scala 176:43:@2257.18]
  assign _T_797 = io_ipReader_data_last & _T_796; // @[encoder.scala 180:34:@2260.18]
  assign _GEN_209 = _T_797 ? 3'h0 : state; // @[encoder.scala 180:47:@2261.18]
  assign _T_798 = 3'h7 == state; // @[Conditional.scala 37:30:@2266.18]
  assign _GEN_210 = io_ipReader_data_last ? 3'h0 : state; // @[encoder.scala 187:35:@2269.20]
  assign _GEN_212 = _T_798 ? _GEN_210 : state; // @[Conditional.scala 39:67:@2267.18]
  assign _GEN_213 = _T_791 ? io_ipReader_data_last : 1'h0; // @[Conditional.scala 39:67:@2252.16]
  assign _GEN_214 = _T_791 ? io_ipReader_data_data : 8'h0; // @[Conditional.scala 39:67:@2252.16]
  assign _GEN_215 = _T_791 ? _T_796 : 1'h0; // @[Conditional.scala 39:67:@2252.16]
  assign _GEN_216 = _T_791 ? _T_796 : _T_798; // @[Conditional.scala 39:67:@2252.16]
  assign _GEN_217 = _T_791 ? _GEN_209 : _GEN_212; // @[Conditional.scala 39:67:@2252.16]
  assign _GEN_218 = _T_775 ? _GEN_204 : _GEN_214; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_219 = _T_775 ? 1'h0 : _GEN_213; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_220 = _T_775 ? 1'h1 : _GEN_215; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_221 = _T_775 ? _GEN_171 : cnt; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_222 = _T_775 ? _GEN_208 : _GEN_217; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_223 = _T_775 ? 1'h0 : _GEN_216; // @[Conditional.scala 39:67:@2230.14]
  assign _GEN_224 = _T_756 ? _GEN_192 : _GEN_218; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_225 = _T_756 ? 1'h0 : _GEN_219; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_226 = _T_756 ? 1'h1 : _GEN_220; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_227 = _T_756 ? _GEN_197 : _GEN_221; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_228 = _T_756 ? _GEN_198 : _GEN_222; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_229 = _T_756 ? 1'h0 : _GEN_223; // @[Conditional.scala 39:67:@2201.12]
  assign _GEN_230 = _T_739 ? _GEN_168 : _GEN_224; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_231 = _T_739 ? _T_705 : _GEN_225; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_232 = _T_739 ? 1'h1 : _GEN_226; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_233 = _T_739 ? _GEN_171 : _GEN_227; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_234 = _T_739 ? _GEN_172 : _GEN_228; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_235 = _T_739 ? 1'h0 : _GEN_229; // @[Conditional.scala 39:67:@2178.10]
  assign _GEN_236 = _T_721 ? _GEN_134 : _GEN_230; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_237 = _T_721 ? 1'h1 : _GEN_232; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_238 = _T_721 ? _GEN_139 : _GEN_233; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_239 = _T_721 ? _GEN_140 : _GEN_234; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_240 = _T_721 ? 1'h0 : _GEN_231; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_241 = _T_721 ? 1'h0 : _GEN_235; // @[Conditional.scala 39:67:@2150.8]
  assign _GEN_242 = _T_698 ? _GEN_107 : _GEN_236; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_243 = _T_698 ? _T_705 : _GEN_240; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_244 = _T_698 ? 1'h1 : _GEN_237; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_245 = _T_698 ? _GEN_114 : _GEN_238; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_246 = _T_698 ? _GEN_115 : port; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_247 = _T_698 ? _GEN_116 : _GEN_239; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_248 = _T_698 ? 1'h0 : _GEN_241; // @[Conditional.scala 39:67:@2119.6]
  assign _GEN_284 = _T_682 ? _GEN_59 : _GEN_247; // @[Conditional.scala 40:58:@2059.4]
  assign _GEN_285 = _T_682 ? _GEN_60 : _GEN_246; // @[Conditional.scala 40:58:@2059.4]
  assign _GEN_286 = _T_682 ? _GEN_61 : _GEN_245; // @[Conditional.scala 40:58:@2059.4]
  assign io_stall = state != 3'h0; // @[encoder.scala 191:12:@2274.4]
  assign io_writer_clk = clock; // @[encoder.scala 49:17:@1917.4]
  assign io_writer_en = _T_682 ? 1'h0 : _GEN_244; // @[encoder.scala 48:16:@1916.4 encoder.scala 93:20:@2125.8 encoder.scala 110:20:@2154.10 encoder.scala 130:20:@2184.12 encoder.scala 144:20:@2206.14 encoder.scala 163:20:@2235.16 encoder.scala 177:20:@2258.18]
  assign io_writer_data_data = _T_682 ? 8'h0 : _GEN_242; // @[encoder.scala 47:23:@1915.4 encoder.scala 91:27:@2122.8 encoder.scala 109:27:@2153.10 encoder.scala 128:27:@2181.12 encoder.scala 142:27:@2204.14 encoder.scala 161:27:@2233.16 encoder.scala 175:22:@2254.18]
  assign io_writer_data_last = _T_682 ? 1'h0 : _GEN_243; // @[encoder.scala 46:23:@1912.4 encoder.scala 92:27:@2124.8 encoder.scala 129:27:@2183.12 encoder.scala 143:27:@2205.14 encoder.scala 162:27:@2234.16 encoder.scala 175:22:@2253.18]
  assign io_ipReader_clk = clock; // @[encoder.scala 43:19:@1910.4]
  assign io_ipReader_en = _T_682 ? 1'h0 : _GEN_248; // @[encoder.scala 44:18:@1911.4 encoder.scala 178:22:@2259.18 encoder.scala 186:22:@2268.20]
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
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      #0.002 begin end
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  cnt = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  state = _RAND_1[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  sending_forward_nextHop = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  sending_packet_eth_dest = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  sending_packet_eth_sender = _RAND_4[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sending_packet_eth_pactype = _RAND_5[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sending_packet_eth_vlan = _RAND_6[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  sending_packet_arp_htype = _RAND_7[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  sending_packet_arp_ptype = _RAND_8[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  sending_packet_arp_hlen = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  sending_packet_arp_plen = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  sending_packet_arp_oper = _RAND_11[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  sending_packet_arp_sha = _RAND_12[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  sending_packet_arp_spa = _RAND_13[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  sending_packet_arp_tha = _RAND_14[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  sending_packet_arp_tpa = _RAND_15[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  sending_packet_ip_version = _RAND_16[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  sending_packet_ip_ihl = _RAND_17[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  sending_packet_ip_dscp = _RAND_18[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  sending_packet_ip_ecn = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sending_packet_ip_len = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sending_packet_ip_id = _RAND_21[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  sending_packet_ip_flags = _RAND_22[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  sending_packet_ip_foff = _RAND_23[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  sending_packet_ip_ttl = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  sending_packet_ip_proto = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  sending_packet_ip_chksum = _RAND_26[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  sending_packet_ip_src = _RAND_27[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  sending_packet_ip_dest = _RAND_28[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  sending_packet_icmp_id = _RAND_29[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  sending_packet_icmp_checksum = _RAND_30[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  sending_packet_icmp_code = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  sending_packet_icmp_imcpType = _RAND_32[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  port = _RAND_33[2:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 6'h0;
    end else begin
      if (_T_682) begin
        if (_T_686) begin
          if (_T_690) begin
            cnt <= 6'h2d;
          end else begin
            if (_T_696) begin
              cnt <= 6'h11;
            end
          end
        end
      end else begin
        if (_T_698) begin
          if (_T_708) begin
            if (_T_710) begin
              cnt <= _T_714;
            end else begin
              if (_T_716) begin
                cnt <= 6'h2d;
              end
            end
          end
        end else begin
          if (_T_721) begin
            if (_T_708) begin
              if (_T_710) begin
                cnt <= _T_714;
              end else begin
                cnt <= {{1'd0}, _GEN_136};
              end
            end
          end else begin
            if (_T_739) begin
              if (_T_708) begin
                if (_T_710) begin
                  cnt <= _T_714;
                end
              end
            end else begin
              if (_T_756) begin
                if (_T_708) begin
                  if (_T_710) begin
                    cnt <= _T_714;
                  end else begin
                    if (_T_773) begin
                      cnt <= 6'h5;
                    end
                  end
                end
              end else begin
                if (_T_775) begin
                  if (_T_708) begin
                    if (_T_710) begin
                      cnt <= _T_714;
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
      state <= 3'h0;
    end else begin
      if (_T_682) begin
        if (_T_686) begin
          if (_T_690) begin
            state <= 3'h6;
          end else begin
            if (_T_696) begin
              state <= 3'h1;
            end
          end
        end
      end else begin
        if (_T_698) begin
          if (_T_708) begin
            if (!(_T_710)) begin
              if (!(_T_716)) begin
                state <= 3'h7;
              end
            end
          end
        end else begin
          if (_T_721) begin
            if (_T_708) begin
              if (!(_T_710)) begin
                if (_T_355) begin
                  state <= 3'h2;
                end else begin
                  state <= 3'h3;
                end
              end
            end
          end else begin
            if (_T_739) begin
              if (_T_708) begin
                if (!(_T_710)) begin
                  state <= 3'h0;
                end
              end
            end else begin
              if (_T_756) begin
                if (_T_708) begin
                  if (!(_T_710)) begin
                    if (_T_773) begin
                      state <= 3'h4;
                    end else begin
                      state <= 3'h5;
                    end
                  end
                end
              end else begin
                if (_T_775) begin
                  if (_T_708) begin
                    if (!(_T_710)) begin
                      state <= 3'h5;
                    end
                  end
                end else begin
                  if (_T_791) begin
                    if (_T_797) begin
                      state <= 3'h0;
                    end
                  end else begin
                    if (_T_798) begin
                      if (io_ipReader_data_last) begin
                        state <= 3'h0;
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
    if (_T_682) begin
      if (_T_686) begin
        sending_forward_nextHop <= io_input_forward_nextHop;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_eth_dest <= io_input_packet_eth_dest;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_eth_sender <= io_input_packet_eth_sender;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_eth_pactype <= io_input_packet_eth_pactype;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_eth_vlan <= io_input_packet_eth_vlan;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_htype <= io_input_packet_arp_htype;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_ptype <= io_input_packet_arp_ptype;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_hlen <= io_input_packet_arp_hlen;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_plen <= io_input_packet_arp_plen;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_oper <= io_input_packet_arp_oper;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_sha <= io_input_packet_arp_sha;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_spa <= io_input_packet_arp_spa;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_tha <= io_input_packet_arp_tha;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_arp_tpa <= io_input_packet_arp_tpa;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_version <= io_input_packet_ip_version;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_ihl <= io_input_packet_ip_ihl;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_dscp <= io_input_packet_ip_dscp;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_ecn <= io_input_packet_ip_ecn;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_len <= io_input_packet_ip_len;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_id <= io_input_packet_ip_id;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_flags <= io_input_packet_ip_flags;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_foff <= io_input_packet_ip_foff;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_ttl <= io_input_packet_ip_ttl;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_proto <= io_input_packet_ip_proto;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_chksum <= io_input_packet_ip_chksum;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_src <= io_input_packet_ip_src;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_ip_dest <= io_input_packet_ip_dest;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_icmp_id <= io_input_packet_icmp_id;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_icmp_checksum <= io_input_packet_icmp_checksum;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_icmp_code <= io_input_packet_icmp_code;
      end
    end
    if (_T_682) begin
      if (_T_686) begin
        sending_packet_icmp_imcpType <= io_input_packet_icmp_imcpType;
      end
    end
    if (reset) begin
      port <= 3'h1;
    end else begin
      if (_T_682) begin
        if (_T_686) begin
          if (_T_690) begin
            port <= 3'h1;
          end
        end
      end else begin
        if (_T_698) begin
          if (_T_708) begin
            if (!(_T_710)) begin
              if (_T_716) begin
                port <= _T_720;
              end
            end
          end
        end
      end
    end
  end
endmodule
module Transmitter( // @[:@2276.2]
  input        clock, // @[:@2277.4]
  output       io_reader_clk, // @[:@2279.4]
  output       io_reader_en, // @[:@2279.4]
  input  [7:0] io_reader_data_data, // @[:@2279.4]
  input        io_reader_data_last, // @[:@2279.4]
  input        io_reader_empty, // @[:@2279.4]
  output [7:0] io_tx_tdata, // @[:@2279.4]
  output       io_tx_tvalid, // @[:@2279.4]
  output       io_tx_tlast, // @[:@2279.4]
  input        io_tx_tready // @[:@2279.4]
);
  assign io_reader_clk = clock; // @[transmitter.scala 18:17:@2286.4]
  assign io_reader_en = io_tx_tready; // @[transmitter.scala 17:16:@2285.4]
  assign io_tx_tdata = io_reader_data_data; // @[transmitter.scala 14:15:@2281.4]
  assign io_tx_tvalid = io_reader_empty == 1'h0; // @[transmitter.scala 16:16:@2284.4]
  assign io_tx_tlast = io_reader_data_last; // @[transmitter.scala 15:15:@2282.4]
endmodule
module Router( // @[:@2288.2]
  input        clock, // @[:@2289.4]
  input        reset, // @[:@2290.4]
  input        io_rx_clk, // @[:@2291.4]
  input        io_tx_clk, // @[:@2291.4]
  input  [7:0] io_rx_tdata, // @[:@2291.4]
  input        io_rx_tvalid, // @[:@2291.4]
  input        io_rx_tlast, // @[:@2291.4]
  output [7:0] io_tx_tdata, // @[:@2291.4]
  output       io_tx_tvalid, // @[:@2291.4]
  output       io_tx_tlast, // @[:@2291.4]
  input        io_tx_tready // @[:@2291.4]
);
  wire  acceptorBridge_reset; // @[router.scala 37:30:@2293.4]
  wire  acceptorBridge_io_write_clk; // @[router.scala 37:30:@2293.4]
  wire  acceptorBridge_io_write_en; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_write_data_eth_dest; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_write_data_eth_sender; // @[router.scala 37:30:@2293.4]
  wire [1:0] acceptorBridge_io_write_data_eth_pactype; // @[router.scala 37:30:@2293.4]
  wire [2:0] acceptorBridge_io_write_data_eth_vlan; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_arp_htype; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_arp_ptype; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_arp_hlen; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_arp_plen; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_arp_oper; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_write_data_arp_sha; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_write_data_arp_spa; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_write_data_arp_tha; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_write_data_arp_tpa; // @[router.scala 37:30:@2293.4]
  wire [3:0] acceptorBridge_io_write_data_ip_version; // @[router.scala 37:30:@2293.4]
  wire [3:0] acceptorBridge_io_write_data_ip_ihl; // @[router.scala 37:30:@2293.4]
  wire [5:0] acceptorBridge_io_write_data_ip_dscp; // @[router.scala 37:30:@2293.4]
  wire [1:0] acceptorBridge_io_write_data_ip_ecn; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_ip_len; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_ip_id; // @[router.scala 37:30:@2293.4]
  wire [2:0] acceptorBridge_io_write_data_ip_flags; // @[router.scala 37:30:@2293.4]
  wire [12:0] acceptorBridge_io_write_data_ip_foff; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_ip_ttl; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_ip_proto; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_ip_chksum; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_write_data_ip_src; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_write_data_ip_dest; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_icmp_id; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_write_data_icmp_checksum; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_icmp_code; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_write_data_icmp_imcpType; // @[router.scala 37:30:@2293.4]
  wire  acceptorBridge_io_read_clk; // @[router.scala 37:30:@2293.4]
  wire  acceptorBridge_io_read_en; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_read_data_eth_dest; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_read_data_eth_sender; // @[router.scala 37:30:@2293.4]
  wire [1:0] acceptorBridge_io_read_data_eth_pactype; // @[router.scala 37:30:@2293.4]
  wire [2:0] acceptorBridge_io_read_data_eth_vlan; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_arp_htype; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_arp_ptype; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_arp_hlen; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_arp_plen; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_arp_oper; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_read_data_arp_sha; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_read_data_arp_spa; // @[router.scala 37:30:@2293.4]
  wire [47:0] acceptorBridge_io_read_data_arp_tha; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_read_data_arp_tpa; // @[router.scala 37:30:@2293.4]
  wire [3:0] acceptorBridge_io_read_data_ip_version; // @[router.scala 37:30:@2293.4]
  wire [3:0] acceptorBridge_io_read_data_ip_ihl; // @[router.scala 37:30:@2293.4]
  wire [5:0] acceptorBridge_io_read_data_ip_dscp; // @[router.scala 37:30:@2293.4]
  wire [1:0] acceptorBridge_io_read_data_ip_ecn; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_ip_len; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_ip_id; // @[router.scala 37:30:@2293.4]
  wire [2:0] acceptorBridge_io_read_data_ip_flags; // @[router.scala 37:30:@2293.4]
  wire [12:0] acceptorBridge_io_read_data_ip_foff; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_ip_ttl; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_ip_proto; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_ip_chksum; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_read_data_ip_src; // @[router.scala 37:30:@2293.4]
  wire [31:0] acceptorBridge_io_read_data_ip_dest; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_icmp_id; // @[router.scala 37:30:@2293.4]
  wire [15:0] acceptorBridge_io_read_data_icmp_checksum; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_icmp_code; // @[router.scala 37:30:@2293.4]
  wire [7:0] acceptorBridge_io_read_data_icmp_imcpType; // @[router.scala 37:30:@2293.4]
  wire  acceptorBridge_io_read_empty; // @[router.scala 37:30:@2293.4]
  wire  transmitterBridge_reset; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_write_clk; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_write_en; // @[router.scala 40:33:@2297.4]
  wire [7:0] transmitterBridge_io_write_data_data; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_write_data_last; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_write_full; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_read_clk; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_read_en; // @[router.scala 40:33:@2297.4]
  wire [7:0] transmitterBridge_io_read_data_data; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_read_data_last; // @[router.scala 40:33:@2297.4]
  wire  transmitterBridge_io_read_empty; // @[router.scala 40:33:@2297.4]
  wire  ipBridge_reset; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_write_clk; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_write_en; // @[router.scala 44:24:@2302.4]
  wire [7:0] ipBridge_io_write_data_data; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_write_data_last; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_write_progfull; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_read_clk; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_read_en; // @[router.scala 44:24:@2302.4]
  wire [7:0] ipBridge_io_read_data_data; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_read_data_last; // @[router.scala 44:24:@2302.4]
  wire  ipBridge_io_read_empty; // @[router.scala 44:24:@2302.4]
  wire  Acceptor_clock; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_reset; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_rx_tlast; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_writer_clk; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_writer_en; // @[router.scala 47:26:@2305.4]
  wire [47:0] Acceptor_io_writer_data_eth_dest; // @[router.scala 47:26:@2305.4]
  wire [47:0] Acceptor_io_writer_data_eth_sender; // @[router.scala 47:26:@2305.4]
  wire [1:0] Acceptor_io_writer_data_eth_pactype; // @[router.scala 47:26:@2305.4]
  wire [2:0] Acceptor_io_writer_data_eth_vlan; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_arp_htype; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_arp_ptype; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_arp_hlen; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_arp_plen; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_arp_oper; // @[router.scala 47:26:@2305.4]
  wire [47:0] Acceptor_io_writer_data_arp_sha; // @[router.scala 47:26:@2305.4]
  wire [31:0] Acceptor_io_writer_data_arp_spa; // @[router.scala 47:26:@2305.4]
  wire [47:0] Acceptor_io_writer_data_arp_tha; // @[router.scala 47:26:@2305.4]
  wire [31:0] Acceptor_io_writer_data_arp_tpa; // @[router.scala 47:26:@2305.4]
  wire [3:0] Acceptor_io_writer_data_ip_version; // @[router.scala 47:26:@2305.4]
  wire [3:0] Acceptor_io_writer_data_ip_ihl; // @[router.scala 47:26:@2305.4]
  wire [5:0] Acceptor_io_writer_data_ip_dscp; // @[router.scala 47:26:@2305.4]
  wire [1:0] Acceptor_io_writer_data_ip_ecn; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_ip_len; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_ip_id; // @[router.scala 47:26:@2305.4]
  wire [2:0] Acceptor_io_writer_data_ip_flags; // @[router.scala 47:26:@2305.4]
  wire [12:0] Acceptor_io_writer_data_ip_foff; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_ip_ttl; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_ip_proto; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_ip_chksum; // @[router.scala 47:26:@2305.4]
  wire [31:0] Acceptor_io_writer_data_ip_src; // @[router.scala 47:26:@2305.4]
  wire [31:0] Acceptor_io_writer_data_ip_dest; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_icmp_id; // @[router.scala 47:26:@2305.4]
  wire [15:0] Acceptor_io_writer_data_icmp_checksum; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_icmp_code; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_writer_data_icmp_imcpType; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_ipWriter_clk; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_ipWriter_en; // @[router.scala 47:26:@2305.4]
  wire [7:0] Acceptor_io_ipWriter_data_data; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_ipWriter_data_last; // @[router.scala 47:26:@2305.4]
  wire  Acceptor_io_ipWriter_progfull; // @[router.scala 47:26:@2305.4]
  wire  ctrl_io_inputWait; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_nat_stall; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_nat_pause; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_forward_stall; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_forward_pause; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_arp_pause; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_encoder_stall; // @[router.scala 54:20:@2352.4]
  wire  ctrl_io_encoder_pause; // @[router.scala 54:20:@2352.4]
  wire  nat_clock; // @[router.scala 57:19:@2357.4]
  wire  nat_reset; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_input_eth_dest; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_input_eth_sender; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_input_eth_pactype; // @[router.scala 57:19:@2357.4]
  wire [2:0] nat_io_input_eth_vlan; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_arp_htype; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_arp_ptype; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_arp_hlen; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_arp_plen; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_arp_oper; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_input_arp_sha; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_input_arp_spa; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_input_arp_tha; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_input_arp_tpa; // @[router.scala 57:19:@2357.4]
  wire [3:0] nat_io_input_ip_version; // @[router.scala 57:19:@2357.4]
  wire [3:0] nat_io_input_ip_ihl; // @[router.scala 57:19:@2357.4]
  wire [5:0] nat_io_input_ip_dscp; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_input_ip_ecn; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_ip_len; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_ip_id; // @[router.scala 57:19:@2357.4]
  wire [2:0] nat_io_input_ip_flags; // @[router.scala 57:19:@2357.4]
  wire [12:0] nat_io_input_ip_foff; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_ip_ttl; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_ip_proto; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_ip_chksum; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_input_ip_src; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_input_ip_dest; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_icmp_id; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_input_icmp_checksum; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_icmp_code; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_input_icmp_imcpType; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_status; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_output_eth_dest; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_output_eth_sender; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_output_eth_pactype; // @[router.scala 57:19:@2357.4]
  wire [2:0] nat_io_output_eth_vlan; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_arp_htype; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_arp_ptype; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_arp_hlen; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_arp_plen; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_arp_oper; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_output_arp_sha; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_output_arp_spa; // @[router.scala 57:19:@2357.4]
  wire [47:0] nat_io_output_arp_tha; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_output_arp_tpa; // @[router.scala 57:19:@2357.4]
  wire [3:0] nat_io_output_ip_version; // @[router.scala 57:19:@2357.4]
  wire [3:0] nat_io_output_ip_ihl; // @[router.scala 57:19:@2357.4]
  wire [5:0] nat_io_output_ip_dscp; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_output_ip_ecn; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_ip_len; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_ip_id; // @[router.scala 57:19:@2357.4]
  wire [2:0] nat_io_output_ip_flags; // @[router.scala 57:19:@2357.4]
  wire [12:0] nat_io_output_ip_foff; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_ip_ttl; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_ip_proto; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_ip_chksum; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_output_ip_src; // @[router.scala 57:19:@2357.4]
  wire [31:0] nat_io_output_ip_dest; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_icmp_id; // @[router.scala 57:19:@2357.4]
  wire [15:0] nat_io_output_icmp_checksum; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_icmp_code; // @[router.scala 57:19:@2357.4]
  wire [7:0] nat_io_output_icmp_imcpType; // @[router.scala 57:19:@2357.4]
  wire [1:0] nat_io_outputStatus; // @[router.scala 57:19:@2357.4]
  wire  nat_io_pause; // @[router.scala 57:19:@2357.4]
  wire  nat_io_stall; // @[router.scala 57:19:@2357.4]
  wire  forward_clock; // @[router.scala 63:23:@2394.4]
  wire  forward_reset; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_input_eth_dest; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_input_eth_sender; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_input_eth_pactype; // @[router.scala 63:23:@2394.4]
  wire [2:0] forward_io_input_eth_vlan; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_arp_htype; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_arp_ptype; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_arp_hlen; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_arp_plen; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_arp_oper; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_input_arp_sha; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_input_arp_spa; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_input_arp_tha; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_input_arp_tpa; // @[router.scala 63:23:@2394.4]
  wire [3:0] forward_io_input_ip_version; // @[router.scala 63:23:@2394.4]
  wire [3:0] forward_io_input_ip_ihl; // @[router.scala 63:23:@2394.4]
  wire [5:0] forward_io_input_ip_dscp; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_input_ip_ecn; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_ip_len; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_ip_id; // @[router.scala 63:23:@2394.4]
  wire [2:0] forward_io_input_ip_flags; // @[router.scala 63:23:@2394.4]
  wire [12:0] forward_io_input_ip_foff; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_ip_ttl; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_ip_proto; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_ip_chksum; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_input_ip_src; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_input_ip_dest; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_icmp_id; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_input_icmp_checksum; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_icmp_code; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_input_icmp_imcpType; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_status; // @[router.scala 63:23:@2394.4]
  wire  forward_io_stall; // @[router.scala 63:23:@2394.4]
  wire  forward_io_pause; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_output_packet_eth_dest; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_output_packet_eth_sender; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_output_packet_eth_pactype; // @[router.scala 63:23:@2394.4]
  wire [2:0] forward_io_output_packet_eth_vlan; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_arp_htype; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_arp_ptype; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_arp_hlen; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_arp_plen; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_arp_oper; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_output_packet_arp_sha; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_output_packet_arp_spa; // @[router.scala 63:23:@2394.4]
  wire [47:0] forward_io_output_packet_arp_tha; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_output_packet_arp_tpa; // @[router.scala 63:23:@2394.4]
  wire [3:0] forward_io_output_packet_ip_version; // @[router.scala 63:23:@2394.4]
  wire [3:0] forward_io_output_packet_ip_ihl; // @[router.scala 63:23:@2394.4]
  wire [5:0] forward_io_output_packet_ip_dscp; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_output_packet_ip_ecn; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_ip_len; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_ip_id; // @[router.scala 63:23:@2394.4]
  wire [2:0] forward_io_output_packet_ip_flags; // @[router.scala 63:23:@2394.4]
  wire [12:0] forward_io_output_packet_ip_foff; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_ip_ttl; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_ip_proto; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_ip_chksum; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_output_packet_ip_src; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_output_packet_ip_dest; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_icmp_id; // @[router.scala 63:23:@2394.4]
  wire [15:0] forward_io_output_packet_icmp_checksum; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_icmp_code; // @[router.scala 63:23:@2394.4]
  wire [7:0] forward_io_output_packet_icmp_imcpType; // @[router.scala 63:23:@2394.4]
  wire [31:0] forward_io_output_lookup_nextHop; // @[router.scala 63:23:@2394.4]
  wire [1:0] forward_io_outputStatus; // @[router.scala 63:23:@2394.4]
  wire  arp_clock; // @[router.scala 69:19:@2430.4]
  wire  arp_reset; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_input_packet_eth_dest; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_input_packet_eth_sender; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_input_packet_eth_pactype; // @[router.scala 69:19:@2430.4]
  wire [2:0] arp_io_input_packet_eth_vlan; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_arp_htype; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_arp_ptype; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_arp_hlen; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_arp_plen; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_arp_oper; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_input_packet_arp_sha; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_input_packet_arp_spa; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_input_packet_arp_tha; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_input_packet_arp_tpa; // @[router.scala 69:19:@2430.4]
  wire [3:0] arp_io_input_packet_ip_version; // @[router.scala 69:19:@2430.4]
  wire [3:0] arp_io_input_packet_ip_ihl; // @[router.scala 69:19:@2430.4]
  wire [5:0] arp_io_input_packet_ip_dscp; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_input_packet_ip_ecn; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_ip_len; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_ip_id; // @[router.scala 69:19:@2430.4]
  wire [2:0] arp_io_input_packet_ip_flags; // @[router.scala 69:19:@2430.4]
  wire [12:0] arp_io_input_packet_ip_foff; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_ip_ttl; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_ip_proto; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_ip_chksum; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_input_packet_ip_src; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_input_packet_ip_dest; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_icmp_id; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_input_packet_icmp_checksum; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_icmp_code; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_input_packet_icmp_imcpType; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_input_lookup_nextHop; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_status; // @[router.scala 69:19:@2430.4]
  wire  arp_io_pause; // @[router.scala 69:19:@2430.4]
  wire  arp_io_output_arp_found; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_output_forward_nextHop; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_output_packet_eth_dest; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_output_packet_eth_sender; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_output_packet_eth_pactype; // @[router.scala 69:19:@2430.4]
  wire [2:0] arp_io_output_packet_eth_vlan; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_arp_htype; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_arp_ptype; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_arp_hlen; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_arp_plen; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_arp_oper; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_output_packet_arp_sha; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_output_packet_arp_spa; // @[router.scala 69:19:@2430.4]
  wire [47:0] arp_io_output_packet_arp_tha; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_output_packet_arp_tpa; // @[router.scala 69:19:@2430.4]
  wire [3:0] arp_io_output_packet_ip_version; // @[router.scala 69:19:@2430.4]
  wire [3:0] arp_io_output_packet_ip_ihl; // @[router.scala 69:19:@2430.4]
  wire [5:0] arp_io_output_packet_ip_dscp; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_output_packet_ip_ecn; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_ip_len; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_ip_id; // @[router.scala 69:19:@2430.4]
  wire [2:0] arp_io_output_packet_ip_flags; // @[router.scala 69:19:@2430.4]
  wire [12:0] arp_io_output_packet_ip_foff; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_ip_ttl; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_ip_proto; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_ip_chksum; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_output_packet_ip_src; // @[router.scala 69:19:@2430.4]
  wire [31:0] arp_io_output_packet_ip_dest; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_icmp_id; // @[router.scala 69:19:@2430.4]
  wire [15:0] arp_io_output_packet_icmp_checksum; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_icmp_code; // @[router.scala 69:19:@2430.4]
  wire [7:0] arp_io_output_packet_icmp_imcpType; // @[router.scala 69:19:@2430.4]
  wire [1:0] arp_io_outputStatus; // @[router.scala 69:19:@2430.4]
  wire  encoder_clock; // @[router.scala 75:23:@2468.4]
  wire  encoder_reset; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_input_arp_found; // @[router.scala 75:23:@2468.4]
  wire [31:0] encoder_io_input_forward_nextHop; // @[router.scala 75:23:@2468.4]
  wire [47:0] encoder_io_input_packet_eth_dest; // @[router.scala 75:23:@2468.4]
  wire [47:0] encoder_io_input_packet_eth_sender; // @[router.scala 75:23:@2468.4]
  wire [1:0] encoder_io_input_packet_eth_pactype; // @[router.scala 75:23:@2468.4]
  wire [2:0] encoder_io_input_packet_eth_vlan; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_arp_htype; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_arp_ptype; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_arp_hlen; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_arp_plen; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_arp_oper; // @[router.scala 75:23:@2468.4]
  wire [47:0] encoder_io_input_packet_arp_sha; // @[router.scala 75:23:@2468.4]
  wire [31:0] encoder_io_input_packet_arp_spa; // @[router.scala 75:23:@2468.4]
  wire [47:0] encoder_io_input_packet_arp_tha; // @[router.scala 75:23:@2468.4]
  wire [31:0] encoder_io_input_packet_arp_tpa; // @[router.scala 75:23:@2468.4]
  wire [3:0] encoder_io_input_packet_ip_version; // @[router.scala 75:23:@2468.4]
  wire [3:0] encoder_io_input_packet_ip_ihl; // @[router.scala 75:23:@2468.4]
  wire [5:0] encoder_io_input_packet_ip_dscp; // @[router.scala 75:23:@2468.4]
  wire [1:0] encoder_io_input_packet_ip_ecn; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_ip_len; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_ip_id; // @[router.scala 75:23:@2468.4]
  wire [2:0] encoder_io_input_packet_ip_flags; // @[router.scala 75:23:@2468.4]
  wire [12:0] encoder_io_input_packet_ip_foff; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_ip_ttl; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_ip_proto; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_ip_chksum; // @[router.scala 75:23:@2468.4]
  wire [31:0] encoder_io_input_packet_ip_src; // @[router.scala 75:23:@2468.4]
  wire [31:0] encoder_io_input_packet_ip_dest; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_icmp_id; // @[router.scala 75:23:@2468.4]
  wire [15:0] encoder_io_input_packet_icmp_checksum; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_icmp_code; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_input_packet_icmp_imcpType; // @[router.scala 75:23:@2468.4]
  wire [1:0] encoder_io_status; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_stall; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_pause; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_writer_clk; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_writer_en; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_writer_data_data; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_writer_data_last; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_writer_full; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_ipReader_clk; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_ipReader_en; // @[router.scala 75:23:@2468.4]
  wire [7:0] encoder_io_ipReader_data_data; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_ipReader_data_last; // @[router.scala 75:23:@2468.4]
  wire  encoder_io_ipReader_empty; // @[router.scala 75:23:@2468.4]
  wire  Transmitter_clock; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_reader_clk; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_reader_en; // @[router.scala 87:29:@2520.4]
  wire [7:0] Transmitter_io_reader_data_data; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_reader_data_last; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_reader_empty; // @[router.scala 87:29:@2520.4]
  wire [7:0] Transmitter_io_tx_tdata; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_tx_tvalid; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_tx_tlast; // @[router.scala 87:29:@2520.4]
  wire  Transmitter_io_tx_tready; // @[router.scala 87:29:@2520.4]
  AsyncBridge acceptorBridge ( // @[router.scala 37:30:@2293.4]
    .reset(acceptorBridge_reset),
    .io_write_clk(acceptorBridge_io_write_clk),
    .io_write_en(acceptorBridge_io_write_en),
    .io_write_data_eth_dest(acceptorBridge_io_write_data_eth_dest),
    .io_write_data_eth_sender(acceptorBridge_io_write_data_eth_sender),
    .io_write_data_eth_pactype(acceptorBridge_io_write_data_eth_pactype),
    .io_write_data_eth_vlan(acceptorBridge_io_write_data_eth_vlan),
    .io_write_data_arp_htype(acceptorBridge_io_write_data_arp_htype),
    .io_write_data_arp_ptype(acceptorBridge_io_write_data_arp_ptype),
    .io_write_data_arp_hlen(acceptorBridge_io_write_data_arp_hlen),
    .io_write_data_arp_plen(acceptorBridge_io_write_data_arp_plen),
    .io_write_data_arp_oper(acceptorBridge_io_write_data_arp_oper),
    .io_write_data_arp_sha(acceptorBridge_io_write_data_arp_sha),
    .io_write_data_arp_spa(acceptorBridge_io_write_data_arp_spa),
    .io_write_data_arp_tha(acceptorBridge_io_write_data_arp_tha),
    .io_write_data_arp_tpa(acceptorBridge_io_write_data_arp_tpa),
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
    .io_read_data_arp_htype(acceptorBridge_io_read_data_arp_htype),
    .io_read_data_arp_ptype(acceptorBridge_io_read_data_arp_ptype),
    .io_read_data_arp_hlen(acceptorBridge_io_read_data_arp_hlen),
    .io_read_data_arp_plen(acceptorBridge_io_read_data_arp_plen),
    .io_read_data_arp_oper(acceptorBridge_io_read_data_arp_oper),
    .io_read_data_arp_sha(acceptorBridge_io_read_data_arp_sha),
    .io_read_data_arp_spa(acceptorBridge_io_read_data_arp_spa),
    .io_read_data_arp_tha(acceptorBridge_io_read_data_arp_tha),
    .io_read_data_arp_tpa(acceptorBridge_io_read_data_arp_tpa),
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
  AsyncBridge_1 transmitterBridge ( // @[router.scala 40:33:@2297.4]
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
  AsyncBridge_2 ipBridge ( // @[router.scala 44:24:@2302.4]
    .reset(ipBridge_reset),
    .io_write_clk(ipBridge_io_write_clk),
    .io_write_en(ipBridge_io_write_en),
    .io_write_data_data(ipBridge_io_write_data_data),
    .io_write_data_last(ipBridge_io_write_data_last),
    .io_write_progfull(ipBridge_io_write_progfull),
    .io_read_clk(ipBridge_io_read_clk),
    .io_read_en(ipBridge_io_read_en),
    .io_read_data_data(ipBridge_io_read_data_data),
    .io_read_data_last(ipBridge_io_read_data_last),
    .io_read_empty(ipBridge_io_read_empty)
  );
  Acceptor Acceptor ( // @[router.scala 47:26:@2305.4]
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
    .io_writer_data_arp_htype(Acceptor_io_writer_data_arp_htype),
    .io_writer_data_arp_ptype(Acceptor_io_writer_data_arp_ptype),
    .io_writer_data_arp_hlen(Acceptor_io_writer_data_arp_hlen),
    .io_writer_data_arp_plen(Acceptor_io_writer_data_arp_plen),
    .io_writer_data_arp_oper(Acceptor_io_writer_data_arp_oper),
    .io_writer_data_arp_sha(Acceptor_io_writer_data_arp_sha),
    .io_writer_data_arp_spa(Acceptor_io_writer_data_arp_spa),
    .io_writer_data_arp_tha(Acceptor_io_writer_data_arp_tha),
    .io_writer_data_arp_tpa(Acceptor_io_writer_data_arp_tpa),
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
    .io_ipWriter_clk(Acceptor_io_ipWriter_clk),
    .io_ipWriter_en(Acceptor_io_ipWriter_en),
    .io_ipWriter_data_data(Acceptor_io_ipWriter_data_data),
    .io_ipWriter_data_last(Acceptor_io_ipWriter_data_last),
    .io_ipWriter_progfull(Acceptor_io_ipWriter_progfull)
  );
  Ctrl ctrl ( // @[router.scala 54:20:@2352.4]
    .io_inputWait(ctrl_io_inputWait),
    .io_nat_stall(ctrl_io_nat_stall),
    .io_nat_pause(ctrl_io_nat_pause),
    .io_forward_stall(ctrl_io_forward_stall),
    .io_forward_pause(ctrl_io_forward_pause),
    .io_arp_pause(ctrl_io_arp_pause),
    .io_encoder_stall(ctrl_io_encoder_stall),
    .io_encoder_pause(ctrl_io_encoder_pause)
  );
  Nat nat ( // @[router.scala 57:19:@2357.4]
    .clock(nat_clock),
    .reset(nat_reset),
    .io_input_eth_dest(nat_io_input_eth_dest),
    .io_input_eth_sender(nat_io_input_eth_sender),
    .io_input_eth_pactype(nat_io_input_eth_pactype),
    .io_input_eth_vlan(nat_io_input_eth_vlan),
    .io_input_arp_htype(nat_io_input_arp_htype),
    .io_input_arp_ptype(nat_io_input_arp_ptype),
    .io_input_arp_hlen(nat_io_input_arp_hlen),
    .io_input_arp_plen(nat_io_input_arp_plen),
    .io_input_arp_oper(nat_io_input_arp_oper),
    .io_input_arp_sha(nat_io_input_arp_sha),
    .io_input_arp_spa(nat_io_input_arp_spa),
    .io_input_arp_tha(nat_io_input_arp_tha),
    .io_input_arp_tpa(nat_io_input_arp_tpa),
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
    .io_output_arp_htype(nat_io_output_arp_htype),
    .io_output_arp_ptype(nat_io_output_arp_ptype),
    .io_output_arp_hlen(nat_io_output_arp_hlen),
    .io_output_arp_plen(nat_io_output_arp_plen),
    .io_output_arp_oper(nat_io_output_arp_oper),
    .io_output_arp_sha(nat_io_output_arp_sha),
    .io_output_arp_spa(nat_io_output_arp_spa),
    .io_output_arp_tha(nat_io_output_arp_tha),
    .io_output_arp_tpa(nat_io_output_arp_tpa),
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
  LLFT forward ( // @[router.scala 63:23:@2394.4]
    .clock(forward_clock),
    .reset(forward_reset),
    .io_input_eth_dest(forward_io_input_eth_dest),
    .io_input_eth_sender(forward_io_input_eth_sender),
    .io_input_eth_pactype(forward_io_input_eth_pactype),
    .io_input_eth_vlan(forward_io_input_eth_vlan),
    .io_input_arp_htype(forward_io_input_arp_htype),
    .io_input_arp_ptype(forward_io_input_arp_ptype),
    .io_input_arp_hlen(forward_io_input_arp_hlen),
    .io_input_arp_plen(forward_io_input_arp_plen),
    .io_input_arp_oper(forward_io_input_arp_oper),
    .io_input_arp_sha(forward_io_input_arp_sha),
    .io_input_arp_spa(forward_io_input_arp_spa),
    .io_input_arp_tha(forward_io_input_arp_tha),
    .io_input_arp_tpa(forward_io_input_arp_tpa),
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
    .io_output_packet_arp_htype(forward_io_output_packet_arp_htype),
    .io_output_packet_arp_ptype(forward_io_output_packet_arp_ptype),
    .io_output_packet_arp_hlen(forward_io_output_packet_arp_hlen),
    .io_output_packet_arp_plen(forward_io_output_packet_arp_plen),
    .io_output_packet_arp_oper(forward_io_output_packet_arp_oper),
    .io_output_packet_arp_sha(forward_io_output_packet_arp_sha),
    .io_output_packet_arp_spa(forward_io_output_packet_arp_spa),
    .io_output_packet_arp_tha(forward_io_output_packet_arp_tha),
    .io_output_packet_arp_tpa(forward_io_output_packet_arp_tpa),
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
    .io_output_lookup_nextHop(forward_io_output_lookup_nextHop),
    .io_outputStatus(forward_io_outputStatus)
  );
  ARPTable arp ( // @[router.scala 69:19:@2430.4]
    .clock(arp_clock),
    .reset(arp_reset),
    .io_input_packet_eth_dest(arp_io_input_packet_eth_dest),
    .io_input_packet_eth_sender(arp_io_input_packet_eth_sender),
    .io_input_packet_eth_pactype(arp_io_input_packet_eth_pactype),
    .io_input_packet_eth_vlan(arp_io_input_packet_eth_vlan),
    .io_input_packet_arp_htype(arp_io_input_packet_arp_htype),
    .io_input_packet_arp_ptype(arp_io_input_packet_arp_ptype),
    .io_input_packet_arp_hlen(arp_io_input_packet_arp_hlen),
    .io_input_packet_arp_plen(arp_io_input_packet_arp_plen),
    .io_input_packet_arp_oper(arp_io_input_packet_arp_oper),
    .io_input_packet_arp_sha(arp_io_input_packet_arp_sha),
    .io_input_packet_arp_spa(arp_io_input_packet_arp_spa),
    .io_input_packet_arp_tha(arp_io_input_packet_arp_tha),
    .io_input_packet_arp_tpa(arp_io_input_packet_arp_tpa),
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
    .io_input_lookup_nextHop(arp_io_input_lookup_nextHop),
    .io_status(arp_io_status),
    .io_pause(arp_io_pause),
    .io_output_arp_found(arp_io_output_arp_found),
    .io_output_forward_nextHop(arp_io_output_forward_nextHop),
    .io_output_packet_eth_dest(arp_io_output_packet_eth_dest),
    .io_output_packet_eth_sender(arp_io_output_packet_eth_sender),
    .io_output_packet_eth_pactype(arp_io_output_packet_eth_pactype),
    .io_output_packet_eth_vlan(arp_io_output_packet_eth_vlan),
    .io_output_packet_arp_htype(arp_io_output_packet_arp_htype),
    .io_output_packet_arp_ptype(arp_io_output_packet_arp_ptype),
    .io_output_packet_arp_hlen(arp_io_output_packet_arp_hlen),
    .io_output_packet_arp_plen(arp_io_output_packet_arp_plen),
    .io_output_packet_arp_oper(arp_io_output_packet_arp_oper),
    .io_output_packet_arp_sha(arp_io_output_packet_arp_sha),
    .io_output_packet_arp_spa(arp_io_output_packet_arp_spa),
    .io_output_packet_arp_tha(arp_io_output_packet_arp_tha),
    .io_output_packet_arp_tpa(arp_io_output_packet_arp_tpa),
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
  Encoder encoder ( // @[router.scala 75:23:@2468.4]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_input_arp_found(encoder_io_input_arp_found),
    .io_input_forward_nextHop(encoder_io_input_forward_nextHop),
    .io_input_packet_eth_dest(encoder_io_input_packet_eth_dest),
    .io_input_packet_eth_sender(encoder_io_input_packet_eth_sender),
    .io_input_packet_eth_pactype(encoder_io_input_packet_eth_pactype),
    .io_input_packet_eth_vlan(encoder_io_input_packet_eth_vlan),
    .io_input_packet_arp_htype(encoder_io_input_packet_arp_htype),
    .io_input_packet_arp_ptype(encoder_io_input_packet_arp_ptype),
    .io_input_packet_arp_hlen(encoder_io_input_packet_arp_hlen),
    .io_input_packet_arp_plen(encoder_io_input_packet_arp_plen),
    .io_input_packet_arp_oper(encoder_io_input_packet_arp_oper),
    .io_input_packet_arp_sha(encoder_io_input_packet_arp_sha),
    .io_input_packet_arp_spa(encoder_io_input_packet_arp_spa),
    .io_input_packet_arp_tha(encoder_io_input_packet_arp_tha),
    .io_input_packet_arp_tpa(encoder_io_input_packet_arp_tpa),
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
    .io_ipReader_clk(encoder_io_ipReader_clk),
    .io_ipReader_en(encoder_io_ipReader_en),
    .io_ipReader_data_data(encoder_io_ipReader_data_data),
    .io_ipReader_data_last(encoder_io_ipReader_data_last),
    .io_ipReader_empty(encoder_io_ipReader_empty)
  );
  Transmitter Transmitter ( // @[router.scala 87:29:@2520.4]
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
  assign io_tx_tdata = Transmitter_io_tx_tdata; // @[router.scala 89:23:@2531.4]
  assign io_tx_tvalid = Transmitter_io_tx_tvalid; // @[router.scala 89:23:@2530.4]
  assign io_tx_tlast = Transmitter_io_tx_tlast; // @[router.scala 89:23:@2529.4]
  assign acceptorBridge_reset = reset; // @[:@2295.4]
  assign acceptorBridge_io_write_clk = Acceptor_io_writer_clk; // @[router.scala 50:29:@2345.4]
  assign acceptorBridge_io_write_en = Acceptor_io_writer_en; // @[router.scala 50:29:@2344.4]
  assign acceptorBridge_io_write_data_eth_dest = Acceptor_io_writer_data_eth_dest; // @[router.scala 50:29:@2343.4]
  assign acceptorBridge_io_write_data_eth_sender = Acceptor_io_writer_data_eth_sender; // @[router.scala 50:29:@2342.4]
  assign acceptorBridge_io_write_data_eth_pactype = Acceptor_io_writer_data_eth_pactype; // @[router.scala 50:29:@2341.4]
  assign acceptorBridge_io_write_data_eth_vlan = Acceptor_io_writer_data_eth_vlan; // @[router.scala 50:29:@2340.4]
  assign acceptorBridge_io_write_data_arp_htype = Acceptor_io_writer_data_arp_htype; // @[router.scala 50:29:@2339.4]
  assign acceptorBridge_io_write_data_arp_ptype = Acceptor_io_writer_data_arp_ptype; // @[router.scala 50:29:@2338.4]
  assign acceptorBridge_io_write_data_arp_hlen = Acceptor_io_writer_data_arp_hlen; // @[router.scala 50:29:@2337.4]
  assign acceptorBridge_io_write_data_arp_plen = Acceptor_io_writer_data_arp_plen; // @[router.scala 50:29:@2336.4]
  assign acceptorBridge_io_write_data_arp_oper = Acceptor_io_writer_data_arp_oper; // @[router.scala 50:29:@2335.4]
  assign acceptorBridge_io_write_data_arp_sha = Acceptor_io_writer_data_arp_sha; // @[router.scala 50:29:@2334.4]
  assign acceptorBridge_io_write_data_arp_spa = Acceptor_io_writer_data_arp_spa; // @[router.scala 50:29:@2333.4]
  assign acceptorBridge_io_write_data_arp_tha = Acceptor_io_writer_data_arp_tha; // @[router.scala 50:29:@2332.4]
  assign acceptorBridge_io_write_data_arp_tpa = Acceptor_io_writer_data_arp_tpa; // @[router.scala 50:29:@2331.4]
  assign acceptorBridge_io_write_data_ip_version = Acceptor_io_writer_data_ip_version; // @[router.scala 50:29:@2330.4]
  assign acceptorBridge_io_write_data_ip_ihl = Acceptor_io_writer_data_ip_ihl; // @[router.scala 50:29:@2329.4]
  assign acceptorBridge_io_write_data_ip_dscp = Acceptor_io_writer_data_ip_dscp; // @[router.scala 50:29:@2328.4]
  assign acceptorBridge_io_write_data_ip_ecn = Acceptor_io_writer_data_ip_ecn; // @[router.scala 50:29:@2327.4]
  assign acceptorBridge_io_write_data_ip_len = Acceptor_io_writer_data_ip_len; // @[router.scala 50:29:@2326.4]
  assign acceptorBridge_io_write_data_ip_id = Acceptor_io_writer_data_ip_id; // @[router.scala 50:29:@2325.4]
  assign acceptorBridge_io_write_data_ip_flags = Acceptor_io_writer_data_ip_flags; // @[router.scala 50:29:@2324.4]
  assign acceptorBridge_io_write_data_ip_foff = Acceptor_io_writer_data_ip_foff; // @[router.scala 50:29:@2323.4]
  assign acceptorBridge_io_write_data_ip_ttl = Acceptor_io_writer_data_ip_ttl; // @[router.scala 50:29:@2322.4]
  assign acceptorBridge_io_write_data_ip_proto = Acceptor_io_writer_data_ip_proto; // @[router.scala 50:29:@2321.4]
  assign acceptorBridge_io_write_data_ip_chksum = Acceptor_io_writer_data_ip_chksum; // @[router.scala 50:29:@2320.4]
  assign acceptorBridge_io_write_data_ip_src = Acceptor_io_writer_data_ip_src; // @[router.scala 50:29:@2319.4]
  assign acceptorBridge_io_write_data_ip_dest = Acceptor_io_writer_data_ip_dest; // @[router.scala 50:29:@2318.4]
  assign acceptorBridge_io_write_data_icmp_id = Acceptor_io_writer_data_icmp_id; // @[router.scala 50:29:@2317.4]
  assign acceptorBridge_io_write_data_icmp_checksum = Acceptor_io_writer_data_icmp_checksum; // @[router.scala 50:29:@2316.4]
  assign acceptorBridge_io_write_data_icmp_code = Acceptor_io_writer_data_icmp_code; // @[router.scala 50:29:@2315.4]
  assign acceptorBridge_io_write_data_icmp_imcpType = Acceptor_io_writer_data_icmp_imcpType; // @[router.scala 50:29:@2314.4]
  assign acceptorBridge_io_read_clk = clock; // @[router.scala 38:30:@2296.4]
  assign acceptorBridge_io_read_en = ctrl_io_inputWait == 1'h0; // @[router.scala 55:29:@2356.4]
  assign transmitterBridge_reset = reset; // @[:@2299.4]
  assign transmitterBridge_io_write_clk = encoder_io_writer_clk; // @[router.scala 41:34:@2300.4 router.scala 83:21:@2514.4]
  assign transmitterBridge_io_write_en = encoder_io_writer_en; // @[router.scala 83:21:@2513.4]
  assign transmitterBridge_io_write_data_data = encoder_io_writer_data_data; // @[router.scala 83:21:@2512.4]
  assign transmitterBridge_io_write_data_last = encoder_io_writer_data_last; // @[router.scala 83:21:@2511.4]
  assign transmitterBridge_io_read_clk = Transmitter_io_reader_clk; // @[router.scala 88:27:@2527.4]
  assign transmitterBridge_io_read_en = Transmitter_io_reader_en; // @[router.scala 88:27:@2526.4]
  assign ipBridge_reset = reset; // @[:@2304.4]
  assign ipBridge_io_write_clk = Acceptor_io_ipWriter_clk; // @[router.scala 51:23:@2351.4]
  assign ipBridge_io_write_en = Acceptor_io_ipWriter_en; // @[router.scala 51:23:@2350.4]
  assign ipBridge_io_write_data_data = Acceptor_io_ipWriter_data_data; // @[router.scala 51:23:@2349.4]
  assign ipBridge_io_write_data_last = Acceptor_io_ipWriter_data_last; // @[router.scala 51:23:@2348.4]
  assign ipBridge_io_read_clk = encoder_io_ipReader_clk; // @[router.scala 84:23:@2519.4]
  assign ipBridge_io_read_en = encoder_io_ipReader_en; // @[router.scala 84:23:@2518.4]
  assign Acceptor_clock = io_rx_clk; // @[:@2306.4]
  assign Acceptor_reset = reset; // @[:@2307.4]
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 49:20:@2311.4]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 49:20:@2310.4]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 49:20:@2309.4]
  assign Acceptor_io_ipWriter_progfull = ipBridge_io_write_progfull; // @[router.scala 51:23:@2346.4]
  assign ctrl_io_nat_stall = nat_io_stall; // @[router.scala 58:21:@2360.4]
  assign ctrl_io_forward_stall = forward_io_stall; // @[router.scala 64:25:@2397.4]
  assign ctrl_io_encoder_stall = encoder_io_stall; // @[router.scala 76:25:@2471.4]
  assign nat_clock = clock; // @[:@2358.4]
  assign nat_reset = reset; // @[:@2359.4]
  assign nat_io_input_eth_dest = acceptorBridge_io_read_data_eth_dest; // @[router.scala 60:16:@2391.4]
  assign nat_io_input_eth_sender = acceptorBridge_io_read_data_eth_sender; // @[router.scala 60:16:@2390.4]
  assign nat_io_input_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 60:16:@2389.4]
  assign nat_io_input_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 60:16:@2388.4]
  assign nat_io_input_arp_htype = acceptorBridge_io_read_data_arp_htype; // @[router.scala 60:16:@2387.4]
  assign nat_io_input_arp_ptype = acceptorBridge_io_read_data_arp_ptype; // @[router.scala 60:16:@2386.4]
  assign nat_io_input_arp_hlen = acceptorBridge_io_read_data_arp_hlen; // @[router.scala 60:16:@2385.4]
  assign nat_io_input_arp_plen = acceptorBridge_io_read_data_arp_plen; // @[router.scala 60:16:@2384.4]
  assign nat_io_input_arp_oper = acceptorBridge_io_read_data_arp_oper; // @[router.scala 60:16:@2383.4]
  assign nat_io_input_arp_sha = acceptorBridge_io_read_data_arp_sha; // @[router.scala 60:16:@2382.4]
  assign nat_io_input_arp_spa = acceptorBridge_io_read_data_arp_spa; // @[router.scala 60:16:@2381.4]
  assign nat_io_input_arp_tha = acceptorBridge_io_read_data_arp_tha; // @[router.scala 60:16:@2380.4]
  assign nat_io_input_arp_tpa = acceptorBridge_io_read_data_arp_tpa; // @[router.scala 60:16:@2379.4]
  assign nat_io_input_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 60:16:@2378.4]
  assign nat_io_input_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 60:16:@2377.4]
  assign nat_io_input_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 60:16:@2376.4]
  assign nat_io_input_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 60:16:@2375.4]
  assign nat_io_input_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 60:16:@2374.4]
  assign nat_io_input_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 60:16:@2373.4]
  assign nat_io_input_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 60:16:@2372.4]
  assign nat_io_input_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 60:16:@2371.4]
  assign nat_io_input_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 60:16:@2370.4]
  assign nat_io_input_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 60:16:@2369.4]
  assign nat_io_input_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 60:16:@2368.4]
  assign nat_io_input_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 60:16:@2367.4]
  assign nat_io_input_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 60:16:@2366.4]
  assign nat_io_input_icmp_id = acceptorBridge_io_read_data_icmp_id; // @[router.scala 60:16:@2365.4]
  assign nat_io_input_icmp_checksum = acceptorBridge_io_read_data_icmp_checksum; // @[router.scala 60:16:@2364.4]
  assign nat_io_input_icmp_code = acceptorBridge_io_read_data_icmp_code; // @[router.scala 60:16:@2363.4]
  assign nat_io_input_icmp_imcpType = acceptorBridge_io_read_data_icmp_imcpType; // @[router.scala 60:16:@2362.4]
  assign nat_io_status = acceptorBridge_io_read_empty ? 2'h0 : 2'h1; // @[router.scala 61:17:@2393.4]
  assign nat_io_pause = ctrl_io_nat_pause; // @[router.scala 59:16:@2361.4]
  assign forward_clock = clock; // @[:@2395.4]
  assign forward_reset = reset; // @[:@2396.4]
  assign forward_io_input_eth_dest = nat_io_output_eth_dest; // @[router.scala 66:20:@2428.4]
  assign forward_io_input_eth_sender = nat_io_output_eth_sender; // @[router.scala 66:20:@2427.4]
  assign forward_io_input_eth_pactype = nat_io_output_eth_pactype; // @[router.scala 66:20:@2426.4]
  assign forward_io_input_eth_vlan = nat_io_output_eth_vlan; // @[router.scala 66:20:@2425.4]
  assign forward_io_input_arp_htype = nat_io_output_arp_htype; // @[router.scala 66:20:@2424.4]
  assign forward_io_input_arp_ptype = nat_io_output_arp_ptype; // @[router.scala 66:20:@2423.4]
  assign forward_io_input_arp_hlen = nat_io_output_arp_hlen; // @[router.scala 66:20:@2422.4]
  assign forward_io_input_arp_plen = nat_io_output_arp_plen; // @[router.scala 66:20:@2421.4]
  assign forward_io_input_arp_oper = nat_io_output_arp_oper; // @[router.scala 66:20:@2420.4]
  assign forward_io_input_arp_sha = nat_io_output_arp_sha; // @[router.scala 66:20:@2419.4]
  assign forward_io_input_arp_spa = nat_io_output_arp_spa; // @[router.scala 66:20:@2418.4]
  assign forward_io_input_arp_tha = nat_io_output_arp_tha; // @[router.scala 66:20:@2417.4]
  assign forward_io_input_arp_tpa = nat_io_output_arp_tpa; // @[router.scala 66:20:@2416.4]
  assign forward_io_input_ip_version = nat_io_output_ip_version; // @[router.scala 66:20:@2415.4]
  assign forward_io_input_ip_ihl = nat_io_output_ip_ihl; // @[router.scala 66:20:@2414.4]
  assign forward_io_input_ip_dscp = nat_io_output_ip_dscp; // @[router.scala 66:20:@2413.4]
  assign forward_io_input_ip_ecn = nat_io_output_ip_ecn; // @[router.scala 66:20:@2412.4]
  assign forward_io_input_ip_len = nat_io_output_ip_len; // @[router.scala 66:20:@2411.4]
  assign forward_io_input_ip_id = nat_io_output_ip_id; // @[router.scala 66:20:@2410.4]
  assign forward_io_input_ip_flags = nat_io_output_ip_flags; // @[router.scala 66:20:@2409.4]
  assign forward_io_input_ip_foff = nat_io_output_ip_foff; // @[router.scala 66:20:@2408.4]
  assign forward_io_input_ip_ttl = nat_io_output_ip_ttl; // @[router.scala 66:20:@2407.4]
  assign forward_io_input_ip_proto = nat_io_output_ip_proto; // @[router.scala 66:20:@2406.4]
  assign forward_io_input_ip_chksum = nat_io_output_ip_chksum; // @[router.scala 66:20:@2405.4]
  assign forward_io_input_ip_src = nat_io_output_ip_src; // @[router.scala 66:20:@2404.4]
  assign forward_io_input_ip_dest = nat_io_output_ip_dest; // @[router.scala 66:20:@2403.4]
  assign forward_io_input_icmp_id = nat_io_output_icmp_id; // @[router.scala 66:20:@2402.4]
  assign forward_io_input_icmp_checksum = nat_io_output_icmp_checksum; // @[router.scala 66:20:@2401.4]
  assign forward_io_input_icmp_code = nat_io_output_icmp_code; // @[router.scala 66:20:@2400.4]
  assign forward_io_input_icmp_imcpType = nat_io_output_icmp_imcpType; // @[router.scala 66:20:@2399.4]
  assign forward_io_status = nat_io_outputStatus; // @[router.scala 67:21:@2429.4]
  assign forward_io_pause = ctrl_io_forward_pause; // @[router.scala 65:25:@2398.4]
  assign arp_clock = clock; // @[:@2431.4]
  assign arp_reset = reset; // @[:@2432.4]
  assign arp_io_input_packet_eth_dest = forward_io_output_packet_eth_dest; // @[router.scala 72:21:@2466.4]
  assign arp_io_input_packet_eth_sender = forward_io_output_packet_eth_sender; // @[router.scala 72:21:@2465.4]
  assign arp_io_input_packet_eth_pactype = forward_io_output_packet_eth_pactype; // @[router.scala 72:21:@2464.4]
  assign arp_io_input_packet_eth_vlan = forward_io_output_packet_eth_vlan; // @[router.scala 72:21:@2463.4]
  assign arp_io_input_packet_arp_htype = forward_io_output_packet_arp_htype; // @[router.scala 72:21:@2462.4]
  assign arp_io_input_packet_arp_ptype = forward_io_output_packet_arp_ptype; // @[router.scala 72:21:@2461.4]
  assign arp_io_input_packet_arp_hlen = forward_io_output_packet_arp_hlen; // @[router.scala 72:21:@2460.4]
  assign arp_io_input_packet_arp_plen = forward_io_output_packet_arp_plen; // @[router.scala 72:21:@2459.4]
  assign arp_io_input_packet_arp_oper = forward_io_output_packet_arp_oper; // @[router.scala 72:21:@2458.4]
  assign arp_io_input_packet_arp_sha = forward_io_output_packet_arp_sha; // @[router.scala 72:21:@2457.4]
  assign arp_io_input_packet_arp_spa = forward_io_output_packet_arp_spa; // @[router.scala 72:21:@2456.4]
  assign arp_io_input_packet_arp_tha = forward_io_output_packet_arp_tha; // @[router.scala 72:21:@2455.4]
  assign arp_io_input_packet_arp_tpa = forward_io_output_packet_arp_tpa; // @[router.scala 72:21:@2454.4]
  assign arp_io_input_packet_ip_version = forward_io_output_packet_ip_version; // @[router.scala 72:21:@2453.4]
  assign arp_io_input_packet_ip_ihl = forward_io_output_packet_ip_ihl; // @[router.scala 72:21:@2452.4]
  assign arp_io_input_packet_ip_dscp = forward_io_output_packet_ip_dscp; // @[router.scala 72:21:@2451.4]
  assign arp_io_input_packet_ip_ecn = forward_io_output_packet_ip_ecn; // @[router.scala 72:21:@2450.4]
  assign arp_io_input_packet_ip_len = forward_io_output_packet_ip_len; // @[router.scala 72:21:@2449.4]
  assign arp_io_input_packet_ip_id = forward_io_output_packet_ip_id; // @[router.scala 72:21:@2448.4]
  assign arp_io_input_packet_ip_flags = forward_io_output_packet_ip_flags; // @[router.scala 72:21:@2447.4]
  assign arp_io_input_packet_ip_foff = forward_io_output_packet_ip_foff; // @[router.scala 72:21:@2446.4]
  assign arp_io_input_packet_ip_ttl = forward_io_output_packet_ip_ttl; // @[router.scala 72:21:@2445.4]
  assign arp_io_input_packet_ip_proto = forward_io_output_packet_ip_proto; // @[router.scala 72:21:@2444.4]
  assign arp_io_input_packet_ip_chksum = forward_io_output_packet_ip_chksum; // @[router.scala 72:21:@2443.4]
  assign arp_io_input_packet_ip_src = forward_io_output_packet_ip_src; // @[router.scala 72:21:@2442.4]
  assign arp_io_input_packet_ip_dest = forward_io_output_packet_ip_dest; // @[router.scala 72:21:@2441.4]
  assign arp_io_input_packet_icmp_id = forward_io_output_packet_icmp_id; // @[router.scala 72:21:@2440.4]
  assign arp_io_input_packet_icmp_checksum = forward_io_output_packet_icmp_checksum; // @[router.scala 72:21:@2439.4]
  assign arp_io_input_packet_icmp_code = forward_io_output_packet_icmp_code; // @[router.scala 72:21:@2438.4]
  assign arp_io_input_packet_icmp_imcpType = forward_io_output_packet_icmp_imcpType; // @[router.scala 72:21:@2437.4]
  assign arp_io_input_lookup_nextHop = forward_io_output_lookup_nextHop; // @[router.scala 72:21:@2435.4]
  assign arp_io_status = forward_io_outputStatus; // @[router.scala 73:27:@2467.4]
  assign arp_io_pause = ctrl_io_arp_pause; // @[router.scala 71:21:@2434.4]
  assign encoder_clock = clock; // @[:@2469.4]
  assign encoder_reset = reset; // @[:@2470.4]
  assign encoder_io_input_arp_found = arp_io_output_arp_found; // @[router.scala 81:20:@2507.4]
  assign encoder_io_input_forward_nextHop = arp_io_output_forward_nextHop; // @[router.scala 81:20:@2503.4]
  assign encoder_io_input_packet_eth_dest = arp_io_output_packet_eth_dest; // @[router.scala 81:20:@2502.4]
  assign encoder_io_input_packet_eth_sender = arp_io_output_packet_eth_sender; // @[router.scala 81:20:@2501.4]
  assign encoder_io_input_packet_eth_pactype = arp_io_output_packet_eth_pactype; // @[router.scala 81:20:@2500.4]
  assign encoder_io_input_packet_eth_vlan = arp_io_output_packet_eth_vlan; // @[router.scala 81:20:@2499.4]
  assign encoder_io_input_packet_arp_htype = arp_io_output_packet_arp_htype; // @[router.scala 81:20:@2498.4]
  assign encoder_io_input_packet_arp_ptype = arp_io_output_packet_arp_ptype; // @[router.scala 81:20:@2497.4]
  assign encoder_io_input_packet_arp_hlen = arp_io_output_packet_arp_hlen; // @[router.scala 81:20:@2496.4]
  assign encoder_io_input_packet_arp_plen = arp_io_output_packet_arp_plen; // @[router.scala 81:20:@2495.4]
  assign encoder_io_input_packet_arp_oper = arp_io_output_packet_arp_oper; // @[router.scala 81:20:@2494.4]
  assign encoder_io_input_packet_arp_sha = arp_io_output_packet_arp_sha; // @[router.scala 81:20:@2493.4]
  assign encoder_io_input_packet_arp_spa = arp_io_output_packet_arp_spa; // @[router.scala 81:20:@2492.4]
  assign encoder_io_input_packet_arp_tha = arp_io_output_packet_arp_tha; // @[router.scala 81:20:@2491.4]
  assign encoder_io_input_packet_arp_tpa = arp_io_output_packet_arp_tpa; // @[router.scala 81:20:@2490.4]
  assign encoder_io_input_packet_ip_version = arp_io_output_packet_ip_version; // @[router.scala 81:20:@2489.4]
  assign encoder_io_input_packet_ip_ihl = arp_io_output_packet_ip_ihl; // @[router.scala 81:20:@2488.4]
  assign encoder_io_input_packet_ip_dscp = arp_io_output_packet_ip_dscp; // @[router.scala 81:20:@2487.4]
  assign encoder_io_input_packet_ip_ecn = arp_io_output_packet_ip_ecn; // @[router.scala 81:20:@2486.4]
  assign encoder_io_input_packet_ip_len = arp_io_output_packet_ip_len; // @[router.scala 81:20:@2485.4]
  assign encoder_io_input_packet_ip_id = arp_io_output_packet_ip_id; // @[router.scala 81:20:@2484.4]
  assign encoder_io_input_packet_ip_flags = arp_io_output_packet_ip_flags; // @[router.scala 81:20:@2483.4]
  assign encoder_io_input_packet_ip_foff = arp_io_output_packet_ip_foff; // @[router.scala 81:20:@2482.4]
  assign encoder_io_input_packet_ip_ttl = arp_io_output_packet_ip_ttl; // @[router.scala 81:20:@2481.4]
  assign encoder_io_input_packet_ip_proto = arp_io_output_packet_ip_proto; // @[router.scala 81:20:@2480.4]
  assign encoder_io_input_packet_ip_chksum = arp_io_output_packet_ip_chksum; // @[router.scala 81:20:@2479.4]
  assign encoder_io_input_packet_ip_src = arp_io_output_packet_ip_src; // @[router.scala 81:20:@2478.4]
  assign encoder_io_input_packet_ip_dest = arp_io_output_packet_ip_dest; // @[router.scala 81:20:@2477.4]
  assign encoder_io_input_packet_icmp_id = arp_io_output_packet_icmp_id; // @[router.scala 81:20:@2476.4]
  assign encoder_io_input_packet_icmp_checksum = arp_io_output_packet_icmp_checksum; // @[router.scala 81:20:@2475.4]
  assign encoder_io_input_packet_icmp_code = arp_io_output_packet_icmp_code; // @[router.scala 81:20:@2474.4]
  assign encoder_io_input_packet_icmp_imcpType = arp_io_output_packet_icmp_imcpType; // @[router.scala 81:20:@2473.4]
  assign encoder_io_status = arp_io_outputStatus; // @[router.scala 82:21:@2508.4]
  assign encoder_io_pause = ctrl_io_encoder_pause; // @[router.scala 77:25:@2472.4]
  assign encoder_io_writer_full = transmitterBridge_io_write_full; // @[router.scala 83:21:@2510.4]
  assign encoder_io_ipReader_data_data = ipBridge_io_read_data_data; // @[router.scala 84:23:@2517.4]
  assign encoder_io_ipReader_data_last = ipBridge_io_read_data_last; // @[router.scala 84:23:@2516.4]
  assign encoder_io_ipReader_empty = ipBridge_io_read_empty; // @[router.scala 84:23:@2515.4]
  assign Transmitter_clock = io_tx_clk; // @[:@2521.4]
  assign Transmitter_io_reader_data_data = transmitterBridge_io_read_data_data; // @[router.scala 88:27:@2525.4]
  assign Transmitter_io_reader_data_last = transmitterBridge_io_read_data_last; // @[router.scala 88:27:@2524.4]
  assign Transmitter_io_reader_empty = transmitterBridge_io_read_empty; // @[router.scala 88:27:@2523.4]
  assign Transmitter_io_tx_tready = io_tx_tready; // @[router.scala 89:23:@2528.4]
endmodule
module Top( // @[:@2533.2]
  input        clock, // @[:@2534.4]
  input        reset, // @[:@2535.4]
  input        io_rx_clk, // @[:@2536.4]
  input        io_tx_clk, // @[:@2536.4]
  input  [7:0] io_rx_tdata, // @[:@2536.4]
  input        io_rx_tvalid, // @[:@2536.4]
  input        io_rx_tlast, // @[:@2536.4]
  output [7:0] io_tx_tdata, // @[:@2536.4]
  output       io_tx_tvalid, // @[:@2536.4]
  output       io_tx_tlast, // @[:@2536.4]
  input        io_tx_tready, // @[:@2536.4]
  output       io_tx_tuser // @[:@2536.4]
);
  wire  router_clock; // @[top.scala 22:22:@2538.4]
  wire  router_reset; // @[top.scala 22:22:@2538.4]
  wire  router_io_rx_clk; // @[top.scala 22:22:@2538.4]
  wire  router_io_tx_clk; // @[top.scala 22:22:@2538.4]
  wire [7:0] router_io_rx_tdata; // @[top.scala 22:22:@2538.4]
  wire  router_io_rx_tvalid; // @[top.scala 22:22:@2538.4]
  wire  router_io_rx_tlast; // @[top.scala 22:22:@2538.4]
  wire [7:0] router_io_tx_tdata; // @[top.scala 22:22:@2538.4]
  wire  router_io_tx_tvalid; // @[top.scala 22:22:@2538.4]
  wire  router_io_tx_tlast; // @[top.scala 22:22:@2538.4]
  wire  router_io_tx_tready; // @[top.scala 22:22:@2538.4]
  Router router ( // @[top.scala 22:22:@2538.4]
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
    .io_tx_tready(router_io_tx_tready)
  );
  assign io_tx_tdata = router_io_tx_tdata; // @[top.scala 32:15:@2547.4]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 34:16:@2549.4]
  assign io_tx_tlast = router_io_tx_tlast; // @[top.scala 33:15:@2548.4]
  assign io_tx_tuser = 1'h0; // @[top.scala 37:15:@2551.4]
  assign router_clock = clock; // @[:@2539.4]
  assign router_reset = reset; // @[:@2540.4]
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 24:20:@2541.4]
  assign router_io_tx_clk = io_tx_clk; // @[top.scala 25:20:@2542.4]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 27:22:@2543.4]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 28:23:@2544.4]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 29:22:@2545.4]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 35:23:@2550.4]
endmodule
