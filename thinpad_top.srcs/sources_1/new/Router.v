module AsyncBridge( // @[:@26.2]
  input         clock, // @[:@27.4]
  input         reset, // @[:@28.4]
  input         io_write_clk, // @[:@29.4]
  input         io_write_en, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_0, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_1, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_2, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_3, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_4, // @[:@29.4]
  input  [7:0]  io_write_data_eth_dest_addr_5, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_0, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_1, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_2, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_3, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_4, // @[:@29.4]
  input  [7:0]  io_write_data_eth_sender_addr_5, // @[:@29.4]
  input  [1:0]  io_write_data_eth_pactype, // @[:@29.4]
  input  [2:0]  io_write_data_eth_vlan, // @[:@29.4]
  input  [15:0] io_write_data_arp_htype, // @[:@29.4]
  input  [15:0] io_write_data_arp_ptype, // @[:@29.4]
  input  [7:0]  io_write_data_arp_hlen, // @[:@29.4]
  input  [7:0]  io_write_data_arp_plen, // @[:@29.4]
  input  [15:0] io_write_data_arp_oper, // @[:@29.4]
  input  [47:0] io_write_data_arp_sha, // @[:@29.4]
  input  [31:0] io_write_data_arp_spa, // @[:@29.4]
  input  [47:0] io_write_data_arp_tha, // @[:@29.4]
  input  [31:0] io_write_data_arp_tpa, // @[:@29.4]
  input  [3:0]  io_write_data_ip_version, // @[:@29.4]
  input  [3:0]  io_write_data_ip_ihl, // @[:@29.4]
  input  [5:0]  io_write_data_ip_dscp, // @[:@29.4]
  input  [1:0]  io_write_data_ip_ecn, // @[:@29.4]
  input  [15:0] io_write_data_ip_len, // @[:@29.4]
  input  [15:0] io_write_data_ip_id, // @[:@29.4]
  input  [2:0]  io_write_data_ip_flags, // @[:@29.4]
  input  [12:0] io_write_data_ip_foff, // @[:@29.4]
  input  [7:0]  io_write_data_ip_ttl, // @[:@29.4]
  input  [7:0]  io_write_data_ip_proto, // @[:@29.4]
  input  [15:0] io_write_data_ip_chksum, // @[:@29.4]
  input  [31:0] io_write_data_ip_src, // @[:@29.4]
  input  [31:0] io_write_data_ip_dest, // @[:@29.4]
  output        io_write_full, // @[:@29.4]
  output [15:0] io_write_space, // @[:@29.4]
  input         io_read_clk, // @[:@29.4]
  input         io_read_en, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_0, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_1, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_2, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_3, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_4, // @[:@29.4]
  output [7:0]  io_read_data_eth_dest_addr_5, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_0, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_1, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_2, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_3, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_4, // @[:@29.4]
  output [7:0]  io_read_data_eth_sender_addr_5, // @[:@29.4]
  output [1:0]  io_read_data_eth_pactype, // @[:@29.4]
  output [2:0]  io_read_data_eth_vlan, // @[:@29.4]
  output [15:0] io_read_data_arp_htype, // @[:@29.4]
  output [15:0] io_read_data_arp_ptype, // @[:@29.4]
  output [7:0]  io_read_data_arp_hlen, // @[:@29.4]
  output [7:0]  io_read_data_arp_plen, // @[:@29.4]
  output [15:0] io_read_data_arp_oper, // @[:@29.4]
  output [47:0] io_read_data_arp_sha, // @[:@29.4]
  output [31:0] io_read_data_arp_spa, // @[:@29.4]
  output [47:0] io_read_data_arp_tha, // @[:@29.4]
  output [31:0] io_read_data_arp_tpa, // @[:@29.4]
  output [3:0]  io_read_data_ip_version, // @[:@29.4]
  output [3:0]  io_read_data_ip_ihl, // @[:@29.4]
  output [5:0]  io_read_data_ip_dscp, // @[:@29.4]
  output [1:0]  io_read_data_ip_ecn, // @[:@29.4]
  output [15:0] io_read_data_ip_len, // @[:@29.4]
  output [15:0] io_read_data_ip_id, // @[:@29.4]
  output [2:0]  io_read_data_ip_flags, // @[:@29.4]
  output [12:0] io_read_data_ip_foff, // @[:@29.4]
  output [7:0]  io_read_data_ip_ttl, // @[:@29.4]
  output [7:0]  io_read_data_ip_proto, // @[:@29.4]
  output [15:0] io_read_data_ip_chksum, // @[:@29.4]
  output [31:0] io_read_data_ip_src, // @[:@29.4]
  output [31:0] io_read_data_ip_dest, // @[:@29.4]
  output        io_read_empty // @[:@29.4]
);
  wire [15:0] inner_rd_data_count; // @[asyncBridge.scala 67:21:@31.4]
  wire [15:0] inner_wr_data_count; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_empty; // @[asyncBridge.scala 67:21:@31.4]
  wire [484:0] inner_dout; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_rd_en; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_rd_clk; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_full; // @[asyncBridge.scala 67:21:@31.4]
  wire [484:0] inner_din; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_wr_en; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_wr_clk; // @[asyncBridge.scala 67:21:@31.4]
  wire  inner_rst; // @[asyncBridge.scala 67:21:@31.4]
  wire [63:0] _T_183; // @[asyncBridge.scala 73:33:@46.4]
  wire [23:0] _T_184; // @[asyncBridge.scala 73:33:@47.4]
  wire [87:0] _T_185; // @[asyncBridge.scala 73:33:@48.4]
  wire [20:0] _T_186; // @[asyncBridge.scala 73:33:@49.4]
  wire [31:0] _T_187; // @[asyncBridge.scala 73:33:@50.4]
  wire [34:0] _T_188; // @[asyncBridge.scala 73:33:@51.4]
  wire [55:0] _T_189; // @[asyncBridge.scala 73:33:@52.4]
  wire [143:0] _T_190; // @[asyncBridge.scala 73:33:@53.4]
  wire [7:0] _T_191; // @[asyncBridge.scala 73:33:@54.4]
  wire [7:0] _T_192; // @[asyncBridge.scala 73:33:@55.4]
  wire [15:0] _T_193; // @[asyncBridge.scala 73:33:@56.4]
  wire [79:0] _T_194; // @[asyncBridge.scala 73:33:@57.4]
  wire [63:0] _T_195; // @[asyncBridge.scala 73:33:@58.4]
  wire [95:0] _T_196; // @[asyncBridge.scala 73:33:@59.4]
  wire [175:0] _T_197; // @[asyncBridge.scala 73:33:@60.4]
  wire [191:0] _T_198; // @[asyncBridge.scala 73:33:@61.4]
  wire [335:0] _T_199; // @[asyncBridge.scala 73:33:@62.4]
  wire [15:0] _T_200; // @[asyncBridge.scala 73:33:@63.4]
  wire [31:0] _T_201; // @[asyncBridge.scala 73:33:@64.4]
  wire [47:0] _T_202; // @[asyncBridge.scala 73:33:@65.4]
  wire [4:0] _T_203; // @[asyncBridge.scala 73:33:@66.4]
  wire [15:0] _T_204; // @[asyncBridge.scala 73:33:@67.4]
  wire [23:0] _T_205; // @[asyncBridge.scala 73:33:@68.4]
  wire [28:0] _T_206; // @[asyncBridge.scala 73:33:@69.4]
  wire [76:0] _T_207; // @[asyncBridge.scala 73:33:@70.4]
  wire [15:0] _T_208; // @[asyncBridge.scala 73:33:@71.4]
  wire [15:0] _T_209; // @[asyncBridge.scala 73:33:@72.4]
  wire [31:0] _T_210; // @[asyncBridge.scala 73:33:@73.4]
  wire [15:0] _T_211; // @[asyncBridge.scala 73:33:@74.4]
  wire [15:0] _T_212; // @[asyncBridge.scala 73:33:@75.4]
  wire [23:0] _T_213; // @[asyncBridge.scala 73:33:@76.4]
  wire [39:0] _T_214; // @[asyncBridge.scala 73:33:@77.4]
  wire [71:0] _T_215; // @[asyncBridge.scala 73:33:@78.4]
  wire [148:0] _T_216; // @[asyncBridge.scala 73:33:@79.4]
  wire [484:0] _T_217; // @[asyncBridge.scala 73:33:@80.4]
  wire [16:0] _T_219; // @[asyncBridge.scala 75:29:@83.4]
  wire [15:0] _T_220; // @[asyncBridge.scala 75:29:@84.4]
  wire [16:0] _T_221; // @[asyncBridge.scala 75:54:@85.4]
  wire [16:0] _T_222; // @[asyncBridge.scala 75:54:@86.4]
  wire [15:0] _T_223; // @[asyncBridge.scala 75:54:@87.4]
  wire [484:0] _T_281; // @[:@92.4 :@93.4]
  wire [31:0] _T_282; // @[asyncBridge.scala 79:41:@94.4]
  wire [31:0] _T_283; // @[asyncBridge.scala 79:41:@96.4]
  wire [15:0] _T_284; // @[asyncBridge.scala 79:41:@98.4]
  wire [7:0] _T_285; // @[asyncBridge.scala 79:41:@100.4]
  wire [7:0] _T_286; // @[asyncBridge.scala 79:41:@102.4]
  wire [12:0] _T_287; // @[asyncBridge.scala 79:41:@104.4]
  wire [2:0] _T_288; // @[asyncBridge.scala 79:41:@106.4]
  wire [15:0] _T_289; // @[asyncBridge.scala 79:41:@108.4]
  wire [15:0] _T_290; // @[asyncBridge.scala 79:41:@110.4]
  wire [1:0] _T_291; // @[asyncBridge.scala 79:41:@112.4]
  wire [5:0] _T_292; // @[asyncBridge.scala 79:41:@114.4]
  wire [3:0] _T_293; // @[asyncBridge.scala 79:41:@116.4]
  wire [3:0] _T_294; // @[asyncBridge.scala 79:41:@118.4]
  wire [31:0] _T_295; // @[asyncBridge.scala 79:41:@120.4]
  wire [47:0] _T_296; // @[asyncBridge.scala 79:41:@122.4]
  wire [31:0] _T_297; // @[asyncBridge.scala 79:41:@124.4]
  wire [47:0] _T_298; // @[asyncBridge.scala 79:41:@126.4]
  wire [15:0] _T_299; // @[asyncBridge.scala 79:41:@128.4]
  wire [7:0] _T_300; // @[asyncBridge.scala 79:41:@130.4]
  wire [7:0] _T_301; // @[asyncBridge.scala 79:41:@132.4]
  wire [15:0] _T_302; // @[asyncBridge.scala 79:41:@134.4]
  wire [15:0] _T_303; // @[asyncBridge.scala 79:41:@136.4]
  wire [2:0] _T_304; // @[asyncBridge.scala 79:41:@138.4]
  wire [1:0] _T_305; // @[asyncBridge.scala 79:41:@140.4]
  wire [7:0] _T_306; // @[asyncBridge.scala 79:41:@142.4]
  wire [7:0] _T_307; // @[asyncBridge.scala 79:41:@144.4]
  wire [7:0] _T_308; // @[asyncBridge.scala 79:41:@146.4]
  wire [7:0] _T_309; // @[asyncBridge.scala 79:41:@148.4]
  wire [7:0] _T_310; // @[asyncBridge.scala 79:41:@150.4]
  wire [7:0] _T_311; // @[asyncBridge.scala 79:41:@152.4]
  wire [7:0] _T_312; // @[asyncBridge.scala 79:41:@154.4]
  wire [7:0] _T_313; // @[asyncBridge.scala 79:41:@156.4]
  wire [7:0] _T_314; // @[asyncBridge.scala 79:41:@158.4]
  wire [7:0] _T_315; // @[asyncBridge.scala 79:41:@160.4]
  wire [7:0] _T_316; // @[asyncBridge.scala 79:41:@162.4]
  wire [7:0] _T_317; // @[asyncBridge.scala 79:41:@164.4]
  wire [7:0] _T_252_eth_dest_addr_0; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@155.4]
  wire [7:0] _T_252_eth_dest_addr_1; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@157.4]
  wire [7:0] _T_252_eth_dest_addr_2; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@159.4]
  wire [7:0] _T_252_eth_dest_addr_3; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@161.4]
  wire [7:0] _T_252_eth_dest_addr_4; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@163.4]
  wire [7:0] _T_252_eth_dest_addr_5; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@165.4]
  wire [7:0] _T_252_eth_sender_addr_0; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@143.4]
  wire [7:0] _T_252_eth_sender_addr_1; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@145.4]
  wire [7:0] _T_252_eth_sender_addr_2; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@147.4]
  wire [7:0] _T_252_eth_sender_addr_3; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@149.4]
  wire [7:0] _T_252_eth_sender_addr_4; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@151.4]
  wire [7:0] _T_252_eth_sender_addr_5; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@153.4]
  wire [1:0] _T_252_eth_pactype; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@141.4]
  wire [2:0] _T_252_eth_vlan; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@139.4]
  wire [15:0] _T_252_arp_htype; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@137.4]
  wire [15:0] _T_252_arp_ptype; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@135.4]
  wire [7:0] _T_252_arp_hlen; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@133.4]
  wire [7:0] _T_252_arp_plen; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@131.4]
  wire [15:0] _T_252_arp_oper; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@129.4]
  wire [47:0] _T_252_arp_sha; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@127.4]
  wire [31:0] _T_252_arp_spa; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@125.4]
  wire [47:0] _T_252_arp_tha; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@123.4]
  wire [31:0] _T_252_arp_tpa; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@121.4]
  wire [3:0] _T_252_ip_version; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@119.4]
  wire [3:0] _T_252_ip_ihl; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@117.4]
  wire [5:0] _T_252_ip_dscp; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@115.4]
  wire [1:0] _T_252_ip_ecn; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@113.4]
  wire [15:0] _T_252_ip_len; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@111.4]
  wire [15:0] _T_252_ip_id; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@109.4]
  wire [2:0] _T_252_ip_flags; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@107.4]
  wire [12:0] _T_252_ip_foff; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@105.4]
  wire [7:0] _T_252_ip_ttl; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@103.4]
  wire [7:0] _T_252_ip_proto; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@101.4]
  wire [15:0] _T_252_ip_chksum; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@99.4]
  wire [31:0] _T_252_ip_src; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@97.4]
  wire [31:0] _T_252_ip_dest; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@95.4]
  xpm_fifo_async #(.RD_DATA_COUNT_WIDTH(16), .READ_DATA_WIDTH(485), .WRITE_DATA_WIDTH(485), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .WR_DATA_COUNT_WIDTH(16), .FIFO_MEMORY_TYPE("distributed"), .FIFO_READ_LATENCY(0)) inner ( // @[asyncBridge.scala 67:21:@31.4]
    .rd_data_count(inner_rd_data_count),
    .wr_data_count(inner_wr_data_count),
    .empty(inner_empty),
    .dout(inner_dout),
    .rd_en(inner_rd_en),
    .rd_clk(inner_rd_clk),
    .full(inner_full),
    .din(inner_din),
    .wr_en(inner_wr_en),
    .wr_clk(inner_wr_clk),
    .rst(inner_rst)
  );
  assign _T_183 = {io_write_data_ip_src,io_write_data_ip_dest}; // @[asyncBridge.scala 73:33:@46.4]
  assign _T_184 = {io_write_data_ip_proto,io_write_data_ip_chksum}; // @[asyncBridge.scala 73:33:@47.4]
  assign _T_185 = {io_write_data_ip_proto,io_write_data_ip_chksum,io_write_data_ip_src,io_write_data_ip_dest}; // @[asyncBridge.scala 73:33:@48.4]
  assign _T_186 = {io_write_data_ip_foff,io_write_data_ip_ttl}; // @[asyncBridge.scala 73:33:@49.4]
  assign _T_187 = {io_write_data_ip_len,io_write_data_ip_id}; // @[asyncBridge.scala 73:33:@50.4]
  assign _T_188 = {io_write_data_ip_len,io_write_data_ip_id,io_write_data_ip_flags}; // @[asyncBridge.scala 73:33:@51.4]
  assign _T_189 = {io_write_data_ip_len,io_write_data_ip_id,io_write_data_ip_flags,io_write_data_ip_foff,io_write_data_ip_ttl}; // @[asyncBridge.scala 73:33:@52.4]
  assign _T_190 = {io_write_data_ip_len,io_write_data_ip_id,io_write_data_ip_flags,io_write_data_ip_foff,io_write_data_ip_ttl,io_write_data_ip_proto,io_write_data_ip_chksum,io_write_data_ip_src,io_write_data_ip_dest}; // @[asyncBridge.scala 73:33:@53.4]
  assign _T_191 = {io_write_data_ip_dscp,io_write_data_ip_ecn}; // @[asyncBridge.scala 73:33:@54.4]
  assign _T_192 = {io_write_data_ip_version,io_write_data_ip_ihl}; // @[asyncBridge.scala 73:33:@55.4]
  assign _T_193 = {io_write_data_ip_version,io_write_data_ip_ihl,io_write_data_ip_dscp,io_write_data_ip_ecn}; // @[asyncBridge.scala 73:33:@56.4]
  assign _T_194 = {io_write_data_arp_tha,io_write_data_arp_tpa}; // @[asyncBridge.scala 73:33:@57.4]
  assign _T_195 = {io_write_data_arp_oper,io_write_data_arp_sha}; // @[asyncBridge.scala 73:33:@58.4]
  assign _T_196 = {io_write_data_arp_oper,io_write_data_arp_sha,io_write_data_arp_spa}; // @[asyncBridge.scala 73:33:@59.4]
  assign _T_197 = {io_write_data_arp_oper,io_write_data_arp_sha,io_write_data_arp_spa,io_write_data_arp_tha,io_write_data_arp_tpa}; // @[asyncBridge.scala 73:33:@60.4]
  assign _T_198 = {io_write_data_arp_oper,io_write_data_arp_sha,io_write_data_arp_spa,io_write_data_arp_tha,io_write_data_arp_tpa,io_write_data_ip_version,io_write_data_ip_ihl,io_write_data_ip_dscp,io_write_data_ip_ecn}; // @[asyncBridge.scala 73:33:@61.4]
  assign _T_199 = {io_write_data_arp_oper,io_write_data_arp_sha,io_write_data_arp_spa,io_write_data_arp_tha,io_write_data_arp_tpa,io_write_data_ip_version,io_write_data_ip_ihl,io_write_data_ip_dscp,io_write_data_ip_ecn,_T_190}; // @[asyncBridge.scala 73:33:@62.4]
  assign _T_200 = {io_write_data_arp_hlen,io_write_data_arp_plen}; // @[asyncBridge.scala 73:33:@63.4]
  assign _T_201 = {io_write_data_arp_htype,io_write_data_arp_ptype}; // @[asyncBridge.scala 73:33:@64.4]
  assign _T_202 = {io_write_data_arp_htype,io_write_data_arp_ptype,io_write_data_arp_hlen,io_write_data_arp_plen}; // @[asyncBridge.scala 73:33:@65.4]
  assign _T_203 = {io_write_data_eth_pactype,io_write_data_eth_vlan}; // @[asyncBridge.scala 73:33:@66.4]
  assign _T_204 = {io_write_data_eth_sender_addr_2,io_write_data_eth_sender_addr_1}; // @[asyncBridge.scala 73:33:@67.4]
  assign _T_205 = {io_write_data_eth_sender_addr_2,io_write_data_eth_sender_addr_1,io_write_data_eth_sender_addr_0}; // @[asyncBridge.scala 73:33:@68.4]
  assign _T_206 = {io_write_data_eth_sender_addr_2,io_write_data_eth_sender_addr_1,io_write_data_eth_sender_addr_0,io_write_data_eth_pactype,io_write_data_eth_vlan}; // @[asyncBridge.scala 73:33:@69.4]
  assign _T_207 = {io_write_data_eth_sender_addr_2,io_write_data_eth_sender_addr_1,io_write_data_eth_sender_addr_0,io_write_data_eth_pactype,io_write_data_eth_vlan,io_write_data_arp_htype,io_write_data_arp_ptype,io_write_data_arp_hlen,io_write_data_arp_plen}; // @[asyncBridge.scala 73:33:@70.4]
  assign _T_208 = {io_write_data_eth_sender_addr_4,io_write_data_eth_sender_addr_3}; // @[asyncBridge.scala 73:33:@71.4]
  assign _T_209 = {io_write_data_eth_dest_addr_0,io_write_data_eth_sender_addr_5}; // @[asyncBridge.scala 73:33:@72.4]
  assign _T_210 = {io_write_data_eth_dest_addr_0,io_write_data_eth_sender_addr_5,io_write_data_eth_sender_addr_4,io_write_data_eth_sender_addr_3}; // @[asyncBridge.scala 73:33:@73.4]
  assign _T_211 = {io_write_data_eth_dest_addr_2,io_write_data_eth_dest_addr_1}; // @[asyncBridge.scala 73:33:@74.4]
  assign _T_212 = {io_write_data_eth_dest_addr_5,io_write_data_eth_dest_addr_4}; // @[asyncBridge.scala 73:33:@75.4]
  assign _T_213 = {io_write_data_eth_dest_addr_5,io_write_data_eth_dest_addr_4,io_write_data_eth_dest_addr_3}; // @[asyncBridge.scala 73:33:@76.4]
  assign _T_214 = {io_write_data_eth_dest_addr_5,io_write_data_eth_dest_addr_4,io_write_data_eth_dest_addr_3,io_write_data_eth_dest_addr_2,io_write_data_eth_dest_addr_1}; // @[asyncBridge.scala 73:33:@77.4]
  assign _T_215 = {io_write_data_eth_dest_addr_5,io_write_data_eth_dest_addr_4,io_write_data_eth_dest_addr_3,io_write_data_eth_dest_addr_2,io_write_data_eth_dest_addr_1,io_write_data_eth_dest_addr_0,io_write_data_eth_sender_addr_5,io_write_data_eth_sender_addr_4,io_write_data_eth_sender_addr_3}; // @[asyncBridge.scala 73:33:@78.4]
  assign _T_216 = {io_write_data_eth_dest_addr_5,io_write_data_eth_dest_addr_4,io_write_data_eth_dest_addr_3,io_write_data_eth_dest_addr_2,io_write_data_eth_dest_addr_1,io_write_data_eth_dest_addr_0,io_write_data_eth_sender_addr_5,io_write_data_eth_sender_addr_4,io_write_data_eth_sender_addr_3,_T_207}; // @[asyncBridge.scala 73:33:@79.4]
  assign _T_217 = {_T_216,_T_199}; // @[asyncBridge.scala 73:33:@80.4]
  assign _T_219 = 16'h10 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@83.4]
  assign _T_220 = 16'h10 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@84.4]
  assign _T_221 = _T_220 - inner_wr_data_count; // @[asyncBridge.scala 75:54:@85.4]
  assign _T_222 = $unsigned(_T_221); // @[asyncBridge.scala 75:54:@86.4]
  assign _T_223 = _T_222[15:0]; // @[asyncBridge.scala 75:54:@87.4]
  assign _T_281 = inner_dout; // @[:@92.4 :@93.4]
  assign _T_282 = _T_281[31:0]; // @[asyncBridge.scala 79:41:@94.4]
  assign _T_283 = _T_281[63:32]; // @[asyncBridge.scala 79:41:@96.4]
  assign _T_284 = _T_281[79:64]; // @[asyncBridge.scala 79:41:@98.4]
  assign _T_285 = _T_281[87:80]; // @[asyncBridge.scala 79:41:@100.4]
  assign _T_286 = _T_281[95:88]; // @[asyncBridge.scala 79:41:@102.4]
  assign _T_287 = _T_281[108:96]; // @[asyncBridge.scala 79:41:@104.4]
  assign _T_288 = _T_281[111:109]; // @[asyncBridge.scala 79:41:@106.4]
  assign _T_289 = _T_281[127:112]; // @[asyncBridge.scala 79:41:@108.4]
  assign _T_290 = _T_281[143:128]; // @[asyncBridge.scala 79:41:@110.4]
  assign _T_291 = _T_281[145:144]; // @[asyncBridge.scala 79:41:@112.4]
  assign _T_292 = _T_281[151:146]; // @[asyncBridge.scala 79:41:@114.4]
  assign _T_293 = _T_281[155:152]; // @[asyncBridge.scala 79:41:@116.4]
  assign _T_294 = _T_281[159:156]; // @[asyncBridge.scala 79:41:@118.4]
  assign _T_295 = _T_281[191:160]; // @[asyncBridge.scala 79:41:@120.4]
  assign _T_296 = _T_281[239:192]; // @[asyncBridge.scala 79:41:@122.4]
  assign _T_297 = _T_281[271:240]; // @[asyncBridge.scala 79:41:@124.4]
  assign _T_298 = _T_281[319:272]; // @[asyncBridge.scala 79:41:@126.4]
  assign _T_299 = _T_281[335:320]; // @[asyncBridge.scala 79:41:@128.4]
  assign _T_300 = _T_281[343:336]; // @[asyncBridge.scala 79:41:@130.4]
  assign _T_301 = _T_281[351:344]; // @[asyncBridge.scala 79:41:@132.4]
  assign _T_302 = _T_281[367:352]; // @[asyncBridge.scala 79:41:@134.4]
  assign _T_303 = _T_281[383:368]; // @[asyncBridge.scala 79:41:@136.4]
  assign _T_304 = _T_281[386:384]; // @[asyncBridge.scala 79:41:@138.4]
  assign _T_305 = _T_281[388:387]; // @[asyncBridge.scala 79:41:@140.4]
  assign _T_306 = _T_281[396:389]; // @[asyncBridge.scala 79:41:@142.4]
  assign _T_307 = _T_281[404:397]; // @[asyncBridge.scala 79:41:@144.4]
  assign _T_308 = _T_281[412:405]; // @[asyncBridge.scala 79:41:@146.4]
  assign _T_309 = _T_281[420:413]; // @[asyncBridge.scala 79:41:@148.4]
  assign _T_310 = _T_281[428:421]; // @[asyncBridge.scala 79:41:@150.4]
  assign _T_311 = _T_281[436:429]; // @[asyncBridge.scala 79:41:@152.4]
  assign _T_312 = _T_281[444:437]; // @[asyncBridge.scala 79:41:@154.4]
  assign _T_313 = _T_281[452:445]; // @[asyncBridge.scala 79:41:@156.4]
  assign _T_314 = _T_281[460:453]; // @[asyncBridge.scala 79:41:@158.4]
  assign _T_315 = _T_281[468:461]; // @[asyncBridge.scala 79:41:@160.4]
  assign _T_316 = _T_281[476:469]; // @[asyncBridge.scala 79:41:@162.4]
  assign _T_317 = _T_281[484:477]; // @[asyncBridge.scala 79:41:@164.4]
  assign _T_252_eth_dest_addr_0 = _T_312; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@155.4]
  assign _T_252_eth_dest_addr_1 = _T_313; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@157.4]
  assign _T_252_eth_dest_addr_2 = _T_314; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@159.4]
  assign _T_252_eth_dest_addr_3 = _T_315; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@161.4]
  assign _T_252_eth_dest_addr_4 = _T_316; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@163.4]
  assign _T_252_eth_dest_addr_5 = _T_317; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@165.4]
  assign _T_252_eth_sender_addr_0 = _T_306; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@143.4]
  assign _T_252_eth_sender_addr_1 = _T_307; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@145.4]
  assign _T_252_eth_sender_addr_2 = _T_308; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@147.4]
  assign _T_252_eth_sender_addr_3 = _T_309; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@149.4]
  assign _T_252_eth_sender_addr_4 = _T_310; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@151.4]
  assign _T_252_eth_sender_addr_5 = _T_311; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@153.4]
  assign _T_252_eth_pactype = _T_305; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@141.4]
  assign _T_252_eth_vlan = _T_304; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@139.4]
  assign _T_252_arp_htype = _T_303; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@137.4]
  assign _T_252_arp_ptype = _T_302; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@135.4]
  assign _T_252_arp_hlen = _T_301; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@133.4]
  assign _T_252_arp_plen = _T_300; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@131.4]
  assign _T_252_arp_oper = _T_299; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@129.4]
  assign _T_252_arp_sha = _T_298; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@127.4]
  assign _T_252_arp_spa = _T_297; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@125.4]
  assign _T_252_arp_tha = _T_296; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@123.4]
  assign _T_252_arp_tpa = _T_295; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@121.4]
  assign _T_252_ip_version = _T_294; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@119.4]
  assign _T_252_ip_ihl = _T_293; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@117.4]
  assign _T_252_ip_dscp = _T_292; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@115.4]
  assign _T_252_ip_ecn = _T_291; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@113.4]
  assign _T_252_ip_len = _T_290; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@111.4]
  assign _T_252_ip_id = _T_289; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@109.4]
  assign _T_252_ip_flags = _T_288; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@107.4]
  assign _T_252_ip_foff = _T_287; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@105.4]
  assign _T_252_ip_ttl = _T_286; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@103.4]
  assign _T_252_ip_proto = _T_285; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@101.4]
  assign _T_252_ip_chksum = _T_284; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@99.4]
  assign _T_252_ip_src = _T_283; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@97.4]
  assign _T_252_ip_dest = _T_282; // @[asyncBridge.scala 79:41:@91.4 asyncBridge.scala 79:41:@95.4]
  assign io_write_full = inner_full; // @[asyncBridge.scala 74:17:@82.4]
  assign io_write_space = _T_222[15:0]; // @[asyncBridge.scala 75:18:@88.4]
  assign io_read_data_eth_dest_addr_0 = _T_281[444:437]; // @[asyncBridge.scala 79:16:@196.4]
  assign io_read_data_eth_dest_addr_1 = _T_281[452:445]; // @[asyncBridge.scala 79:16:@197.4]
  assign io_read_data_eth_dest_addr_2 = _T_281[460:453]; // @[asyncBridge.scala 79:16:@198.4]
  assign io_read_data_eth_dest_addr_3 = _T_281[468:461]; // @[asyncBridge.scala 79:16:@199.4]
  assign io_read_data_eth_dest_addr_4 = _T_281[476:469]; // @[asyncBridge.scala 79:16:@200.4]
  assign io_read_data_eth_dest_addr_5 = _T_281[484:477]; // @[asyncBridge.scala 79:16:@201.4]
  assign io_read_data_eth_sender_addr_0 = _T_281[396:389]; // @[asyncBridge.scala 79:16:@190.4]
  assign io_read_data_eth_sender_addr_1 = _T_281[404:397]; // @[asyncBridge.scala 79:16:@191.4]
  assign io_read_data_eth_sender_addr_2 = _T_281[412:405]; // @[asyncBridge.scala 79:16:@192.4]
  assign io_read_data_eth_sender_addr_3 = _T_281[420:413]; // @[asyncBridge.scala 79:16:@193.4]
  assign io_read_data_eth_sender_addr_4 = _T_281[428:421]; // @[asyncBridge.scala 79:16:@194.4]
  assign io_read_data_eth_sender_addr_5 = _T_281[436:429]; // @[asyncBridge.scala 79:16:@195.4]
  assign io_read_data_eth_pactype = _T_281[388:387]; // @[asyncBridge.scala 79:16:@189.4]
  assign io_read_data_eth_vlan = _T_281[386:384]; // @[asyncBridge.scala 79:16:@188.4]
  assign io_read_data_arp_htype = _T_281[383:368]; // @[asyncBridge.scala 79:16:@187.4]
  assign io_read_data_arp_ptype = _T_281[367:352]; // @[asyncBridge.scala 79:16:@186.4]
  assign io_read_data_arp_hlen = _T_281[351:344]; // @[asyncBridge.scala 79:16:@185.4]
  assign io_read_data_arp_plen = _T_281[343:336]; // @[asyncBridge.scala 79:16:@184.4]
  assign io_read_data_arp_oper = _T_281[335:320]; // @[asyncBridge.scala 79:16:@183.4]
  assign io_read_data_arp_sha = _T_281[319:272]; // @[asyncBridge.scala 79:16:@182.4]
  assign io_read_data_arp_spa = _T_281[271:240]; // @[asyncBridge.scala 79:16:@181.4]
  assign io_read_data_arp_tha = _T_281[239:192]; // @[asyncBridge.scala 79:16:@180.4]
  assign io_read_data_arp_tpa = _T_281[191:160]; // @[asyncBridge.scala 79:16:@179.4]
  assign io_read_data_ip_version = _T_281[159:156]; // @[asyncBridge.scala 79:16:@178.4]
  assign io_read_data_ip_ihl = _T_281[155:152]; // @[asyncBridge.scala 79:16:@177.4]
  assign io_read_data_ip_dscp = _T_281[151:146]; // @[asyncBridge.scala 79:16:@176.4]
  assign io_read_data_ip_ecn = _T_281[145:144]; // @[asyncBridge.scala 79:16:@175.4]
  assign io_read_data_ip_len = _T_281[143:128]; // @[asyncBridge.scala 79:16:@174.4]
  assign io_read_data_ip_id = _T_281[127:112]; // @[asyncBridge.scala 79:16:@173.4]
  assign io_read_data_ip_flags = _T_281[111:109]; // @[asyncBridge.scala 79:16:@172.4]
  assign io_read_data_ip_foff = _T_281[108:96]; // @[asyncBridge.scala 79:16:@171.4]
  assign io_read_data_ip_ttl = _T_281[95:88]; // @[asyncBridge.scala 79:16:@170.4]
  assign io_read_data_ip_proto = _T_281[87:80]; // @[asyncBridge.scala 79:16:@169.4]
  assign io_read_data_ip_chksum = _T_281[79:64]; // @[asyncBridge.scala 79:16:@168.4]
  assign io_read_data_ip_src = _T_281[63:32]; // @[asyncBridge.scala 79:16:@167.4]
  assign io_read_data_ip_dest = _T_281[31:0]; // @[asyncBridge.scala 79:16:@166.4]
  assign io_read_empty = inner_empty; // @[asyncBridge.scala 80:17:@202.4]
  assign inner_rd_en = io_read_en; // @[asyncBridge.scala 78:18:@90.4]
  assign inner_rd_clk = io_read_clk; // @[asyncBridge.scala 77:19:@89.4]
  assign inner_din = {_T_216,_T_199}; // @[asyncBridge.scala 73:16:@81.4]
  assign inner_wr_en = io_write_en; // @[asyncBridge.scala 72:18:@45.4]
  assign inner_wr_clk = io_write_clk; // @[asyncBridge.scala 71:19:@44.4]
  assign inner_rst = reset; // @[asyncBridge.scala 69:16:@43.4]
endmodule
module AsyncBridge_1( // @[:@227.2]
  input         clock, // @[:@228.4]
  input         reset, // @[:@229.4]
  input         io_write_clk, // @[:@230.4]
  input         io_write_en, // @[:@230.4]
  input  [7:0]  io_write_data_data, // @[:@230.4]
  input         io_write_data_last, // @[:@230.4]
  output        io_write_full, // @[:@230.4]
  output [15:0] io_write_space, // @[:@230.4]
  input         io_read_clk, // @[:@230.4]
  input         io_read_en, // @[:@230.4]
  output [7:0]  io_read_data_data, // @[:@230.4]
  output        io_read_data_last, // @[:@230.4]
  output        io_read_empty // @[:@230.4]
);
  wire [15:0] inner_rd_data_count; // @[asyncBridge.scala 67:21:@232.4]
  wire [15:0] inner_wr_data_count; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_empty; // @[asyncBridge.scala 67:21:@232.4]
  wire [8:0] inner_dout; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_rd_en; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_rd_clk; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_full; // @[asyncBridge.scala 67:21:@232.4]
  wire [8:0] inner_din; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_wr_en; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_wr_clk; // @[asyncBridge.scala 67:21:@232.4]
  wire  inner_rst; // @[asyncBridge.scala 67:21:@232.4]
  wire [8:0] _T_21; // @[asyncBridge.scala 73:33:@247.4]
  wire [16:0] _T_23; // @[asyncBridge.scala 75:29:@250.4]
  wire [15:0] _T_24; // @[asyncBridge.scala 75:29:@251.4]
  wire [16:0] _T_25; // @[asyncBridge.scala 75:54:@252.4]
  wire [16:0] _T_26; // @[asyncBridge.scala 75:54:@253.4]
  wire [15:0] _T_27; // @[asyncBridge.scala 75:54:@254.4]
  wire [8:0] _T_31; // @[:@259.4 :@260.4]
  wire  _T_32; // @[asyncBridge.scala 79:41:@261.4]
  wire [7:0] _T_33; // @[asyncBridge.scala 79:41:@263.4]
  wire [7:0] _T_29_data; // @[asyncBridge.scala 79:41:@258.4 asyncBridge.scala 79:41:@264.4]
  wire  _T_29_last; // @[asyncBridge.scala 79:41:@258.4 asyncBridge.scala 79:41:@262.4]
  xpm_fifo_async #(.RD_DATA_COUNT_WIDTH(16), .READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .WR_DATA_COUNT_WIDTH(16), .FIFO_MEMORY_TYPE("distributed"), .FIFO_READ_LATENCY(0)) inner ( // @[asyncBridge.scala 67:21:@232.4]
    .rd_data_count(inner_rd_data_count),
    .wr_data_count(inner_wr_data_count),
    .empty(inner_empty),
    .dout(inner_dout),
    .rd_en(inner_rd_en),
    .rd_clk(inner_rd_clk),
    .full(inner_full),
    .din(inner_din),
    .wr_en(inner_wr_en),
    .wr_clk(inner_wr_clk),
    .rst(inner_rst)
  );
  assign _T_21 = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 73:33:@247.4]
  assign _T_23 = 16'h10 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@250.4]
  assign _T_24 = 16'h10 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@251.4]
  assign _T_25 = _T_24 - inner_wr_data_count; // @[asyncBridge.scala 75:54:@252.4]
  assign _T_26 = $unsigned(_T_25); // @[asyncBridge.scala 75:54:@253.4]
  assign _T_27 = _T_26[15:0]; // @[asyncBridge.scala 75:54:@254.4]
  assign _T_31 = inner_dout; // @[:@259.4 :@260.4]
  assign _T_32 = _T_31[0]; // @[asyncBridge.scala 79:41:@261.4]
  assign _T_33 = _T_31[8:1]; // @[asyncBridge.scala 79:41:@263.4]
  assign _T_29_data = _T_33; // @[asyncBridge.scala 79:41:@258.4 asyncBridge.scala 79:41:@264.4]
  assign _T_29_last = _T_32; // @[asyncBridge.scala 79:41:@258.4 asyncBridge.scala 79:41:@262.4]
  assign io_write_full = inner_full; // @[asyncBridge.scala 74:17:@249.4]
  assign io_write_space = _T_26[15:0]; // @[asyncBridge.scala 75:18:@255.4]
  assign io_read_data_data = _T_31[8:1]; // @[asyncBridge.scala 79:16:@266.4]
  assign io_read_data_last = _T_31[0]; // @[asyncBridge.scala 79:16:@265.4]
  assign io_read_empty = inner_empty; // @[asyncBridge.scala 80:17:@267.4]
  assign inner_rd_en = io_read_en; // @[asyncBridge.scala 78:18:@257.4]
  assign inner_rd_clk = io_read_clk; // @[asyncBridge.scala 77:19:@256.4]
  assign inner_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 73:16:@248.4]
  assign inner_wr_en = io_write_en; // @[asyncBridge.scala 72:18:@246.4]
  assign inner_wr_clk = io_write_clk; // @[asyncBridge.scala 71:19:@245.4]
  assign inner_rst = reset; // @[asyncBridge.scala 69:16:@244.4]
endmodule
module AsyncBridge_2( // @[:@292.2]
  input         clock, // @[:@293.4]
  input         reset, // @[:@294.4]
  input         io_write_clk, // @[:@295.4]
  input         io_write_en, // @[:@295.4]
  input  [7:0]  io_write_data_data, // @[:@295.4]
  input         io_write_data_last, // @[:@295.4]
  output        io_write_full, // @[:@295.4]
  output [15:0] io_write_space, // @[:@295.4]
  input         io_read_clk, // @[:@295.4]
  input         io_read_en, // @[:@295.4]
  output [7:0]  io_read_data_data, // @[:@295.4]
  output        io_read_data_last, // @[:@295.4]
  output        io_read_empty // @[:@295.4]
);
  wire [15:0] inner_rd_data_count; // @[asyncBridge.scala 67:21:@297.4]
  wire [15:0] inner_wr_data_count; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_empty; // @[asyncBridge.scala 67:21:@297.4]
  wire [8:0] inner_dout; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_rd_en; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_rd_clk; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_full; // @[asyncBridge.scala 67:21:@297.4]
  wire [8:0] inner_din; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_wr_en; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_wr_clk; // @[asyncBridge.scala 67:21:@297.4]
  wire  inner_rst; // @[asyncBridge.scala 67:21:@297.4]
  wire [8:0] _T_21; // @[asyncBridge.scala 73:33:@312.4]
  wire [16:0] _T_23; // @[asyncBridge.scala 75:29:@315.4]
  wire [15:0] _T_24; // @[asyncBridge.scala 75:29:@316.4]
  wire [16:0] _T_25; // @[asyncBridge.scala 75:54:@317.4]
  wire [16:0] _T_26; // @[asyncBridge.scala 75:54:@318.4]
  wire [15:0] _T_27; // @[asyncBridge.scala 75:54:@319.4]
  wire [8:0] _T_31; // @[:@324.4 :@325.4]
  wire  _T_32; // @[asyncBridge.scala 79:41:@326.4]
  wire [7:0] _T_33; // @[asyncBridge.scala 79:41:@328.4]
  wire [7:0] _T_29_data; // @[asyncBridge.scala 79:41:@323.4 asyncBridge.scala 79:41:@329.4]
  wire  _T_29_last; // @[asyncBridge.scala 79:41:@323.4 asyncBridge.scala 79:41:@327.4]
  xpm_fifo_async #(.RD_DATA_COUNT_WIDTH(16), .READ_DATA_WIDTH(9), .WRITE_DATA_WIDTH(9), .FIFO_WRITE_DEPTH(2048), .READ_MODE("fwft"), .WR_DATA_COUNT_WIDTH(16), .FIFO_MEMORY_TYPE("distributed"), .FIFO_READ_LATENCY(0)) inner ( // @[asyncBridge.scala 67:21:@297.4]
    .rd_data_count(inner_rd_data_count),
    .wr_data_count(inner_wr_data_count),
    .empty(inner_empty),
    .dout(inner_dout),
    .rd_en(inner_rd_en),
    .rd_clk(inner_rd_clk),
    .full(inner_full),
    .din(inner_din),
    .wr_en(inner_wr_en),
    .wr_clk(inner_wr_clk),
    .rst(inner_rst)
  );
  assign _T_21 = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 73:33:@312.4]
  assign _T_23 = 16'h800 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@315.4]
  assign _T_24 = 16'h800 + inner_rd_data_count; // @[asyncBridge.scala 75:29:@316.4]
  assign _T_25 = _T_24 - inner_wr_data_count; // @[asyncBridge.scala 75:54:@317.4]
  assign _T_26 = $unsigned(_T_25); // @[asyncBridge.scala 75:54:@318.4]
  assign _T_27 = _T_26[15:0]; // @[asyncBridge.scala 75:54:@319.4]
  assign _T_31 = inner_dout; // @[:@324.4 :@325.4]
  assign _T_32 = _T_31[0]; // @[asyncBridge.scala 79:41:@326.4]
  assign _T_33 = _T_31[8:1]; // @[asyncBridge.scala 79:41:@328.4]
  assign _T_29_data = _T_33; // @[asyncBridge.scala 79:41:@323.4 asyncBridge.scala 79:41:@329.4]
  assign _T_29_last = _T_32; // @[asyncBridge.scala 79:41:@323.4 asyncBridge.scala 79:41:@327.4]
  assign io_write_full = inner_full; // @[asyncBridge.scala 74:17:@314.4]
  assign io_write_space = _T_26[15:0]; // @[asyncBridge.scala 75:18:@320.4]
  assign io_read_data_data = _T_31[8:1]; // @[asyncBridge.scala 79:16:@331.4]
  assign io_read_data_last = _T_31[0]; // @[asyncBridge.scala 79:16:@330.4]
  assign io_read_empty = inner_empty; // @[asyncBridge.scala 80:17:@332.4]
  assign inner_rd_en = io_read_en; // @[asyncBridge.scala 78:18:@322.4]
  assign inner_rd_clk = io_read_clk; // @[asyncBridge.scala 77:19:@321.4]
  assign inner_din = {io_write_data_data,io_write_data_last}; // @[asyncBridge.scala 73:16:@313.4]
  assign inner_wr_en = io_write_en; // @[asyncBridge.scala 72:18:@311.4]
  assign inner_wr_clk = io_write_clk; // @[asyncBridge.scala 71:19:@310.4]
  assign inner_rst = reset; // @[asyncBridge.scala 69:16:@309.4]
endmodule
module ARPAcceptor( // @[:@334.2]
  input         clock, // @[:@335.4]
  input         reset, // @[:@336.4]
  input  [7:0]  io_rx_tdata, // @[:@337.4]
  input         io_rx_tvalid, // @[:@337.4]
  input         io_rx_tlast, // @[:@337.4]
  output        io_rx_tready, // @[:@337.4]
  output [15:0] io_output_htype, // @[:@337.4]
  output [15:0] io_output_ptype, // @[:@337.4]
  output [7:0]  io_output_hlen, // @[:@337.4]
  output [7:0]  io_output_plen, // @[:@337.4]
  output [15:0] io_output_oper, // @[:@337.4]
  output [47:0] io_output_sha, // @[:@337.4]
  output [31:0] io_output_spa, // @[:@337.4]
  output [47:0] io_output_tha, // @[:@337.4]
  output [31:0] io_output_tpa, // @[:@337.4]
  input         io_start, // @[:@337.4]
  output        io_finished // @[:@337.4]
);
  reg [7:0] buf_0; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_0;
  reg [7:0] buf_1; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_1;
  reg [7:0] buf_2; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_2;
  reg [7:0] buf_3; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_3;
  reg [7:0] buf_4; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_4;
  reg [7:0] buf_5; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_5;
  reg [7:0] buf_6; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_6;
  reg [7:0] buf_7; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_7;
  reg [7:0] buf_8; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_8;
  reg [7:0] buf_9; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_9;
  reg [7:0] buf_10; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_10;
  reg [7:0] buf_11; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_11;
  reg [7:0] buf_12; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_12;
  reg [7:0] buf_13; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_13;
  reg [7:0] buf_14; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_14;
  reg [7:0] buf_15; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_15;
  reg [7:0] buf_16; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_16;
  reg [7:0] buf_17; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_17;
  reg [7:0] buf_18; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_18;
  reg [7:0] buf_19; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_19;
  reg [7:0] buf_20; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_20;
  reg [7:0] buf_21; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_21;
  reg [7:0] buf_22; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_22;
  reg [7:0] buf_23; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_23;
  reg [7:0] buf_24; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_24;
  reg [7:0] buf_25; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_25;
  reg [7:0] buf_26; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_26;
  reg [7:0] buf_27; // @[arp.scala 14:16:@339.4]
  reg [31:0] _RAND_27;
  reg [4:0] cnt; // @[arp.scala 15:20:@340.4]
  reg [31:0] _RAND_28;
  reg  reading; // @[arp.scala 16:24:@341.4]
  reg [31:0] _RAND_29;
  wire  _GEN_0; // @[arp.scala 18:18:@342.4]
  wire  _T_67; // @[arp.scala 22:34:@345.4]
  wire  _T_68; // @[arp.scala 22:21:@346.4]
  wire  _T_70; // @[arp.scala 23:14:@348.6]
  wire [5:0] _T_72; // @[arp.scala 24:16:@350.8]
  wire [5:0] _T_73; // @[arp.scala 24:16:@351.8]
  wire [4:0] _T_74; // @[arp.scala 24:16:@352.8]
  wire [7:0] _buf_T_74; // @[arp.scala 24:23:@353.8 arp.scala 24:23:@353.8]
  wire [7:0] _GEN_1; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_2; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_3; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_4; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_5; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_6; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_7; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_8; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_9; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_10; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_11; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_12; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_13; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_14; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_15; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_16; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_17; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_18; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_19; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_20; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_21; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_22; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_23; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_24; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_25; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_26; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_27; // @[arp.scala 24:23:@353.8]
  wire [7:0] _GEN_28; // @[arp.scala 24:23:@353.8]
  wire [5:0] _T_77; // @[arp.scala 25:18:@354.8]
  wire [4:0] _T_78; // @[arp.scala 25:18:@355.8]
  wire [7:0] _GEN_29; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_30; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_31; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_32; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_33; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_34; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_35; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_36; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_37; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_38; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_39; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_40; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_41; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_42; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_43; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_44; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_45; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_46; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_47; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_48; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_49; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_50; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_51; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_52; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_53; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_54; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_55; // @[arp.scala 23:22:@349.6]
  wire [7:0] _GEN_56; // @[arp.scala 23:22:@349.6]
  wire [4:0] _GEN_57; // @[arp.scala 23:22:@349.6]
  wire  _T_80; // @[arp.scala 28:14:@358.6]
  reg [4:0] _T_82; // @[arp.scala 28:34:@359.6]
  reg [31:0] _RAND_30;
  wire  _T_84; // @[arp.scala 28:40:@361.6]
  wire  _T_85; // @[arp.scala 28:23:@362.6]
  wire  _GEN_58; // @[arp.scala 28:51:@363.6]
  wire [4:0] _GEN_59; // @[arp.scala 28:51:@363.6]
  wire [7:0] _GEN_60; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_61; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_62; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_63; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_64; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_65; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_66; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_67; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_68; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_69; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_70; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_71; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_72; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_73; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_74; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_75; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_76; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_77; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_78; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_79; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_80; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_81; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_82; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_83; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_84; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_85; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_86; // @[arp.scala 22:47:@347.4]
  wire [7:0] _GEN_87; // @[arp.scala 22:47:@347.4]
  wire [4:0] _GEN_88; // @[arp.scala 22:47:@347.4]
  wire  _GEN_89; // @[arp.scala 22:47:@347.4]
  wire [15:0] _T_88; // @[arp.scala 34:20:@368.4]
  wire [23:0] _T_89; // @[arp.scala 34:20:@369.4]
  wire [15:0] _T_90; // @[arp.scala 34:20:@370.4]
  wire [15:0] _T_91; // @[arp.scala 34:20:@371.4]
  wire [31:0] _T_92; // @[arp.scala 34:20:@372.4]
  wire [55:0] _T_93; // @[arp.scala 34:20:@373.4]
  wire [15:0] _T_94; // @[arp.scala 34:20:@374.4]
  wire [23:0] _T_95; // @[arp.scala 34:20:@375.4]
  wire [15:0] _T_96; // @[arp.scala 34:20:@376.4]
  wire [15:0] _T_97; // @[arp.scala 34:20:@377.4]
  wire [31:0] _T_98; // @[arp.scala 34:20:@378.4]
  wire [55:0] _T_99; // @[arp.scala 34:20:@379.4]
  wire [111:0] _T_100; // @[arp.scala 34:20:@380.4]
  wire [15:0] _T_101; // @[arp.scala 34:20:@381.4]
  wire [23:0] _T_102; // @[arp.scala 34:20:@382.4]
  wire [15:0] _T_103; // @[arp.scala 34:20:@383.4]
  wire [15:0] _T_104; // @[arp.scala 34:20:@384.4]
  wire [31:0] _T_105; // @[arp.scala 34:20:@385.4]
  wire [55:0] _T_106; // @[arp.scala 34:20:@386.4]
  wire [15:0] _T_107; // @[arp.scala 34:20:@387.4]
  wire [23:0] _T_108; // @[arp.scala 34:20:@388.4]
  wire [15:0] _T_109; // @[arp.scala 34:20:@389.4]
  wire [15:0] _T_110; // @[arp.scala 34:20:@390.4]
  wire [31:0] _T_111; // @[arp.scala 34:20:@391.4]
  wire [55:0] _T_112; // @[arp.scala 34:20:@392.4]
  wire [111:0] _T_113; // @[arp.scala 34:20:@393.4]
  wire [223:0] _T_114; // @[arp.scala 34:20:@394.4]
  wire [223:0] _T_118; // @[:@396.4 :@397.4]
  wire [31:0] _T_119; // @[arp.scala 34:35:@398.4]
  wire [47:0] _T_120; // @[arp.scala 34:35:@400.4]
  wire [31:0] _T_121; // @[arp.scala 34:35:@402.4]
  wire [47:0] _T_122; // @[arp.scala 34:35:@404.4]
  wire [15:0] _T_123; // @[arp.scala 34:35:@406.4]
  wire [7:0] _T_124; // @[arp.scala 34:35:@408.4]
  wire [7:0] _T_125; // @[arp.scala 34:35:@410.4]
  wire [15:0] _T_126; // @[arp.scala 34:35:@412.4]
  wire [15:0] _T_127; // @[arp.scala 34:35:@414.4]
  wire  _T_129; // @[arp.scala 35:18:@425.4]
  wire [15:0] _T_116_htype; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@415.4]
  wire [15:0] _T_116_ptype; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@413.4]
  wire [7:0] _T_116_hlen; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@411.4]
  wire [7:0] _T_116_plen; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@409.4]
  wire [15:0] _T_116_oper; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@407.4]
  wire [47:0] _T_116_sha; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@405.4]
  wire [31:0] _T_116_spa; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@403.4]
  wire [47:0] _T_116_tha; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@401.4]
  wire [31:0] _T_116_tpa; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@399.4]
  assign _GEN_0 = io_start ? 1'h1 : reading; // @[arp.scala 18:18:@342.4]
  assign _T_67 = io_start | reading; // @[arp.scala 22:34:@345.4]
  assign _T_68 = io_rx_tvalid & _T_67; // @[arp.scala 22:21:@346.4]
  assign _T_70 = cnt < 5'h1c; // @[arp.scala 23:14:@348.6]
  assign _T_72 = 5'h1b - cnt; // @[arp.scala 24:16:@350.8]
  assign _T_73 = $unsigned(_T_72); // @[arp.scala 24:16:@351.8]
  assign _T_74 = _T_73[4:0]; // @[arp.scala 24:16:@352.8]
  assign _buf_T_74 = io_rx_tdata; // @[arp.scala 24:23:@353.8 arp.scala 24:23:@353.8]
  assign _GEN_1 = 5'h0 == _T_74 ? io_rx_tdata : buf_0; // @[arp.scala 24:23:@353.8]
  assign _GEN_2 = 5'h1 == _T_74 ? io_rx_tdata : buf_1; // @[arp.scala 24:23:@353.8]
  assign _GEN_3 = 5'h2 == _T_74 ? io_rx_tdata : buf_2; // @[arp.scala 24:23:@353.8]
  assign _GEN_4 = 5'h3 == _T_74 ? io_rx_tdata : buf_3; // @[arp.scala 24:23:@353.8]
  assign _GEN_5 = 5'h4 == _T_74 ? io_rx_tdata : buf_4; // @[arp.scala 24:23:@353.8]
  assign _GEN_6 = 5'h5 == _T_74 ? io_rx_tdata : buf_5; // @[arp.scala 24:23:@353.8]
  assign _GEN_7 = 5'h6 == _T_74 ? io_rx_tdata : buf_6; // @[arp.scala 24:23:@353.8]
  assign _GEN_8 = 5'h7 == _T_74 ? io_rx_tdata : buf_7; // @[arp.scala 24:23:@353.8]
  assign _GEN_9 = 5'h8 == _T_74 ? io_rx_tdata : buf_8; // @[arp.scala 24:23:@353.8]
  assign _GEN_10 = 5'h9 == _T_74 ? io_rx_tdata : buf_9; // @[arp.scala 24:23:@353.8]
  assign _GEN_11 = 5'ha == _T_74 ? io_rx_tdata : buf_10; // @[arp.scala 24:23:@353.8]
  assign _GEN_12 = 5'hb == _T_74 ? io_rx_tdata : buf_11; // @[arp.scala 24:23:@353.8]
  assign _GEN_13 = 5'hc == _T_74 ? io_rx_tdata : buf_12; // @[arp.scala 24:23:@353.8]
  assign _GEN_14 = 5'hd == _T_74 ? io_rx_tdata : buf_13; // @[arp.scala 24:23:@353.8]
  assign _GEN_15 = 5'he == _T_74 ? io_rx_tdata : buf_14; // @[arp.scala 24:23:@353.8]
  assign _GEN_16 = 5'hf == _T_74 ? io_rx_tdata : buf_15; // @[arp.scala 24:23:@353.8]
  assign _GEN_17 = 5'h10 == _T_74 ? io_rx_tdata : buf_16; // @[arp.scala 24:23:@353.8]
  assign _GEN_18 = 5'h11 == _T_74 ? io_rx_tdata : buf_17; // @[arp.scala 24:23:@353.8]
  assign _GEN_19 = 5'h12 == _T_74 ? io_rx_tdata : buf_18; // @[arp.scala 24:23:@353.8]
  assign _GEN_20 = 5'h13 == _T_74 ? io_rx_tdata : buf_19; // @[arp.scala 24:23:@353.8]
  assign _GEN_21 = 5'h14 == _T_74 ? io_rx_tdata : buf_20; // @[arp.scala 24:23:@353.8]
  assign _GEN_22 = 5'h15 == _T_74 ? io_rx_tdata : buf_21; // @[arp.scala 24:23:@353.8]
  assign _GEN_23 = 5'h16 == _T_74 ? io_rx_tdata : buf_22; // @[arp.scala 24:23:@353.8]
  assign _GEN_24 = 5'h17 == _T_74 ? io_rx_tdata : buf_23; // @[arp.scala 24:23:@353.8]
  assign _GEN_25 = 5'h18 == _T_74 ? io_rx_tdata : buf_24; // @[arp.scala 24:23:@353.8]
  assign _GEN_26 = 5'h19 == _T_74 ? io_rx_tdata : buf_25; // @[arp.scala 24:23:@353.8]
  assign _GEN_27 = 5'h1a == _T_74 ? io_rx_tdata : buf_26; // @[arp.scala 24:23:@353.8]
  assign _GEN_28 = 5'h1b == _T_74 ? io_rx_tdata : buf_27; // @[arp.scala 24:23:@353.8]
  assign _T_77 = cnt + 5'h1; // @[arp.scala 25:18:@354.8]
  assign _T_78 = cnt + 5'h1; // @[arp.scala 25:18:@355.8]
  assign _GEN_29 = _T_70 ? _GEN_1 : buf_0; // @[arp.scala 23:22:@349.6]
  assign _GEN_30 = _T_70 ? _GEN_2 : buf_1; // @[arp.scala 23:22:@349.6]
  assign _GEN_31 = _T_70 ? _GEN_3 : buf_2; // @[arp.scala 23:22:@349.6]
  assign _GEN_32 = _T_70 ? _GEN_4 : buf_3; // @[arp.scala 23:22:@349.6]
  assign _GEN_33 = _T_70 ? _GEN_5 : buf_4; // @[arp.scala 23:22:@349.6]
  assign _GEN_34 = _T_70 ? _GEN_6 : buf_5; // @[arp.scala 23:22:@349.6]
  assign _GEN_35 = _T_70 ? _GEN_7 : buf_6; // @[arp.scala 23:22:@349.6]
  assign _GEN_36 = _T_70 ? _GEN_8 : buf_7; // @[arp.scala 23:22:@349.6]
  assign _GEN_37 = _T_70 ? _GEN_9 : buf_8; // @[arp.scala 23:22:@349.6]
  assign _GEN_38 = _T_70 ? _GEN_10 : buf_9; // @[arp.scala 23:22:@349.6]
  assign _GEN_39 = _T_70 ? _GEN_11 : buf_10; // @[arp.scala 23:22:@349.6]
  assign _GEN_40 = _T_70 ? _GEN_12 : buf_11; // @[arp.scala 23:22:@349.6]
  assign _GEN_41 = _T_70 ? _GEN_13 : buf_12; // @[arp.scala 23:22:@349.6]
  assign _GEN_42 = _T_70 ? _GEN_14 : buf_13; // @[arp.scala 23:22:@349.6]
  assign _GEN_43 = _T_70 ? _GEN_15 : buf_14; // @[arp.scala 23:22:@349.6]
  assign _GEN_44 = _T_70 ? _GEN_16 : buf_15; // @[arp.scala 23:22:@349.6]
  assign _GEN_45 = _T_70 ? _GEN_17 : buf_16; // @[arp.scala 23:22:@349.6]
  assign _GEN_46 = _T_70 ? _GEN_18 : buf_17; // @[arp.scala 23:22:@349.6]
  assign _GEN_47 = _T_70 ? _GEN_19 : buf_18; // @[arp.scala 23:22:@349.6]
  assign _GEN_48 = _T_70 ? _GEN_20 : buf_19; // @[arp.scala 23:22:@349.6]
  assign _GEN_49 = _T_70 ? _GEN_21 : buf_20; // @[arp.scala 23:22:@349.6]
  assign _GEN_50 = _T_70 ? _GEN_22 : buf_21; // @[arp.scala 23:22:@349.6]
  assign _GEN_51 = _T_70 ? _GEN_23 : buf_22; // @[arp.scala 23:22:@349.6]
  assign _GEN_52 = _T_70 ? _GEN_24 : buf_23; // @[arp.scala 23:22:@349.6]
  assign _GEN_53 = _T_70 ? _GEN_25 : buf_24; // @[arp.scala 23:22:@349.6]
  assign _GEN_54 = _T_70 ? _GEN_26 : buf_25; // @[arp.scala 23:22:@349.6]
  assign _GEN_55 = _T_70 ? _GEN_27 : buf_26; // @[arp.scala 23:22:@349.6]
  assign _GEN_56 = _T_70 ? _GEN_28 : buf_27; // @[arp.scala 23:22:@349.6]
  assign _GEN_57 = _T_70 ? _T_78 : cnt; // @[arp.scala 23:22:@349.6]
  assign _T_80 = cnt == 5'h1c; // @[arp.scala 28:14:@358.6]
  assign _T_84 = _T_82 != 5'h1c; // @[arp.scala 28:40:@361.6]
  assign _T_85 = _T_80 & _T_84; // @[arp.scala 28:23:@362.6]
  assign _GEN_58 = _T_85 ? 1'h0 : _GEN_0; // @[arp.scala 28:51:@363.6]
  assign _GEN_59 = _T_85 ? 5'h0 : _GEN_57; // @[arp.scala 28:51:@363.6]
  assign _GEN_60 = _T_68 ? _GEN_29 : buf_0; // @[arp.scala 22:47:@347.4]
  assign _GEN_61 = _T_68 ? _GEN_30 : buf_1; // @[arp.scala 22:47:@347.4]
  assign _GEN_62 = _T_68 ? _GEN_31 : buf_2; // @[arp.scala 22:47:@347.4]
  assign _GEN_63 = _T_68 ? _GEN_32 : buf_3; // @[arp.scala 22:47:@347.4]
  assign _GEN_64 = _T_68 ? _GEN_33 : buf_4; // @[arp.scala 22:47:@347.4]
  assign _GEN_65 = _T_68 ? _GEN_34 : buf_5; // @[arp.scala 22:47:@347.4]
  assign _GEN_66 = _T_68 ? _GEN_35 : buf_6; // @[arp.scala 22:47:@347.4]
  assign _GEN_67 = _T_68 ? _GEN_36 : buf_7; // @[arp.scala 22:47:@347.4]
  assign _GEN_68 = _T_68 ? _GEN_37 : buf_8; // @[arp.scala 22:47:@347.4]
  assign _GEN_69 = _T_68 ? _GEN_38 : buf_9; // @[arp.scala 22:47:@347.4]
  assign _GEN_70 = _T_68 ? _GEN_39 : buf_10; // @[arp.scala 22:47:@347.4]
  assign _GEN_71 = _T_68 ? _GEN_40 : buf_11; // @[arp.scala 22:47:@347.4]
  assign _GEN_72 = _T_68 ? _GEN_41 : buf_12; // @[arp.scala 22:47:@347.4]
  assign _GEN_73 = _T_68 ? _GEN_42 : buf_13; // @[arp.scala 22:47:@347.4]
  assign _GEN_74 = _T_68 ? _GEN_43 : buf_14; // @[arp.scala 22:47:@347.4]
  assign _GEN_75 = _T_68 ? _GEN_44 : buf_15; // @[arp.scala 22:47:@347.4]
  assign _GEN_76 = _T_68 ? _GEN_45 : buf_16; // @[arp.scala 22:47:@347.4]
  assign _GEN_77 = _T_68 ? _GEN_46 : buf_17; // @[arp.scala 22:47:@347.4]
  assign _GEN_78 = _T_68 ? _GEN_47 : buf_18; // @[arp.scala 22:47:@347.4]
  assign _GEN_79 = _T_68 ? _GEN_48 : buf_19; // @[arp.scala 22:47:@347.4]
  assign _GEN_80 = _T_68 ? _GEN_49 : buf_20; // @[arp.scala 22:47:@347.4]
  assign _GEN_81 = _T_68 ? _GEN_50 : buf_21; // @[arp.scala 22:47:@347.4]
  assign _GEN_82 = _T_68 ? _GEN_51 : buf_22; // @[arp.scala 22:47:@347.4]
  assign _GEN_83 = _T_68 ? _GEN_52 : buf_23; // @[arp.scala 22:47:@347.4]
  assign _GEN_84 = _T_68 ? _GEN_53 : buf_24; // @[arp.scala 22:47:@347.4]
  assign _GEN_85 = _T_68 ? _GEN_54 : buf_25; // @[arp.scala 22:47:@347.4]
  assign _GEN_86 = _T_68 ? _GEN_55 : buf_26; // @[arp.scala 22:47:@347.4]
  assign _GEN_87 = _T_68 ? _GEN_56 : buf_27; // @[arp.scala 22:47:@347.4]
  assign _GEN_88 = _T_68 ? _GEN_59 : cnt; // @[arp.scala 22:47:@347.4]
  assign _GEN_89 = _T_68 ? _GEN_58 : _GEN_0; // @[arp.scala 22:47:@347.4]
  assign _T_88 = {buf_2,buf_1}; // @[arp.scala 34:20:@368.4]
  assign _T_89 = {buf_2,buf_1,buf_0}; // @[arp.scala 34:20:@369.4]
  assign _T_90 = {buf_4,buf_3}; // @[arp.scala 34:20:@370.4]
  assign _T_91 = {buf_6,buf_5}; // @[arp.scala 34:20:@371.4]
  assign _T_92 = {buf_6,buf_5,buf_4,buf_3}; // @[arp.scala 34:20:@372.4]
  assign _T_93 = {buf_6,buf_5,buf_4,buf_3,buf_2,buf_1,buf_0}; // @[arp.scala 34:20:@373.4]
  assign _T_94 = {buf_9,buf_8}; // @[arp.scala 34:20:@374.4]
  assign _T_95 = {buf_9,buf_8,buf_7}; // @[arp.scala 34:20:@375.4]
  assign _T_96 = {buf_11,buf_10}; // @[arp.scala 34:20:@376.4]
  assign _T_97 = {buf_13,buf_12}; // @[arp.scala 34:20:@377.4]
  assign _T_98 = {buf_13,buf_12,buf_11,buf_10}; // @[arp.scala 34:20:@378.4]
  assign _T_99 = {buf_13,buf_12,buf_11,buf_10,buf_9,buf_8,buf_7}; // @[arp.scala 34:20:@379.4]
  assign _T_100 = {buf_13,buf_12,buf_11,buf_10,buf_9,buf_8,buf_7,_T_93}; // @[arp.scala 34:20:@380.4]
  assign _T_101 = {buf_16,buf_15}; // @[arp.scala 34:20:@381.4]
  assign _T_102 = {buf_16,buf_15,buf_14}; // @[arp.scala 34:20:@382.4]
  assign _T_103 = {buf_18,buf_17}; // @[arp.scala 34:20:@383.4]
  assign _T_104 = {buf_20,buf_19}; // @[arp.scala 34:20:@384.4]
  assign _T_105 = {buf_20,buf_19,buf_18,buf_17}; // @[arp.scala 34:20:@385.4]
  assign _T_106 = {buf_20,buf_19,buf_18,buf_17,buf_16,buf_15,buf_14}; // @[arp.scala 34:20:@386.4]
  assign _T_107 = {buf_23,buf_22}; // @[arp.scala 34:20:@387.4]
  assign _T_108 = {buf_23,buf_22,buf_21}; // @[arp.scala 34:20:@388.4]
  assign _T_109 = {buf_25,buf_24}; // @[arp.scala 34:20:@389.4]
  assign _T_110 = {buf_27,buf_26}; // @[arp.scala 34:20:@390.4]
  assign _T_111 = {buf_27,buf_26,buf_25,buf_24}; // @[arp.scala 34:20:@391.4]
  assign _T_112 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21}; // @[arp.scala 34:20:@392.4]
  assign _T_113 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21,_T_106}; // @[arp.scala 34:20:@393.4]
  assign _T_114 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21,_T_106,_T_100}; // @[arp.scala 34:20:@394.4]
  assign _T_118 = _T_114; // @[:@396.4 :@397.4]
  assign _T_119 = _T_114[31:0]; // @[arp.scala 34:35:@398.4]
  assign _T_120 = _T_114[79:32]; // @[arp.scala 34:35:@400.4]
  assign _T_121 = _T_114[111:80]; // @[arp.scala 34:35:@402.4]
  assign _T_122 = _T_114[159:112]; // @[arp.scala 34:35:@404.4]
  assign _T_123 = _T_114[175:160]; // @[arp.scala 34:35:@406.4]
  assign _T_124 = _T_114[183:176]; // @[arp.scala 34:35:@408.4]
  assign _T_125 = _T_114[191:184]; // @[arp.scala 34:35:@410.4]
  assign _T_126 = _T_114[207:192]; // @[arp.scala 34:35:@412.4]
  assign _T_127 = _T_114[223:208]; // @[arp.scala 34:35:@414.4]
  assign _T_129 = reading == 1'h0; // @[arp.scala 35:18:@425.4]
  assign _T_116_htype = _T_127; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@415.4]
  assign _T_116_ptype = _T_126; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@413.4]
  assign _T_116_hlen = _T_125; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@411.4]
  assign _T_116_plen = _T_124; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@409.4]
  assign _T_116_oper = _T_123; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@407.4]
  assign _T_116_sha = _T_122; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@405.4]
  assign _T_116_spa = _T_121; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@403.4]
  assign _T_116_tha = _T_120; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@401.4]
  assign _T_116_tpa = _T_119; // @[arp.scala 34:35:@395.4 arp.scala 34:35:@399.4]
  assign io_rx_tready = 1'h1; // @[arp.scala 36:16:@427.4]
  assign io_output_htype = _T_114[223:208]; // @[arp.scala 34:13:@424.4]
  assign io_output_ptype = _T_114[207:192]; // @[arp.scala 34:13:@423.4]
  assign io_output_hlen = _T_114[191:184]; // @[arp.scala 34:13:@422.4]
  assign io_output_plen = _T_114[183:176]; // @[arp.scala 34:13:@421.4]
  assign io_output_oper = _T_114[175:160]; // @[arp.scala 34:13:@420.4]
  assign io_output_sha = _T_114[159:112]; // @[arp.scala 34:13:@419.4]
  assign io_output_spa = _T_114[111:80]; // @[arp.scala 34:13:@418.4]
  assign io_output_tha = _T_114[79:32]; // @[arp.scala 34:13:@417.4]
  assign io_output_tpa = _T_114[31:0]; // @[arp.scala 34:13:@416.4]
  assign io_finished = reading == 1'h0; // @[arp.scala 35:15:@426.4]
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
module IPAcceptor( // @[:@429.2]
  input         clock, // @[:@430.4]
  input         reset, // @[:@431.4]
  input  [7:0]  io_rx_tdata, // @[:@432.4]
  input         io_rx_tvalid, // @[:@432.4]
  input         io_rx_tlast, // @[:@432.4]
  output        io_rx_tready, // @[:@432.4]
  output [3:0]  io_output_version, // @[:@432.4]
  output [3:0]  io_output_ihl, // @[:@432.4]
  output [5:0]  io_output_dscp, // @[:@432.4]
  output [1:0]  io_output_ecn, // @[:@432.4]
  output [15:0] io_output_len, // @[:@432.4]
  output [15:0] io_output_id, // @[:@432.4]
  output [2:0]  io_output_flags, // @[:@432.4]
  output [12:0] io_output_foff, // @[:@432.4]
  output [7:0]  io_output_ttl, // @[:@432.4]
  output [7:0]  io_output_proto, // @[:@432.4]
  output [15:0] io_output_chksum, // @[:@432.4]
  output [31:0] io_output_src, // @[:@432.4]
  output [31:0] io_output_dest, // @[:@432.4]
  input         io_start, // @[:@432.4]
  output        io_headerFinished, // @[:@432.4]
  output        io_payloadWriter_clk, // @[:@432.4]
  output        io_payloadWriter_en, // @[:@432.4]
  output [7:0]  io_payloadWriter_data_data, // @[:@432.4]
  output        io_payloadWriter_data_last, // @[:@432.4]
  input         io_payloadWriter_full, // @[:@432.4]
  input  [15:0] io_payloadWriter_space // @[:@432.4]
);
  reg [7:0] buf_0; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_0;
  reg [7:0] buf_1; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_1;
  reg [7:0] buf_2; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_2;
  reg [7:0] buf_3; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_3;
  reg [7:0] buf_4; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_4;
  reg [7:0] buf_5; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_5;
  reg [7:0] buf_6; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_6;
  reg [7:0] buf_7; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_7;
  reg [7:0] buf_8; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_8;
  reg [7:0] buf_9; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_9;
  reg [7:0] buf_10; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_10;
  reg [7:0] buf_11; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_11;
  reg [7:0] buf_12; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_12;
  reg [7:0] buf_13; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_13;
  reg [7:0] buf_14; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_14;
  reg [7:0] buf_15; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_15;
  reg [7:0] buf_16; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_16;
  reg [7:0] buf_17; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_17;
  reg [7:0] buf_18; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_18;
  reg [7:0] buf_19; // @[ip.scala 20:16:@434.4]
  reg [31:0] _RAND_19;
  reg [10:0] cnt; // @[ip.scala 22:20:@435.4]
  reg [31:0] _RAND_20;
  reg  reading; // @[ip.scala 23:24:@436.4]
  reg [31:0] _RAND_21;
  reg  header; // @[ip.scala 24:23:@437.4]
  reg [31:0] _RAND_22;
  wire  _GEN_0; // @[ip.scala 31:18:@442.4]
  wire  _GEN_1; // @[ip.scala 31:18:@442.4]
  wire  _T_84; // @[ip.scala 36:34:@446.4]
  wire  _T_85; // @[ip.scala 36:21:@447.4]
  wire  _T_87; // @[ip.scala 37:14:@449.6]
  wire [11:0] _T_89; // @[ip.scala 38:16:@451.8]
  wire [11:0] _T_90; // @[ip.scala 38:16:@452.8]
  wire [10:0] _T_91; // @[ip.scala 38:16:@453.8]
  wire [4:0] _T_93; // @[:@454.8]
  wire [7:0] _buf_T_93; // @[ip.scala 38:23:@455.8 ip.scala 38:23:@455.8]
  wire [7:0] _GEN_2; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_3; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_4; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_5; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_6; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_7; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_8; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_9; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_10; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_11; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_12; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_13; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_14; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_15; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_16; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_17; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_18; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_19; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_20; // @[ip.scala 38:23:@455.8]
  wire [7:0] _GEN_21; // @[ip.scala 38:23:@455.8]
  wire [11:0] _T_95; // @[ip.scala 39:18:@456.8]
  wire [10:0] _T_96; // @[ip.scala 39:18:@457.8]
  wire [7:0] _GEN_22; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_23; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_24; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_25; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_26; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_27; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_28; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_29; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_30; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_31; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_32; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_33; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_34; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_35; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_36; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_37; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_38; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_39; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_40; // @[ip.scala 37:33:@450.6]
  wire [7:0] _GEN_41; // @[ip.scala 37:33:@450.6]
  wire [10:0] _GEN_42; // @[ip.scala 37:33:@450.6]
  wire  _GEN_43; // @[ip.scala 37:33:@450.6]
  wire  _T_99; // @[ip.scala 44:14:@463.6]
  reg [10:0] _T_101; // @[ip.scala 44:45:@464.6]
  reg [31:0] _RAND_23;
  wire  _T_103; // @[ip.scala 44:51:@466.6]
  wire  _T_104; // @[ip.scala 44:34:@467.6]
  wire  _GEN_44; // @[ip.scala 44:73:@468.6]
  wire  _GEN_45; // @[ip.scala 48:23:@471.6]
  wire  _GEN_46; // @[ip.scala 48:23:@471.6]
  wire [10:0] _GEN_47; // @[ip.scala 48:23:@471.6]
  wire [7:0] _GEN_48; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_49; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_50; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_51; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_52; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_53; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_54; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_55; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_56; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_57; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_58; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_59; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_60; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_61; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_62; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_63; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_64; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_65; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_66; // @[ip.scala 36:47:@448.4]
  wire [7:0] _GEN_67; // @[ip.scala 36:47:@448.4]
  wire [10:0] _GEN_68; // @[ip.scala 36:47:@448.4]
  wire  _GEN_69; // @[ip.scala 36:47:@448.4]
  wire  _GEN_70; // @[ip.scala 36:47:@448.4]
  wire  _GEN_71; // @[ip.scala 36:47:@448.4]
  wire  _GEN_72; // @[ip.scala 36:47:@448.4]
  wire [15:0] _T_109; // @[ip.scala 55:20:@477.4]
  wire [15:0] _T_110; // @[ip.scala 55:20:@478.4]
  wire [23:0] _T_111; // @[ip.scala 55:20:@479.4]
  wire [39:0] _T_112; // @[ip.scala 55:20:@480.4]
  wire [15:0] _T_113; // @[ip.scala 55:20:@481.4]
  wire [15:0] _T_114; // @[ip.scala 55:20:@482.4]
  wire [23:0] _T_115; // @[ip.scala 55:20:@483.4]
  wire [39:0] _T_116; // @[ip.scala 55:20:@484.4]
  wire [79:0] _T_117; // @[ip.scala 55:20:@485.4]
  wire [15:0] _T_118; // @[ip.scala 55:20:@486.4]
  wire [15:0] _T_119; // @[ip.scala 55:20:@487.4]
  wire [23:0] _T_120; // @[ip.scala 55:20:@488.4]
  wire [39:0] _T_121; // @[ip.scala 55:20:@489.4]
  wire [15:0] _T_122; // @[ip.scala 55:20:@490.4]
  wire [15:0] _T_123; // @[ip.scala 55:20:@491.4]
  wire [23:0] _T_124; // @[ip.scala 55:20:@492.4]
  wire [39:0] _T_125; // @[ip.scala 55:20:@493.4]
  wire [79:0] _T_126; // @[ip.scala 55:20:@494.4]
  wire [159:0] _T_127; // @[ip.scala 55:20:@495.4]
  wire [159:0] _T_131; // @[:@497.4 :@498.4]
  wire [31:0] _T_132; // @[ip.scala 55:35:@499.4]
  wire [31:0] _T_133; // @[ip.scala 55:35:@501.4]
  wire [15:0] _T_134; // @[ip.scala 55:35:@503.4]
  wire [7:0] _T_135; // @[ip.scala 55:35:@505.4]
  wire [7:0] _T_136; // @[ip.scala 55:35:@507.4]
  wire [12:0] _T_137; // @[ip.scala 55:35:@509.4]
  wire [2:0] _T_138; // @[ip.scala 55:35:@511.4]
  wire [15:0] _T_139; // @[ip.scala 55:35:@513.4]
  wire [15:0] _T_140; // @[ip.scala 55:35:@515.4]
  wire [1:0] _T_141; // @[ip.scala 55:35:@517.4]
  wire [5:0] _T_142; // @[ip.scala 55:35:@519.4]
  wire [3:0] _T_143; // @[ip.scala 55:35:@521.4]
  wire [3:0] _T_144; // @[ip.scala 55:35:@523.4]
  wire  _T_146; // @[ip.scala 56:24:@538.4]
  wire [3:0] _T_129_version; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@524.4]
  wire [3:0] _T_129_ihl; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@522.4]
  wire [5:0] _T_129_dscp; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@520.4]
  wire [1:0] _T_129_ecn; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@518.4]
  wire [15:0] _T_129_len; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@516.4]
  wire [15:0] _T_129_id; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@514.4]
  wire [2:0] _T_129_flags; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@512.4]
  wire [12:0] _T_129_foff; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@510.4]
  wire [7:0] _T_129_ttl; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@508.4]
  wire [7:0] _T_129_proto; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@506.4]
  wire [15:0] _T_129_chksum; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@504.4]
  wire [31:0] _T_129_src; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@502.4]
  wire [31:0] _T_129_dest; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@500.4]
  assign _GEN_0 = io_start ? 1'h1 : reading; // @[ip.scala 31:18:@442.4]
  assign _GEN_1 = io_start ? 1'h1 : header; // @[ip.scala 31:18:@442.4]
  assign _T_84 = io_start | reading; // @[ip.scala 36:34:@446.4]
  assign _T_85 = io_rx_tvalid & _T_84; // @[ip.scala 36:21:@447.4]
  assign _T_87 = cnt < 11'h14; // @[ip.scala 37:14:@449.6]
  assign _T_89 = 11'h13 - cnt; // @[ip.scala 38:16:@451.8]
  assign _T_90 = $unsigned(_T_89); // @[ip.scala 38:16:@452.8]
  assign _T_91 = _T_90[10:0]; // @[ip.scala 38:16:@453.8]
  assign _T_93 = _T_91[4:0]; // @[:@454.8]
  assign _buf_T_93 = io_rx_tdata; // @[ip.scala 38:23:@455.8 ip.scala 38:23:@455.8]
  assign _GEN_2 = 5'h0 == _T_93 ? io_rx_tdata : buf_0; // @[ip.scala 38:23:@455.8]
  assign _GEN_3 = 5'h1 == _T_93 ? io_rx_tdata : buf_1; // @[ip.scala 38:23:@455.8]
  assign _GEN_4 = 5'h2 == _T_93 ? io_rx_tdata : buf_2; // @[ip.scala 38:23:@455.8]
  assign _GEN_5 = 5'h3 == _T_93 ? io_rx_tdata : buf_3; // @[ip.scala 38:23:@455.8]
  assign _GEN_6 = 5'h4 == _T_93 ? io_rx_tdata : buf_4; // @[ip.scala 38:23:@455.8]
  assign _GEN_7 = 5'h5 == _T_93 ? io_rx_tdata : buf_5; // @[ip.scala 38:23:@455.8]
  assign _GEN_8 = 5'h6 == _T_93 ? io_rx_tdata : buf_6; // @[ip.scala 38:23:@455.8]
  assign _GEN_9 = 5'h7 == _T_93 ? io_rx_tdata : buf_7; // @[ip.scala 38:23:@455.8]
  assign _GEN_10 = 5'h8 == _T_93 ? io_rx_tdata : buf_8; // @[ip.scala 38:23:@455.8]
  assign _GEN_11 = 5'h9 == _T_93 ? io_rx_tdata : buf_9; // @[ip.scala 38:23:@455.8]
  assign _GEN_12 = 5'ha == _T_93 ? io_rx_tdata : buf_10; // @[ip.scala 38:23:@455.8]
  assign _GEN_13 = 5'hb == _T_93 ? io_rx_tdata : buf_11; // @[ip.scala 38:23:@455.8]
  assign _GEN_14 = 5'hc == _T_93 ? io_rx_tdata : buf_12; // @[ip.scala 38:23:@455.8]
  assign _GEN_15 = 5'hd == _T_93 ? io_rx_tdata : buf_13; // @[ip.scala 38:23:@455.8]
  assign _GEN_16 = 5'he == _T_93 ? io_rx_tdata : buf_14; // @[ip.scala 38:23:@455.8]
  assign _GEN_17 = 5'hf == _T_93 ? io_rx_tdata : buf_15; // @[ip.scala 38:23:@455.8]
  assign _GEN_18 = 5'h10 == _T_93 ? io_rx_tdata : buf_16; // @[ip.scala 38:23:@455.8]
  assign _GEN_19 = 5'h11 == _T_93 ? io_rx_tdata : buf_17; // @[ip.scala 38:23:@455.8]
  assign _GEN_20 = 5'h12 == _T_93 ? io_rx_tdata : buf_18; // @[ip.scala 38:23:@455.8]
  assign _GEN_21 = 5'h13 == _T_93 ? io_rx_tdata : buf_19; // @[ip.scala 38:23:@455.8]
  assign _T_95 = cnt + 11'h1; // @[ip.scala 39:18:@456.8]
  assign _T_96 = cnt + 11'h1; // @[ip.scala 39:18:@457.8]
  assign _GEN_22 = _T_87 ? _GEN_2 : buf_0; // @[ip.scala 37:33:@450.6]
  assign _GEN_23 = _T_87 ? _GEN_3 : buf_1; // @[ip.scala 37:33:@450.6]
  assign _GEN_24 = _T_87 ? _GEN_4 : buf_2; // @[ip.scala 37:33:@450.6]
  assign _GEN_25 = _T_87 ? _GEN_5 : buf_3; // @[ip.scala 37:33:@450.6]
  assign _GEN_26 = _T_87 ? _GEN_6 : buf_4; // @[ip.scala 37:33:@450.6]
  assign _GEN_27 = _T_87 ? _GEN_7 : buf_5; // @[ip.scala 37:33:@450.6]
  assign _GEN_28 = _T_87 ? _GEN_8 : buf_6; // @[ip.scala 37:33:@450.6]
  assign _GEN_29 = _T_87 ? _GEN_9 : buf_7; // @[ip.scala 37:33:@450.6]
  assign _GEN_30 = _T_87 ? _GEN_10 : buf_8; // @[ip.scala 37:33:@450.6]
  assign _GEN_31 = _T_87 ? _GEN_11 : buf_9; // @[ip.scala 37:33:@450.6]
  assign _GEN_32 = _T_87 ? _GEN_12 : buf_10; // @[ip.scala 37:33:@450.6]
  assign _GEN_33 = _T_87 ? _GEN_13 : buf_11; // @[ip.scala 37:33:@450.6]
  assign _GEN_34 = _T_87 ? _GEN_14 : buf_12; // @[ip.scala 37:33:@450.6]
  assign _GEN_35 = _T_87 ? _GEN_15 : buf_13; // @[ip.scala 37:33:@450.6]
  assign _GEN_36 = _T_87 ? _GEN_16 : buf_14; // @[ip.scala 37:33:@450.6]
  assign _GEN_37 = _T_87 ? _GEN_17 : buf_15; // @[ip.scala 37:33:@450.6]
  assign _GEN_38 = _T_87 ? _GEN_18 : buf_16; // @[ip.scala 37:33:@450.6]
  assign _GEN_39 = _T_87 ? _GEN_19 : buf_17; // @[ip.scala 37:33:@450.6]
  assign _GEN_40 = _T_87 ? _GEN_20 : buf_18; // @[ip.scala 37:33:@450.6]
  assign _GEN_41 = _T_87 ? _GEN_21 : buf_19; // @[ip.scala 37:33:@450.6]
  assign _GEN_42 = _T_87 ? _T_96 : cnt; // @[ip.scala 37:33:@450.6]
  assign _GEN_43 = _T_87 ? 1'h0 : 1'h1; // @[ip.scala 37:33:@450.6]
  assign _T_99 = cnt == 11'h14; // @[ip.scala 44:14:@463.6]
  assign _T_103 = _T_101 != 11'h14; // @[ip.scala 44:51:@466.6]
  assign _T_104 = _T_99 & _T_103; // @[ip.scala 44:34:@467.6]
  assign _GEN_44 = _T_104 ? 1'h0 : _GEN_1; // @[ip.scala 44:73:@468.6]
  assign _GEN_45 = io_rx_tlast; // @[ip.scala 48:23:@471.6]
  assign _GEN_46 = io_rx_tlast ? 1'h0 : _GEN_0; // @[ip.scala 48:23:@471.6]
  assign _GEN_47 = io_rx_tlast ? 11'h0 : _GEN_42; // @[ip.scala 48:23:@471.6]
  assign _GEN_48 = _T_85 ? _GEN_22 : buf_0; // @[ip.scala 36:47:@448.4]
  assign _GEN_49 = _T_85 ? _GEN_23 : buf_1; // @[ip.scala 36:47:@448.4]
  assign _GEN_50 = _T_85 ? _GEN_24 : buf_2; // @[ip.scala 36:47:@448.4]
  assign _GEN_51 = _T_85 ? _GEN_25 : buf_3; // @[ip.scala 36:47:@448.4]
  assign _GEN_52 = _T_85 ? _GEN_26 : buf_4; // @[ip.scala 36:47:@448.4]
  assign _GEN_53 = _T_85 ? _GEN_27 : buf_5; // @[ip.scala 36:47:@448.4]
  assign _GEN_54 = _T_85 ? _GEN_28 : buf_6; // @[ip.scala 36:47:@448.4]
  assign _GEN_55 = _T_85 ? _GEN_29 : buf_7; // @[ip.scala 36:47:@448.4]
  assign _GEN_56 = _T_85 ? _GEN_30 : buf_8; // @[ip.scala 36:47:@448.4]
  assign _GEN_57 = _T_85 ? _GEN_31 : buf_9; // @[ip.scala 36:47:@448.4]
  assign _GEN_58 = _T_85 ? _GEN_32 : buf_10; // @[ip.scala 36:47:@448.4]
  assign _GEN_59 = _T_85 ? _GEN_33 : buf_11; // @[ip.scala 36:47:@448.4]
  assign _GEN_60 = _T_85 ? _GEN_34 : buf_12; // @[ip.scala 36:47:@448.4]
  assign _GEN_61 = _T_85 ? _GEN_35 : buf_13; // @[ip.scala 36:47:@448.4]
  assign _GEN_62 = _T_85 ? _GEN_36 : buf_14; // @[ip.scala 36:47:@448.4]
  assign _GEN_63 = _T_85 ? _GEN_37 : buf_15; // @[ip.scala 36:47:@448.4]
  assign _GEN_64 = _T_85 ? _GEN_38 : buf_16; // @[ip.scala 36:47:@448.4]
  assign _GEN_65 = _T_85 ? _GEN_39 : buf_17; // @[ip.scala 36:47:@448.4]
  assign _GEN_66 = _T_85 ? _GEN_40 : buf_18; // @[ip.scala 36:47:@448.4]
  assign _GEN_67 = _T_85 ? _GEN_41 : buf_19; // @[ip.scala 36:47:@448.4]
  assign _GEN_68 = _T_85 ? _GEN_47 : cnt; // @[ip.scala 36:47:@448.4]
  assign _GEN_69 = _T_85 ? _GEN_43 : 1'h0; // @[ip.scala 36:47:@448.4]
  assign _GEN_70 = _T_85 ? _GEN_44 : _GEN_1; // @[ip.scala 36:47:@448.4]
  assign _GEN_71 = _T_85 ? io_rx_tlast : 1'h0; // @[ip.scala 36:47:@448.4]
  assign _GEN_72 = _T_85 ? _GEN_46 : _GEN_0; // @[ip.scala 36:47:@448.4]
  assign _T_109 = {buf_1,buf_0}; // @[ip.scala 55:20:@477.4]
  assign _T_110 = {buf_4,buf_3}; // @[ip.scala 55:20:@478.4]
  assign _T_111 = {buf_4,buf_3,buf_2}; // @[ip.scala 55:20:@479.4]
  assign _T_112 = {buf_4,buf_3,buf_2,buf_1,buf_0}; // @[ip.scala 55:20:@480.4]
  assign _T_113 = {buf_6,buf_5}; // @[ip.scala 55:20:@481.4]
  assign _T_114 = {buf_9,buf_8}; // @[ip.scala 55:20:@482.4]
  assign _T_115 = {buf_9,buf_8,buf_7}; // @[ip.scala 55:20:@483.4]
  assign _T_116 = {buf_9,buf_8,buf_7,buf_6,buf_5}; // @[ip.scala 55:20:@484.4]
  assign _T_117 = {buf_9,buf_8,buf_7,buf_6,buf_5,buf_4,buf_3,buf_2,buf_1,buf_0}; // @[ip.scala 55:20:@485.4]
  assign _T_118 = {buf_11,buf_10}; // @[ip.scala 55:20:@486.4]
  assign _T_119 = {buf_14,buf_13}; // @[ip.scala 55:20:@487.4]
  assign _T_120 = {buf_14,buf_13,buf_12}; // @[ip.scala 55:20:@488.4]
  assign _T_121 = {buf_14,buf_13,buf_12,buf_11,buf_10}; // @[ip.scala 55:20:@489.4]
  assign _T_122 = {buf_16,buf_15}; // @[ip.scala 55:20:@490.4]
  assign _T_123 = {buf_19,buf_18}; // @[ip.scala 55:20:@491.4]
  assign _T_124 = {buf_19,buf_18,buf_17}; // @[ip.scala 55:20:@492.4]
  assign _T_125 = {buf_19,buf_18,buf_17,buf_16,buf_15}; // @[ip.scala 55:20:@493.4]
  assign _T_126 = {buf_19,buf_18,buf_17,buf_16,buf_15,buf_14,buf_13,buf_12,buf_11,buf_10}; // @[ip.scala 55:20:@494.4]
  assign _T_127 = {_T_126,_T_117}; // @[ip.scala 55:20:@495.4]
  assign _T_131 = _T_127; // @[:@497.4 :@498.4]
  assign _T_132 = _T_127[31:0]; // @[ip.scala 55:35:@499.4]
  assign _T_133 = _T_127[63:32]; // @[ip.scala 55:35:@501.4]
  assign _T_134 = _T_127[79:64]; // @[ip.scala 55:35:@503.4]
  assign _T_135 = _T_127[87:80]; // @[ip.scala 55:35:@505.4]
  assign _T_136 = _T_127[95:88]; // @[ip.scala 55:35:@507.4]
  assign _T_137 = _T_127[108:96]; // @[ip.scala 55:35:@509.4]
  assign _T_138 = _T_127[111:109]; // @[ip.scala 55:35:@511.4]
  assign _T_139 = _T_127[127:112]; // @[ip.scala 55:35:@513.4]
  assign _T_140 = _T_127[143:128]; // @[ip.scala 55:35:@515.4]
  assign _T_141 = _T_127[145:144]; // @[ip.scala 55:35:@517.4]
  assign _T_142 = _T_127[151:146]; // @[ip.scala 55:35:@519.4]
  assign _T_143 = _T_127[155:152]; // @[ip.scala 55:35:@521.4]
  assign _T_144 = _T_127[159:156]; // @[ip.scala 55:35:@523.4]
  assign _T_146 = header == 1'h0; // @[ip.scala 56:24:@538.4]
  assign _T_129_version = _T_144; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@524.4]
  assign _T_129_ihl = _T_143; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@522.4]
  assign _T_129_dscp = _T_142; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@520.4]
  assign _T_129_ecn = _T_141; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@518.4]
  assign _T_129_len = _T_140; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@516.4]
  assign _T_129_id = _T_139; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@514.4]
  assign _T_129_flags = _T_138; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@512.4]
  assign _T_129_foff = _T_137; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@510.4]
  assign _T_129_ttl = _T_136; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@508.4]
  assign _T_129_proto = _T_135; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@506.4]
  assign _T_129_chksum = _T_134; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@504.4]
  assign _T_129_src = _T_133; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@502.4]
  assign _T_129_dest = _T_132; // @[ip.scala 55:35:@496.4 ip.scala 55:35:@500.4]
  assign io_rx_tready = 1'h1; // @[ip.scala 57:16:@540.4]
  assign io_output_version = _T_127[159:156]; // @[ip.scala 55:13:@537.4]
  assign io_output_ihl = _T_127[155:152]; // @[ip.scala 55:13:@536.4]
  assign io_output_dscp = _T_127[151:146]; // @[ip.scala 55:13:@535.4]
  assign io_output_ecn = _T_127[145:144]; // @[ip.scala 55:13:@534.4]
  assign io_output_len = _T_127[143:128]; // @[ip.scala 55:13:@533.4]
  assign io_output_id = _T_127[127:112]; // @[ip.scala 55:13:@532.4]
  assign io_output_flags = _T_127[111:109]; // @[ip.scala 55:13:@531.4]
  assign io_output_foff = _T_127[108:96]; // @[ip.scala 55:13:@530.4]
  assign io_output_ttl = _T_127[95:88]; // @[ip.scala 55:13:@529.4]
  assign io_output_proto = _T_127[87:80]; // @[ip.scala 55:13:@528.4]
  assign io_output_chksum = _T_127[79:64]; // @[ip.scala 55:13:@527.4]
  assign io_output_src = _T_127[63:32]; // @[ip.scala 55:13:@526.4]
  assign io_output_dest = _T_127[31:0]; // @[ip.scala 55:13:@525.4]
  assign io_headerFinished = header == 1'h0; // @[ip.scala 56:21:@539.4]
  assign io_payloadWriter_clk = clock; // @[ip.scala 26:24:@438.4]
  assign io_payloadWriter_en = _T_85 ? _GEN_43 : 1'h0; // @[ip.scala 29:23:@441.4 ip.scala 41:27:@461.8]
  assign io_payloadWriter_data_data = io_rx_tdata; // @[ip.scala 27:30:@439.4]
  assign io_payloadWriter_data_last = _T_85 ? io_rx_tlast : 1'h0; // @[ip.scala 28:30:@440.4 ip.scala 49:34:@472.8]
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
  cnt = _RAND_20[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  reading = _RAND_21[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  header = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  _T_101 = _RAND_23[10:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_85) begin
      if (_T_87) begin
        if (5'h0 == _T_93) begin
          buf_0 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h1 == _T_93) begin
          buf_1 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h2 == _T_93) begin
          buf_2 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h3 == _T_93) begin
          buf_3 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h4 == _T_93) begin
          buf_4 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h5 == _T_93) begin
          buf_5 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h6 == _T_93) begin
          buf_6 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h7 == _T_93) begin
          buf_7 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h8 == _T_93) begin
          buf_8 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h9 == _T_93) begin
          buf_9 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'ha == _T_93) begin
          buf_10 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'hb == _T_93) begin
          buf_11 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'hc == _T_93) begin
          buf_12 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'hd == _T_93) begin
          buf_13 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'he == _T_93) begin
          buf_14 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'hf == _T_93) begin
          buf_15 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h10 == _T_93) begin
          buf_16 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h11 == _T_93) begin
          buf_17 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h12 == _T_93) begin
          buf_18 <= io_rx_tdata;
        end
      end
    end
    if (_T_85) begin
      if (_T_87) begin
        if (5'h13 == _T_93) begin
          buf_19 <= io_rx_tdata;
        end
      end
    end
    if (reset) begin
      cnt <= 11'h0;
    end else begin
      if (_T_85) begin
        if (io_rx_tlast) begin
          cnt <= 11'h0;
        end else begin
          if (_T_87) begin
            cnt <= _T_96;
          end
        end
      end
    end
    if (reset) begin
      reading <= 1'h0;
    end else begin
      if (_T_85) begin
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
      header <= 1'h0;
    end else begin
      if (_T_85) begin
        if (_T_104) begin
          header <= 1'h0;
        end else begin
          if (io_start) begin
            header <= 1'h1;
          end
        end
      end else begin
        if (io_start) begin
          header <= 1'h1;
        end
      end
    end
    _T_101 <= cnt;
  end
endmodule
module Acceptor( // @[:@542.2]
  input         clock, // @[:@543.4]
  input         reset, // @[:@544.4]
  input  [7:0]  io_rx_tdata, // @[:@545.4]
  input         io_rx_tvalid, // @[:@545.4]
  input         io_rx_tlast, // @[:@545.4]
  output        io_rx_tready, // @[:@545.4]
  output        io_writer_clk, // @[:@545.4]
  output        io_writer_en, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_0, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_1, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_2, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_3, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_4, // @[:@545.4]
  output [7:0]  io_writer_data_eth_dest_addr_5, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_0, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_1, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_2, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_3, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_4, // @[:@545.4]
  output [7:0]  io_writer_data_eth_sender_addr_5, // @[:@545.4]
  output [1:0]  io_writer_data_eth_pactype, // @[:@545.4]
  output [2:0]  io_writer_data_eth_vlan, // @[:@545.4]
  output [15:0] io_writer_data_arp_htype, // @[:@545.4]
  output [15:0] io_writer_data_arp_ptype, // @[:@545.4]
  output [7:0]  io_writer_data_arp_hlen, // @[:@545.4]
  output [7:0]  io_writer_data_arp_plen, // @[:@545.4]
  output [15:0] io_writer_data_arp_oper, // @[:@545.4]
  output [47:0] io_writer_data_arp_sha, // @[:@545.4]
  output [31:0] io_writer_data_arp_spa, // @[:@545.4]
  output [47:0] io_writer_data_arp_tha, // @[:@545.4]
  output [31:0] io_writer_data_arp_tpa, // @[:@545.4]
  output [3:0]  io_writer_data_ip_version, // @[:@545.4]
  output [3:0]  io_writer_data_ip_ihl, // @[:@545.4]
  output [5:0]  io_writer_data_ip_dscp, // @[:@545.4]
  output [1:0]  io_writer_data_ip_ecn, // @[:@545.4]
  output [15:0] io_writer_data_ip_len, // @[:@545.4]
  output [15:0] io_writer_data_ip_id, // @[:@545.4]
  output [2:0]  io_writer_data_ip_flags, // @[:@545.4]
  output [12:0] io_writer_data_ip_foff, // @[:@545.4]
  output [7:0]  io_writer_data_ip_ttl, // @[:@545.4]
  output [7:0]  io_writer_data_ip_proto, // @[:@545.4]
  output [15:0] io_writer_data_ip_chksum, // @[:@545.4]
  output [31:0] io_writer_data_ip_src, // @[:@545.4]
  output [31:0] io_writer_data_ip_dest, // @[:@545.4]
  input         io_writer_full, // @[:@545.4]
  input  [15:0] io_writer_space, // @[:@545.4]
  output        io_ipWriter_clk, // @[:@545.4]
  output        io_ipWriter_en, // @[:@545.4]
  output [7:0]  io_ipWriter_data_data, // @[:@545.4]
  output        io_ipWriter_data_last, // @[:@545.4]
  input         io_ipWriter_full, // @[:@545.4]
  input  [15:0] io_ipWriter_space // @[:@545.4]
);
  wire  arpAcceptor_clock; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_reset; // @[acceptor.scala 46:27:@667.4]
  wire [7:0] arpAcceptor_io_rx_tdata; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_io_rx_tvalid; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_io_rx_tlast; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_io_rx_tready; // @[acceptor.scala 46:27:@667.4]
  wire [15:0] arpAcceptor_io_output_htype; // @[acceptor.scala 46:27:@667.4]
  wire [15:0] arpAcceptor_io_output_ptype; // @[acceptor.scala 46:27:@667.4]
  wire [7:0] arpAcceptor_io_output_hlen; // @[acceptor.scala 46:27:@667.4]
  wire [7:0] arpAcceptor_io_output_plen; // @[acceptor.scala 46:27:@667.4]
  wire [15:0] arpAcceptor_io_output_oper; // @[acceptor.scala 46:27:@667.4]
  wire [47:0] arpAcceptor_io_output_sha; // @[acceptor.scala 46:27:@667.4]
  wire [31:0] arpAcceptor_io_output_spa; // @[acceptor.scala 46:27:@667.4]
  wire [47:0] arpAcceptor_io_output_tha; // @[acceptor.scala 46:27:@667.4]
  wire [31:0] arpAcceptor_io_output_tpa; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_io_start; // @[acceptor.scala 46:27:@667.4]
  wire  arpAcceptor_io_finished; // @[acceptor.scala 46:27:@667.4]
  wire  ipAcceptor_clock; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_reset; // @[acceptor.scala 47:26:@670.4]
  wire [7:0] ipAcceptor_io_rx_tdata; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_rx_tvalid; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_rx_tlast; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_rx_tready; // @[acceptor.scala 47:26:@670.4]
  wire [3:0] ipAcceptor_io_output_version; // @[acceptor.scala 47:26:@670.4]
  wire [3:0] ipAcceptor_io_output_ihl; // @[acceptor.scala 47:26:@670.4]
  wire [5:0] ipAcceptor_io_output_dscp; // @[acceptor.scala 47:26:@670.4]
  wire [1:0] ipAcceptor_io_output_ecn; // @[acceptor.scala 47:26:@670.4]
  wire [15:0] ipAcceptor_io_output_len; // @[acceptor.scala 47:26:@670.4]
  wire [15:0] ipAcceptor_io_output_id; // @[acceptor.scala 47:26:@670.4]
  wire [2:0] ipAcceptor_io_output_flags; // @[acceptor.scala 47:26:@670.4]
  wire [12:0] ipAcceptor_io_output_foff; // @[acceptor.scala 47:26:@670.4]
  wire [7:0] ipAcceptor_io_output_ttl; // @[acceptor.scala 47:26:@670.4]
  wire [7:0] ipAcceptor_io_output_proto; // @[acceptor.scala 47:26:@670.4]
  wire [15:0] ipAcceptor_io_output_chksum; // @[acceptor.scala 47:26:@670.4]
  wire [31:0] ipAcceptor_io_output_src; // @[acceptor.scala 47:26:@670.4]
  wire [31:0] ipAcceptor_io_output_dest; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_start; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_headerFinished; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 47:26:@670.4]
  wire [7:0] ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 47:26:@670.4]
  wire  ipAcceptor_io_payloadWriter_full; // @[acceptor.scala 47:26:@670.4]
  wire [15:0] ipAcceptor_io_payloadWriter_space; // @[acceptor.scala 47:26:@670.4]
  reg [11:0] cnt; // @[acceptor.scala 20:20:@547.4]
  reg [31:0] _RAND_0;
  reg [7:0] header_0; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_1;
  reg [7:0] header_1; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_2;
  reg [7:0] header_2; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_3;
  reg [7:0] header_3; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_4;
  reg [7:0] header_4; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_5;
  reg [7:0] header_5; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_6;
  reg [7:0] header_6; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_7;
  reg [7:0] header_7; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_8;
  reg [7:0] header_8; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_9;
  reg [7:0] header_9; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_10;
  reg [7:0] header_10; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_11;
  reg [7:0] header_11; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_12;
  reg [7:0] header_12; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_13;
  reg [7:0] header_13; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_14;
  reg [7:0] header_14; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_15;
  reg [7:0] header_15; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_16;
  reg [7:0] header_16; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_17;
  reg [7:0] header_17; // @[acceptor.scala 21:19:@548.4]
  reg [31:0] _RAND_18;
  wire  _T_252; // @[pactype.scala 14:16:@550.4]
  wire  _T_254; // @[pactype.scala 14:34:@551.4]
  wire  _T_255; // @[pactype.scala 14:25:@552.4]
  wire  _T_257; // @[pactype.scala 16:22:@557.6]
  wire  _T_259; // @[pactype.scala 16:40:@558.6]
  wire  _T_260; // @[pactype.scala 16:31:@559.6]
  wire [1:0] _GEN_0; // @[pactype.scala 16:50:@560.6]
  wire [1:0] pactype; // @[pactype.scala 14:44:@553.4]
  wire [15:0] _T_316; // @[acceptor.scala 27:32:@567.4]
  wire [15:0] _T_317; // @[acceptor.scala 27:32:@568.4]
  wire [31:0] _T_318; // @[acceptor.scala 27:32:@569.4]
  wire [15:0] _T_319; // @[acceptor.scala 27:32:@570.4]
  wire [15:0] _T_320; // @[acceptor.scala 27:32:@571.4]
  wire [23:0] _T_321; // @[acceptor.scala 27:32:@572.4]
  wire [39:0] _T_322; // @[acceptor.scala 27:32:@573.4]
  wire [71:0] _T_323; // @[acceptor.scala 27:32:@574.4]
  wire [15:0] _T_324; // @[acceptor.scala 27:32:@575.4]
  wire [15:0] _T_325; // @[acceptor.scala 27:32:@576.4]
  wire [31:0] _T_326; // @[acceptor.scala 27:32:@577.4]
  wire [15:0] _T_327; // @[acceptor.scala 27:32:@578.4]
  wire [15:0] _T_328; // @[acceptor.scala 27:32:@579.4]
  wire [23:0] _T_329; // @[acceptor.scala 27:32:@580.4]
  wire [39:0] _T_330; // @[acceptor.scala 27:32:@581.4]
  wire [71:0] _T_331; // @[acceptor.scala 27:32:@582.4]
  wire [143:0] _T_332; // @[acceptor.scala 27:32:@583.4]
  wire [95:0] _T_333; // @[acceptor.scala 27:39:@584.4]
  wire [47:0] _T_344; // @[:@586.4 :@587.4]
  wire [7:0] output_eth_sender_addr_0; // @[acceptor.scala 27:65:@588.4]
  wire [7:0] output_eth_sender_addr_1; // @[acceptor.scala 27:65:@590.4]
  wire [7:0] output_eth_sender_addr_2; // @[acceptor.scala 27:65:@592.4]
  wire [7:0] output_eth_sender_addr_3; // @[acceptor.scala 27:65:@594.4]
  wire [7:0] output_eth_sender_addr_4; // @[acceptor.scala 27:65:@596.4]
  wire [7:0] output_eth_sender_addr_5; // @[acceptor.scala 27:65:@598.4]
  wire [15:0] _T_351; // @[acceptor.scala 28:30:@606.4]
  wire [15:0] _T_352; // @[acceptor.scala 28:30:@607.4]
  wire [31:0] _T_353; // @[acceptor.scala 28:30:@608.4]
  wire [15:0] _T_354; // @[acceptor.scala 28:30:@609.4]
  wire [15:0] _T_355; // @[acceptor.scala 28:30:@610.4]
  wire [23:0] _T_356; // @[acceptor.scala 28:30:@611.4]
  wire [39:0] _T_357; // @[acceptor.scala 28:30:@612.4]
  wire [71:0] _T_358; // @[acceptor.scala 28:30:@613.4]
  wire [15:0] _T_359; // @[acceptor.scala 28:30:@614.4]
  wire [15:0] _T_360; // @[acceptor.scala 28:30:@615.4]
  wire [31:0] _T_361; // @[acceptor.scala 28:30:@616.4]
  wire [15:0] _T_362; // @[acceptor.scala 28:30:@617.4]
  wire [15:0] _T_363; // @[acceptor.scala 28:30:@618.4]
  wire [23:0] _T_364; // @[acceptor.scala 28:30:@619.4]
  wire [39:0] _T_365; // @[acceptor.scala 28:30:@620.4]
  wire [71:0] _T_366; // @[acceptor.scala 28:30:@621.4]
  wire [143:0] _T_367; // @[acceptor.scala 28:30:@622.4]
  wire [47:0] _T_368; // @[acceptor.scala 28:37:@623.4]
  wire [47:0] _T_379; // @[:@625.4 :@626.4]
  wire [7:0] output_eth_dest_addr_0; // @[acceptor.scala 28:62:@627.4]
  wire [7:0] output_eth_dest_addr_1; // @[acceptor.scala 28:62:@629.4]
  wire [7:0] output_eth_dest_addr_2; // @[acceptor.scala 28:62:@631.4]
  wire [7:0] output_eth_dest_addr_3; // @[acceptor.scala 28:62:@633.4]
  wire [7:0] output_eth_dest_addr_4; // @[acceptor.scala 28:62:@635.4]
  wire [7:0] output_eth_dest_addr_5; // @[acceptor.scala 28:62:@637.4]
  wire [12:0] _T_388; // @[acceptor.scala 36:18:@652.8]
  wire [11:0] _T_389; // @[acceptor.scala 36:18:@653.8]
  wire [11:0] _GEN_2; // @[acceptor.scala 33:23:@648.6]
  wire [11:0] _GEN_3; // @[acceptor.scala 32:22:@647.4]
  wire  _T_391; // @[acceptor.scala 41:14:@658.6]
  wire [12:0] _T_393; // @[acceptor.scala 42:19:@660.8]
  wire [12:0] _T_394; // @[acceptor.scala 42:19:@661.8]
  wire [11:0] _T_395; // @[acceptor.scala 42:19:@662.8]
  wire [4:0] _T_397; // @[:@663.8]
  wire [7:0] _header_T_397; // @[acceptor.scala 42:26:@664.8 acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_4; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_5; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_6; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_7; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_8; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_9; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_10; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_11; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_12; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_13; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_14; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_15; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_16; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_17; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_18; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_19; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_20; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_21; // @[acceptor.scala 42:26:@664.8]
  wire [7:0] _GEN_22; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_23; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_24; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_25; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_26; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_27; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_28; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_29; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_30; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_31; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_32; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_33; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_34; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_35; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_36; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_37; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_38; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_39; // @[acceptor.scala 41:30:@659.6]
  wire [7:0] _GEN_40; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_41; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_42; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_43; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_44; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_45; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_46; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_47; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_48; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_49; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_50; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_51; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_52; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_53; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_54; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_55; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_56; // @[acceptor.scala 40:22:@657.4]
  wire [7:0] _GEN_57; // @[acceptor.scala 40:22:@657.4]
  wire  arpRx_tlast; // @[axis.scala 15:19:@673.4 axis.scala 19:15:@676.4]
  wire  _T_408; // @[axis.scala 21:23:@677.4]
  wire  ipRx_tlast; // @[axis.scala 15:19:@678.4 axis.scala 19:15:@681.4]
  wire  _T_418; // @[axis.scala 21:23:@682.4]
  wire  _T_420; // @[acceptor.scala 55:23:@698.4]
  reg [11:0] _T_422; // @[acceptor.scala 55:50:@699.4]
  reg [31:0] _RAND_19;
  wire  _T_424; // @[acceptor.scala 55:56:@701.4]
  wire  headerEnd; // @[acceptor.scala 55:40:@702.4]
  wire [1:0] _GEN_1; // @[pactype.scala 12:22:@549.4 pactype.scala 15:14:@554.6 pactype.scala 17:14:@561.8 pactype.scala 19:14:@564.8]
  wire  _T_425; // @[acceptor.scala 56:35:@703.4]
  wire  _T_426; // @[acceptor.scala 56:51:@704.4]
  wire  _T_427; // @[acceptor.scala 57:34:@706.4]
  wire  _T_428; // @[acceptor.scala 57:51:@707.4]
  wire  _T_429; // @[acceptor.scala 59:25:@709.4]
  wire  _T_430; // @[acceptor.scala 59:41:@710.4]
  reg  _T_432; // @[acceptor.scala 59:79:@711.4]
  reg [31:0] _RAND_20;
  wire  _T_434; // @[acceptor.scala 59:71:@713.4]
  wire  arpEmit; // @[acceptor.scala 59:68:@714.4]
  wire  _T_435; // @[acceptor.scala 60:24:@715.4]
  wire  _T_436; // @[acceptor.scala 60:41:@716.4]
  reg  _T_438; // @[acceptor.scala 60:84:@717.4]
  reg [31:0] _RAND_21;
  wire  _T_440; // @[acceptor.scala 60:76:@719.4]
  wire  ipEmit; // @[acceptor.scala 60:73:@720.4]
  wire  _T_441; // @[acceptor.scala 65:27:@743.4]
  wire [7:0] _T_375_addr_0; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@628.4]
  wire [7:0] _T_380; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@639.4]
  wire [7:0] _T_375_addr_1; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@630.4]
  wire [7:0] _T_381; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@640.4]
  wire [7:0] _T_375_addr_2; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@632.4]
  wire [7:0] _T_382; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@641.4]
  wire [7:0] _T_375_addr_3; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@634.4]
  wire [7:0] _T_383; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@642.4]
  wire [7:0] _T_375_addr_4; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@636.4]
  wire [7:0] _T_384; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@643.4]
  wire [7:0] _T_375_addr_5; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@638.4]
  wire [7:0] _T_385; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@644.4]
  wire [7:0] _T_340_addr_0; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@589.4]
  wire [7:0] _T_345; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@600.4]
  wire [7:0] _T_340_addr_1; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@591.4]
  wire [7:0] _T_346; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@601.4]
  wire [7:0] _T_340_addr_2; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@593.4]
  wire [7:0] _T_347; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@602.4]
  wire [7:0] _T_340_addr_3; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@595.4]
  wire [7:0] _T_348; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@603.4]
  wire [7:0] _T_340_addr_4; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@597.4]
  wire [7:0] _T_349; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@604.4]
  wire [7:0] _T_340_addr_5; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@599.4]
  wire [7:0] _T_350; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@605.4]
  wire [1:0] output_eth_pactype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 30:22:@646.4]
  wire [2:0] output_eth_vlan; // @[acceptor.scala 24:20:@566.4 acceptor.scala 29:19:@645.4]
  wire [15:0] output_arp_htype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@742.4]
  wire [15:0] output_arp_ptype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@741.4]
  wire [7:0] output_arp_hlen; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@740.4]
  wire [7:0] output_arp_plen; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@739.4]
  wire [15:0] output_arp_oper; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@738.4]
  wire [47:0] output_arp_sha; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@737.4]
  wire [31:0] output_arp_spa; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@736.4]
  wire [47:0] output_arp_tha; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@735.4]
  wire [31:0] output_arp_tpa; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@734.4]
  wire [3:0] output_ip_version; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@733.4]
  wire [3:0] output_ip_ihl; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@732.4]
  wire [5:0] output_ip_dscp; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@731.4]
  wire [1:0] output_ip_ecn; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@730.4]
  wire [15:0] output_ip_len; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@729.4]
  wire [15:0] output_ip_id; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@728.4]
  wire [2:0] output_ip_flags; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@727.4]
  wire [12:0] output_ip_foff; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@726.4]
  wire [7:0] output_ip_ttl; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@725.4]
  wire [7:0] output_ip_proto; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@724.4]
  wire [15:0] output_ip_chksum; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@723.4]
  wire [31:0] output_ip_src; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@722.4]
  wire [31:0] output_ip_dest; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@721.4]
  wire [7:0] arpRx_tdata; // @[axis.scala 15:19:@673.4 axis.scala 17:15:@674.4]
  wire  arpRx_tvalid; // @[axis.scala 15:19:@673.4 axis.scala 18:16:@675.4]
  wire  arpRx_tready; // @[axis.scala 15:19:@673.4 acceptor.scala 50:21:@684.4]
  wire [7:0] ipRx_tdata; // @[axis.scala 15:19:@678.4 axis.scala 17:15:@679.4]
  wire  ipRx_tvalid; // @[axis.scala 15:19:@678.4 axis.scala 18:16:@680.4]
  wire  ipRx_tready; // @[axis.scala 15:19:@678.4 acceptor.scala 51:20:@688.4]
  ARPAcceptor arpAcceptor ( // @[acceptor.scala 46:27:@667.4]
    .clock(arpAcceptor_clock),
    .reset(arpAcceptor_reset),
    .io_rx_tdata(arpAcceptor_io_rx_tdata),
    .io_rx_tvalid(arpAcceptor_io_rx_tvalid),
    .io_rx_tlast(arpAcceptor_io_rx_tlast),
    .io_rx_tready(arpAcceptor_io_rx_tready),
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
  IPAcceptor ipAcceptor ( // @[acceptor.scala 47:26:@670.4]
    .clock(ipAcceptor_clock),
    .reset(ipAcceptor_reset),
    .io_rx_tdata(ipAcceptor_io_rx_tdata),
    .io_rx_tvalid(ipAcceptor_io_rx_tvalid),
    .io_rx_tlast(ipAcceptor_io_rx_tlast),
    .io_rx_tready(ipAcceptor_io_rx_tready),
    .io_output_version(ipAcceptor_io_output_version),
    .io_output_ihl(ipAcceptor_io_output_ihl),
    .io_output_dscp(ipAcceptor_io_output_dscp),
    .io_output_ecn(ipAcceptor_io_output_ecn),
    .io_output_len(ipAcceptor_io_output_len),
    .io_output_id(ipAcceptor_io_output_id),
    .io_output_flags(ipAcceptor_io_output_flags),
    .io_output_foff(ipAcceptor_io_output_foff),
    .io_output_ttl(ipAcceptor_io_output_ttl),
    .io_output_proto(ipAcceptor_io_output_proto),
    .io_output_chksum(ipAcceptor_io_output_chksum),
    .io_output_src(ipAcceptor_io_output_src),
    .io_output_dest(ipAcceptor_io_output_dest),
    .io_start(ipAcceptor_io_start),
    .io_headerFinished(ipAcceptor_io_headerFinished),
    .io_payloadWriter_clk(ipAcceptor_io_payloadWriter_clk),
    .io_payloadWriter_en(ipAcceptor_io_payloadWriter_en),
    .io_payloadWriter_data_data(ipAcceptor_io_payloadWriter_data_data),
    .io_payloadWriter_data_last(ipAcceptor_io_payloadWriter_data_last),
    .io_payloadWriter_full(ipAcceptor_io_payloadWriter_full),
    .io_payloadWriter_space(ipAcceptor_io_payloadWriter_space)
  );
  assign _T_252 = header_1 == 8'h8; // @[pactype.scala 14:16:@550.4]
  assign _T_254 = header_0 == 8'h0; // @[pactype.scala 14:34:@551.4]
  assign _T_255 = _T_252 & _T_254; // @[pactype.scala 14:25:@552.4]
  assign _T_257 = header_1 == 8'h8; // @[pactype.scala 16:22:@557.6]
  assign _T_259 = header_0 == 8'h6; // @[pactype.scala 16:40:@558.6]
  assign _T_260 = _T_252 & _T_259; // @[pactype.scala 16:31:@559.6]
  assign _GEN_0 = _T_260 ? 2'h2 : 2'h0; // @[pactype.scala 16:50:@560.6]
  assign pactype = _T_255 ? 2'h1 : _GEN_0; // @[pactype.scala 14:44:@553.4]
  assign _T_316 = {header_1,header_0}; // @[acceptor.scala 27:32:@567.4]
  assign _T_317 = {header_3,header_2}; // @[acceptor.scala 27:32:@568.4]
  assign _T_318 = {header_3,header_2,header_1,header_0}; // @[acceptor.scala 27:32:@569.4]
  assign _T_319 = {header_5,header_4}; // @[acceptor.scala 27:32:@570.4]
  assign _T_320 = {header_8,header_7}; // @[acceptor.scala 27:32:@571.4]
  assign _T_321 = {header_8,header_7,header_6}; // @[acceptor.scala 27:32:@572.4]
  assign _T_322 = {header_8,header_7,header_6,header_5,header_4}; // @[acceptor.scala 27:32:@573.4]
  assign _T_323 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 27:32:@574.4]
  assign _T_324 = {header_10,header_9}; // @[acceptor.scala 27:32:@575.4]
  assign _T_325 = {header_12,header_11}; // @[acceptor.scala 27:32:@576.4]
  assign _T_326 = {header_12,header_11,header_10,header_9}; // @[acceptor.scala 27:32:@577.4]
  assign _T_327 = {header_14,header_13}; // @[acceptor.scala 27:32:@578.4]
  assign _T_328 = {header_17,header_16}; // @[acceptor.scala 27:32:@579.4]
  assign _T_329 = {header_17,header_16,header_15}; // @[acceptor.scala 27:32:@580.4]
  assign _T_330 = {header_17,header_16,header_15,header_14,header_13}; // @[acceptor.scala 27:32:@581.4]
  assign _T_331 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9}; // @[acceptor.scala 27:32:@582.4]
  assign _T_332 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_323}; // @[acceptor.scala 27:32:@583.4]
  assign _T_333 = _T_332[143:48]; // @[acceptor.scala 27:39:@584.4]
  assign _T_344 = _T_333[47:0]; // @[:@586.4 :@587.4]
  assign output_eth_sender_addr_0 = _T_344[7:0]; // @[acceptor.scala 27:65:@588.4]
  assign output_eth_sender_addr_1 = _T_344[15:8]; // @[acceptor.scala 27:65:@590.4]
  assign output_eth_sender_addr_2 = _T_344[23:16]; // @[acceptor.scala 27:65:@592.4]
  assign output_eth_sender_addr_3 = _T_344[31:24]; // @[acceptor.scala 27:65:@594.4]
  assign output_eth_sender_addr_4 = _T_344[39:32]; // @[acceptor.scala 27:65:@596.4]
  assign output_eth_sender_addr_5 = _T_344[47:40]; // @[acceptor.scala 27:65:@598.4]
  assign _T_351 = {header_1,header_0}; // @[acceptor.scala 28:30:@606.4]
  assign _T_352 = {header_3,header_2}; // @[acceptor.scala 28:30:@607.4]
  assign _T_353 = {header_3,header_2,header_1,header_0}; // @[acceptor.scala 28:30:@608.4]
  assign _T_354 = {header_5,header_4}; // @[acceptor.scala 28:30:@609.4]
  assign _T_355 = {header_8,header_7}; // @[acceptor.scala 28:30:@610.4]
  assign _T_356 = {header_8,header_7,header_6}; // @[acceptor.scala 28:30:@611.4]
  assign _T_357 = {header_8,header_7,header_6,header_5,header_4}; // @[acceptor.scala 28:30:@612.4]
  assign _T_358 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 28:30:@613.4]
  assign _T_359 = {header_10,header_9}; // @[acceptor.scala 28:30:@614.4]
  assign _T_360 = {header_12,header_11}; // @[acceptor.scala 28:30:@615.4]
  assign _T_361 = {header_12,header_11,header_10,header_9}; // @[acceptor.scala 28:30:@616.4]
  assign _T_362 = {header_14,header_13}; // @[acceptor.scala 28:30:@617.4]
  assign _T_363 = {header_17,header_16}; // @[acceptor.scala 28:30:@618.4]
  assign _T_364 = {header_17,header_16,header_15}; // @[acceptor.scala 28:30:@619.4]
  assign _T_365 = {header_17,header_16,header_15,header_14,header_13}; // @[acceptor.scala 28:30:@620.4]
  assign _T_366 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9}; // @[acceptor.scala 28:30:@621.4]
  assign _T_367 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_323}; // @[acceptor.scala 28:30:@622.4]
  assign _T_368 = _T_332[143:96]; // @[acceptor.scala 28:37:@623.4]
  assign _T_379 = _T_368; // @[:@625.4 :@626.4]
  assign output_eth_dest_addr_0 = _T_368[7:0]; // @[acceptor.scala 28:62:@627.4]
  assign output_eth_dest_addr_1 = _T_368[15:8]; // @[acceptor.scala 28:62:@629.4]
  assign output_eth_dest_addr_2 = _T_368[23:16]; // @[acceptor.scala 28:62:@631.4]
  assign output_eth_dest_addr_3 = _T_368[31:24]; // @[acceptor.scala 28:62:@633.4]
  assign output_eth_dest_addr_4 = _T_368[39:32]; // @[acceptor.scala 28:62:@635.4]
  assign output_eth_dest_addr_5 = _T_368[47:40]; // @[acceptor.scala 28:62:@637.4]
  assign _T_388 = cnt + 12'h1; // @[acceptor.scala 36:18:@652.8]
  assign _T_389 = cnt + 12'h1; // @[acceptor.scala 36:18:@653.8]
  assign _GEN_2 = io_rx_tlast ? 12'h0 : _T_389; // @[acceptor.scala 33:23:@648.6]
  assign _GEN_3 = io_rx_tvalid ? _GEN_2 : cnt; // @[acceptor.scala 32:22:@647.4]
  assign _T_391 = cnt < 12'h12; // @[acceptor.scala 41:14:@658.6]
  assign _T_393 = 12'h11 - cnt; // @[acceptor.scala 42:19:@660.8]
  assign _T_394 = $unsigned(_T_393); // @[acceptor.scala 42:19:@661.8]
  assign _T_395 = _T_394[11:0]; // @[acceptor.scala 42:19:@662.8]
  assign _T_397 = _T_395[4:0]; // @[:@663.8]
  assign _header_T_397 = io_rx_tdata; // @[acceptor.scala 42:26:@664.8 acceptor.scala 42:26:@664.8]
  assign _GEN_4 = 5'h0 == _T_397 ? io_rx_tdata : header_0; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_5 = 5'h1 == _T_397 ? io_rx_tdata : header_1; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_6 = 5'h2 == _T_397 ? io_rx_tdata : header_2; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_7 = 5'h3 == _T_397 ? io_rx_tdata : header_3; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_8 = 5'h4 == _T_397 ? io_rx_tdata : header_4; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_9 = 5'h5 == _T_397 ? io_rx_tdata : header_5; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_10 = 5'h6 == _T_397 ? io_rx_tdata : header_6; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_11 = 5'h7 == _T_397 ? io_rx_tdata : header_7; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_12 = 5'h8 == _T_397 ? io_rx_tdata : header_8; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_13 = 5'h9 == _T_397 ? io_rx_tdata : header_9; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_14 = 5'ha == _T_397 ? io_rx_tdata : header_10; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_15 = 5'hb == _T_397 ? io_rx_tdata : header_11; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_16 = 5'hc == _T_397 ? io_rx_tdata : header_12; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_17 = 5'hd == _T_397 ? io_rx_tdata : header_13; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_18 = 5'he == _T_397 ? io_rx_tdata : header_14; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_19 = 5'hf == _T_397 ? io_rx_tdata : header_15; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_20 = 5'h10 == _T_397 ? io_rx_tdata : header_16; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_21 = 5'h11 == _T_397 ? io_rx_tdata : header_17; // @[acceptor.scala 42:26:@664.8]
  assign _GEN_22 = _T_391 ? _GEN_4 : header_0; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_23 = _T_391 ? _GEN_5 : header_1; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_24 = _T_391 ? _GEN_6 : header_2; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_25 = _T_391 ? _GEN_7 : header_3; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_26 = _T_391 ? _GEN_8 : header_4; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_27 = _T_391 ? _GEN_9 : header_5; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_28 = _T_391 ? _GEN_10 : header_6; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_29 = _T_391 ? _GEN_11 : header_7; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_30 = _T_391 ? _GEN_12 : header_8; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_31 = _T_391 ? _GEN_13 : header_9; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_32 = _T_391 ? _GEN_14 : header_10; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_33 = _T_391 ? _GEN_15 : header_11; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_34 = _T_391 ? _GEN_16 : header_12; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_35 = _T_391 ? _GEN_17 : header_13; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_36 = _T_391 ? _GEN_18 : header_14; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_37 = _T_391 ? _GEN_19 : header_15; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_38 = _T_391 ? _GEN_20 : header_16; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_39 = _T_391 ? _GEN_21 : header_17; // @[acceptor.scala 41:30:@659.6]
  assign _GEN_40 = io_rx_tvalid ? _GEN_22 : header_0; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_41 = io_rx_tvalid ? _GEN_23 : header_1; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_42 = io_rx_tvalid ? _GEN_24 : header_2; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_43 = io_rx_tvalid ? _GEN_25 : header_3; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_44 = io_rx_tvalid ? _GEN_26 : header_4; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_45 = io_rx_tvalid ? _GEN_27 : header_5; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_46 = io_rx_tvalid ? _GEN_28 : header_6; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_47 = io_rx_tvalid ? _GEN_29 : header_7; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_48 = io_rx_tvalid ? _GEN_30 : header_8; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_49 = io_rx_tvalid ? _GEN_31 : header_9; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_50 = io_rx_tvalid ? _GEN_32 : header_10; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_51 = io_rx_tvalid ? _GEN_33 : header_11; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_52 = io_rx_tvalid ? _GEN_34 : header_12; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_53 = io_rx_tvalid ? _GEN_35 : header_13; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_54 = io_rx_tvalid ? _GEN_36 : header_14; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_55 = io_rx_tvalid ? _GEN_37 : header_15; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_56 = io_rx_tvalid ? _GEN_38 : header_16; // @[acceptor.scala 40:22:@657.4]
  assign _GEN_57 = io_rx_tvalid ? _GEN_39 : header_17; // @[acceptor.scala 40:22:@657.4]
  assign arpRx_tlast = io_rx_tlast; // @[axis.scala 15:19:@673.4 axis.scala 19:15:@676.4]
  assign _T_408 = io_rx_tlast; // @[axis.scala 21:23:@677.4]
  assign ipRx_tlast = io_rx_tlast; // @[axis.scala 15:19:@678.4 axis.scala 19:15:@681.4]
  assign _T_418 = io_rx_tlast | io_rx_tlast; // @[axis.scala 21:23:@682.4]
  assign _T_420 = cnt == 12'h12; // @[acceptor.scala 55:23:@698.4]
  assign _T_424 = _T_422 != 12'h12; // @[acceptor.scala 55:56:@701.4]
  assign headerEnd = _T_420 & _T_424; // @[acceptor.scala 55:40:@702.4]
  assign _GEN_1 = pactype; // @[pactype.scala 12:22:@549.4 pactype.scala 15:14:@554.6 pactype.scala 17:14:@561.8 pactype.scala 19:14:@564.8]
  assign _T_425 = pactype == 2'h2; // @[acceptor.scala 56:35:@703.4]
  assign _T_426 = _T_425 & headerEnd; // @[acceptor.scala 56:51:@704.4]
  assign _T_427 = pactype == 2'h1; // @[acceptor.scala 57:34:@706.4]
  assign _T_428 = _T_427 & headerEnd; // @[acceptor.scala 57:51:@707.4]
  assign _T_429 = pactype == 2'h2; // @[acceptor.scala 59:25:@709.4]
  assign _T_430 = _T_425 & arpAcceptor_io_finished; // @[acceptor.scala 59:41:@710.4]
  assign _T_434 = _T_432 == 1'h0; // @[acceptor.scala 59:71:@713.4]
  assign arpEmit = _T_430 & _T_434; // @[acceptor.scala 59:68:@714.4]
  assign _T_435 = pactype == 2'h1; // @[acceptor.scala 60:24:@715.4]
  assign _T_436 = _T_427 & ipAcceptor_io_headerFinished; // @[acceptor.scala 60:41:@716.4]
  assign _T_440 = _T_438 == 1'h0; // @[acceptor.scala 60:76:@719.4]
  assign ipEmit = _T_436 & _T_440; // @[acceptor.scala 60:73:@720.4]
  assign _T_441 = arpEmit | ipEmit; // @[acceptor.scala 65:27:@743.4]
  assign _T_375_addr_0 = output_eth_dest_addr_0; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@628.4]
  assign _T_380 = output_eth_dest_addr_0; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@639.4]
  assign _T_375_addr_1 = output_eth_dest_addr_1; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@630.4]
  assign _T_381 = output_eth_dest_addr_1; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@640.4]
  assign _T_375_addr_2 = output_eth_dest_addr_2; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@632.4]
  assign _T_382 = output_eth_dest_addr_2; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@641.4]
  assign _T_375_addr_3 = output_eth_dest_addr_3; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@634.4]
  assign _T_383 = output_eth_dest_addr_3; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@642.4]
  assign _T_375_addr_4 = output_eth_dest_addr_4; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@636.4]
  assign _T_384 = output_eth_dest_addr_4; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@643.4]
  assign _T_375_addr_5 = output_eth_dest_addr_5; // @[acceptor.scala 28:62:@624.4 acceptor.scala 28:62:@638.4]
  assign _T_385 = output_eth_dest_addr_5; // @[acceptor.scala 24:20:@566.4 acceptor.scala 28:19:@644.4]
  assign _T_340_addr_0 = output_eth_sender_addr_0; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@589.4]
  assign _T_345 = output_eth_sender_addr_0; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@600.4]
  assign _T_340_addr_1 = output_eth_sender_addr_1; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@591.4]
  assign _T_346 = output_eth_sender_addr_1; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@601.4]
  assign _T_340_addr_2 = output_eth_sender_addr_2; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@593.4]
  assign _T_347 = output_eth_sender_addr_2; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@602.4]
  assign _T_340_addr_3 = output_eth_sender_addr_3; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@595.4]
  assign _T_348 = output_eth_sender_addr_3; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@603.4]
  assign _T_340_addr_4 = output_eth_sender_addr_4; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@597.4]
  assign _T_349 = output_eth_sender_addr_4; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@604.4]
  assign _T_340_addr_5 = output_eth_sender_addr_5; // @[acceptor.scala 27:65:@585.4 acceptor.scala 27:65:@599.4]
  assign _T_350 = output_eth_sender_addr_5; // @[acceptor.scala 24:20:@566.4 acceptor.scala 27:21:@605.4]
  assign output_eth_pactype = pactype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 30:22:@646.4]
  assign output_eth_vlan = header_2[2:0]; // @[acceptor.scala 24:20:@566.4 acceptor.scala 29:19:@645.4]
  assign output_arp_htype = arpAcceptor_io_output_htype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@742.4]
  assign output_arp_ptype = arpAcceptor_io_output_ptype; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@741.4]
  assign output_arp_hlen = arpAcceptor_io_output_hlen; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@740.4]
  assign output_arp_plen = arpAcceptor_io_output_plen; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@739.4]
  assign output_arp_oper = arpAcceptor_io_output_oper; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@738.4]
  assign output_arp_sha = arpAcceptor_io_output_sha; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@737.4]
  assign output_arp_spa = arpAcceptor_io_output_spa; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@736.4]
  assign output_arp_tha = arpAcceptor_io_output_tha; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@735.4]
  assign output_arp_tpa = arpAcceptor_io_output_tpa; // @[acceptor.scala 24:20:@566.4 acceptor.scala 63:14:@734.4]
  assign output_ip_version = ipAcceptor_io_output_version; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@733.4]
  assign output_ip_ihl = ipAcceptor_io_output_ihl; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@732.4]
  assign output_ip_dscp = ipAcceptor_io_output_dscp; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@731.4]
  assign output_ip_ecn = ipAcceptor_io_output_ecn; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@730.4]
  assign output_ip_len = ipAcceptor_io_output_len; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@729.4]
  assign output_ip_id = ipAcceptor_io_output_id; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@728.4]
  assign output_ip_flags = ipAcceptor_io_output_flags; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@727.4]
  assign output_ip_foff = ipAcceptor_io_output_foff; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@726.4]
  assign output_ip_ttl = ipAcceptor_io_output_ttl; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@725.4]
  assign output_ip_proto = ipAcceptor_io_output_proto; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@724.4]
  assign output_ip_chksum = ipAcceptor_io_output_chksum; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@723.4]
  assign output_ip_src = ipAcceptor_io_output_src; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@722.4]
  assign output_ip_dest = ipAcceptor_io_output_dest; // @[acceptor.scala 24:20:@566.4 acceptor.scala 62:13:@721.4]
  assign arpRx_tdata = io_rx_tdata; // @[axis.scala 15:19:@673.4 axis.scala 17:15:@674.4]
  assign arpRx_tvalid = io_rx_tvalid; // @[axis.scala 15:19:@673.4 axis.scala 18:16:@675.4]
  assign arpRx_tready = 1'h1; // @[axis.scala 15:19:@673.4 acceptor.scala 50:21:@684.4]
  assign ipRx_tdata = io_rx_tdata; // @[axis.scala 15:19:@678.4 axis.scala 17:15:@679.4]
  assign ipRx_tvalid = io_rx_tvalid; // @[axis.scala 15:19:@678.4 axis.scala 18:16:@680.4]
  assign ipRx_tready = 1'h1; // @[axis.scala 15:19:@678.4 acceptor.scala 51:20:@688.4]
  assign io_rx_tready = io_rx_tlast | io_rx_tlast; // @[axis.scala 26:12:@683.4]
  assign io_writer_clk = clock; // @[acceptor.scala 70:17:@783.4]
  assign io_writer_en = arpEmit | ipEmit; // @[acceptor.scala 65:16:@744.4]
  assign io_writer_data_eth_dest_addr_0 = _T_368[7:0]; // @[acceptor.scala 66:18:@775.4]
  assign io_writer_data_eth_dest_addr_1 = _T_368[15:8]; // @[acceptor.scala 66:18:@776.4]
  assign io_writer_data_eth_dest_addr_2 = _T_368[23:16]; // @[acceptor.scala 66:18:@777.4]
  assign io_writer_data_eth_dest_addr_3 = _T_368[31:24]; // @[acceptor.scala 66:18:@778.4]
  assign io_writer_data_eth_dest_addr_4 = _T_368[39:32]; // @[acceptor.scala 66:18:@779.4]
  assign io_writer_data_eth_dest_addr_5 = _T_368[47:40]; // @[acceptor.scala 66:18:@780.4]
  assign io_writer_data_eth_sender_addr_0 = _T_344[7:0]; // @[acceptor.scala 66:18:@769.4]
  assign io_writer_data_eth_sender_addr_1 = _T_344[15:8]; // @[acceptor.scala 66:18:@770.4]
  assign io_writer_data_eth_sender_addr_2 = _T_344[23:16]; // @[acceptor.scala 66:18:@771.4]
  assign io_writer_data_eth_sender_addr_3 = _T_344[31:24]; // @[acceptor.scala 66:18:@772.4]
  assign io_writer_data_eth_sender_addr_4 = _T_344[39:32]; // @[acceptor.scala 66:18:@773.4]
  assign io_writer_data_eth_sender_addr_5 = _T_344[47:40]; // @[acceptor.scala 66:18:@774.4]
  assign io_writer_data_eth_pactype = _T_255 ? 2'h1 : _GEN_0; // @[acceptor.scala 66:18:@768.4]
  assign io_writer_data_eth_vlan = header_2[2:0]; // @[acceptor.scala 66:18:@767.4]
  assign io_writer_data_arp_htype = arpAcceptor_io_output_htype; // @[acceptor.scala 66:18:@766.4]
  assign io_writer_data_arp_ptype = arpAcceptor_io_output_ptype; // @[acceptor.scala 66:18:@765.4]
  assign io_writer_data_arp_hlen = arpAcceptor_io_output_hlen; // @[acceptor.scala 66:18:@764.4]
  assign io_writer_data_arp_plen = arpAcceptor_io_output_plen; // @[acceptor.scala 66:18:@763.4]
  assign io_writer_data_arp_oper = arpAcceptor_io_output_oper; // @[acceptor.scala 66:18:@762.4]
  assign io_writer_data_arp_sha = arpAcceptor_io_output_sha; // @[acceptor.scala 66:18:@761.4]
  assign io_writer_data_arp_spa = arpAcceptor_io_output_spa; // @[acceptor.scala 66:18:@760.4]
  assign io_writer_data_arp_tha = arpAcceptor_io_output_tha; // @[acceptor.scala 66:18:@759.4]
  assign io_writer_data_arp_tpa = arpAcceptor_io_output_tpa; // @[acceptor.scala 66:18:@758.4]
  assign io_writer_data_ip_version = ipAcceptor_io_output_version; // @[acceptor.scala 66:18:@757.4]
  assign io_writer_data_ip_ihl = ipAcceptor_io_output_ihl; // @[acceptor.scala 66:18:@756.4]
  assign io_writer_data_ip_dscp = ipAcceptor_io_output_dscp; // @[acceptor.scala 66:18:@755.4]
  assign io_writer_data_ip_ecn = ipAcceptor_io_output_ecn; // @[acceptor.scala 66:18:@754.4]
  assign io_writer_data_ip_len = ipAcceptor_io_output_len; // @[acceptor.scala 66:18:@753.4]
  assign io_writer_data_ip_id = ipAcceptor_io_output_id; // @[acceptor.scala 66:18:@752.4]
  assign io_writer_data_ip_flags = ipAcceptor_io_output_flags; // @[acceptor.scala 66:18:@751.4]
  assign io_writer_data_ip_foff = ipAcceptor_io_output_foff; // @[acceptor.scala 66:18:@750.4]
  assign io_writer_data_ip_ttl = ipAcceptor_io_output_ttl; // @[acceptor.scala 66:18:@749.4]
  assign io_writer_data_ip_proto = ipAcceptor_io_output_proto; // @[acceptor.scala 66:18:@748.4]
  assign io_writer_data_ip_chksum = ipAcceptor_io_output_chksum; // @[acceptor.scala 66:18:@747.4]
  assign io_writer_data_ip_src = ipAcceptor_io_output_src; // @[acceptor.scala 66:18:@746.4]
  assign io_writer_data_ip_dest = ipAcceptor_io_output_dest; // @[acceptor.scala 66:18:@745.4]
  assign io_ipWriter_clk = ipAcceptor_io_payloadWriter_clk; // @[acceptor.scala 53:31:@697.4]
  assign io_ipWriter_en = ipAcceptor_io_payloadWriter_en; // @[acceptor.scala 53:31:@696.4]
  assign io_ipWriter_data_data = ipAcceptor_io_payloadWriter_data_data; // @[acceptor.scala 53:31:@695.4]
  assign io_ipWriter_data_last = ipAcceptor_io_payloadWriter_data_last; // @[acceptor.scala 53:31:@694.4]
  assign arpAcceptor_clock = clock; // @[:@668.4]
  assign arpAcceptor_reset = reset; // @[:@669.4]
  assign arpAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 50:21:@687.4]
  assign arpAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 50:21:@686.4]
  assign arpAcceptor_io_rx_tlast = io_rx_tlast; // @[acceptor.scala 50:21:@685.4]
  assign arpAcceptor_io_start = _T_425 & headerEnd; // @[acceptor.scala 56:24:@705.4]
  assign ipAcceptor_clock = clock; // @[:@671.4]
  assign ipAcceptor_reset = reset; // @[:@672.4]
  assign ipAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 51:20:@691.4]
  assign ipAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 51:20:@690.4]
  assign ipAcceptor_io_rx_tlast = io_rx_tlast; // @[acceptor.scala 51:20:@689.4]
  assign ipAcceptor_io_start = _T_427 & headerEnd; // @[acceptor.scala 57:23:@708.4]
  assign ipAcceptor_io_payloadWriter_full = io_ipWriter_full; // @[acceptor.scala 53:31:@693.4]
  assign ipAcceptor_io_payloadWriter_space = io_ipWriter_space; // @[acceptor.scala 53:31:@692.4]
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
  _T_422 = _RAND_19[11:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  _T_432 = _RAND_20[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  _T_438 = _RAND_21[0:0];
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
          cnt <= _T_389;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h0 == _T_397) begin
          header_0 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h1 == _T_397) begin
          header_1 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h2 == _T_397) begin
          header_2 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h3 == _T_397) begin
          header_3 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h4 == _T_397) begin
          header_4 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h5 == _T_397) begin
          header_5 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h6 == _T_397) begin
          header_6 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h7 == _T_397) begin
          header_7 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h8 == _T_397) begin
          header_8 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h9 == _T_397) begin
          header_9 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'ha == _T_397) begin
          header_10 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'hb == _T_397) begin
          header_11 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'hc == _T_397) begin
          header_12 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'hd == _T_397) begin
          header_13 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'he == _T_397) begin
          header_14 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'hf == _T_397) begin
          header_15 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h10 == _T_397) begin
          header_16 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_391) begin
        if (5'h11 == _T_397) begin
          header_17 <= io_rx_tdata;
        end
      end
    end
    _T_422 <= cnt;
    _T_432 <= arpAcceptor_io_finished;
    _T_438 <= ipAcceptor_io_headerFinished;
  end
endmodule
module Encoder( // @[:@785.2]
  input         clock, // @[:@786.4]
  input         reset, // @[:@787.4]
  input  [7:0]  io_input_eth_dest_addr_0, // @[:@788.4]
  input  [7:0]  io_input_eth_dest_addr_1, // @[:@788.4]
  input  [7:0]  io_input_eth_dest_addr_2, // @[:@788.4]
  input  [7:0]  io_input_eth_dest_addr_3, // @[:@788.4]
  input  [7:0]  io_input_eth_dest_addr_4, // @[:@788.4]
  input  [7:0]  io_input_eth_dest_addr_5, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_0, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_1, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_2, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_3, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_4, // @[:@788.4]
  input  [7:0]  io_input_eth_sender_addr_5, // @[:@788.4]
  input  [1:0]  io_input_eth_pactype, // @[:@788.4]
  input  [2:0]  io_input_eth_vlan, // @[:@788.4]
  input  [15:0] io_input_arp_htype, // @[:@788.4]
  input  [15:0] io_input_arp_ptype, // @[:@788.4]
  input  [7:0]  io_input_arp_hlen, // @[:@788.4]
  input  [7:0]  io_input_arp_plen, // @[:@788.4]
  input  [15:0] io_input_arp_oper, // @[:@788.4]
  input  [47:0] io_input_arp_sha, // @[:@788.4]
  input  [31:0] io_input_arp_spa, // @[:@788.4]
  input  [47:0] io_input_arp_tha, // @[:@788.4]
  input  [31:0] io_input_arp_tpa, // @[:@788.4]
  input  [3:0]  io_input_ip_version, // @[:@788.4]
  input  [3:0]  io_input_ip_ihl, // @[:@788.4]
  input  [5:0]  io_input_ip_dscp, // @[:@788.4]
  input  [1:0]  io_input_ip_ecn, // @[:@788.4]
  input  [15:0] io_input_ip_len, // @[:@788.4]
  input  [15:0] io_input_ip_id, // @[:@788.4]
  input  [2:0]  io_input_ip_flags, // @[:@788.4]
  input  [12:0] io_input_ip_foff, // @[:@788.4]
  input  [7:0]  io_input_ip_ttl, // @[:@788.4]
  input  [7:0]  io_input_ip_proto, // @[:@788.4]
  input  [15:0] io_input_ip_chksum, // @[:@788.4]
  input  [31:0] io_input_ip_src, // @[:@788.4]
  input  [31:0] io_input_ip_dest, // @[:@788.4]
  input  [1:0]  io_status, // @[:@788.4]
  output        io_stall, // @[:@788.4]
  output        io_writer_clk, // @[:@788.4]
  output        io_writer_en, // @[:@788.4]
  output [7:0]  io_writer_data_data, // @[:@788.4]
  output        io_writer_data_last, // @[:@788.4]
  input         io_writer_full, // @[:@788.4]
  input  [15:0] io_writer_space, // @[:@788.4]
  output        io_ipReader_clk, // @[:@788.4]
  output        io_ipReader_en, // @[:@788.4]
  input  [7:0]  io_ipReader_data_data, // @[:@788.4]
  input         io_ipReader_data_last, // @[:@788.4]
  input         io_ipReader_empty // @[:@788.4]
);
  reg  writing; // @[encoder.scala 24:24:@790.4]
  reg [31:0] _RAND_0;
  reg [4:0] cnt; // @[encoder.scala 25:20:@791.4]
  reg [31:0] _RAND_1;
  reg [2:0] state; // @[encoder.scala 28:22:@792.4]
  reg [31:0] _RAND_2;
  reg [7:0] sending_eth_dest_addr_0; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_3;
  reg [7:0] sending_eth_dest_addr_1; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_4;
  reg [7:0] sending_eth_dest_addr_2; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_5;
  reg [7:0] sending_eth_dest_addr_3; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_6;
  reg [7:0] sending_eth_dest_addr_4; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_7;
  reg [7:0] sending_eth_dest_addr_5; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_8;
  reg [7:0] sending_eth_sender_addr_0; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_9;
  reg [7:0] sending_eth_sender_addr_1; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_10;
  reg [7:0] sending_eth_sender_addr_2; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_11;
  reg [7:0] sending_eth_sender_addr_3; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_12;
  reg [7:0] sending_eth_sender_addr_4; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_13;
  reg [7:0] sending_eth_sender_addr_5; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_14;
  reg [1:0] sending_eth_pactype; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_15;
  reg [2:0] sending_eth_vlan; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_16;
  reg [15:0] sending_arp_htype; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_17;
  reg [15:0] sending_arp_ptype; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_18;
  reg [7:0] sending_arp_hlen; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_19;
  reg [7:0] sending_arp_plen; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_20;
  reg [15:0] sending_arp_oper; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_21;
  reg [47:0] sending_arp_sha; // @[encoder.scala 30:20:@793.4]
  reg [63:0] _RAND_22;
  reg [31:0] sending_arp_spa; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_23;
  reg [47:0] sending_arp_tha; // @[encoder.scala 30:20:@793.4]
  reg [63:0] _RAND_24;
  reg [31:0] sending_arp_tpa; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_25;
  reg [3:0] sending_ip_version; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_26;
  reg [3:0] sending_ip_ihl; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_27;
  reg [5:0] sending_ip_dscp; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_28;
  reg [1:0] sending_ip_ecn; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_29;
  reg [15:0] sending_ip_len; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_30;
  reg [15:0] sending_ip_id; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_31;
  reg [2:0] sending_ip_flags; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_32;
  reg [12:0] sending_ip_foff; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_33;
  reg [7:0] sending_ip_ttl; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_34;
  reg [7:0] sending_ip_proto; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_35;
  reg [15:0] sending_ip_chksum; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_36;
  reg [31:0] sending_ip_src; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_37;
  reg [31:0] sending_ip_dest; // @[encoder.scala 30:20:@793.4]
  reg [31:0] _RAND_38;
  wire [15:0] _T_215; // @[eth.scala 14:10:@794.4]
  wire [23:0] _T_216; // @[eth.scala 14:10:@795.4]
  wire [15:0] _T_217; // @[eth.scala 14:10:@796.4]
  wire [23:0] _T_218; // @[eth.scala 14:10:@797.4]
  wire [47:0] _T_219; // @[eth.scala 14:10:@798.4]
  wire [15:0] _T_220; // @[eth.scala 15:12:@799.4]
  wire [23:0] _T_221; // @[eth.scala 15:12:@800.4]
  wire [15:0] _T_222; // @[eth.scala 15:12:@801.4]
  wire [23:0] _T_223; // @[eth.scala 15:12:@802.4]
  wire [47:0] _T_224; // @[eth.scala 15:12:@803.4]
  wire  _T_231; // @[pactype.scala 27:12:@807.4]
  wire  _T_233; // @[pactype.scala 29:19:@812.6]
  wire [15:0] _GEN_0; // @[pactype.scala 29:36:@813.6]
  wire [15:0] _GEN_1; // @[pactype.scala 27:30:@808.4]
  wire [7:0] _T_228; // @[eth.scala 17:18:@804.4 eth.scala 17:18:@805.4]
  wire [15:0] _T_230; // @[pactype.scala 26:22:@806.4 pactype.scala 28:14:@809.6 pactype.scala 30:14:@814.8 pactype.scala 32:14:@817.8]
  wire [23:0] _T_236; // @[Cat.scala 30:58:@819.4]
  wire [95:0] _T_237; // @[Cat.scala 30:58:@820.4]
  wire [119:0] _T_238; // @[Cat.scala 30:58:@821.4]
  wire [143:0] _T_239; // @[Cat.scala 30:58:@822.4]
  wire [143:0] _T_304; // @[:@824.4 :@825.4]
  wire [7:0] header_0; // @[eth.scala 21:44:@826.4]
  wire [7:0] header_1; // @[eth.scala 21:44:@828.4]
  wire [7:0] header_2; // @[eth.scala 21:44:@830.4]
  wire [7:0] header_3; // @[eth.scala 21:44:@832.4]
  wire [7:0] header_4; // @[eth.scala 21:44:@834.4]
  wire [7:0] header_5; // @[eth.scala 21:44:@836.4]
  wire [7:0] header_6; // @[eth.scala 21:44:@838.4]
  wire [7:0] header_7; // @[eth.scala 21:44:@840.4]
  wire [7:0] header_8; // @[eth.scala 21:44:@842.4]
  wire [7:0] header_9; // @[eth.scala 21:44:@844.4]
  wire [7:0] header_10; // @[eth.scala 21:44:@846.4]
  wire [7:0] header_11; // @[eth.scala 21:44:@848.4]
  wire [7:0] header_12; // @[eth.scala 21:44:@850.4]
  wire [7:0] header_13; // @[eth.scala 21:44:@852.4]
  wire [7:0] header_14; // @[eth.scala 21:44:@854.4]
  wire [7:0] header_15; // @[eth.scala 21:44:@856.4]
  wire [7:0] header_16; // @[eth.scala 21:44:@858.4]
  wire [7:0] header_17; // @[eth.scala 21:44:@860.4]
  wire [79:0] _T_323; // @[encoder.scala 32:29:@862.4]
  wire [79:0] _T_324; // @[encoder.scala 32:29:@863.4]
  wire [159:0] _T_325; // @[encoder.scala 32:29:@864.4]
  wire [23:0] _T_326; // @[encoder.scala 32:29:@865.4]
  wire [31:0] _T_327; // @[encoder.scala 32:29:@866.4]
  wire [39:0] _T_328; // @[encoder.scala 32:29:@867.4]
  wire [63:0] _T_329; // @[encoder.scala 32:29:@868.4]
  wire [223:0] _T_330; // @[encoder.scala 32:29:@869.4]
  wire [223:0] _T_425; // @[:@871.4 :@872.4]
  wire [7:0] arpView_0; // @[encoder.scala 32:44:@873.4]
  wire [7:0] arpView_1; // @[encoder.scala 32:44:@875.4]
  wire [7:0] arpView_2; // @[encoder.scala 32:44:@877.4]
  wire [7:0] arpView_3; // @[encoder.scala 32:44:@879.4]
  wire [7:0] arpView_4; // @[encoder.scala 32:44:@881.4]
  wire [7:0] arpView_5; // @[encoder.scala 32:44:@883.4]
  wire [7:0] arpView_6; // @[encoder.scala 32:44:@885.4]
  wire [7:0] arpView_7; // @[encoder.scala 32:44:@887.4]
  wire [7:0] arpView_8; // @[encoder.scala 32:44:@889.4]
  wire [7:0] arpView_9; // @[encoder.scala 32:44:@891.4]
  wire [7:0] arpView_10; // @[encoder.scala 32:44:@893.4]
  wire [7:0] arpView_11; // @[encoder.scala 32:44:@895.4]
  wire [7:0] arpView_12; // @[encoder.scala 32:44:@897.4]
  wire [7:0] arpView_13; // @[encoder.scala 32:44:@899.4]
  wire [7:0] arpView_14; // @[encoder.scala 32:44:@901.4]
  wire [7:0] arpView_15; // @[encoder.scala 32:44:@903.4]
  wire [7:0] arpView_16; // @[encoder.scala 32:44:@905.4]
  wire [7:0] arpView_17; // @[encoder.scala 32:44:@907.4]
  wire [7:0] arpView_18; // @[encoder.scala 32:44:@909.4]
  wire [7:0] arpView_19; // @[encoder.scala 32:44:@911.4]
  wire [7:0] arpView_20; // @[encoder.scala 32:44:@913.4]
  wire [7:0] arpView_21; // @[encoder.scala 32:44:@915.4]
  wire [7:0] arpView_22; // @[encoder.scala 32:44:@917.4]
  wire [7:0] arpView_23; // @[encoder.scala 32:44:@919.4]
  wire [7:0] arpView_24; // @[encoder.scala 32:44:@921.4]
  wire [7:0] arpView_25; // @[encoder.scala 32:44:@923.4]
  wire [7:0] arpView_26; // @[encoder.scala 32:44:@925.4]
  wire [7:0] arpView_27; // @[encoder.scala 32:44:@927.4]
  wire [47:0] _T_454; // @[encoder.scala 33:27:@929.4]
  wire [79:0] _T_455; // @[encoder.scala 33:27:@930.4]
  wire [20:0] _T_456; // @[encoder.scala 33:27:@931.4]
  wire [28:0] _T_457; // @[encoder.scala 33:27:@932.4]
  wire [108:0] _T_458; // @[encoder.scala 33:27:@933.4]
  wire [31:0] _T_459; // @[encoder.scala 33:27:@934.4]
  wire [34:0] _T_460; // @[encoder.scala 33:27:@935.4]
  wire [7:0] _T_461; // @[encoder.scala 33:27:@936.4]
  wire [7:0] _T_462; // @[encoder.scala 33:27:@937.4]
  wire [15:0] _T_463; // @[encoder.scala 33:27:@938.4]
  wire [50:0] _T_464; // @[encoder.scala 33:27:@939.4]
  wire [159:0] _T_465; // @[encoder.scala 33:27:@940.4]
  wire [159:0] _T_536; // @[:@942.4 :@943.4]
  wire [7:0] ipView_0; // @[encoder.scala 33:42:@944.4]
  wire [7:0] ipView_1; // @[encoder.scala 33:42:@946.4]
  wire [7:0] ipView_2; // @[encoder.scala 33:42:@948.4]
  wire [7:0] ipView_3; // @[encoder.scala 33:42:@950.4]
  wire [7:0] ipView_4; // @[encoder.scala 33:42:@952.4]
  wire [7:0] ipView_5; // @[encoder.scala 33:42:@954.4]
  wire [7:0] ipView_6; // @[encoder.scala 33:42:@956.4]
  wire [7:0] ipView_7; // @[encoder.scala 33:42:@958.4]
  wire [7:0] ipView_8; // @[encoder.scala 33:42:@960.4]
  wire [7:0] ipView_9; // @[encoder.scala 33:42:@962.4]
  wire [7:0] ipView_10; // @[encoder.scala 33:42:@964.4]
  wire [7:0] ipView_11; // @[encoder.scala 33:42:@966.4]
  wire [7:0] ipView_12; // @[encoder.scala 33:42:@968.4]
  wire [7:0] ipView_13; // @[encoder.scala 33:42:@970.4]
  wire [7:0] ipView_14; // @[encoder.scala 33:42:@972.4]
  wire [7:0] ipView_15; // @[encoder.scala 33:42:@974.4]
  wire [7:0] ipView_16; // @[encoder.scala 33:42:@976.4]
  wire [7:0] ipView_17; // @[encoder.scala 33:42:@978.4]
  wire [7:0] ipView_18; // @[encoder.scala 33:42:@980.4]
  wire [7:0] ipView_19; // @[encoder.scala 33:42:@982.4]
  wire  _T_563; // @[encoder.scala 43:14:@992.4]
  wire  _T_567; // @[encoder.scala 44:20:@994.6]
  wire [2:0] _GEN_2; // @[encoder.scala 44:39:@995.6]
  wire [31:0] _GEN_3; // @[encoder.scala 44:39:@995.6]
  wire [31:0] _GEN_4; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_5; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_6; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_7; // @[encoder.scala 44:39:@995.6]
  wire [12:0] _GEN_8; // @[encoder.scala 44:39:@995.6]
  wire [2:0] _GEN_9; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_10; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_11; // @[encoder.scala 44:39:@995.6]
  wire [1:0] _GEN_12; // @[encoder.scala 44:39:@995.6]
  wire [5:0] _GEN_13; // @[encoder.scala 44:39:@995.6]
  wire [3:0] _GEN_14; // @[encoder.scala 44:39:@995.6]
  wire [3:0] _GEN_15; // @[encoder.scala 44:39:@995.6]
  wire [31:0] _GEN_16; // @[encoder.scala 44:39:@995.6]
  wire [47:0] _GEN_17; // @[encoder.scala 44:39:@995.6]
  wire [31:0] _GEN_18; // @[encoder.scala 44:39:@995.6]
  wire [47:0] _GEN_19; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_20; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_21; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_22; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_23; // @[encoder.scala 44:39:@995.6]
  wire [15:0] _GEN_24; // @[encoder.scala 44:39:@995.6]
  wire [2:0] _GEN_25; // @[encoder.scala 44:39:@995.6]
  wire [1:0] _GEN_26; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_27; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_28; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_29; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_30; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_31; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_32; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_33; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_34; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_35; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_36; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_37; // @[encoder.scala 44:39:@995.6]
  wire [7:0] _GEN_38; // @[encoder.scala 44:39:@995.6]
  wire [4:0] _GEN_39; // @[encoder.scala 44:39:@995.6]
  wire  _T_569; // @[encoder.scala 49:21:@1037.6]
  wire [4:0] _T_573; // @[:@1039.8]
  wire [4:0] _T_574; // @[:@1040.8]
  wire [7:0] _T_305; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@827.4]
  wire [7:0] _GEN_40; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_306; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@829.4]
  wire [7:0] _GEN_41; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_307; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@831.4]
  wire [7:0] _GEN_42; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_308; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@833.4]
  wire [7:0] _GEN_43; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_309; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@835.4]
  wire [7:0] _GEN_44; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_310; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@837.4]
  wire [7:0] _GEN_45; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_311; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@839.4]
  wire [7:0] _GEN_46; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_312; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@841.4]
  wire [7:0] _GEN_47; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_313; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@843.4]
  wire [7:0] _GEN_48; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_314; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@845.4]
  wire [7:0] _GEN_49; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_315; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@847.4]
  wire [7:0] _GEN_50; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_316; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@849.4]
  wire [7:0] _GEN_51; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_317; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@851.4]
  wire [7:0] _GEN_52; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_318; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@853.4]
  wire [7:0] _GEN_53; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_319; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@855.4]
  wire [7:0] _GEN_54; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_320; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@857.4]
  wire [7:0] _GEN_55; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_321; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@859.4]
  wire [7:0] _GEN_56; // @[encoder.scala 51:25:@1041.8]
  wire [7:0] _T_322; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@861.4]
  wire [7:0] _GEN_57; // @[encoder.scala 51:25:@1041.8]
  wire  _T_577; // @[encoder.scala 54:10:@1043.8]
  wire  _T_579; // @[encoder.scala 55:16:@1045.10]
  wire [5:0] _T_581; // @[encoder.scala 56:20:@1047.12]
  wire [5:0] _T_582; // @[encoder.scala 56:20:@1048.12]
  wire [4:0] _T_583; // @[encoder.scala 56:20:@1049.12]
  wire  _T_584; // @[encoder.scala 57:39:@1053.12]
  wire [2:0] _GEN_58; // @[encoder.scala 57:56:@1054.12]
  wire [4:0] _GEN_59; // @[encoder.scala 57:56:@1054.12]
  wire [4:0] _GEN_60; // @[encoder.scala 55:23:@1046.10]
  wire [2:0] _GEN_61; // @[encoder.scala 55:23:@1046.10]
  wire [4:0] _GEN_62; // @[encoder.scala 54:27:@1044.8]
  wire [2:0] _GEN_63; // @[encoder.scala 54:27:@1044.8]
  wire  _T_587; // @[encoder.scala 67:21:@1065.8]
  wire [4:0] _T_591; // @[:@1067.10]
  wire [4:0] _T_592; // @[:@1068.10]
  wire [7:0] _T_426; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@874.4]
  wire [7:0] _GEN_64; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_427; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@876.4]
  wire [7:0] _GEN_65; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_428; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@878.4]
  wire [7:0] _GEN_66; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_429; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@880.4]
  wire [7:0] _GEN_67; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_430; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@882.4]
  wire [7:0] _GEN_68; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_431; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@884.4]
  wire [7:0] _GEN_69; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_432; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@886.4]
  wire [7:0] _GEN_70; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_433; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@888.4]
  wire [7:0] _GEN_71; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_434; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@890.4]
  wire [7:0] _GEN_72; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_435; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@892.4]
  wire [7:0] _GEN_73; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_436; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@894.4]
  wire [7:0] _GEN_74; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_437; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@896.4]
  wire [7:0] _GEN_75; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_438; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@898.4]
  wire [7:0] _GEN_76; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_439; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@900.4]
  wire [7:0] _GEN_77; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_440; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@902.4]
  wire [7:0] _GEN_78; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_441; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@904.4]
  wire [7:0] _GEN_79; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_442; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@906.4]
  wire [7:0] _GEN_80; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_443; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@908.4]
  wire [7:0] _GEN_81; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_444; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@910.4]
  wire [7:0] _GEN_82; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_445; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@912.4]
  wire [7:0] _GEN_83; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_446; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@914.4]
  wire [7:0] _GEN_84; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_447; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@916.4]
  wire [7:0] _GEN_85; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_448; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@918.4]
  wire [7:0] _GEN_86; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_449; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@920.4]
  wire [7:0] _GEN_87; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_450; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@922.4]
  wire [7:0] _GEN_88; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_451; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@924.4]
  wire [7:0] _GEN_89; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_452; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@926.4]
  wire [7:0] _GEN_90; // @[encoder.scala 68:25:@1069.10]
  wire [7:0] _T_453; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@928.4]
  wire [7:0] _GEN_91; // @[encoder.scala 68:25:@1069.10]
  wire  _T_594; // @[encoder.scala 69:32:@1070.10]
  wire  _T_597; // @[encoder.scala 72:10:@1073.10]
  wire  _T_599; // @[encoder.scala 73:16:@1075.12]
  wire [5:0] _T_601; // @[encoder.scala 74:20:@1077.14]
  wire [5:0] _T_602; // @[encoder.scala 74:20:@1078.14]
  wire [4:0] _T_603; // @[encoder.scala 74:20:@1079.14]
  wire [4:0] _GEN_92; // @[encoder.scala 73:23:@1076.12]
  wire [2:0] _GEN_93; // @[encoder.scala 73:23:@1076.12]
  wire [4:0] _GEN_94; // @[encoder.scala 72:27:@1074.10]
  wire [2:0] _GEN_95; // @[encoder.scala 72:27:@1074.10]
  wire  _T_604; // @[encoder.scala 79:21:@1088.10]
  wire [4:0] _T_608; // @[:@1090.12]
  wire [4:0] _T_609; // @[:@1091.12]
  wire [7:0] _T_537; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@945.4]
  wire [7:0] _GEN_96; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_538; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@947.4]
  wire [7:0] _GEN_97; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_539; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@949.4]
  wire [7:0] _GEN_98; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_540; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@951.4]
  wire [7:0] _GEN_99; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_541; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@953.4]
  wire [7:0] _GEN_100; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_542; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@955.4]
  wire [7:0] _GEN_101; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_543; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@957.4]
  wire [7:0] _GEN_102; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_544; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@959.4]
  wire [7:0] _GEN_103; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_545; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@961.4]
  wire [7:0] _GEN_104; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_546; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@963.4]
  wire [7:0] _GEN_105; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_547; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@965.4]
  wire [7:0] _GEN_106; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_548; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@967.4]
  wire [7:0] _GEN_107; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_549; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@969.4]
  wire [7:0] _GEN_108; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_550; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@971.4]
  wire [7:0] _GEN_109; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_551; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@973.4]
  wire [7:0] _GEN_110; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_552; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@975.4]
  wire [7:0] _GEN_111; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_553; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@977.4]
  wire [7:0] _GEN_112; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_554; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@979.4]
  wire [7:0] _GEN_113; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_555; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@981.4]
  wire [7:0] _GEN_114; // @[encoder.scala 80:25:@1092.12]
  wire [7:0] _T_556; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@983.4]
  wire [7:0] _GEN_115; // @[encoder.scala 80:25:@1092.12]
  wire  _T_613; // @[encoder.scala 84:10:@1095.12]
  wire  _T_615; // @[encoder.scala 85:16:@1097.14]
  wire [5:0] _T_617; // @[encoder.scala 86:20:@1099.16]
  wire [5:0] _T_618; // @[encoder.scala 86:20:@1100.16]
  wire [4:0] _T_619; // @[encoder.scala 86:20:@1101.16]
  wire [4:0] _GEN_116; // @[encoder.scala 85:23:@1098.14]
  wire [2:0] _GEN_117; // @[encoder.scala 85:23:@1098.14]
  wire [4:0] _GEN_118; // @[encoder.scala 84:27:@1096.12]
  wire [2:0] _GEN_119; // @[encoder.scala 84:27:@1096.12]
  wire  _T_620; // @[encoder.scala 91:21:@1110.12]
  wire  _T_622; // @[encoder.scala 93:21:@1114.14]
  wire  _T_624; // @[encoder.scala 93:45:@1115.14]
  wire  _T_625; // @[encoder.scala 93:41:@1116.14]
  wire  _T_626; // @[encoder.scala 97:32:@1119.14]
  wire [2:0] _GEN_120; // @[encoder.scala 97:45:@1120.14]
  wire  _GEN_121; // @[encoder.scala 91:34:@1111.12]
  wire [7:0] _T_561; // @[encoder.scala 39:43:@987.4 encoder.scala 39:43:@988.4]
  wire [7:0] _GEN_122; // @[encoder.scala 91:34:@1111.12]
  wire  _GEN_123; // @[encoder.scala 91:34:@1111.12]
  wire [2:0] _GEN_124; // @[encoder.scala 91:34:@1111.12]
  wire [7:0] _ipView_T_609; // @[encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12]
  wire [7:0] _GEN_125; // @[encoder.scala 79:30:@1089.10]
  wire  _GEN_126; // @[encoder.scala 79:30:@1089.10]
  wire  _GEN_127; // @[encoder.scala 79:30:@1089.10]
  wire [4:0] _GEN_128; // @[encoder.scala 79:30:@1089.10]
  wire [2:0] _GEN_129; // @[encoder.scala 79:30:@1089.10]
  wire  _GEN_130; // @[encoder.scala 79:30:@1089.10]
  wire [7:0] _arpView_T_592; // @[encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10]
  wire [7:0] _GEN_131; // @[encoder.scala 67:31:@1066.8]
  wire  _GEN_132; // @[encoder.scala 67:31:@1066.8]
  wire  _GEN_133; // @[encoder.scala 67:31:@1066.8]
  wire [4:0] _GEN_134; // @[encoder.scala 67:31:@1066.8]
  wire [2:0] _GEN_135; // @[encoder.scala 67:31:@1066.8]
  wire  _GEN_136; // @[encoder.scala 67:31:@1066.8]
  wire [7:0] _header_T_574; // @[encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8]
  wire [7:0] _GEN_137; // @[encoder.scala 49:31:@1038.6]
  wire  _GEN_138; // @[encoder.scala 49:31:@1038.6]
  wire [4:0] _GEN_139; // @[encoder.scala 49:31:@1038.6]
  wire [2:0] _GEN_140; // @[encoder.scala 49:31:@1038.6]
  wire  _GEN_141; // @[encoder.scala 49:31:@1038.6]
  wire  _GEN_142; // @[encoder.scala 49:31:@1038.6]
  wire [2:0] _GEN_143; // @[encoder.scala 43:25:@993.4]
  wire [31:0] _GEN_144; // @[encoder.scala 43:25:@993.4]
  wire [31:0] _GEN_145; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_146; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_147; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_148; // @[encoder.scala 43:25:@993.4]
  wire [12:0] _GEN_149; // @[encoder.scala 43:25:@993.4]
  wire [2:0] _GEN_150; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_151; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_152; // @[encoder.scala 43:25:@993.4]
  wire [1:0] _GEN_153; // @[encoder.scala 43:25:@993.4]
  wire [5:0] _GEN_154; // @[encoder.scala 43:25:@993.4]
  wire [3:0] _GEN_155; // @[encoder.scala 43:25:@993.4]
  wire [3:0] _GEN_156; // @[encoder.scala 43:25:@993.4]
  wire [31:0] _GEN_157; // @[encoder.scala 43:25:@993.4]
  wire [47:0] _GEN_158; // @[encoder.scala 43:25:@993.4]
  wire [31:0] _GEN_159; // @[encoder.scala 43:25:@993.4]
  wire [47:0] _GEN_160; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_161; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_162; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_163; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_164; // @[encoder.scala 43:25:@993.4]
  wire [15:0] _GEN_165; // @[encoder.scala 43:25:@993.4]
  wire [2:0] _GEN_166; // @[encoder.scala 43:25:@993.4]
  wire [1:0] _GEN_167; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_168; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_169; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_170; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_171; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_172; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_173; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_174; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_175; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_176; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_177; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_178; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_179; // @[encoder.scala 43:25:@993.4]
  wire [4:0] _GEN_180; // @[encoder.scala 43:25:@993.4]
  wire [7:0] _GEN_181; // @[encoder.scala 43:25:@993.4]
  wire  _GEN_182; // @[encoder.scala 43:25:@993.4]
  wire  _GEN_183; // @[encoder.scala 43:25:@993.4]
  wire  _GEN_184; // @[encoder.scala 43:25:@993.4]
  wire  _T_627; // @[encoder.scala 102:21:@1124.4]
  assign _T_215 = {sending_eth_dest_addr_2,sending_eth_dest_addr_1}; // @[eth.scala 14:10:@794.4]
  assign _T_216 = {sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0}; // @[eth.scala 14:10:@795.4]
  assign _T_217 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4}; // @[eth.scala 14:10:@796.4]
  assign _T_218 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3}; // @[eth.scala 14:10:@797.4]
  assign _T_219 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0}; // @[eth.scala 14:10:@798.4]
  assign _T_220 = {sending_eth_sender_addr_2,sending_eth_sender_addr_1}; // @[eth.scala 15:12:@799.4]
  assign _T_221 = {sending_eth_sender_addr_2,sending_eth_sender_addr_1,sending_eth_sender_addr_0}; // @[eth.scala 15:12:@800.4]
  assign _T_222 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4}; // @[eth.scala 15:12:@801.4]
  assign _T_223 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4,sending_eth_sender_addr_3}; // @[eth.scala 15:12:@802.4]
  assign _T_224 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4,sending_eth_sender_addr_3,sending_eth_sender_addr_2,sending_eth_sender_addr_1,sending_eth_sender_addr_0}; // @[eth.scala 15:12:@803.4]
  assign _T_231 = sending_eth_pactype == 2'h1; // @[pactype.scala 27:12:@807.4]
  assign _T_233 = sending_eth_pactype == 2'h2; // @[pactype.scala 29:19:@812.6]
  assign _GEN_0 = _T_233 ? 16'h806 : 16'h0; // @[pactype.scala 29:36:@813.6]
  assign _GEN_1 = _T_231 ? 16'h800 : _GEN_0; // @[pactype.scala 27:30:@808.4]
  assign _T_228 = {{5'd0}, sending_eth_vlan}; // @[eth.scala 17:18:@804.4 eth.scala 17:18:@805.4]
  assign _T_230 = _GEN_1; // @[pactype.scala 26:22:@806.4 pactype.scala 28:14:@809.6 pactype.scala 30:14:@814.8 pactype.scala 32:14:@817.8]
  assign _T_236 = {_T_228,_GEN_1}; // @[Cat.scala 30:58:@819.4]
  assign _T_237 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_224}; // @[Cat.scala 30:58:@820.4]
  assign _T_238 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_224,24'h810000}; // @[Cat.scala 30:58:@821.4]
  assign _T_239 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_224,24'h810000,_T_228,_GEN_1}; // @[Cat.scala 30:58:@822.4]
  assign _T_304 = _T_239; // @[:@824.4 :@825.4]
  assign header_0 = _T_239[7:0]; // @[eth.scala 21:44:@826.4]
  assign header_1 = _T_239[15:8]; // @[eth.scala 21:44:@828.4]
  assign header_2 = _T_239[23:16]; // @[eth.scala 21:44:@830.4]
  assign header_3 = _T_239[31:24]; // @[eth.scala 21:44:@832.4]
  assign header_4 = _T_239[39:32]; // @[eth.scala 21:44:@834.4]
  assign header_5 = _T_239[47:40]; // @[eth.scala 21:44:@836.4]
  assign header_6 = _T_239[55:48]; // @[eth.scala 21:44:@838.4]
  assign header_7 = _T_239[63:56]; // @[eth.scala 21:44:@840.4]
  assign header_8 = _T_239[71:64]; // @[eth.scala 21:44:@842.4]
  assign header_9 = _T_239[79:72]; // @[eth.scala 21:44:@844.4]
  assign header_10 = _T_239[87:80]; // @[eth.scala 21:44:@846.4]
  assign header_11 = _T_239[95:88]; // @[eth.scala 21:44:@848.4]
  assign header_12 = _T_239[103:96]; // @[eth.scala 21:44:@850.4]
  assign header_13 = _T_239[111:104]; // @[eth.scala 21:44:@852.4]
  assign header_14 = _T_239[119:112]; // @[eth.scala 21:44:@854.4]
  assign header_15 = _T_239[127:120]; // @[eth.scala 21:44:@856.4]
  assign header_16 = _T_239[135:128]; // @[eth.scala 21:44:@858.4]
  assign header_17 = _T_239[143:136]; // @[eth.scala 21:44:@860.4]
  assign _T_323 = {sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 32:29:@862.4]
  assign _T_324 = {sending_arp_sha,sending_arp_spa}; // @[encoder.scala 32:29:@863.4]
  assign _T_325 = {sending_arp_sha,sending_arp_spa,sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 32:29:@864.4]
  assign _T_326 = {sending_arp_plen,sending_arp_oper}; // @[encoder.scala 32:29:@865.4]
  assign _T_327 = {sending_arp_htype,sending_arp_ptype}; // @[encoder.scala 32:29:@866.4]
  assign _T_328 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen}; // @[encoder.scala 32:29:@867.4]
  assign _T_329 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen,sending_arp_plen,sending_arp_oper}; // @[encoder.scala 32:29:@868.4]
  assign _T_330 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen,sending_arp_plen,sending_arp_oper,sending_arp_sha,sending_arp_spa,sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 32:29:@869.4]
  assign _T_425 = _T_330; // @[:@871.4 :@872.4]
  assign arpView_0 = _T_330[7:0]; // @[encoder.scala 32:44:@873.4]
  assign arpView_1 = _T_330[15:8]; // @[encoder.scala 32:44:@875.4]
  assign arpView_2 = _T_330[23:16]; // @[encoder.scala 32:44:@877.4]
  assign arpView_3 = _T_330[31:24]; // @[encoder.scala 32:44:@879.4]
  assign arpView_4 = _T_330[39:32]; // @[encoder.scala 32:44:@881.4]
  assign arpView_5 = _T_330[47:40]; // @[encoder.scala 32:44:@883.4]
  assign arpView_6 = _T_330[55:48]; // @[encoder.scala 32:44:@885.4]
  assign arpView_7 = _T_330[63:56]; // @[encoder.scala 32:44:@887.4]
  assign arpView_8 = _T_330[71:64]; // @[encoder.scala 32:44:@889.4]
  assign arpView_9 = _T_330[79:72]; // @[encoder.scala 32:44:@891.4]
  assign arpView_10 = _T_330[87:80]; // @[encoder.scala 32:44:@893.4]
  assign arpView_11 = _T_330[95:88]; // @[encoder.scala 32:44:@895.4]
  assign arpView_12 = _T_330[103:96]; // @[encoder.scala 32:44:@897.4]
  assign arpView_13 = _T_330[111:104]; // @[encoder.scala 32:44:@899.4]
  assign arpView_14 = _T_330[119:112]; // @[encoder.scala 32:44:@901.4]
  assign arpView_15 = _T_330[127:120]; // @[encoder.scala 32:44:@903.4]
  assign arpView_16 = _T_330[135:128]; // @[encoder.scala 32:44:@905.4]
  assign arpView_17 = _T_330[143:136]; // @[encoder.scala 32:44:@907.4]
  assign arpView_18 = _T_330[151:144]; // @[encoder.scala 32:44:@909.4]
  assign arpView_19 = _T_330[159:152]; // @[encoder.scala 32:44:@911.4]
  assign arpView_20 = _T_330[167:160]; // @[encoder.scala 32:44:@913.4]
  assign arpView_21 = _T_330[175:168]; // @[encoder.scala 32:44:@915.4]
  assign arpView_22 = _T_330[183:176]; // @[encoder.scala 32:44:@917.4]
  assign arpView_23 = _T_330[191:184]; // @[encoder.scala 32:44:@919.4]
  assign arpView_24 = _T_330[199:192]; // @[encoder.scala 32:44:@921.4]
  assign arpView_25 = _T_330[207:200]; // @[encoder.scala 32:44:@923.4]
  assign arpView_26 = _T_330[215:208]; // @[encoder.scala 32:44:@925.4]
  assign arpView_27 = _T_330[223:216]; // @[encoder.scala 32:44:@927.4]
  assign _T_454 = {sending_ip_chksum,sending_ip_src}; // @[encoder.scala 33:27:@929.4]
  assign _T_455 = {sending_ip_chksum,sending_ip_src,sending_ip_dest}; // @[encoder.scala 33:27:@930.4]
  assign _T_456 = {sending_ip_foff,sending_ip_ttl}; // @[encoder.scala 33:27:@931.4]
  assign _T_457 = {sending_ip_foff,sending_ip_ttl,sending_ip_proto}; // @[encoder.scala 33:27:@932.4]
  assign _T_458 = {sending_ip_foff,sending_ip_ttl,sending_ip_proto,sending_ip_chksum,sending_ip_src,sending_ip_dest}; // @[encoder.scala 33:27:@933.4]
  assign _T_459 = {sending_ip_len,sending_ip_id}; // @[encoder.scala 33:27:@934.4]
  assign _T_460 = {sending_ip_len,sending_ip_id,sending_ip_flags}; // @[encoder.scala 33:27:@935.4]
  assign _T_461 = {sending_ip_dscp,sending_ip_ecn}; // @[encoder.scala 33:27:@936.4]
  assign _T_462 = {sending_ip_version,sending_ip_ihl}; // @[encoder.scala 33:27:@937.4]
  assign _T_463 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn}; // @[encoder.scala 33:27:@938.4]
  assign _T_464 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn,sending_ip_len,sending_ip_id,sending_ip_flags}; // @[encoder.scala 33:27:@939.4]
  assign _T_465 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn,sending_ip_len,sending_ip_id,sending_ip_flags,_T_458}; // @[encoder.scala 33:27:@940.4]
  assign _T_536 = _T_465; // @[:@942.4 :@943.4]
  assign ipView_0 = _T_465[7:0]; // @[encoder.scala 33:42:@944.4]
  assign ipView_1 = _T_465[15:8]; // @[encoder.scala 33:42:@946.4]
  assign ipView_2 = _T_465[23:16]; // @[encoder.scala 33:42:@948.4]
  assign ipView_3 = _T_465[31:24]; // @[encoder.scala 33:42:@950.4]
  assign ipView_4 = _T_465[39:32]; // @[encoder.scala 33:42:@952.4]
  assign ipView_5 = _T_465[47:40]; // @[encoder.scala 33:42:@954.4]
  assign ipView_6 = _T_465[55:48]; // @[encoder.scala 33:42:@956.4]
  assign ipView_7 = _T_465[63:56]; // @[encoder.scala 33:42:@958.4]
  assign ipView_8 = _T_465[71:64]; // @[encoder.scala 33:42:@960.4]
  assign ipView_9 = _T_465[79:72]; // @[encoder.scala 33:42:@962.4]
  assign ipView_10 = _T_465[87:80]; // @[encoder.scala 33:42:@964.4]
  assign ipView_11 = _T_465[95:88]; // @[encoder.scala 33:42:@966.4]
  assign ipView_12 = _T_465[103:96]; // @[encoder.scala 33:42:@968.4]
  assign ipView_13 = _T_465[111:104]; // @[encoder.scala 33:42:@970.4]
  assign ipView_14 = _T_465[119:112]; // @[encoder.scala 33:42:@972.4]
  assign ipView_15 = _T_465[127:120]; // @[encoder.scala 33:42:@974.4]
  assign ipView_16 = _T_465[135:128]; // @[encoder.scala 33:42:@976.4]
  assign ipView_17 = _T_465[143:136]; // @[encoder.scala 33:42:@978.4]
  assign ipView_18 = _T_465[151:144]; // @[encoder.scala 33:42:@980.4]
  assign ipView_19 = _T_465[159:152]; // @[encoder.scala 33:42:@982.4]
  assign _T_563 = state == 3'h0; // @[encoder.scala 43:14:@992.4]
  assign _T_567 = io_status == 2'h1; // @[encoder.scala 44:20:@994.6]
  assign _GEN_2 = _T_567 ? 3'h1 : state; // @[encoder.scala 44:39:@995.6]
  assign _GEN_3 = _T_567 ? io_input_ip_dest : sending_ip_dest; // @[encoder.scala 44:39:@995.6]
  assign _GEN_4 = _T_567 ? io_input_ip_src : sending_ip_src; // @[encoder.scala 44:39:@995.6]
  assign _GEN_5 = _T_567 ? io_input_ip_chksum : sending_ip_chksum; // @[encoder.scala 44:39:@995.6]
  assign _GEN_6 = _T_567 ? io_input_ip_proto : sending_ip_proto; // @[encoder.scala 44:39:@995.6]
  assign _GEN_7 = _T_567 ? io_input_ip_ttl : sending_ip_ttl; // @[encoder.scala 44:39:@995.6]
  assign _GEN_8 = _T_567 ? io_input_ip_foff : sending_ip_foff; // @[encoder.scala 44:39:@995.6]
  assign _GEN_9 = _T_567 ? io_input_ip_flags : sending_ip_flags; // @[encoder.scala 44:39:@995.6]
  assign _GEN_10 = _T_567 ? io_input_ip_id : sending_ip_id; // @[encoder.scala 44:39:@995.6]
  assign _GEN_11 = _T_567 ? io_input_ip_len : sending_ip_len; // @[encoder.scala 44:39:@995.6]
  assign _GEN_12 = _T_567 ? io_input_ip_ecn : sending_ip_ecn; // @[encoder.scala 44:39:@995.6]
  assign _GEN_13 = _T_567 ? io_input_ip_dscp : sending_ip_dscp; // @[encoder.scala 44:39:@995.6]
  assign _GEN_14 = _T_567 ? io_input_ip_ihl : sending_ip_ihl; // @[encoder.scala 44:39:@995.6]
  assign _GEN_15 = _T_567 ? io_input_ip_version : sending_ip_version; // @[encoder.scala 44:39:@995.6]
  assign _GEN_16 = _T_567 ? io_input_arp_tpa : sending_arp_tpa; // @[encoder.scala 44:39:@995.6]
  assign _GEN_17 = _T_567 ? io_input_arp_tha : sending_arp_tha; // @[encoder.scala 44:39:@995.6]
  assign _GEN_18 = _T_567 ? io_input_arp_spa : sending_arp_spa; // @[encoder.scala 44:39:@995.6]
  assign _GEN_19 = _T_567 ? io_input_arp_sha : sending_arp_sha; // @[encoder.scala 44:39:@995.6]
  assign _GEN_20 = _T_567 ? io_input_arp_oper : sending_arp_oper; // @[encoder.scala 44:39:@995.6]
  assign _GEN_21 = _T_567 ? io_input_arp_plen : sending_arp_plen; // @[encoder.scala 44:39:@995.6]
  assign _GEN_22 = _T_567 ? io_input_arp_hlen : sending_arp_hlen; // @[encoder.scala 44:39:@995.6]
  assign _GEN_23 = _T_567 ? io_input_arp_ptype : sending_arp_ptype; // @[encoder.scala 44:39:@995.6]
  assign _GEN_24 = _T_567 ? io_input_arp_htype : sending_arp_htype; // @[encoder.scala 44:39:@995.6]
  assign _GEN_25 = _T_567 ? io_input_eth_vlan : sending_eth_vlan; // @[encoder.scala 44:39:@995.6]
  assign _GEN_26 = _T_567 ? io_input_eth_pactype : sending_eth_pactype; // @[encoder.scala 44:39:@995.6]
  assign _GEN_27 = _T_567 ? 8'hd8 : sending_eth_sender_addr_0; // @[encoder.scala 44:39:@995.6]
  assign _GEN_28 = _T_567 ? 8'h71 : sending_eth_sender_addr_1; // @[encoder.scala 44:39:@995.6]
  assign _GEN_29 = _T_567 ? 8'h20 : sending_eth_sender_addr_2; // @[encoder.scala 44:39:@995.6]
  assign _GEN_30 = _T_567 ? 8'h6a : sending_eth_sender_addr_3; // @[encoder.scala 44:39:@995.6]
  assign _GEN_31 = _T_567 ? 8'ha4 : sending_eth_sender_addr_4; // @[encoder.scala 44:39:@995.6]
  assign _GEN_32 = _T_567 ? 8'hf6 : sending_eth_sender_addr_5; // @[encoder.scala 44:39:@995.6]
  assign _GEN_33 = _T_567 ? io_input_eth_dest_addr_0 : sending_eth_dest_addr_0; // @[encoder.scala 44:39:@995.6]
  assign _GEN_34 = _T_567 ? io_input_eth_dest_addr_1 : sending_eth_dest_addr_1; // @[encoder.scala 44:39:@995.6]
  assign _GEN_35 = _T_567 ? io_input_eth_dest_addr_2 : sending_eth_dest_addr_2; // @[encoder.scala 44:39:@995.6]
  assign _GEN_36 = _T_567 ? io_input_eth_dest_addr_3 : sending_eth_dest_addr_3; // @[encoder.scala 44:39:@995.6]
  assign _GEN_37 = _T_567 ? io_input_eth_dest_addr_4 : sending_eth_dest_addr_4; // @[encoder.scala 44:39:@995.6]
  assign _GEN_38 = _T_567 ? io_input_eth_dest_addr_5 : sending_eth_dest_addr_5; // @[encoder.scala 44:39:@995.6]
  assign _GEN_39 = _T_567 ? 5'h11 : cnt; // @[encoder.scala 44:39:@995.6]
  assign _T_569 = state == 3'h1; // @[encoder.scala 49:21:@1037.6]
  assign _T_573 = cnt; // @[:@1039.8]
  assign _T_574 = cnt; // @[:@1040.8]
  assign _T_305 = header_0; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@827.4]
  assign _GEN_40 = header_0; // @[encoder.scala 51:25:@1041.8]
  assign _T_306 = header_1; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@829.4]
  assign _GEN_41 = 5'h1 == cnt ? header_1 : header_0; // @[encoder.scala 51:25:@1041.8]
  assign _T_307 = header_2; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@831.4]
  assign _GEN_42 = 5'h2 == cnt ? header_2 : _GEN_41; // @[encoder.scala 51:25:@1041.8]
  assign _T_308 = header_3; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@833.4]
  assign _GEN_43 = 5'h3 == cnt ? header_3 : _GEN_42; // @[encoder.scala 51:25:@1041.8]
  assign _T_309 = header_4; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@835.4]
  assign _GEN_44 = 5'h4 == cnt ? header_4 : _GEN_43; // @[encoder.scala 51:25:@1041.8]
  assign _T_310 = header_5; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@837.4]
  assign _GEN_45 = 5'h5 == cnt ? header_5 : _GEN_44; // @[encoder.scala 51:25:@1041.8]
  assign _T_311 = header_6; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@839.4]
  assign _GEN_46 = 5'h6 == cnt ? header_6 : _GEN_45; // @[encoder.scala 51:25:@1041.8]
  assign _T_312 = header_7; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@841.4]
  assign _GEN_47 = 5'h7 == cnt ? header_7 : _GEN_46; // @[encoder.scala 51:25:@1041.8]
  assign _T_313 = header_8; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@843.4]
  assign _GEN_48 = 5'h8 == cnt ? header_8 : _GEN_47; // @[encoder.scala 51:25:@1041.8]
  assign _T_314 = header_9; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@845.4]
  assign _GEN_49 = 5'h9 == cnt ? header_9 : _GEN_48; // @[encoder.scala 51:25:@1041.8]
  assign _T_315 = header_10; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@847.4]
  assign _GEN_50 = 5'ha == cnt ? header_10 : _GEN_49; // @[encoder.scala 51:25:@1041.8]
  assign _T_316 = header_11; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@849.4]
  assign _GEN_51 = 5'hb == cnt ? header_11 : _GEN_50; // @[encoder.scala 51:25:@1041.8]
  assign _T_317 = header_12; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@851.4]
  assign _GEN_52 = 5'hc == cnt ? header_12 : _GEN_51; // @[encoder.scala 51:25:@1041.8]
  assign _T_318 = header_13; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@853.4]
  assign _GEN_53 = 5'hd == cnt ? header_13 : _GEN_52; // @[encoder.scala 51:25:@1041.8]
  assign _T_319 = header_14; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@855.4]
  assign _GEN_54 = 5'he == cnt ? header_14 : _GEN_53; // @[encoder.scala 51:25:@1041.8]
  assign _T_320 = header_15; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@857.4]
  assign _GEN_55 = 5'hf == cnt ? header_15 : _GEN_54; // @[encoder.scala 51:25:@1041.8]
  assign _T_321 = header_16; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@859.4]
  assign _GEN_56 = 5'h10 == cnt ? header_16 : _GEN_55; // @[encoder.scala 51:25:@1041.8]
  assign _T_322 = header_17; // @[eth.scala 21:44:@823.4 eth.scala 21:44:@861.4]
  assign _GEN_57 = 5'h11 == cnt ? header_17 : _GEN_56; // @[encoder.scala 51:25:@1041.8]
  assign _T_577 = io_writer_full == 1'h0; // @[encoder.scala 54:10:@1043.8]
  assign _T_579 = cnt > 5'h0; // @[encoder.scala 55:16:@1045.10]
  assign _T_581 = cnt - 5'h1; // @[encoder.scala 56:20:@1047.12]
  assign _T_582 = $unsigned(_T_581); // @[encoder.scala 56:20:@1048.12]
  assign _T_583 = _T_582[4:0]; // @[encoder.scala 56:20:@1049.12]
  assign _T_584 = sending_eth_pactype == 2'h2; // @[encoder.scala 57:39:@1053.12]
  assign _GEN_58 = _T_233 ? 3'h2 : 3'h3; // @[encoder.scala 57:56:@1054.12]
  assign _GEN_59 = _T_233 ? 5'h1b : 5'h13; // @[encoder.scala 57:56:@1054.12]
  assign _GEN_60 = _T_579 ? _T_583 : _GEN_59; // @[encoder.scala 55:23:@1046.10]
  assign _GEN_61 = _T_579 ? state : _GEN_58; // @[encoder.scala 55:23:@1046.10]
  assign _GEN_62 = _T_577 ? _GEN_60 : cnt; // @[encoder.scala 54:27:@1044.8]
  assign _GEN_63 = _T_577 ? _GEN_61 : state; // @[encoder.scala 54:27:@1044.8]
  assign _T_587 = state == 3'h2; // @[encoder.scala 67:21:@1065.8]
  assign _T_591 = cnt; // @[:@1067.10]
  assign _T_592 = cnt; // @[:@1068.10]
  assign _T_426 = arpView_0; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@874.4]
  assign _GEN_64 = arpView_0; // @[encoder.scala 68:25:@1069.10]
  assign _T_427 = arpView_1; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@876.4]
  assign _GEN_65 = 5'h1 == cnt ? arpView_1 : arpView_0; // @[encoder.scala 68:25:@1069.10]
  assign _T_428 = arpView_2; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@878.4]
  assign _GEN_66 = 5'h2 == cnt ? arpView_2 : _GEN_65; // @[encoder.scala 68:25:@1069.10]
  assign _T_429 = arpView_3; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@880.4]
  assign _GEN_67 = 5'h3 == cnt ? arpView_3 : _GEN_66; // @[encoder.scala 68:25:@1069.10]
  assign _T_430 = arpView_4; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@882.4]
  assign _GEN_68 = 5'h4 == cnt ? arpView_4 : _GEN_67; // @[encoder.scala 68:25:@1069.10]
  assign _T_431 = arpView_5; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@884.4]
  assign _GEN_69 = 5'h5 == cnt ? arpView_5 : _GEN_68; // @[encoder.scala 68:25:@1069.10]
  assign _T_432 = arpView_6; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@886.4]
  assign _GEN_70 = 5'h6 == cnt ? arpView_6 : _GEN_69; // @[encoder.scala 68:25:@1069.10]
  assign _T_433 = arpView_7; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@888.4]
  assign _GEN_71 = 5'h7 == cnt ? arpView_7 : _GEN_70; // @[encoder.scala 68:25:@1069.10]
  assign _T_434 = arpView_8; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@890.4]
  assign _GEN_72 = 5'h8 == cnt ? arpView_8 : _GEN_71; // @[encoder.scala 68:25:@1069.10]
  assign _T_435 = arpView_9; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@892.4]
  assign _GEN_73 = 5'h9 == cnt ? arpView_9 : _GEN_72; // @[encoder.scala 68:25:@1069.10]
  assign _T_436 = arpView_10; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@894.4]
  assign _GEN_74 = 5'ha == cnt ? arpView_10 : _GEN_73; // @[encoder.scala 68:25:@1069.10]
  assign _T_437 = arpView_11; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@896.4]
  assign _GEN_75 = 5'hb == cnt ? arpView_11 : _GEN_74; // @[encoder.scala 68:25:@1069.10]
  assign _T_438 = arpView_12; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@898.4]
  assign _GEN_76 = 5'hc == cnt ? arpView_12 : _GEN_75; // @[encoder.scala 68:25:@1069.10]
  assign _T_439 = arpView_13; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@900.4]
  assign _GEN_77 = 5'hd == cnt ? arpView_13 : _GEN_76; // @[encoder.scala 68:25:@1069.10]
  assign _T_440 = arpView_14; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@902.4]
  assign _GEN_78 = 5'he == cnt ? arpView_14 : _GEN_77; // @[encoder.scala 68:25:@1069.10]
  assign _T_441 = arpView_15; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@904.4]
  assign _GEN_79 = 5'hf == cnt ? arpView_15 : _GEN_78; // @[encoder.scala 68:25:@1069.10]
  assign _T_442 = arpView_16; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@906.4]
  assign _GEN_80 = 5'h10 == cnt ? arpView_16 : _GEN_79; // @[encoder.scala 68:25:@1069.10]
  assign _T_443 = arpView_17; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@908.4]
  assign _GEN_81 = 5'h11 == cnt ? arpView_17 : _GEN_80; // @[encoder.scala 68:25:@1069.10]
  assign _T_444 = arpView_18; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@910.4]
  assign _GEN_82 = 5'h12 == cnt ? arpView_18 : _GEN_81; // @[encoder.scala 68:25:@1069.10]
  assign _T_445 = arpView_19; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@912.4]
  assign _GEN_83 = 5'h13 == cnt ? arpView_19 : _GEN_82; // @[encoder.scala 68:25:@1069.10]
  assign _T_446 = arpView_20; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@914.4]
  assign _GEN_84 = 5'h14 == cnt ? arpView_20 : _GEN_83; // @[encoder.scala 68:25:@1069.10]
  assign _T_447 = arpView_21; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@916.4]
  assign _GEN_85 = 5'h15 == cnt ? arpView_21 : _GEN_84; // @[encoder.scala 68:25:@1069.10]
  assign _T_448 = arpView_22; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@918.4]
  assign _GEN_86 = 5'h16 == cnt ? arpView_22 : _GEN_85; // @[encoder.scala 68:25:@1069.10]
  assign _T_449 = arpView_23; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@920.4]
  assign _GEN_87 = 5'h17 == cnt ? arpView_23 : _GEN_86; // @[encoder.scala 68:25:@1069.10]
  assign _T_450 = arpView_24; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@922.4]
  assign _GEN_88 = 5'h18 == cnt ? arpView_24 : _GEN_87; // @[encoder.scala 68:25:@1069.10]
  assign _T_451 = arpView_25; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@924.4]
  assign _GEN_89 = 5'h19 == cnt ? arpView_25 : _GEN_88; // @[encoder.scala 68:25:@1069.10]
  assign _T_452 = arpView_26; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@926.4]
  assign _GEN_90 = 5'h1a == cnt ? arpView_26 : _GEN_89; // @[encoder.scala 68:25:@1069.10]
  assign _T_453 = arpView_27; // @[encoder.scala 32:44:@870.4 encoder.scala 32:44:@928.4]
  assign _GEN_91 = 5'h1b == cnt ? arpView_27 : _GEN_90; // @[encoder.scala 68:25:@1069.10]
  assign _T_594 = cnt == 5'h0; // @[encoder.scala 69:32:@1070.10]
  assign _T_597 = io_writer_full == 1'h0; // @[encoder.scala 72:10:@1073.10]
  assign _T_599 = cnt > 5'h0; // @[encoder.scala 73:16:@1075.12]
  assign _T_601 = cnt - 5'h1; // @[encoder.scala 74:20:@1077.14]
  assign _T_602 = $unsigned(_T_581); // @[encoder.scala 74:20:@1078.14]
  assign _T_603 = _T_582[4:0]; // @[encoder.scala 74:20:@1079.14]
  assign _GEN_92 = _T_579 ? _T_583 : cnt; // @[encoder.scala 73:23:@1076.12]
  assign _GEN_93 = _T_579 ? state : 3'h0; // @[encoder.scala 73:23:@1076.12]
  assign _GEN_94 = _T_577 ? _GEN_92 : cnt; // @[encoder.scala 72:27:@1074.10]
  assign _GEN_95 = _T_577 ? _GEN_93 : state; // @[encoder.scala 72:27:@1074.10]
  assign _T_604 = state == 3'h3; // @[encoder.scala 79:21:@1088.10]
  assign _T_608 = cnt; // @[:@1090.12]
  assign _T_609 = cnt; // @[:@1091.12]
  assign _T_537 = ipView_0; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@945.4]
  assign _GEN_96 = ipView_0; // @[encoder.scala 80:25:@1092.12]
  assign _T_538 = ipView_1; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@947.4]
  assign _GEN_97 = 5'h1 == cnt ? ipView_1 : ipView_0; // @[encoder.scala 80:25:@1092.12]
  assign _T_539 = ipView_2; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@949.4]
  assign _GEN_98 = 5'h2 == cnt ? ipView_2 : _GEN_97; // @[encoder.scala 80:25:@1092.12]
  assign _T_540 = ipView_3; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@951.4]
  assign _GEN_99 = 5'h3 == cnt ? ipView_3 : _GEN_98; // @[encoder.scala 80:25:@1092.12]
  assign _T_541 = ipView_4; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@953.4]
  assign _GEN_100 = 5'h4 == cnt ? ipView_4 : _GEN_99; // @[encoder.scala 80:25:@1092.12]
  assign _T_542 = ipView_5; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@955.4]
  assign _GEN_101 = 5'h5 == cnt ? ipView_5 : _GEN_100; // @[encoder.scala 80:25:@1092.12]
  assign _T_543 = ipView_6; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@957.4]
  assign _GEN_102 = 5'h6 == cnt ? ipView_6 : _GEN_101; // @[encoder.scala 80:25:@1092.12]
  assign _T_544 = ipView_7; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@959.4]
  assign _GEN_103 = 5'h7 == cnt ? ipView_7 : _GEN_102; // @[encoder.scala 80:25:@1092.12]
  assign _T_545 = ipView_8; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@961.4]
  assign _GEN_104 = 5'h8 == cnt ? ipView_8 : _GEN_103; // @[encoder.scala 80:25:@1092.12]
  assign _T_546 = ipView_9; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@963.4]
  assign _GEN_105 = 5'h9 == cnt ? ipView_9 : _GEN_104; // @[encoder.scala 80:25:@1092.12]
  assign _T_547 = ipView_10; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@965.4]
  assign _GEN_106 = 5'ha == cnt ? ipView_10 : _GEN_105; // @[encoder.scala 80:25:@1092.12]
  assign _T_548 = ipView_11; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@967.4]
  assign _GEN_107 = 5'hb == cnt ? ipView_11 : _GEN_106; // @[encoder.scala 80:25:@1092.12]
  assign _T_549 = ipView_12; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@969.4]
  assign _GEN_108 = 5'hc == cnt ? ipView_12 : _GEN_107; // @[encoder.scala 80:25:@1092.12]
  assign _T_550 = ipView_13; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@971.4]
  assign _GEN_109 = 5'hd == cnt ? ipView_13 : _GEN_108; // @[encoder.scala 80:25:@1092.12]
  assign _T_551 = ipView_14; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@973.4]
  assign _GEN_110 = 5'he == cnt ? ipView_14 : _GEN_109; // @[encoder.scala 80:25:@1092.12]
  assign _T_552 = ipView_15; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@975.4]
  assign _GEN_111 = 5'hf == cnt ? ipView_15 : _GEN_110; // @[encoder.scala 80:25:@1092.12]
  assign _T_553 = ipView_16; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@977.4]
  assign _GEN_112 = 5'h10 == cnt ? ipView_16 : _GEN_111; // @[encoder.scala 80:25:@1092.12]
  assign _T_554 = ipView_17; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@979.4]
  assign _GEN_113 = 5'h11 == cnt ? ipView_17 : _GEN_112; // @[encoder.scala 80:25:@1092.12]
  assign _T_555 = ipView_18; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@981.4]
  assign _GEN_114 = 5'h12 == cnt ? ipView_18 : _GEN_113; // @[encoder.scala 80:25:@1092.12]
  assign _T_556 = ipView_19; // @[encoder.scala 33:42:@941.4 encoder.scala 33:42:@983.4]
  assign _GEN_115 = 5'h13 == cnt ? ipView_19 : _GEN_114; // @[encoder.scala 80:25:@1092.12]
  assign _T_613 = io_writer_full == 1'h0; // @[encoder.scala 84:10:@1095.12]
  assign _T_615 = cnt > 5'h0; // @[encoder.scala 85:16:@1097.14]
  assign _T_617 = cnt - 5'h1; // @[encoder.scala 86:20:@1099.16]
  assign _T_618 = $unsigned(_T_581); // @[encoder.scala 86:20:@1100.16]
  assign _T_619 = _T_582[4:0]; // @[encoder.scala 86:20:@1101.16]
  assign _GEN_116 = _T_579 ? _T_583 : cnt; // @[encoder.scala 85:23:@1098.14]
  assign _GEN_117 = _T_579 ? state : 3'h4; // @[encoder.scala 85:23:@1098.14]
  assign _GEN_118 = _T_577 ? _GEN_92 : cnt; // @[encoder.scala 84:27:@1096.12]
  assign _GEN_119 = _T_577 ? _GEN_117 : state; // @[encoder.scala 84:27:@1096.12]
  assign _T_620 = state == 3'h4; // @[encoder.scala 91:21:@1110.12]
  assign _T_622 = io_ipReader_empty == 1'h0; // @[encoder.scala 93:21:@1114.14]
  assign _T_624 = io_writer_full == 1'h0; // @[encoder.scala 93:45:@1115.14]
  assign _T_625 = _T_622 & _T_577; // @[encoder.scala 93:41:@1116.14]
  assign _T_626 = io_ipReader_data_last & _T_625; // @[encoder.scala 97:32:@1119.14]
  assign _GEN_120 = _T_626 ? 3'h0 : state; // @[encoder.scala 97:45:@1120.14]
  assign _GEN_121 = _T_620 ? io_ipReader_data_last : 1'h0; // @[encoder.scala 91:34:@1111.12]
  assign _T_561 = 8'h0; // @[encoder.scala 39:43:@987.4 encoder.scala 39:43:@988.4]
  assign _GEN_122 = _T_620 ? io_ipReader_data_data : 8'h0; // @[encoder.scala 91:34:@1111.12]
  assign _GEN_123 = _T_620 ? _T_625 : 1'h0; // @[encoder.scala 91:34:@1111.12]
  assign _GEN_124 = _T_620 ? _GEN_120 : state; // @[encoder.scala 91:34:@1111.12]
  assign _ipView_T_609 = _GEN_115; // @[encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12 encoder.scala 80:25:@1092.12]
  assign _GEN_125 = _T_604 ? _GEN_115 : _GEN_122; // @[encoder.scala 79:30:@1089.10]
  assign _GEN_126 = _T_604 ? 1'h0 : _GEN_121; // @[encoder.scala 79:30:@1089.10]
  assign _GEN_127 = _T_604 ? 1'h1 : _GEN_123; // @[encoder.scala 79:30:@1089.10]
  assign _GEN_128 = _T_604 ? _GEN_94 : cnt; // @[encoder.scala 79:30:@1089.10]
  assign _GEN_129 = _T_604 ? _GEN_119 : _GEN_124; // @[encoder.scala 79:30:@1089.10]
  assign _GEN_130 = _T_604 ? 1'h0 : _GEN_123; // @[encoder.scala 79:30:@1089.10]
  assign _arpView_T_592 = _GEN_91; // @[encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10 encoder.scala 68:25:@1069.10]
  assign _GEN_131 = _T_587 ? _GEN_91 : _GEN_125; // @[encoder.scala 67:31:@1066.8]
  assign _GEN_132 = _T_587 ? _T_594 : _GEN_126; // @[encoder.scala 67:31:@1066.8]
  assign _GEN_133 = _T_587 ? 1'h1 : _GEN_127; // @[encoder.scala 67:31:@1066.8]
  assign _GEN_134 = _T_587 ? _GEN_94 : _GEN_128; // @[encoder.scala 67:31:@1066.8]
  assign _GEN_135 = _T_587 ? _GEN_95 : _GEN_129; // @[encoder.scala 67:31:@1066.8]
  assign _GEN_136 = _T_587 ? 1'h0 : _GEN_130; // @[encoder.scala 67:31:@1066.8]
  assign _header_T_574 = _GEN_57; // @[encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8 encoder.scala 51:25:@1041.8]
  assign _GEN_137 = _T_569 ? _GEN_57 : _GEN_131; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_138 = _T_569 ? 1'h1 : _GEN_133; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_139 = _T_569 ? _GEN_62 : _GEN_134; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_140 = _T_569 ? _GEN_63 : _GEN_135; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_141 = _T_569 ? 1'h0 : _GEN_132; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_142 = _T_569 ? 1'h0 : _GEN_136; // @[encoder.scala 49:31:@1038.6]
  assign _GEN_143 = _T_563 ? _GEN_2 : _GEN_140; // @[encoder.scala 43:25:@993.4]
  assign _GEN_144 = _T_563 ? _GEN_3 : sending_ip_dest; // @[encoder.scala 43:25:@993.4]
  assign _GEN_145 = _T_563 ? _GEN_4 : sending_ip_src; // @[encoder.scala 43:25:@993.4]
  assign _GEN_146 = _T_563 ? _GEN_5 : sending_ip_chksum; // @[encoder.scala 43:25:@993.4]
  assign _GEN_147 = _T_563 ? _GEN_6 : sending_ip_proto; // @[encoder.scala 43:25:@993.4]
  assign _GEN_148 = _T_563 ? _GEN_7 : sending_ip_ttl; // @[encoder.scala 43:25:@993.4]
  assign _GEN_149 = _T_563 ? _GEN_8 : sending_ip_foff; // @[encoder.scala 43:25:@993.4]
  assign _GEN_150 = _T_563 ? _GEN_9 : sending_ip_flags; // @[encoder.scala 43:25:@993.4]
  assign _GEN_151 = _T_563 ? _GEN_10 : sending_ip_id; // @[encoder.scala 43:25:@993.4]
  assign _GEN_152 = _T_563 ? _GEN_11 : sending_ip_len; // @[encoder.scala 43:25:@993.4]
  assign _GEN_153 = _T_563 ? _GEN_12 : sending_ip_ecn; // @[encoder.scala 43:25:@993.4]
  assign _GEN_154 = _T_563 ? _GEN_13 : sending_ip_dscp; // @[encoder.scala 43:25:@993.4]
  assign _GEN_155 = _T_563 ? _GEN_14 : sending_ip_ihl; // @[encoder.scala 43:25:@993.4]
  assign _GEN_156 = _T_563 ? _GEN_15 : sending_ip_version; // @[encoder.scala 43:25:@993.4]
  assign _GEN_157 = _T_563 ? _GEN_16 : sending_arp_tpa; // @[encoder.scala 43:25:@993.4]
  assign _GEN_158 = _T_563 ? _GEN_17 : sending_arp_tha; // @[encoder.scala 43:25:@993.4]
  assign _GEN_159 = _T_563 ? _GEN_18 : sending_arp_spa; // @[encoder.scala 43:25:@993.4]
  assign _GEN_160 = _T_563 ? _GEN_19 : sending_arp_sha; // @[encoder.scala 43:25:@993.4]
  assign _GEN_161 = _T_563 ? _GEN_20 : sending_arp_oper; // @[encoder.scala 43:25:@993.4]
  assign _GEN_162 = _T_563 ? _GEN_21 : sending_arp_plen; // @[encoder.scala 43:25:@993.4]
  assign _GEN_163 = _T_563 ? _GEN_22 : sending_arp_hlen; // @[encoder.scala 43:25:@993.4]
  assign _GEN_164 = _T_563 ? _GEN_23 : sending_arp_ptype; // @[encoder.scala 43:25:@993.4]
  assign _GEN_165 = _T_563 ? _GEN_24 : sending_arp_htype; // @[encoder.scala 43:25:@993.4]
  assign _GEN_166 = _T_563 ? _GEN_25 : sending_eth_vlan; // @[encoder.scala 43:25:@993.4]
  assign _GEN_167 = _T_563 ? _GEN_26 : sending_eth_pactype; // @[encoder.scala 43:25:@993.4]
  assign _GEN_168 = _T_563 ? _GEN_27 : sending_eth_sender_addr_0; // @[encoder.scala 43:25:@993.4]
  assign _GEN_169 = _T_563 ? _GEN_28 : sending_eth_sender_addr_1; // @[encoder.scala 43:25:@993.4]
  assign _GEN_170 = _T_563 ? _GEN_29 : sending_eth_sender_addr_2; // @[encoder.scala 43:25:@993.4]
  assign _GEN_171 = _T_563 ? _GEN_30 : sending_eth_sender_addr_3; // @[encoder.scala 43:25:@993.4]
  assign _GEN_172 = _T_563 ? _GEN_31 : sending_eth_sender_addr_4; // @[encoder.scala 43:25:@993.4]
  assign _GEN_173 = _T_563 ? _GEN_32 : sending_eth_sender_addr_5; // @[encoder.scala 43:25:@993.4]
  assign _GEN_174 = _T_563 ? _GEN_33 : sending_eth_dest_addr_0; // @[encoder.scala 43:25:@993.4]
  assign _GEN_175 = _T_563 ? _GEN_34 : sending_eth_dest_addr_1; // @[encoder.scala 43:25:@993.4]
  assign _GEN_176 = _T_563 ? _GEN_35 : sending_eth_dest_addr_2; // @[encoder.scala 43:25:@993.4]
  assign _GEN_177 = _T_563 ? _GEN_36 : sending_eth_dest_addr_3; // @[encoder.scala 43:25:@993.4]
  assign _GEN_178 = _T_563 ? _GEN_37 : sending_eth_dest_addr_4; // @[encoder.scala 43:25:@993.4]
  assign _GEN_179 = _T_563 ? _GEN_38 : sending_eth_dest_addr_5; // @[encoder.scala 43:25:@993.4]
  assign _GEN_180 = _T_563 ? _GEN_39 : _GEN_139; // @[encoder.scala 43:25:@993.4]
  assign _GEN_181 = _T_563 ? 8'h0 : _GEN_137; // @[encoder.scala 43:25:@993.4]
  assign _GEN_182 = _T_563 ? 1'h0 : _GEN_138; // @[encoder.scala 43:25:@993.4]
  assign _GEN_183 = _T_563 ? 1'h0 : _GEN_141; // @[encoder.scala 43:25:@993.4]
  assign _GEN_184 = _T_563 ? 1'h0 : _GEN_142; // @[encoder.scala 43:25:@993.4]
  assign _T_627 = state != 3'h0; // @[encoder.scala 102:21:@1124.4]
  assign io_stall = state != 3'h0; // @[encoder.scala 102:12:@1125.4]
  assign io_writer_clk = clock; // @[encoder.scala 41:17:@991.4]
  assign io_writer_en = _T_563 ? 1'h0 : _GEN_138; // @[encoder.scala 40:16:@990.4 encoder.scala 52:18:@1042.8 encoder.scala 70:18:@1072.10 encoder.scala 82:18:@1094.12 encoder.scala 94:18:@1117.14]
  assign io_writer_data_data = _T_563 ? 8'h0 : _GEN_137; // @[encoder.scala 39:23:@989.4 encoder.scala 51:25:@1041.8 encoder.scala 68:25:@1069.10 encoder.scala 80:25:@1092.12 encoder.scala 92:20:@1113.14]
  assign io_writer_data_last = _T_563 ? 1'h0 : _GEN_141; // @[encoder.scala 38:23:@986.4 encoder.scala 69:25:@1071.10 encoder.scala 81:25:@1093.12 encoder.scala 92:20:@1112.14]
  assign io_ipReader_clk = clock; // @[encoder.scala 35:19:@984.4]
  assign io_ipReader_en = _T_563 ? 1'h0 : _GEN_142; // @[encoder.scala 36:18:@985.4 encoder.scala 95:20:@1118.14]
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
  writing = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  cnt = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  state = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  sending_eth_dest_addr_0 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  sending_eth_dest_addr_1 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  sending_eth_dest_addr_2 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  sending_eth_dest_addr_3 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  sending_eth_dest_addr_4 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  sending_eth_dest_addr_5 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  sending_eth_sender_addr_0 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  sending_eth_sender_addr_1 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  sending_eth_sender_addr_2 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  sending_eth_sender_addr_3 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  sending_eth_sender_addr_4 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  sending_eth_sender_addr_5 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  sending_eth_pactype = _RAND_15[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  sending_eth_vlan = _RAND_16[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  sending_arp_htype = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  sending_arp_ptype = _RAND_18[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  sending_arp_hlen = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  sending_arp_plen = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  sending_arp_oper = _RAND_21[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{`RANDOM}};
  sending_arp_sha = _RAND_22[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  sending_arp_spa = _RAND_23[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{`RANDOM}};
  sending_arp_tha = _RAND_24[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  sending_arp_tpa = _RAND_25[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  sending_ip_version = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  sending_ip_ihl = _RAND_27[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  sending_ip_dscp = _RAND_28[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  sending_ip_ecn = _RAND_29[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  sending_ip_len = _RAND_30[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  sending_ip_id = _RAND_31[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  sending_ip_flags = _RAND_32[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  sending_ip_foff = _RAND_33[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  sending_ip_ttl = _RAND_34[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  sending_ip_proto = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  sending_ip_chksum = _RAND_36[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  sending_ip_src = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  sending_ip_dest = _RAND_38[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    writing <= 1'h0;
    if (reset) begin
      cnt <= 5'h0;
    end else begin
      if (_T_563) begin
        if (_T_567) begin
          cnt <= 5'h11;
        end
      end else begin
        if (_T_569) begin
          if (_T_577) begin
            if (_T_579) begin
              cnt <= _T_583;
            end else begin
              if (_T_233) begin
                cnt <= 5'h1b;
              end else begin
                cnt <= 5'h13;
              end
            end
          end
        end else begin
          if (_T_587) begin
            if (_T_577) begin
              if (_T_579) begin
                cnt <= _T_583;
              end
            end
          end else begin
            if (_T_604) begin
              if (_T_577) begin
                if (_T_579) begin
                  cnt <= _T_583;
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
      if (_T_563) begin
        if (_T_567) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_569) begin
          if (_T_577) begin
            if (!(_T_579)) begin
              if (_T_233) begin
                state <= 3'h2;
              end else begin
                state <= 3'h3;
              end
            end
          end
        end else begin
          if (_T_587) begin
            if (_T_577) begin
              if (!(_T_579)) begin
                state <= 3'h0;
              end
            end
          end else begin
            if (_T_604) begin
              if (_T_577) begin
                if (!(_T_579)) begin
                  state <= 3'h4;
                end
              end
            end else begin
              if (_T_620) begin
                if (_T_626) begin
                  state <= 3'h0;
                end
              end
            end
          end
        end
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_0 <= io_input_eth_dest_addr_0;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_1 <= io_input_eth_dest_addr_1;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_2 <= io_input_eth_dest_addr_2;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_3 <= io_input_eth_dest_addr_3;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_4 <= io_input_eth_dest_addr_4;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_dest_addr_5 <= io_input_eth_dest_addr_5;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_0 <= 8'hd8;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_1 <= 8'h71;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_2 <= 8'h20;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_3 <= 8'h6a;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_4 <= 8'ha4;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_sender_addr_5 <= 8'hf6;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_htype <= io_input_arp_htype;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_ptype <= io_input_arp_ptype;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_hlen <= io_input_arp_hlen;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_plen <= io_input_arp_plen;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_oper <= io_input_arp_oper;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_sha <= io_input_arp_sha;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_spa <= io_input_arp_spa;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_tha <= io_input_arp_tha;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_arp_tpa <= io_input_arp_tpa;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_version <= io_input_ip_version;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_len <= io_input_ip_len;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_id <= io_input_ip_id;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_src <= io_input_ip_src;
      end
    end
    if (_T_563) begin
      if (_T_567) begin
        sending_ip_dest <= io_input_ip_dest;
      end
    end
  end
endmodule
module Transmitter( // @[:@1127.2]
  input        clock, // @[:@1128.4]
  input        reset, // @[:@1129.4]
  output       io_reader_clk, // @[:@1130.4]
  output       io_reader_en, // @[:@1130.4]
  input  [7:0] io_reader_data_data, // @[:@1130.4]
  input        io_reader_data_last, // @[:@1130.4]
  input        io_reader_empty, // @[:@1130.4]
  output [7:0] io_tx_tdata, // @[:@1130.4]
  output       io_tx_tvalid, // @[:@1130.4]
  output       io_tx_tlast, // @[:@1130.4]
  input        io_tx_tready // @[:@1130.4]
);
  wire  _T_30; // @[transmitter.scala 16:19:@1134.4]
  assign _T_30 = io_reader_empty == 1'h0; // @[transmitter.scala 16:19:@1134.4]
  assign io_reader_clk = clock; // @[transmitter.scala 18:17:@1137.4]
  assign io_reader_en = io_tx_tready; // @[transmitter.scala 17:16:@1136.4]
  assign io_tx_tdata = io_reader_data_data; // @[transmitter.scala 14:15:@1132.4]
  assign io_tx_tvalid = io_reader_empty == 1'h0; // @[transmitter.scala 16:16:@1135.4]
  assign io_tx_tlast = io_reader_data_last; // @[transmitter.scala 15:15:@1133.4]
endmodule
module Router( // @[:@1139.2]
  input        clock, // @[:@1140.4]
  input        reset, // @[:@1141.4]
  input        io_rx_clk, // @[:@1142.4]
  input        io_tx_clk, // @[:@1142.4]
  input  [7:0] io_rx_tdata, // @[:@1142.4]
  input        io_rx_tvalid, // @[:@1142.4]
  input        io_rx_tlast, // @[:@1142.4]
  output       io_rx_tready, // @[:@1142.4]
  output [7:0] io_tx_tdata, // @[:@1142.4]
  output       io_tx_tvalid, // @[:@1142.4]
  output       io_tx_tlast, // @[:@1142.4]
  input        io_tx_tready // @[:@1142.4]
);
  wire  acceptorBridge_clock; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_reset; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_write_clk; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_write_en; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_0; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_1; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_2; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_3; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_4; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_5; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_0; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_1; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_2; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_3; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_4; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_5; // @[router.scala 22:30:@1144.4]
  wire [1:0] acceptorBridge_io_write_data_eth_pactype; // @[router.scala 22:30:@1144.4]
  wire [2:0] acceptorBridge_io_write_data_eth_vlan; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_arp_htype; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_arp_ptype; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_arp_hlen; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_arp_plen; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_arp_oper; // @[router.scala 22:30:@1144.4]
  wire [47:0] acceptorBridge_io_write_data_arp_sha; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_write_data_arp_spa; // @[router.scala 22:30:@1144.4]
  wire [47:0] acceptorBridge_io_write_data_arp_tha; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_write_data_arp_tpa; // @[router.scala 22:30:@1144.4]
  wire [3:0] acceptorBridge_io_write_data_ip_version; // @[router.scala 22:30:@1144.4]
  wire [3:0] acceptorBridge_io_write_data_ip_ihl; // @[router.scala 22:30:@1144.4]
  wire [5:0] acceptorBridge_io_write_data_ip_dscp; // @[router.scala 22:30:@1144.4]
  wire [1:0] acceptorBridge_io_write_data_ip_ecn; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_ip_len; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_ip_id; // @[router.scala 22:30:@1144.4]
  wire [2:0] acceptorBridge_io_write_data_ip_flags; // @[router.scala 22:30:@1144.4]
  wire [12:0] acceptorBridge_io_write_data_ip_foff; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_ip_ttl; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_write_data_ip_proto; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_data_ip_chksum; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_write_data_ip_src; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_write_data_ip_dest; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_write_full; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_write_space; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_read_clk; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_read_en; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_0; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_1; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_2; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_3; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_4; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_5; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_0; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_1; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_2; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_3; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_4; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_5; // @[router.scala 22:30:@1144.4]
  wire [1:0] acceptorBridge_io_read_data_eth_pactype; // @[router.scala 22:30:@1144.4]
  wire [2:0] acceptorBridge_io_read_data_eth_vlan; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_arp_htype; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_arp_ptype; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_arp_hlen; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_arp_plen; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_arp_oper; // @[router.scala 22:30:@1144.4]
  wire [47:0] acceptorBridge_io_read_data_arp_sha; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_read_data_arp_spa; // @[router.scala 22:30:@1144.4]
  wire [47:0] acceptorBridge_io_read_data_arp_tha; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_read_data_arp_tpa; // @[router.scala 22:30:@1144.4]
  wire [3:0] acceptorBridge_io_read_data_ip_version; // @[router.scala 22:30:@1144.4]
  wire [3:0] acceptorBridge_io_read_data_ip_ihl; // @[router.scala 22:30:@1144.4]
  wire [5:0] acceptorBridge_io_read_data_ip_dscp; // @[router.scala 22:30:@1144.4]
  wire [1:0] acceptorBridge_io_read_data_ip_ecn; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_ip_len; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_ip_id; // @[router.scala 22:30:@1144.4]
  wire [2:0] acceptorBridge_io_read_data_ip_flags; // @[router.scala 22:30:@1144.4]
  wire [12:0] acceptorBridge_io_read_data_ip_foff; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_ip_ttl; // @[router.scala 22:30:@1144.4]
  wire [7:0] acceptorBridge_io_read_data_ip_proto; // @[router.scala 22:30:@1144.4]
  wire [15:0] acceptorBridge_io_read_data_ip_chksum; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_read_data_ip_src; // @[router.scala 22:30:@1144.4]
  wire [31:0] acceptorBridge_io_read_data_ip_dest; // @[router.scala 22:30:@1144.4]
  wire  acceptorBridge_io_read_empty; // @[router.scala 22:30:@1144.4]
  wire  transmitterBridge_clock; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_reset; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_write_clk; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_write_en; // @[router.scala 25:33:@1148.4]
  wire [7:0] transmitterBridge_io_write_data_data; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_write_data_last; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_write_full; // @[router.scala 25:33:@1148.4]
  wire [15:0] transmitterBridge_io_write_space; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_read_clk; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_read_en; // @[router.scala 25:33:@1148.4]
  wire [7:0] transmitterBridge_io_read_data_data; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_read_data_last; // @[router.scala 25:33:@1148.4]
  wire  transmitterBridge_io_read_empty; // @[router.scala 25:33:@1148.4]
  wire  ipBridge_clock; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_reset; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_write_clk; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_write_en; // @[router.scala 29:24:@1153.4]
  wire [7:0] ipBridge_io_write_data_data; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_write_data_last; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_write_full; // @[router.scala 29:24:@1153.4]
  wire [15:0] ipBridge_io_write_space; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_read_clk; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_read_en; // @[router.scala 29:24:@1153.4]
  wire [7:0] ipBridge_io_read_data_data; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_read_data_last; // @[router.scala 29:24:@1153.4]
  wire  ipBridge_io_read_empty; // @[router.scala 29:24:@1153.4]
  wire  Acceptor_clock; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_reset; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_rx_tlast; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_rx_tready; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_writer_clk; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_writer_en; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_0; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_1; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_2; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_3; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_4; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_5; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_0; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_1; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_2; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_3; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_4; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_5; // @[router.scala 32:26:@1156.4]
  wire [1:0] Acceptor_io_writer_data_eth_pactype; // @[router.scala 32:26:@1156.4]
  wire [2:0] Acceptor_io_writer_data_eth_vlan; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_arp_htype; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_arp_ptype; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_arp_hlen; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_arp_plen; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_arp_oper; // @[router.scala 32:26:@1156.4]
  wire [47:0] Acceptor_io_writer_data_arp_sha; // @[router.scala 32:26:@1156.4]
  wire [31:0] Acceptor_io_writer_data_arp_spa; // @[router.scala 32:26:@1156.4]
  wire [47:0] Acceptor_io_writer_data_arp_tha; // @[router.scala 32:26:@1156.4]
  wire [31:0] Acceptor_io_writer_data_arp_tpa; // @[router.scala 32:26:@1156.4]
  wire [3:0] Acceptor_io_writer_data_ip_version; // @[router.scala 32:26:@1156.4]
  wire [3:0] Acceptor_io_writer_data_ip_ihl; // @[router.scala 32:26:@1156.4]
  wire [5:0] Acceptor_io_writer_data_ip_dscp; // @[router.scala 32:26:@1156.4]
  wire [1:0] Acceptor_io_writer_data_ip_ecn; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_ip_len; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_ip_id; // @[router.scala 32:26:@1156.4]
  wire [2:0] Acceptor_io_writer_data_ip_flags; // @[router.scala 32:26:@1156.4]
  wire [12:0] Acceptor_io_writer_data_ip_foff; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_ip_ttl; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_writer_data_ip_proto; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_data_ip_chksum; // @[router.scala 32:26:@1156.4]
  wire [31:0] Acceptor_io_writer_data_ip_src; // @[router.scala 32:26:@1156.4]
  wire [31:0] Acceptor_io_writer_data_ip_dest; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_writer_full; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_writer_space; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_ipWriter_clk; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_ipWriter_en; // @[router.scala 32:26:@1156.4]
  wire [7:0] Acceptor_io_ipWriter_data_data; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_ipWriter_data_last; // @[router.scala 32:26:@1156.4]
  wire  Acceptor_io_ipWriter_full; // @[router.scala 32:26:@1156.4]
  wire [15:0] Acceptor_io_ipWriter_space; // @[router.scala 32:26:@1156.4]
  wire  encoder_clock; // @[router.scala 39:23:@1209.4]
  wire  encoder_reset; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_0; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_1; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_2; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_3; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_4; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_dest_addr_5; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_0; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_1; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_2; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_3; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_4; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_eth_sender_addr_5; // @[router.scala 39:23:@1209.4]
  wire [1:0] encoder_io_input_eth_pactype; // @[router.scala 39:23:@1209.4]
  wire [2:0] encoder_io_input_eth_vlan; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_arp_htype; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_arp_ptype; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_arp_hlen; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_arp_plen; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_arp_oper; // @[router.scala 39:23:@1209.4]
  wire [47:0] encoder_io_input_arp_sha; // @[router.scala 39:23:@1209.4]
  wire [31:0] encoder_io_input_arp_spa; // @[router.scala 39:23:@1209.4]
  wire [47:0] encoder_io_input_arp_tha; // @[router.scala 39:23:@1209.4]
  wire [31:0] encoder_io_input_arp_tpa; // @[router.scala 39:23:@1209.4]
  wire [3:0] encoder_io_input_ip_version; // @[router.scala 39:23:@1209.4]
  wire [3:0] encoder_io_input_ip_ihl; // @[router.scala 39:23:@1209.4]
  wire [5:0] encoder_io_input_ip_dscp; // @[router.scala 39:23:@1209.4]
  wire [1:0] encoder_io_input_ip_ecn; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_ip_len; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_ip_id; // @[router.scala 39:23:@1209.4]
  wire [2:0] encoder_io_input_ip_flags; // @[router.scala 39:23:@1209.4]
  wire [12:0] encoder_io_input_ip_foff; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_ip_ttl; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_input_ip_proto; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_input_ip_chksum; // @[router.scala 39:23:@1209.4]
  wire [31:0] encoder_io_input_ip_src; // @[router.scala 39:23:@1209.4]
  wire [31:0] encoder_io_input_ip_dest; // @[router.scala 39:23:@1209.4]
  wire [1:0] encoder_io_status; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_stall; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_writer_clk; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_writer_en; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_writer_data_data; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_writer_data_last; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_writer_full; // @[router.scala 39:23:@1209.4]
  wire [15:0] encoder_io_writer_space; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_ipReader_clk; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_ipReader_en; // @[router.scala 39:23:@1209.4]
  wire [7:0] encoder_io_ipReader_data_data; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_ipReader_data_last; // @[router.scala 39:23:@1209.4]
  wire  encoder_io_ipReader_empty; // @[router.scala 39:23:@1209.4]
  wire  Transmitter_clock; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_reset; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_reader_clk; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_reader_en; // @[router.scala 57:29:@1327.4]
  wire [7:0] Transmitter_io_reader_data_data; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_reader_data_last; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_reader_empty; // @[router.scala 57:29:@1327.4]
  wire [7:0] Transmitter_io_tx_tdata; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_tx_tvalid; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_tx_tlast; // @[router.scala 57:29:@1327.4]
  wire  Transmitter_io_tx_tready; // @[router.scala 57:29:@1327.4]
  wire [1:0] status; // @[router.scala 42:19:@1212.4]
  wire  _T_69; // @[router.scala 43:32:@1213.4]
  wire [7:0] masked_eth_dest_addr_0; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1246.4 router.scala 47:19:@1252.4]
  wire [7:0] masked_eth_dest_addr_1; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1247.4 router.scala 47:19:@1253.4]
  wire [7:0] masked_eth_dest_addr_2; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1248.4 router.scala 47:19:@1254.4]
  wire [7:0] masked_eth_dest_addr_3; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1249.4 router.scala 47:19:@1255.4]
  wire [7:0] masked_eth_dest_addr_4; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1250.4 router.scala 47:19:@1256.4]
  wire [7:0] masked_eth_dest_addr_5; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1251.4 router.scala 47:19:@1257.4]
  wire [7:0] _T_140_0; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1260.4]
  wire [7:0] _T_128_addr_0; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1266.4]
  wire [7:0] masked_eth_sender_addr_0; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1240.4 router.scala 48:21:@1272.4]
  wire [7:0] _T_140_1; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1261.4]
  wire [7:0] _T_128_addr_1; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1267.4]
  wire [7:0] masked_eth_sender_addr_1; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1241.4 router.scala 48:21:@1273.4]
  wire [7:0] _T_140_2; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1262.4]
  wire [7:0] _T_128_addr_2; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1268.4]
  wire [7:0] masked_eth_sender_addr_2; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1242.4 router.scala 48:21:@1274.4]
  wire [7:0] _T_140_3; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1263.4]
  wire [7:0] _T_128_addr_3; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1269.4]
  wire [7:0] masked_eth_sender_addr_3; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1243.4 router.scala 48:21:@1275.4]
  wire [7:0] _T_140_4; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1264.4]
  wire [7:0] _T_128_addr_4; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1270.4]
  wire [7:0] masked_eth_sender_addr_4; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1244.4 router.scala 48:21:@1276.4]
  wire [7:0] _T_140_5; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1265.4]
  wire [7:0] _T_128_addr_5; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1271.4]
  wire [7:0] masked_eth_sender_addr_5; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1245.4 router.scala 48:21:@1277.4]
  wire [1:0] masked_eth_pactype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1239.4]
  wire [2:0] masked_eth_vlan; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1238.4]
  wire [15:0] masked_arp_htype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1237.4]
  wire [15:0] masked_arp_ptype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1236.4]
  wire [7:0] masked_arp_hlen; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1235.4]
  wire [7:0] masked_arp_plen; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1234.4]
  wire [15:0] masked_arp_oper; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1233.4]
  wire [47:0] masked_arp_sha; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1232.4]
  wire [31:0] masked_arp_spa; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1231.4]
  wire [47:0] masked_arp_tha; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1230.4]
  wire [31:0] masked_arp_tpa; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1229.4]
  wire [3:0] masked_ip_version; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1228.4]
  wire [3:0] masked_ip_ihl; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1227.4]
  wire [5:0] masked_ip_dscp; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1226.4]
  wire [1:0] masked_ip_ecn; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1225.4]
  wire [15:0] masked_ip_len; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1224.4]
  wire [15:0] masked_ip_id; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1223.4]
  wire [2:0] masked_ip_flags; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1222.4]
  wire [12:0] masked_ip_foff; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1221.4]
  wire [7:0] masked_ip_ttl; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1220.4]
  wire [7:0] masked_ip_proto; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1219.4]
  wire [15:0] masked_ip_chksum; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1218.4]
  wire [31:0] masked_ip_src; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1217.4]
  wire [31:0] masked_ip_dest; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1216.4]
  AsyncBridge acceptorBridge ( // @[router.scala 22:30:@1144.4]
    .clock(acceptorBridge_clock),
    .reset(acceptorBridge_reset),
    .io_write_clk(acceptorBridge_io_write_clk),
    .io_write_en(acceptorBridge_io_write_en),
    .io_write_data_eth_dest_addr_0(acceptorBridge_io_write_data_eth_dest_addr_0),
    .io_write_data_eth_dest_addr_1(acceptorBridge_io_write_data_eth_dest_addr_1),
    .io_write_data_eth_dest_addr_2(acceptorBridge_io_write_data_eth_dest_addr_2),
    .io_write_data_eth_dest_addr_3(acceptorBridge_io_write_data_eth_dest_addr_3),
    .io_write_data_eth_dest_addr_4(acceptorBridge_io_write_data_eth_dest_addr_4),
    .io_write_data_eth_dest_addr_5(acceptorBridge_io_write_data_eth_dest_addr_5),
    .io_write_data_eth_sender_addr_0(acceptorBridge_io_write_data_eth_sender_addr_0),
    .io_write_data_eth_sender_addr_1(acceptorBridge_io_write_data_eth_sender_addr_1),
    .io_write_data_eth_sender_addr_2(acceptorBridge_io_write_data_eth_sender_addr_2),
    .io_write_data_eth_sender_addr_3(acceptorBridge_io_write_data_eth_sender_addr_3),
    .io_write_data_eth_sender_addr_4(acceptorBridge_io_write_data_eth_sender_addr_4),
    .io_write_data_eth_sender_addr_5(acceptorBridge_io_write_data_eth_sender_addr_5),
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
    .io_write_full(acceptorBridge_io_write_full),
    .io_write_space(acceptorBridge_io_write_space),
    .io_read_clk(acceptorBridge_io_read_clk),
    .io_read_en(acceptorBridge_io_read_en),
    .io_read_data_eth_dest_addr_0(acceptorBridge_io_read_data_eth_dest_addr_0),
    .io_read_data_eth_dest_addr_1(acceptorBridge_io_read_data_eth_dest_addr_1),
    .io_read_data_eth_dest_addr_2(acceptorBridge_io_read_data_eth_dest_addr_2),
    .io_read_data_eth_dest_addr_3(acceptorBridge_io_read_data_eth_dest_addr_3),
    .io_read_data_eth_dest_addr_4(acceptorBridge_io_read_data_eth_dest_addr_4),
    .io_read_data_eth_dest_addr_5(acceptorBridge_io_read_data_eth_dest_addr_5),
    .io_read_data_eth_sender_addr_0(acceptorBridge_io_read_data_eth_sender_addr_0),
    .io_read_data_eth_sender_addr_1(acceptorBridge_io_read_data_eth_sender_addr_1),
    .io_read_data_eth_sender_addr_2(acceptorBridge_io_read_data_eth_sender_addr_2),
    .io_read_data_eth_sender_addr_3(acceptorBridge_io_read_data_eth_sender_addr_3),
    .io_read_data_eth_sender_addr_4(acceptorBridge_io_read_data_eth_sender_addr_4),
    .io_read_data_eth_sender_addr_5(acceptorBridge_io_read_data_eth_sender_addr_5),
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
    .io_read_empty(acceptorBridge_io_read_empty)
  );
  AsyncBridge_1 transmitterBridge ( // @[router.scala 25:33:@1148.4]
    .clock(transmitterBridge_clock),
    .reset(transmitterBridge_reset),
    .io_write_clk(transmitterBridge_io_write_clk),
    .io_write_en(transmitterBridge_io_write_en),
    .io_write_data_data(transmitterBridge_io_write_data_data),
    .io_write_data_last(transmitterBridge_io_write_data_last),
    .io_write_full(transmitterBridge_io_write_full),
    .io_write_space(transmitterBridge_io_write_space),
    .io_read_clk(transmitterBridge_io_read_clk),
    .io_read_en(transmitterBridge_io_read_en),
    .io_read_data_data(transmitterBridge_io_read_data_data),
    .io_read_data_last(transmitterBridge_io_read_data_last),
    .io_read_empty(transmitterBridge_io_read_empty)
  );
  AsyncBridge_2 ipBridge ( // @[router.scala 29:24:@1153.4]
    .clock(ipBridge_clock),
    .reset(ipBridge_reset),
    .io_write_clk(ipBridge_io_write_clk),
    .io_write_en(ipBridge_io_write_en),
    .io_write_data_data(ipBridge_io_write_data_data),
    .io_write_data_last(ipBridge_io_write_data_last),
    .io_write_full(ipBridge_io_write_full),
    .io_write_space(ipBridge_io_write_space),
    .io_read_clk(ipBridge_io_read_clk),
    .io_read_en(ipBridge_io_read_en),
    .io_read_data_data(ipBridge_io_read_data_data),
    .io_read_data_last(ipBridge_io_read_data_last),
    .io_read_empty(ipBridge_io_read_empty)
  );
  Acceptor Acceptor ( // @[router.scala 32:26:@1156.4]
    .clock(Acceptor_clock),
    .reset(Acceptor_reset),
    .io_rx_tdata(Acceptor_io_rx_tdata),
    .io_rx_tvalid(Acceptor_io_rx_tvalid),
    .io_rx_tlast(Acceptor_io_rx_tlast),
    .io_rx_tready(Acceptor_io_rx_tready),
    .io_writer_clk(Acceptor_io_writer_clk),
    .io_writer_en(Acceptor_io_writer_en),
    .io_writer_data_eth_dest_addr_0(Acceptor_io_writer_data_eth_dest_addr_0),
    .io_writer_data_eth_dest_addr_1(Acceptor_io_writer_data_eth_dest_addr_1),
    .io_writer_data_eth_dest_addr_2(Acceptor_io_writer_data_eth_dest_addr_2),
    .io_writer_data_eth_dest_addr_3(Acceptor_io_writer_data_eth_dest_addr_3),
    .io_writer_data_eth_dest_addr_4(Acceptor_io_writer_data_eth_dest_addr_4),
    .io_writer_data_eth_dest_addr_5(Acceptor_io_writer_data_eth_dest_addr_5),
    .io_writer_data_eth_sender_addr_0(Acceptor_io_writer_data_eth_sender_addr_0),
    .io_writer_data_eth_sender_addr_1(Acceptor_io_writer_data_eth_sender_addr_1),
    .io_writer_data_eth_sender_addr_2(Acceptor_io_writer_data_eth_sender_addr_2),
    .io_writer_data_eth_sender_addr_3(Acceptor_io_writer_data_eth_sender_addr_3),
    .io_writer_data_eth_sender_addr_4(Acceptor_io_writer_data_eth_sender_addr_4),
    .io_writer_data_eth_sender_addr_5(Acceptor_io_writer_data_eth_sender_addr_5),
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
    .io_writer_full(Acceptor_io_writer_full),
    .io_writer_space(Acceptor_io_writer_space),
    .io_ipWriter_clk(Acceptor_io_ipWriter_clk),
    .io_ipWriter_en(Acceptor_io_ipWriter_en),
    .io_ipWriter_data_data(Acceptor_io_ipWriter_data_data),
    .io_ipWriter_data_last(Acceptor_io_ipWriter_data_last),
    .io_ipWriter_full(Acceptor_io_ipWriter_full),
    .io_ipWriter_space(Acceptor_io_ipWriter_space)
  );
  Encoder encoder ( // @[router.scala 39:23:@1209.4]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_input_eth_dest_addr_0(encoder_io_input_eth_dest_addr_0),
    .io_input_eth_dest_addr_1(encoder_io_input_eth_dest_addr_1),
    .io_input_eth_dest_addr_2(encoder_io_input_eth_dest_addr_2),
    .io_input_eth_dest_addr_3(encoder_io_input_eth_dest_addr_3),
    .io_input_eth_dest_addr_4(encoder_io_input_eth_dest_addr_4),
    .io_input_eth_dest_addr_5(encoder_io_input_eth_dest_addr_5),
    .io_input_eth_sender_addr_0(encoder_io_input_eth_sender_addr_0),
    .io_input_eth_sender_addr_1(encoder_io_input_eth_sender_addr_1),
    .io_input_eth_sender_addr_2(encoder_io_input_eth_sender_addr_2),
    .io_input_eth_sender_addr_3(encoder_io_input_eth_sender_addr_3),
    .io_input_eth_sender_addr_4(encoder_io_input_eth_sender_addr_4),
    .io_input_eth_sender_addr_5(encoder_io_input_eth_sender_addr_5),
    .io_input_eth_pactype(encoder_io_input_eth_pactype),
    .io_input_eth_vlan(encoder_io_input_eth_vlan),
    .io_input_arp_htype(encoder_io_input_arp_htype),
    .io_input_arp_ptype(encoder_io_input_arp_ptype),
    .io_input_arp_hlen(encoder_io_input_arp_hlen),
    .io_input_arp_plen(encoder_io_input_arp_plen),
    .io_input_arp_oper(encoder_io_input_arp_oper),
    .io_input_arp_sha(encoder_io_input_arp_sha),
    .io_input_arp_spa(encoder_io_input_arp_spa),
    .io_input_arp_tha(encoder_io_input_arp_tha),
    .io_input_arp_tpa(encoder_io_input_arp_tpa),
    .io_input_ip_version(encoder_io_input_ip_version),
    .io_input_ip_ihl(encoder_io_input_ip_ihl),
    .io_input_ip_dscp(encoder_io_input_ip_dscp),
    .io_input_ip_ecn(encoder_io_input_ip_ecn),
    .io_input_ip_len(encoder_io_input_ip_len),
    .io_input_ip_id(encoder_io_input_ip_id),
    .io_input_ip_flags(encoder_io_input_ip_flags),
    .io_input_ip_foff(encoder_io_input_ip_foff),
    .io_input_ip_ttl(encoder_io_input_ip_ttl),
    .io_input_ip_proto(encoder_io_input_ip_proto),
    .io_input_ip_chksum(encoder_io_input_ip_chksum),
    .io_input_ip_src(encoder_io_input_ip_src),
    .io_input_ip_dest(encoder_io_input_ip_dest),
    .io_status(encoder_io_status),
    .io_stall(encoder_io_stall),
    .io_writer_clk(encoder_io_writer_clk),
    .io_writer_en(encoder_io_writer_en),
    .io_writer_data_data(encoder_io_writer_data_data),
    .io_writer_data_last(encoder_io_writer_data_last),
    .io_writer_full(encoder_io_writer_full),
    .io_writer_space(encoder_io_writer_space),
    .io_ipReader_clk(encoder_io_ipReader_clk),
    .io_ipReader_en(encoder_io_ipReader_en),
    .io_ipReader_data_data(encoder_io_ipReader_data_data),
    .io_ipReader_data_last(encoder_io_ipReader_data_last),
    .io_ipReader_empty(encoder_io_ipReader_empty)
  );
  Transmitter Transmitter ( // @[router.scala 57:29:@1327.4]
    .clock(Transmitter_clock),
    .reset(Transmitter_reset),
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
  assign status = acceptorBridge_io_read_empty ? 2'h0 : 2'h1; // @[router.scala 42:19:@1212.4]
  assign _T_69 = encoder_io_stall == 1'h0; // @[router.scala 43:32:@1213.4]
  assign masked_eth_dest_addr_0 = acceptorBridge_io_read_data_eth_sender_addr_0; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1246.4 router.scala 47:19:@1252.4]
  assign masked_eth_dest_addr_1 = acceptorBridge_io_read_data_eth_sender_addr_1; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1247.4 router.scala 47:19:@1253.4]
  assign masked_eth_dest_addr_2 = acceptorBridge_io_read_data_eth_sender_addr_2; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1248.4 router.scala 47:19:@1254.4]
  assign masked_eth_dest_addr_3 = acceptorBridge_io_read_data_eth_sender_addr_3; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1249.4 router.scala 47:19:@1255.4]
  assign masked_eth_dest_addr_4 = acceptorBridge_io_read_data_eth_sender_addr_4; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1250.4 router.scala 47:19:@1256.4]
  assign masked_eth_dest_addr_5 = acceptorBridge_io_read_data_eth_sender_addr_5; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1251.4 router.scala 47:19:@1257.4]
  assign _T_140_0 = 8'hd8; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1260.4]
  assign _T_128_addr_0 = 8'hd8; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1266.4]
  assign masked_eth_sender_addr_0 = 8'hd8; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1240.4 router.scala 48:21:@1272.4]
  assign _T_140_1 = 8'h71; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1261.4]
  assign _T_128_addr_1 = 8'h71; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1267.4]
  assign masked_eth_sender_addr_1 = 8'h71; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1241.4 router.scala 48:21:@1273.4]
  assign _T_140_2 = 8'h20; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1262.4]
  assign _T_128_addr_2 = 8'h20; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1268.4]
  assign masked_eth_sender_addr_2 = 8'h20; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1242.4 router.scala 48:21:@1274.4]
  assign _T_140_3 = 8'h6a; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1263.4]
  assign _T_128_addr_3 = 8'h6a; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1269.4]
  assign masked_eth_sender_addr_3 = 8'h6a; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1243.4 router.scala 48:21:@1275.4]
  assign _T_140_4 = 8'ha4; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1264.4]
  assign _T_128_addr_4 = 8'ha4; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1270.4]
  assign masked_eth_sender_addr_4 = 8'ha4; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1244.4 router.scala 48:21:@1276.4]
  assign _T_140_5 = 8'hf6; // @[consts.scala 9:28:@1259.4 consts.scala 9:28:@1265.4]
  assign _T_128_addr_5 = 8'hf6; // @[consts.scala 7:23:@1258.4 consts.scala 9:18:@1271.4]
  assign masked_eth_sender_addr_5 = 8'hf6; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1245.4 router.scala 48:21:@1277.4]
  assign masked_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1239.4]
  assign masked_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1238.4]
  assign masked_arp_htype = acceptorBridge_io_read_data_arp_htype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1237.4]
  assign masked_arp_ptype = acceptorBridge_io_read_data_arp_ptype; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1236.4]
  assign masked_arp_hlen = acceptorBridge_io_read_data_arp_hlen; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1235.4]
  assign masked_arp_plen = acceptorBridge_io_read_data_arp_plen; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1234.4]
  assign masked_arp_oper = acceptorBridge_io_read_data_arp_oper; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1233.4]
  assign masked_arp_sha = acceptorBridge_io_read_data_arp_sha; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1232.4]
  assign masked_arp_spa = acceptorBridge_io_read_data_arp_spa; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1231.4]
  assign masked_arp_tha = acceptorBridge_io_read_data_arp_tha; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1230.4]
  assign masked_arp_tpa = acceptorBridge_io_read_data_arp_tpa; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1229.4]
  assign masked_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1228.4]
  assign masked_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1227.4]
  assign masked_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1226.4]
  assign masked_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1225.4]
  assign masked_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1224.4]
  assign masked_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1223.4]
  assign masked_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1222.4]
  assign masked_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1221.4]
  assign masked_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1220.4]
  assign masked_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1219.4]
  assign masked_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1218.4]
  assign masked_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1217.4]
  assign masked_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 45:20:@1215.4 router.scala 46:10:@1216.4]
  assign io_rx_tready = Acceptor_io_rx_tready; // @[router.scala 34:20:@1159.4]
  assign io_tx_tdata = Transmitter_io_tx_tdata; // @[router.scala 59:23:@1338.4]
  assign io_tx_tvalid = Transmitter_io_tx_tvalid; // @[router.scala 59:23:@1337.4]
  assign io_tx_tlast = Transmitter_io_tx_tlast; // @[router.scala 59:23:@1336.4]
  assign acceptorBridge_clock = clock; // @[:@1145.4]
  assign acceptorBridge_reset = reset; // @[:@1146.4]
  assign acceptorBridge_io_write_clk = Acceptor_io_writer_clk; // @[router.scala 35:29:@1202.4]
  assign acceptorBridge_io_write_en = Acceptor_io_writer_en; // @[router.scala 35:29:@1201.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_0 = Acceptor_io_writer_data_eth_dest_addr_0; // @[router.scala 35:29:@1195.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_1 = Acceptor_io_writer_data_eth_dest_addr_1; // @[router.scala 35:29:@1196.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_2 = Acceptor_io_writer_data_eth_dest_addr_2; // @[router.scala 35:29:@1197.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_3 = Acceptor_io_writer_data_eth_dest_addr_3; // @[router.scala 35:29:@1198.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_4 = Acceptor_io_writer_data_eth_dest_addr_4; // @[router.scala 35:29:@1199.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_5 = Acceptor_io_writer_data_eth_dest_addr_5; // @[router.scala 35:29:@1200.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_0 = Acceptor_io_writer_data_eth_sender_addr_0; // @[router.scala 35:29:@1189.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_1 = Acceptor_io_writer_data_eth_sender_addr_1; // @[router.scala 35:29:@1190.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_2 = Acceptor_io_writer_data_eth_sender_addr_2; // @[router.scala 35:29:@1191.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_3 = Acceptor_io_writer_data_eth_sender_addr_3; // @[router.scala 35:29:@1192.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_4 = Acceptor_io_writer_data_eth_sender_addr_4; // @[router.scala 35:29:@1193.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_5 = Acceptor_io_writer_data_eth_sender_addr_5; // @[router.scala 35:29:@1194.4]
  assign acceptorBridge_io_write_data_eth_pactype = Acceptor_io_writer_data_eth_pactype; // @[router.scala 35:29:@1188.4]
  assign acceptorBridge_io_write_data_eth_vlan = Acceptor_io_writer_data_eth_vlan; // @[router.scala 35:29:@1187.4]
  assign acceptorBridge_io_write_data_arp_htype = Acceptor_io_writer_data_arp_htype; // @[router.scala 35:29:@1186.4]
  assign acceptorBridge_io_write_data_arp_ptype = Acceptor_io_writer_data_arp_ptype; // @[router.scala 35:29:@1185.4]
  assign acceptorBridge_io_write_data_arp_hlen = Acceptor_io_writer_data_arp_hlen; // @[router.scala 35:29:@1184.4]
  assign acceptorBridge_io_write_data_arp_plen = Acceptor_io_writer_data_arp_plen; // @[router.scala 35:29:@1183.4]
  assign acceptorBridge_io_write_data_arp_oper = Acceptor_io_writer_data_arp_oper; // @[router.scala 35:29:@1182.4]
  assign acceptorBridge_io_write_data_arp_sha = Acceptor_io_writer_data_arp_sha; // @[router.scala 35:29:@1181.4]
  assign acceptorBridge_io_write_data_arp_spa = Acceptor_io_writer_data_arp_spa; // @[router.scala 35:29:@1180.4]
  assign acceptorBridge_io_write_data_arp_tha = Acceptor_io_writer_data_arp_tha; // @[router.scala 35:29:@1179.4]
  assign acceptorBridge_io_write_data_arp_tpa = Acceptor_io_writer_data_arp_tpa; // @[router.scala 35:29:@1178.4]
  assign acceptorBridge_io_write_data_ip_version = Acceptor_io_writer_data_ip_version; // @[router.scala 35:29:@1177.4]
  assign acceptorBridge_io_write_data_ip_ihl = Acceptor_io_writer_data_ip_ihl; // @[router.scala 35:29:@1176.4]
  assign acceptorBridge_io_write_data_ip_dscp = Acceptor_io_writer_data_ip_dscp; // @[router.scala 35:29:@1175.4]
  assign acceptorBridge_io_write_data_ip_ecn = Acceptor_io_writer_data_ip_ecn; // @[router.scala 35:29:@1174.4]
  assign acceptorBridge_io_write_data_ip_len = Acceptor_io_writer_data_ip_len; // @[router.scala 35:29:@1173.4]
  assign acceptorBridge_io_write_data_ip_id = Acceptor_io_writer_data_ip_id; // @[router.scala 35:29:@1172.4]
  assign acceptorBridge_io_write_data_ip_flags = Acceptor_io_writer_data_ip_flags; // @[router.scala 35:29:@1171.4]
  assign acceptorBridge_io_write_data_ip_foff = Acceptor_io_writer_data_ip_foff; // @[router.scala 35:29:@1170.4]
  assign acceptorBridge_io_write_data_ip_ttl = Acceptor_io_writer_data_ip_ttl; // @[router.scala 35:29:@1169.4]
  assign acceptorBridge_io_write_data_ip_proto = Acceptor_io_writer_data_ip_proto; // @[router.scala 35:29:@1168.4]
  assign acceptorBridge_io_write_data_ip_chksum = Acceptor_io_writer_data_ip_chksum; // @[router.scala 35:29:@1167.4]
  assign acceptorBridge_io_write_data_ip_src = Acceptor_io_writer_data_ip_src; // @[router.scala 35:29:@1166.4]
  assign acceptorBridge_io_write_data_ip_dest = Acceptor_io_writer_data_ip_dest; // @[router.scala 35:29:@1165.4]
  assign acceptorBridge_io_read_clk = clock; // @[router.scala 23:30:@1147.4]
  assign acceptorBridge_io_read_en = encoder_io_stall == 1'h0; // @[router.scala 43:29:@1214.4]
  assign transmitterBridge_clock = clock; // @[:@1149.4]
  assign transmitterBridge_reset = reset; // @[:@1150.4]
  assign transmitterBridge_io_write_clk = encoder_io_writer_clk; // @[router.scala 26:34:@1151.4 router.scala 53:21:@1321.4]
  assign transmitterBridge_io_write_en = encoder_io_writer_en; // @[router.scala 53:21:@1320.4]
  assign transmitterBridge_io_write_data_data = encoder_io_writer_data_data; // @[router.scala 53:21:@1319.4]
  assign transmitterBridge_io_write_data_last = encoder_io_writer_data_last; // @[router.scala 53:21:@1318.4]
  assign transmitterBridge_io_read_clk = Transmitter_io_reader_clk; // @[router.scala 58:27:@1334.4]
  assign transmitterBridge_io_read_en = Transmitter_io_reader_en; // @[router.scala 58:27:@1333.4]
  assign ipBridge_clock = clock; // @[:@1154.4]
  assign ipBridge_reset = reset; // @[:@1155.4]
  assign ipBridge_io_write_clk = Acceptor_io_ipWriter_clk; // @[router.scala 36:23:@1208.4]
  assign ipBridge_io_write_en = Acceptor_io_ipWriter_en; // @[router.scala 36:23:@1207.4]
  assign ipBridge_io_write_data_data = Acceptor_io_ipWriter_data_data; // @[router.scala 36:23:@1206.4]
  assign ipBridge_io_write_data_last = Acceptor_io_ipWriter_data_last; // @[router.scala 36:23:@1205.4]
  assign ipBridge_io_read_clk = encoder_io_ipReader_clk; // @[router.scala 54:23:@1326.4]
  assign ipBridge_io_read_en = encoder_io_ipReader_en; // @[router.scala 54:23:@1325.4]
  assign Acceptor_clock = io_rx_clk; // @[:@1157.4]
  assign Acceptor_reset = reset; // @[:@1158.4]
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 34:20:@1162.4]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 34:20:@1161.4]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 34:20:@1160.4]
  assign Acceptor_io_writer_full = acceptorBridge_io_write_full; // @[router.scala 35:29:@1164.4]
  assign Acceptor_io_writer_space = acceptorBridge_io_write_space; // @[router.scala 35:29:@1163.4]
  assign Acceptor_io_ipWriter_full = ipBridge_io_write_full; // @[router.scala 36:23:@1204.4]
  assign Acceptor_io_ipWriter_space = ipBridge_io_write_space; // @[router.scala 36:23:@1203.4]
  assign encoder_clock = clock; // @[:@1210.4]
  assign encoder_reset = reset; // @[:@1211.4]
  assign encoder_io_input_eth_dest_addr_0 = acceptorBridge_io_read_data_eth_sender_addr_0; // @[router.scala 50:20:@1308.4]
  assign encoder_io_input_eth_dest_addr_1 = acceptorBridge_io_read_data_eth_sender_addr_1; // @[router.scala 50:20:@1309.4]
  assign encoder_io_input_eth_dest_addr_2 = acceptorBridge_io_read_data_eth_sender_addr_2; // @[router.scala 50:20:@1310.4]
  assign encoder_io_input_eth_dest_addr_3 = acceptorBridge_io_read_data_eth_sender_addr_3; // @[router.scala 50:20:@1311.4]
  assign encoder_io_input_eth_dest_addr_4 = acceptorBridge_io_read_data_eth_sender_addr_4; // @[router.scala 50:20:@1312.4]
  assign encoder_io_input_eth_dest_addr_5 = acceptorBridge_io_read_data_eth_sender_addr_5; // @[router.scala 50:20:@1313.4]
  assign encoder_io_input_eth_sender_addr_0 = 8'hd8; // @[router.scala 50:20:@1302.4]
  assign encoder_io_input_eth_sender_addr_1 = 8'h71; // @[router.scala 50:20:@1303.4]
  assign encoder_io_input_eth_sender_addr_2 = 8'h20; // @[router.scala 50:20:@1304.4]
  assign encoder_io_input_eth_sender_addr_3 = 8'h6a; // @[router.scala 50:20:@1305.4]
  assign encoder_io_input_eth_sender_addr_4 = 8'ha4; // @[router.scala 50:20:@1306.4]
  assign encoder_io_input_eth_sender_addr_5 = 8'hf6; // @[router.scala 50:20:@1307.4]
  assign encoder_io_input_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 50:20:@1301.4]
  assign encoder_io_input_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 50:20:@1300.4]
  assign encoder_io_input_arp_htype = acceptorBridge_io_read_data_arp_htype; // @[router.scala 50:20:@1299.4]
  assign encoder_io_input_arp_ptype = acceptorBridge_io_read_data_arp_ptype; // @[router.scala 50:20:@1298.4]
  assign encoder_io_input_arp_hlen = acceptorBridge_io_read_data_arp_hlen; // @[router.scala 50:20:@1297.4]
  assign encoder_io_input_arp_plen = acceptorBridge_io_read_data_arp_plen; // @[router.scala 50:20:@1296.4]
  assign encoder_io_input_arp_oper = acceptorBridge_io_read_data_arp_oper; // @[router.scala 50:20:@1295.4]
  assign encoder_io_input_arp_sha = acceptorBridge_io_read_data_arp_sha; // @[router.scala 50:20:@1294.4]
  assign encoder_io_input_arp_spa = acceptorBridge_io_read_data_arp_spa; // @[router.scala 50:20:@1293.4]
  assign encoder_io_input_arp_tha = acceptorBridge_io_read_data_arp_tha; // @[router.scala 50:20:@1292.4]
  assign encoder_io_input_arp_tpa = acceptorBridge_io_read_data_arp_tpa; // @[router.scala 50:20:@1291.4]
  assign encoder_io_input_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 50:20:@1290.4]
  assign encoder_io_input_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 50:20:@1289.4]
  assign encoder_io_input_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 50:20:@1288.4]
  assign encoder_io_input_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 50:20:@1287.4]
  assign encoder_io_input_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 50:20:@1286.4]
  assign encoder_io_input_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 50:20:@1285.4]
  assign encoder_io_input_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 50:20:@1284.4]
  assign encoder_io_input_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 50:20:@1283.4]
  assign encoder_io_input_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 50:20:@1282.4]
  assign encoder_io_input_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 50:20:@1281.4]
  assign encoder_io_input_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 50:20:@1280.4]
  assign encoder_io_input_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 50:20:@1279.4]
  assign encoder_io_input_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 50:20:@1278.4]
  assign encoder_io_status = acceptorBridge_io_read_empty ? 2'h0 : 2'h1; // @[router.scala 51:21:@1314.4]
  assign encoder_io_writer_full = transmitterBridge_io_write_full; // @[router.scala 53:21:@1317.4]
  assign encoder_io_writer_space = transmitterBridge_io_write_space; // @[router.scala 53:21:@1316.4]
  assign encoder_io_ipReader_data_data = ipBridge_io_read_data_data; // @[router.scala 54:23:@1324.4]
  assign encoder_io_ipReader_data_last = ipBridge_io_read_data_last; // @[router.scala 54:23:@1323.4]
  assign encoder_io_ipReader_empty = ipBridge_io_read_empty; // @[router.scala 54:23:@1322.4]
  assign Transmitter_clock = io_tx_clk; // @[:@1328.4]
  assign Transmitter_reset = reset; // @[:@1329.4]
  assign Transmitter_io_reader_data_data = transmitterBridge_io_read_data_data; // @[router.scala 58:27:@1332.4]
  assign Transmitter_io_reader_data_last = transmitterBridge_io_read_data_last; // @[router.scala 58:27:@1331.4]
  assign Transmitter_io_reader_empty = transmitterBridge_io_read_empty; // @[router.scala 58:27:@1330.4]
  assign Transmitter_io_tx_tready = io_tx_tready; // @[router.scala 59:23:@1335.4]
endmodule
module Top( // @[:@1340.2]
  input        clock, // @[:@1341.4]
  input        reset, // @[:@1342.4]
  input        io_rx_clk, // @[:@1343.4]
  input        io_tx_clk, // @[:@1343.4]
  input  [7:0] io_rx_tdata, // @[:@1343.4]
  input        io_rx_tvalid, // @[:@1343.4]
  input        io_rx_tlast, // @[:@1343.4]
  output [7:0] io_tx_tdata, // @[:@1343.4]
  output       io_tx_tvalid, // @[:@1343.4]
  output       io_tx_tlast, // @[:@1343.4]
  input        io_tx_tready, // @[:@1343.4]
  output       io_tx_tuser // @[:@1343.4]
);
  wire  router_clock; // @[top.scala 22:22:@1345.4]
  wire  router_reset; // @[top.scala 22:22:@1345.4]
  wire  router_io_rx_clk; // @[top.scala 22:22:@1345.4]
  wire  router_io_tx_clk; // @[top.scala 22:22:@1345.4]
  wire [7:0] router_io_rx_tdata; // @[top.scala 22:22:@1345.4]
  wire  router_io_rx_tvalid; // @[top.scala 22:22:@1345.4]
  wire  router_io_rx_tlast; // @[top.scala 22:22:@1345.4]
  wire  router_io_rx_tready; // @[top.scala 22:22:@1345.4]
  wire [7:0] router_io_tx_tdata; // @[top.scala 22:22:@1345.4]
  wire  router_io_tx_tvalid; // @[top.scala 22:22:@1345.4]
  wire  router_io_tx_tlast; // @[top.scala 22:22:@1345.4]
  wire  router_io_tx_tready; // @[top.scala 22:22:@1345.4]
  Router router ( // @[top.scala 22:22:@1345.4]
    .clock(router_clock),
    .reset(router_reset),
    .io_rx_clk(router_io_rx_clk),
    .io_tx_clk(router_io_tx_clk),
    .io_rx_tdata(router_io_rx_tdata),
    .io_rx_tvalid(router_io_rx_tvalid),
    .io_rx_tlast(router_io_rx_tlast),
    .io_rx_tready(router_io_rx_tready),
    .io_tx_tdata(router_io_tx_tdata),
    .io_tx_tvalid(router_io_tx_tvalid),
    .io_tx_tlast(router_io_tx_tlast),
    .io_tx_tready(router_io_tx_tready)
  );
  assign io_tx_tdata = router_io_tx_tdata; // @[top.scala 32:15:@1354.4]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 34:16:@1356.4]
  assign io_tx_tlast = router_io_tx_tlast; // @[top.scala 33:15:@1355.4]
  assign io_tx_tuser = 1'h0; // @[top.scala 37:15:@1358.4]
  assign router_clock = clock; // @[:@1346.4]
  assign router_reset = reset; // @[:@1347.4]
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 24:20:@1348.4]
  assign router_io_tx_clk = io_tx_clk; // @[top.scala 25:20:@1349.4]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 27:22:@1350.4]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 28:23:@1351.4]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 29:22:@1352.4]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 35:23:@1357.4]
endmodule
