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
module Ctrl( // @[:@785.2]
  input   clock, // @[:@786.4]
  input   reset, // @[:@787.4]
  input   io_forward_stall, // @[:@788.4]
  output  io_forward_pause, // @[:@788.4]
  input   io_encoder_stall, // @[:@788.4]
  output  io_encoder_pause, // @[:@788.4]
  output  io_inputWait // @[:@788.4]
);
  wire  anyStalled; // @[ctrl.scala 27:37:@790.4]
  assign anyStalled = io_forward_stall | io_encoder_stall; // @[ctrl.scala 27:37:@790.4]
  assign io_forward_pause = io_forward_stall | io_encoder_stall; // @[ctrl.scala 28:20:@791.4]
  assign io_encoder_pause = io_forward_stall | io_encoder_stall; // @[ctrl.scala 29:20:@792.4]
  assign io_inputWait = io_forward_stall | io_encoder_stall; // @[ctrl.scala 30:16:@793.4]
endmodule
module LLFT( // @[:@795.2]
  input         clock, // @[:@796.4]
  input         reset, // @[:@797.4]
  input  [7:0]  io_input_eth_dest_addr_0, // @[:@798.4]
  input  [7:0]  io_input_eth_dest_addr_1, // @[:@798.4]
  input  [7:0]  io_input_eth_dest_addr_2, // @[:@798.4]
  input  [7:0]  io_input_eth_dest_addr_3, // @[:@798.4]
  input  [7:0]  io_input_eth_dest_addr_4, // @[:@798.4]
  input  [7:0]  io_input_eth_dest_addr_5, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_0, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_1, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_2, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_3, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_4, // @[:@798.4]
  input  [7:0]  io_input_eth_sender_addr_5, // @[:@798.4]
  input  [1:0]  io_input_eth_pactype, // @[:@798.4]
  input  [2:0]  io_input_eth_vlan, // @[:@798.4]
  input  [15:0] io_input_arp_htype, // @[:@798.4]
  input  [15:0] io_input_arp_ptype, // @[:@798.4]
  input  [7:0]  io_input_arp_hlen, // @[:@798.4]
  input  [7:0]  io_input_arp_plen, // @[:@798.4]
  input  [15:0] io_input_arp_oper, // @[:@798.4]
  input  [47:0] io_input_arp_sha, // @[:@798.4]
  input  [31:0] io_input_arp_spa, // @[:@798.4]
  input  [47:0] io_input_arp_tha, // @[:@798.4]
  input  [31:0] io_input_arp_tpa, // @[:@798.4]
  input  [3:0]  io_input_ip_version, // @[:@798.4]
  input  [3:0]  io_input_ip_ihl, // @[:@798.4]
  input  [5:0]  io_input_ip_dscp, // @[:@798.4]
  input  [1:0]  io_input_ip_ecn, // @[:@798.4]
  input  [15:0] io_input_ip_len, // @[:@798.4]
  input  [15:0] io_input_ip_id, // @[:@798.4]
  input  [2:0]  io_input_ip_flags, // @[:@798.4]
  input  [12:0] io_input_ip_foff, // @[:@798.4]
  input  [7:0]  io_input_ip_ttl, // @[:@798.4]
  input  [7:0]  io_input_ip_proto, // @[:@798.4]
  input  [15:0] io_input_ip_chksum, // @[:@798.4]
  input  [31:0] io_input_ip_src, // @[:@798.4]
  input  [31:0] io_input_ip_dest, // @[:@798.4]
  input  [1:0]  io_status, // @[:@798.4]
  output        io_stall, // @[:@798.4]
  input         io_pause, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_0, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_1, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_2, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_3, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_4, // @[:@798.4]
  output [7:0]  io_output_packet_eth_dest_addr_5, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_0, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_1, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_2, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_3, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_4, // @[:@798.4]
  output [7:0]  io_output_packet_eth_sender_addr_5, // @[:@798.4]
  output [1:0]  io_output_packet_eth_pactype, // @[:@798.4]
  output [2:0]  io_output_packet_eth_vlan, // @[:@798.4]
  output [15:0] io_output_packet_arp_htype, // @[:@798.4]
  output [15:0] io_output_packet_arp_ptype, // @[:@798.4]
  output [7:0]  io_output_packet_arp_hlen, // @[:@798.4]
  output [7:0]  io_output_packet_arp_plen, // @[:@798.4]
  output [15:0] io_output_packet_arp_oper, // @[:@798.4]
  output [47:0] io_output_packet_arp_sha, // @[:@798.4]
  output [31:0] io_output_packet_arp_spa, // @[:@798.4]
  output [47:0] io_output_packet_arp_tha, // @[:@798.4]
  output [31:0] io_output_packet_arp_tpa, // @[:@798.4]
  output [3:0]  io_output_packet_ip_version, // @[:@798.4]
  output [3:0]  io_output_packet_ip_ihl, // @[:@798.4]
  output [5:0]  io_output_packet_ip_dscp, // @[:@798.4]
  output [1:0]  io_output_packet_ip_ecn, // @[:@798.4]
  output [15:0] io_output_packet_ip_len, // @[:@798.4]
  output [15:0] io_output_packet_ip_id, // @[:@798.4]
  output [2:0]  io_output_packet_ip_flags, // @[:@798.4]
  output [12:0] io_output_packet_ip_foff, // @[:@798.4]
  output [7:0]  io_output_packet_ip_ttl, // @[:@798.4]
  output [7:0]  io_output_packet_ip_proto, // @[:@798.4]
  output [15:0] io_output_packet_ip_chksum, // @[:@798.4]
  output [31:0] io_output_packet_ip_src, // @[:@798.4]
  output [31:0] io_output_packet_ip_dest, // @[:@798.4]
  output [2:0]  io_output_lookup_status, // @[:@798.4]
  output [31:0] io_output_lookup_nextHop, // @[:@798.4]
  output [1:0]  io_outputStatus // @[:@798.4]
);
  wire [15:0] _T_248; // @[Cat.scala 30:58:@801.4]
  wire [15:0] _T_249; // @[Cat.scala 30:58:@802.4]
  wire [31:0] _T_250; // @[Cat.scala 30:58:@803.4]
  wire [31:0] _T_251; // @[linear.scala 27:49:@804.4]
  wire [15:0] _T_253; // @[Cat.scala 30:58:@807.4]
  wire [15:0] _T_254; // @[Cat.scala 30:58:@808.4]
  wire [31:0] _T_255; // @[Cat.scala 30:58:@809.4]
  wire [15:0] _T_266; // @[Cat.scala 30:58:@812.4]
  wire [15:0] _T_267; // @[Cat.scala 30:58:@813.4]
  wire [31:0] _T_268; // @[Cat.scala 30:58:@814.4]
  wire [23:0] _T_269; // @[linear.scala 27:49:@815.4]
  wire [15:0] _T_271; // @[Cat.scala 30:58:@818.4]
  wire [15:0] _T_272; // @[Cat.scala 30:58:@819.4]
  wire [31:0] _T_273; // @[Cat.scala 30:58:@820.4]
  reg [1:0] cnt; // @[linear.scala 51:16:@829.4]
  reg [31:0] _RAND_0;
  reg [5:0] shiftCnt; // @[linear.scala 52:21:@830.4]
  reg [31:0] _RAND_1;
  reg [7:0] working_eth_dest_addr_0; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_2;
  reg [7:0] working_eth_dest_addr_1; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_3;
  reg [7:0] working_eth_dest_addr_2; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_4;
  reg [7:0] working_eth_dest_addr_3; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_5;
  reg [7:0] working_eth_dest_addr_4; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_6;
  reg [7:0] working_eth_dest_addr_5; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_7;
  reg [7:0] working_eth_sender_addr_0; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_8;
  reg [7:0] working_eth_sender_addr_1; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_9;
  reg [7:0] working_eth_sender_addr_2; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_10;
  reg [7:0] working_eth_sender_addr_3; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_11;
  reg [7:0] working_eth_sender_addr_4; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_12;
  reg [7:0] working_eth_sender_addr_5; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_13;
  reg [1:0] working_eth_pactype; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_14;
  reg [2:0] working_eth_vlan; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_15;
  reg [15:0] working_arp_htype; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_16;
  reg [15:0] working_arp_ptype; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_17;
  reg [7:0] working_arp_hlen; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_18;
  reg [7:0] working_arp_plen; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_19;
  reg [15:0] working_arp_oper; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_20;
  reg [47:0] working_arp_sha; // @[linear.scala 54:20:@831.4]
  reg [63:0] _RAND_21;
  reg [31:0] working_arp_spa; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_22;
  reg [47:0] working_arp_tha; // @[linear.scala 54:20:@831.4]
  reg [63:0] _RAND_23;
  reg [31:0] working_arp_tpa; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_24;
  reg [3:0] working_ip_version; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_25;
  reg [3:0] working_ip_ihl; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_26;
  reg [5:0] working_ip_dscp; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_27;
  reg [1:0] working_ip_ecn; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_28;
  reg [15:0] working_ip_len; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_29;
  reg [15:0] working_ip_id; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_30;
  reg [2:0] working_ip_flags; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_31;
  reg [12:0] working_ip_foff; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_32;
  reg [7:0] working_ip_ttl; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_33;
  reg [7:0] working_ip_proto; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_34;
  reg [15:0] working_ip_chksum; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_35;
  reg [31:0] working_ip_src; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_36;
  reg [31:0] working_ip_dest; // @[linear.scala 54:20:@831.4]
  reg [31:0] _RAND_37;
  reg [2:0] lookup_status; // @[linear.scala 55:19:@832.4]
  reg [31:0] _RAND_38;
  reg [31:0] lookup_nextHop; // @[linear.scala 55:19:@832.4]
  reg [31:0] _RAND_39;
  reg [31:0] addr; // @[linear.scala 56:17:@833.4]
  reg [31:0] _RAND_40;
  reg  state; // @[linear.scala 63:22:@873.4]
  reg [31:0] _RAND_41;
  wire  _T_341; // @[linear.scala 65:21:@874.4]
  wire  _T_342; // @[Conditional.scala 37:30:@876.4]
  wire  _T_344; // @[linear.scala 69:12:@878.6]
  wire  _T_345; // @[linear.scala 69:35:@879.6]
  wire  _T_346; // @[linear.scala 69:22:@880.6]
  wire  _T_347; // @[linear.scala 71:35:@918.8]
  wire [31:0] _GEN_0; // @[linear.scala 71:53:@919.8]
  wire [1:0] _GEN_1; // @[linear.scala 71:53:@919.8]
  wire [5:0] _GEN_2; // @[linear.scala 71:53:@919.8]
  wire  _GEN_3; // @[linear.scala 71:53:@919.8]
  wire [2:0] _GEN_4; // @[linear.scala 71:53:@919.8]
  wire [31:0] _GEN_5; // @[linear.scala 69:54:@881.6]
  wire [31:0] _GEN_6; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_7; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_8; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_9; // @[linear.scala 69:54:@881.6]
  wire [12:0] _GEN_10; // @[linear.scala 69:54:@881.6]
  wire [2:0] _GEN_11; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_12; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_13; // @[linear.scala 69:54:@881.6]
  wire [1:0] _GEN_14; // @[linear.scala 69:54:@881.6]
  wire [5:0] _GEN_15; // @[linear.scala 69:54:@881.6]
  wire [3:0] _GEN_16; // @[linear.scala 69:54:@881.6]
  wire [3:0] _GEN_17; // @[linear.scala 69:54:@881.6]
  wire [31:0] _GEN_18; // @[linear.scala 69:54:@881.6]
  wire [47:0] _GEN_19; // @[linear.scala 69:54:@881.6]
  wire [31:0] _GEN_20; // @[linear.scala 69:54:@881.6]
  wire [47:0] _GEN_21; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_22; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_23; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_24; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_25; // @[linear.scala 69:54:@881.6]
  wire [15:0] _GEN_26; // @[linear.scala 69:54:@881.6]
  wire [2:0] _GEN_27; // @[linear.scala 69:54:@881.6]
  wire [1:0] _GEN_28; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_29; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_30; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_31; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_32; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_33; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_34; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_35; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_36; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_37; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_38; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_39; // @[linear.scala 69:54:@881.6]
  wire [7:0] _GEN_40; // @[linear.scala 69:54:@881.6]
  wire [31:0] _GEN_41; // @[linear.scala 69:54:@881.6]
  wire [1:0] _GEN_42; // @[linear.scala 69:54:@881.6]
  wire [5:0] _GEN_43; // @[linear.scala 69:54:@881.6]
  wire  _GEN_44; // @[linear.scala 69:54:@881.6]
  wire [2:0] _GEN_45; // @[linear.scala 69:54:@881.6]
  wire  _T_350; // @[Conditional.scala 37:30:@931.6]
  wire  _T_352; // @[linear.scala 83:16:@933.8]
  wire  _T_354; // @[:@939.10]
  wire [31:0] _T_239_prefix; // @[linear.scala 22:24:@800.4 linear.scala 27:21:@805.4]
  wire [31:0] store_0_prefix; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@825.4]
  wire [31:0] _GEN_46; // @[linear.scala 86:28:@940.10]
  wire [5:0] _T_239_len; // @[linear.scala 22:24:@800.4 linear.scala 28:18:@806.4]
  wire [5:0] store_0_len; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@824.4]
  wire [5:0] _GEN_47; // @[linear.scala 86:28:@940.10]
  wire [31:0] _T_239_dest; // @[linear.scala 22:24:@800.4 linear.scala 29:19:@810.4]
  wire [31:0] store_0_dest; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@823.4]
  wire [31:0] _GEN_48; // @[linear.scala 86:28:@940.10]
  wire [31:0] _T_257_prefix; // @[linear.scala 22:24:@811.4 linear.scala 27:21:@816.4]
  wire [31:0] store_1_prefix; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@828.4]
  wire [31:0] _GEN_49; // @[linear.scala 86:28:@940.10]
  wire [5:0] _T_257_len; // @[linear.scala 22:24:@811.4 linear.scala 28:18:@817.4]
  wire [5:0] store_1_len; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@827.4]
  wire [5:0] _GEN_50; // @[linear.scala 86:28:@940.10]
  wire [31:0] _T_257_dest; // @[linear.scala 22:24:@811.4 linear.scala 29:19:@821.4]
  wire [31:0] store_1_dest; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@826.4]
  wire [31:0] _GEN_51; // @[linear.scala 86:28:@940.10]
  wire [5:0] _store_T_354_len; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  wire  _T_355; // @[linear.scala 86:28:@940.10]
  wire [6:0] _T_357; // @[linear.scala 87:30:@942.12]
  wire [6:0] _T_358; // @[linear.scala 87:30:@943.12]
  wire [5:0] _T_359; // @[linear.scala 87:30:@944.12]
  wire [30:0] _T_360; // @[linear.scala 88:22:@946.12]
  wire  _T_362; // @[:@950.12]
  wire [31:0] _GEN_52; // @[linear.scala 90:32:@951.12]
  wire [5:0] _GEN_53; // @[linear.scala 90:32:@951.12]
  wire [31:0] _GEN_54; // @[linear.scala 90:32:@951.12]
  wire [31:0] _GEN_55; // @[linear.scala 90:32:@951.12]
  wire [5:0] _GEN_56; // @[linear.scala 90:32:@951.12]
  wire [31:0] _GEN_57; // @[linear.scala 90:32:@951.12]
  wire [31:0] _store_T_362_prefix; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  wire  _T_363; // @[linear.scala 90:32:@951.12]
  wire  _T_365; // @[:@954.14]
  wire [31:0] _GEN_58; // @[linear.scala 92:26:@955.14]
  wire [5:0] _GEN_59; // @[linear.scala 92:26:@955.14]
  wire [31:0] _GEN_60; // @[linear.scala 92:26:@955.14]
  wire [31:0] _GEN_61; // @[linear.scala 92:26:@955.14]
  wire [5:0] _GEN_62; // @[linear.scala 92:26:@955.14]
  wire [31:0] _GEN_63; // @[linear.scala 92:26:@955.14]
  wire [2:0] _T_367; // @[linear.scala 95:22:@959.14]
  wire [1:0] _T_368; // @[linear.scala 95:22:@960.14]
  wire [2:0] _GEN_64; // @[linear.scala 90:42:@952.12]
  wire [31:0] _store_T_365_dest; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  wire [31:0] _GEN_65; // @[linear.scala 90:42:@952.12]
  wire  _GEN_66; // @[linear.scala 90:42:@952.12]
  wire [1:0] _GEN_67; // @[linear.scala 90:42:@952.12]
  wire [5:0] _GEN_68; // @[linear.scala 86:48:@941.10]
  wire [31:0] _GEN_69; // @[linear.scala 86:48:@941.10]
  wire [2:0] _GEN_70; // @[linear.scala 86:48:@941.10]
  wire [31:0] _GEN_71; // @[linear.scala 86:48:@941.10]
  wire  _GEN_72; // @[linear.scala 86:48:@941.10]
  wire [1:0] _GEN_73; // @[linear.scala 86:48:@941.10]
  wire  _GEN_74; // @[linear.scala 83:36:@934.8]
  wire [2:0] _GEN_75; // @[linear.scala 83:36:@934.8]
  wire [5:0] _GEN_76; // @[linear.scala 83:36:@934.8]
  wire [31:0] _GEN_77; // @[linear.scala 83:36:@934.8]
  wire [31:0] _GEN_78; // @[linear.scala 83:36:@934.8]
  wire [1:0] _GEN_79; // @[linear.scala 83:36:@934.8]
  wire  _GEN_80; // @[Conditional.scala 39:67:@932.6]
  wire [2:0] _GEN_81; // @[Conditional.scala 39:67:@932.6]
  wire [5:0] _GEN_82; // @[Conditional.scala 39:67:@932.6]
  wire [31:0] _GEN_83; // @[Conditional.scala 39:67:@932.6]
  wire [31:0] _GEN_84; // @[Conditional.scala 39:67:@932.6]
  wire [1:0] _GEN_85; // @[Conditional.scala 39:67:@932.6]
  wire [31:0] _GEN_86; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _GEN_87; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_88; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_89; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_90; // @[Conditional.scala 40:58:@877.4]
  wire [12:0] _GEN_91; // @[Conditional.scala 40:58:@877.4]
  wire [2:0] _GEN_92; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_93; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_94; // @[Conditional.scala 40:58:@877.4]
  wire [1:0] _GEN_95; // @[Conditional.scala 40:58:@877.4]
  wire [5:0] _GEN_96; // @[Conditional.scala 40:58:@877.4]
  wire [3:0] _GEN_97; // @[Conditional.scala 40:58:@877.4]
  wire [3:0] _GEN_98; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _GEN_99; // @[Conditional.scala 40:58:@877.4]
  wire [47:0] _GEN_100; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _GEN_101; // @[Conditional.scala 40:58:@877.4]
  wire [47:0] _GEN_102; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_103; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_104; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_105; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_106; // @[Conditional.scala 40:58:@877.4]
  wire [15:0] _GEN_107; // @[Conditional.scala 40:58:@877.4]
  wire [2:0] _GEN_108; // @[Conditional.scala 40:58:@877.4]
  wire [1:0] _GEN_109; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_110; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_111; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_112; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_113; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_114; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_115; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_116; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_117; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_118; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_119; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_120; // @[Conditional.scala 40:58:@877.4]
  wire [7:0] _GEN_121; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _GEN_122; // @[Conditional.scala 40:58:@877.4]
  wire [1:0] _GEN_123; // @[Conditional.scala 40:58:@877.4]
  wire [5:0] _GEN_124; // @[Conditional.scala 40:58:@877.4]
  wire  _GEN_125; // @[Conditional.scala 40:58:@877.4]
  wire [2:0] _GEN_126; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _GEN_127; // @[Conditional.scala 40:58:@877.4]
  wire [31:0] _store_T_354_prefix; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  wire [31:0] _store_T_354_dest; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  wire [5:0] _store_T_362_len; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  wire [31:0] _store_T_362_dest; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  wire [31:0] _store_T_365_prefix; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  wire [5:0] _store_T_365_len; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  assign _T_248 = 16'h103; // @[Cat.scala 30:58:@801.4]
  assign _T_249 = 16'ha00; // @[Cat.scala 30:58:@802.4]
  assign _T_250 = 32'ha000103; // @[Cat.scala 30:58:@803.4]
  assign _T_251 = 32'ha000103; // @[linear.scala 27:49:@804.4]
  assign _T_253 = 16'h1; // @[Cat.scala 30:58:@807.4]
  assign _T_254 = 16'ha02; // @[Cat.scala 30:58:@808.4]
  assign _T_255 = 32'ha020001; // @[Cat.scala 30:58:@809.4]
  assign _T_266 = 16'h100; // @[Cat.scala 30:58:@812.4]
  assign _T_267 = 16'ha00; // @[Cat.scala 30:58:@813.4]
  assign _T_268 = 32'ha000100; // @[Cat.scala 30:58:@814.4]
  assign _T_269 = 24'ha0001; // @[linear.scala 27:49:@815.4]
  assign _T_271 = 16'h1; // @[Cat.scala 30:58:@818.4]
  assign _T_272 = 16'ha01; // @[Cat.scala 30:58:@819.4]
  assign _T_273 = 32'ha010001; // @[Cat.scala 30:58:@820.4]
  assign _T_341 = state; // @[linear.scala 65:21:@874.4]
  assign _T_342 = 1'h0 == state; // @[Conditional.scala 37:30:@876.4]
  assign _T_344 = io_pause == 1'h0; // @[linear.scala 69:12:@878.6]
  assign _T_345 = io_status != 2'h0; // @[linear.scala 69:35:@879.6]
  assign _T_346 = _T_344 & _T_345; // @[linear.scala 69:22:@880.6]
  assign _T_347 = io_input_eth_pactype == 2'h1; // @[linear.scala 71:35:@918.8]
  assign _GEN_0 = _T_347 ? io_input_ip_dest : addr; // @[linear.scala 71:53:@919.8]
  assign _GEN_1 = _T_347 ? 2'h0 : cnt; // @[linear.scala 71:53:@919.8]
  assign _GEN_2 = _T_347 ? 6'h20 : shiftCnt; // @[linear.scala 71:53:@919.8]
  assign _GEN_3 = _T_347 ? 1'h1 : state; // @[linear.scala 71:53:@919.8]
  assign _GEN_4 = _T_347 ? lookup_status : 3'h0; // @[linear.scala 71:53:@919.8]
  assign _GEN_5 = _T_346 ? io_input_ip_dest : working_ip_dest; // @[linear.scala 69:54:@881.6]
  assign _GEN_6 = _T_346 ? io_input_ip_src : working_ip_src; // @[linear.scala 69:54:@881.6]
  assign _GEN_7 = _T_346 ? io_input_ip_chksum : working_ip_chksum; // @[linear.scala 69:54:@881.6]
  assign _GEN_8 = _T_346 ? io_input_ip_proto : working_ip_proto; // @[linear.scala 69:54:@881.6]
  assign _GEN_9 = _T_346 ? io_input_ip_ttl : working_ip_ttl; // @[linear.scala 69:54:@881.6]
  assign _GEN_10 = _T_346 ? io_input_ip_foff : working_ip_foff; // @[linear.scala 69:54:@881.6]
  assign _GEN_11 = _T_346 ? io_input_ip_flags : working_ip_flags; // @[linear.scala 69:54:@881.6]
  assign _GEN_12 = _T_346 ? io_input_ip_id : working_ip_id; // @[linear.scala 69:54:@881.6]
  assign _GEN_13 = _T_346 ? io_input_ip_len : working_ip_len; // @[linear.scala 69:54:@881.6]
  assign _GEN_14 = _T_346 ? io_input_ip_ecn : working_ip_ecn; // @[linear.scala 69:54:@881.6]
  assign _GEN_15 = _T_346 ? io_input_ip_dscp : working_ip_dscp; // @[linear.scala 69:54:@881.6]
  assign _GEN_16 = _T_346 ? io_input_ip_ihl : working_ip_ihl; // @[linear.scala 69:54:@881.6]
  assign _GEN_17 = _T_346 ? io_input_ip_version : working_ip_version; // @[linear.scala 69:54:@881.6]
  assign _GEN_18 = _T_346 ? io_input_arp_tpa : working_arp_tpa; // @[linear.scala 69:54:@881.6]
  assign _GEN_19 = _T_346 ? io_input_arp_tha : working_arp_tha; // @[linear.scala 69:54:@881.6]
  assign _GEN_20 = _T_346 ? io_input_arp_spa : working_arp_spa; // @[linear.scala 69:54:@881.6]
  assign _GEN_21 = _T_346 ? io_input_arp_sha : working_arp_sha; // @[linear.scala 69:54:@881.6]
  assign _GEN_22 = _T_346 ? io_input_arp_oper : working_arp_oper; // @[linear.scala 69:54:@881.6]
  assign _GEN_23 = _T_346 ? io_input_arp_plen : working_arp_plen; // @[linear.scala 69:54:@881.6]
  assign _GEN_24 = _T_346 ? io_input_arp_hlen : working_arp_hlen; // @[linear.scala 69:54:@881.6]
  assign _GEN_25 = _T_346 ? io_input_arp_ptype : working_arp_ptype; // @[linear.scala 69:54:@881.6]
  assign _GEN_26 = _T_346 ? io_input_arp_htype : working_arp_htype; // @[linear.scala 69:54:@881.6]
  assign _GEN_27 = _T_346 ? io_input_eth_vlan : working_eth_vlan; // @[linear.scala 69:54:@881.6]
  assign _GEN_28 = _T_346 ? io_input_eth_pactype : working_eth_pactype; // @[linear.scala 69:54:@881.6]
  assign _GEN_29 = _T_346 ? io_input_eth_sender_addr_0 : working_eth_sender_addr_0; // @[linear.scala 69:54:@881.6]
  assign _GEN_30 = _T_346 ? io_input_eth_sender_addr_1 : working_eth_sender_addr_1; // @[linear.scala 69:54:@881.6]
  assign _GEN_31 = _T_346 ? io_input_eth_sender_addr_2 : working_eth_sender_addr_2; // @[linear.scala 69:54:@881.6]
  assign _GEN_32 = _T_346 ? io_input_eth_sender_addr_3 : working_eth_sender_addr_3; // @[linear.scala 69:54:@881.6]
  assign _GEN_33 = _T_346 ? io_input_eth_sender_addr_4 : working_eth_sender_addr_4; // @[linear.scala 69:54:@881.6]
  assign _GEN_34 = _T_346 ? io_input_eth_sender_addr_5 : working_eth_sender_addr_5; // @[linear.scala 69:54:@881.6]
  assign _GEN_35 = _T_346 ? io_input_eth_dest_addr_0 : working_eth_dest_addr_0; // @[linear.scala 69:54:@881.6]
  assign _GEN_36 = _T_346 ? io_input_eth_dest_addr_1 : working_eth_dest_addr_1; // @[linear.scala 69:54:@881.6]
  assign _GEN_37 = _T_346 ? io_input_eth_dest_addr_2 : working_eth_dest_addr_2; // @[linear.scala 69:54:@881.6]
  assign _GEN_38 = _T_346 ? io_input_eth_dest_addr_3 : working_eth_dest_addr_3; // @[linear.scala 69:54:@881.6]
  assign _GEN_39 = _T_346 ? io_input_eth_dest_addr_4 : working_eth_dest_addr_4; // @[linear.scala 69:54:@881.6]
  assign _GEN_40 = _T_346 ? io_input_eth_dest_addr_5 : working_eth_dest_addr_5; // @[linear.scala 69:54:@881.6]
  assign _GEN_41 = _T_346 ? _GEN_0 : addr; // @[linear.scala 69:54:@881.6]
  assign _GEN_42 = _T_346 ? _GEN_1 : cnt; // @[linear.scala 69:54:@881.6]
  assign _GEN_43 = _T_346 ? _GEN_2 : shiftCnt; // @[linear.scala 69:54:@881.6]
  assign _GEN_44 = _T_346 ? _GEN_3 : state; // @[linear.scala 69:54:@881.6]
  assign _GEN_45 = _T_346 ? _GEN_4 : lookup_status; // @[linear.scala 69:54:@881.6]
  assign _T_350 = state; // @[Conditional.scala 37:30:@931.6]
  assign _T_352 = cnt == 2'h2; // @[linear.scala 83:16:@933.8]
  assign _T_354 = cnt[0]; // @[:@939.10]
  assign _T_239_prefix = 32'ha000103; // @[linear.scala 22:24:@800.4 linear.scala 27:21:@805.4]
  assign store_0_prefix = 32'ha000103; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@825.4]
  assign _GEN_46 = 32'ha000103; // @[linear.scala 86:28:@940.10]
  assign _T_239_len = 6'h20; // @[linear.scala 22:24:@800.4 linear.scala 28:18:@806.4]
  assign store_0_len = 6'h20; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@824.4]
  assign _GEN_47 = 6'h20; // @[linear.scala 86:28:@940.10]
  assign _T_239_dest = 32'ha020001; // @[linear.scala 22:24:@800.4 linear.scala 29:19:@810.4]
  assign store_0_dest = 32'ha020001; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@823.4]
  assign _GEN_48 = 32'ha020001; // @[linear.scala 86:28:@940.10]
  assign _T_257_prefix = 32'ha0001; // @[linear.scala 22:24:@811.4 linear.scala 27:21:@816.4]
  assign store_1_prefix = 32'ha0001; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@828.4]
  assign _GEN_49 = _T_354 ? 32'ha0001 : 32'ha000103; // @[linear.scala 86:28:@940.10]
  assign _T_257_len = 6'h18; // @[linear.scala 22:24:@811.4 linear.scala 28:18:@817.4]
  assign store_1_len = 6'h18; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@827.4]
  assign _GEN_50 = _T_354 ? 6'h18 : 6'h20; // @[linear.scala 86:28:@940.10]
  assign _T_257_dest = 32'ha010001; // @[linear.scala 22:24:@811.4 linear.scala 29:19:@821.4]
  assign store_1_dest = 32'ha010001; // @[linear.scala 46:30:@822.4 linear.scala 46:30:@826.4]
  assign _GEN_51 = _T_354 ? 32'ha010001 : 32'ha020001; // @[linear.scala 86:28:@940.10]
  assign _store_T_354_len = _GEN_50; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  assign _T_355 = shiftCnt != _GEN_50; // @[linear.scala 86:28:@940.10]
  assign _T_357 = shiftCnt - 6'h1; // @[linear.scala 87:30:@942.12]
  assign _T_358 = $unsigned(_T_357); // @[linear.scala 87:30:@943.12]
  assign _T_359 = _T_358[5:0]; // @[linear.scala 87:30:@944.12]
  assign _T_360 = addr[31:1]; // @[linear.scala 88:22:@946.12]
  assign _T_362 = cnt[0]; // @[:@950.12]
  assign _GEN_52 = 32'ha000103; // @[linear.scala 90:32:@951.12]
  assign _GEN_53 = 6'h20; // @[linear.scala 90:32:@951.12]
  assign _GEN_54 = 32'ha020001; // @[linear.scala 90:32:@951.12]
  assign _GEN_55 = _T_354 ? 32'ha0001 : 32'ha000103; // @[linear.scala 90:32:@951.12]
  assign _GEN_56 = _T_354 ? 6'h18 : 6'h20; // @[linear.scala 90:32:@951.12]
  assign _GEN_57 = _T_354 ? 32'ha010001 : 32'ha020001; // @[linear.scala 90:32:@951.12]
  assign _store_T_362_prefix = _GEN_49; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  assign _T_363 = _GEN_49 == addr; // @[linear.scala 90:32:@951.12]
  assign _T_365 = cnt[0]; // @[:@954.14]
  assign _GEN_58 = 32'ha000103; // @[linear.scala 92:26:@955.14]
  assign _GEN_59 = 6'h20; // @[linear.scala 92:26:@955.14]
  assign _GEN_60 = 32'ha020001; // @[linear.scala 92:26:@955.14]
  assign _GEN_61 = _T_354 ? 32'ha0001 : 32'ha000103; // @[linear.scala 92:26:@955.14]
  assign _GEN_62 = _T_354 ? 6'h18 : 6'h20; // @[linear.scala 92:26:@955.14]
  assign _GEN_63 = _T_354 ? 32'ha010001 : 32'ha020001; // @[linear.scala 92:26:@955.14]
  assign _T_367 = cnt + 2'h1; // @[linear.scala 95:22:@959.14]
  assign _T_368 = cnt + 2'h1; // @[linear.scala 95:22:@960.14]
  assign _GEN_64 = _T_363 ? 3'h2 : lookup_status; // @[linear.scala 90:42:@952.12]
  assign _store_T_365_dest = _GEN_51; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  assign _GEN_65 = _T_363 ? _GEN_51 : lookup_nextHop; // @[linear.scala 90:42:@952.12]
  assign _GEN_66 = _T_363 ? 1'h0 : state; // @[linear.scala 90:42:@952.12]
  assign _GEN_67 = _T_363 ? cnt : _T_368; // @[linear.scala 90:42:@952.12]
  assign _GEN_68 = _T_355 ? _T_359 : shiftCnt; // @[linear.scala 86:48:@941.10]
  assign _GEN_69 = _T_355 ? {{1'd0}, _T_360} : addr; // @[linear.scala 86:48:@941.10]
  assign _GEN_70 = _T_355 ? lookup_status : _GEN_64; // @[linear.scala 86:48:@941.10]
  assign _GEN_71 = _T_355 ? lookup_nextHop : _GEN_65; // @[linear.scala 86:48:@941.10]
  assign _GEN_72 = _T_355 ? state : _GEN_66; // @[linear.scala 86:48:@941.10]
  assign _GEN_73 = _T_355 ? cnt : _GEN_67; // @[linear.scala 86:48:@941.10]
  assign _GEN_74 = _T_352 ? 1'h0 : _GEN_72; // @[linear.scala 83:36:@934.8]
  assign _GEN_75 = _T_352 ? 3'h1 : _GEN_70; // @[linear.scala 83:36:@934.8]
  assign _GEN_76 = _T_352 ? shiftCnt : _GEN_68; // @[linear.scala 83:36:@934.8]
  assign _GEN_77 = _T_352 ? addr : _GEN_69; // @[linear.scala 83:36:@934.8]
  assign _GEN_78 = _T_352 ? lookup_nextHop : _GEN_71; // @[linear.scala 83:36:@934.8]
  assign _GEN_79 = _T_352 ? cnt : _GEN_73; // @[linear.scala 83:36:@934.8]
  assign _GEN_80 = state ? _GEN_74 : state; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_81 = state ? _GEN_75 : lookup_status; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_82 = state ? _GEN_76 : shiftCnt; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_83 = state ? _GEN_77 : addr; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_84 = state ? _GEN_78 : lookup_nextHop; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_85 = state ? _GEN_79 : cnt; // @[Conditional.scala 39:67:@932.6]
  assign _GEN_86 = _T_342 ? _GEN_5 : working_ip_dest; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_87 = _T_342 ? _GEN_6 : working_ip_src; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_88 = _T_342 ? _GEN_7 : working_ip_chksum; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_89 = _T_342 ? _GEN_8 : working_ip_proto; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_90 = _T_342 ? _GEN_9 : working_ip_ttl; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_91 = _T_342 ? _GEN_10 : working_ip_foff; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_92 = _T_342 ? _GEN_11 : working_ip_flags; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_93 = _T_342 ? _GEN_12 : working_ip_id; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_94 = _T_342 ? _GEN_13 : working_ip_len; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_95 = _T_342 ? _GEN_14 : working_ip_ecn; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_96 = _T_342 ? _GEN_15 : working_ip_dscp; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_97 = _T_342 ? _GEN_16 : working_ip_ihl; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_98 = _T_342 ? _GEN_17 : working_ip_version; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_99 = _T_342 ? _GEN_18 : working_arp_tpa; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_100 = _T_342 ? _GEN_19 : working_arp_tha; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_101 = _T_342 ? _GEN_20 : working_arp_spa; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_102 = _T_342 ? _GEN_21 : working_arp_sha; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_103 = _T_342 ? _GEN_22 : working_arp_oper; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_104 = _T_342 ? _GEN_23 : working_arp_plen; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_105 = _T_342 ? _GEN_24 : working_arp_hlen; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_106 = _T_342 ? _GEN_25 : working_arp_ptype; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_107 = _T_342 ? _GEN_26 : working_arp_htype; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_108 = _T_342 ? _GEN_27 : working_eth_vlan; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_109 = _T_342 ? _GEN_28 : working_eth_pactype; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_110 = _T_342 ? _GEN_29 : working_eth_sender_addr_0; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_111 = _T_342 ? _GEN_30 : working_eth_sender_addr_1; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_112 = _T_342 ? _GEN_31 : working_eth_sender_addr_2; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_113 = _T_342 ? _GEN_32 : working_eth_sender_addr_3; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_114 = _T_342 ? _GEN_33 : working_eth_sender_addr_4; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_115 = _T_342 ? _GEN_34 : working_eth_sender_addr_5; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_116 = _T_342 ? _GEN_35 : working_eth_dest_addr_0; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_117 = _T_342 ? _GEN_36 : working_eth_dest_addr_1; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_118 = _T_342 ? _GEN_37 : working_eth_dest_addr_2; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_119 = _T_342 ? _GEN_38 : working_eth_dest_addr_3; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_120 = _T_342 ? _GEN_39 : working_eth_dest_addr_4; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_121 = _T_342 ? _GEN_40 : working_eth_dest_addr_5; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_122 = _T_342 ? _GEN_41 : _GEN_83; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_123 = _T_342 ? _GEN_42 : _GEN_85; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_124 = _T_342 ? _GEN_43 : _GEN_82; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_125 = _T_342 ? _GEN_44 : _GEN_80; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_126 = _T_342 ? _GEN_45 : _GEN_81; // @[Conditional.scala 40:58:@877.4]
  assign _GEN_127 = _T_342 ? lookup_nextHop : _GEN_84; // @[Conditional.scala 40:58:@877.4]
  assign _store_T_354_prefix = _GEN_49; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  assign _store_T_354_dest = _GEN_51; // @[linear.scala 86:28:@940.10 linear.scala 86:28:@940.10 linear.scala 86:28:@940.10]
  assign _store_T_362_len = _GEN_50; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  assign _store_T_362_dest = _GEN_51; // @[linear.scala 90:32:@951.12 linear.scala 90:32:@951.12 linear.scala 90:32:@951.12]
  assign _store_T_365_prefix = _GEN_49; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  assign _store_T_365_len = _GEN_50; // @[linear.scala 92:26:@955.14 linear.scala 92:26:@955.14 linear.scala 92:26:@955.14]
  assign io_stall = state; // @[linear.scala 65:12:@875.4]
  assign io_output_packet_eth_dest_addr_0 = working_eth_dest_addr_0; // @[linear.scala 58:20:@864.4]
  assign io_output_packet_eth_dest_addr_1 = working_eth_dest_addr_1; // @[linear.scala 58:20:@865.4]
  assign io_output_packet_eth_dest_addr_2 = working_eth_dest_addr_2; // @[linear.scala 58:20:@866.4]
  assign io_output_packet_eth_dest_addr_3 = working_eth_dest_addr_3; // @[linear.scala 58:20:@867.4]
  assign io_output_packet_eth_dest_addr_4 = working_eth_dest_addr_4; // @[linear.scala 58:20:@868.4]
  assign io_output_packet_eth_dest_addr_5 = working_eth_dest_addr_5; // @[linear.scala 58:20:@869.4]
  assign io_output_packet_eth_sender_addr_0 = working_eth_sender_addr_0; // @[linear.scala 58:20:@858.4]
  assign io_output_packet_eth_sender_addr_1 = working_eth_sender_addr_1; // @[linear.scala 58:20:@859.4]
  assign io_output_packet_eth_sender_addr_2 = working_eth_sender_addr_2; // @[linear.scala 58:20:@860.4]
  assign io_output_packet_eth_sender_addr_3 = working_eth_sender_addr_3; // @[linear.scala 58:20:@861.4]
  assign io_output_packet_eth_sender_addr_4 = working_eth_sender_addr_4; // @[linear.scala 58:20:@862.4]
  assign io_output_packet_eth_sender_addr_5 = working_eth_sender_addr_5; // @[linear.scala 58:20:@863.4]
  assign io_output_packet_eth_pactype = working_eth_pactype; // @[linear.scala 58:20:@857.4]
  assign io_output_packet_eth_vlan = working_eth_vlan; // @[linear.scala 58:20:@856.4]
  assign io_output_packet_arp_htype = working_arp_htype; // @[linear.scala 58:20:@855.4]
  assign io_output_packet_arp_ptype = working_arp_ptype; // @[linear.scala 58:20:@854.4]
  assign io_output_packet_arp_hlen = working_arp_hlen; // @[linear.scala 58:20:@853.4]
  assign io_output_packet_arp_plen = working_arp_plen; // @[linear.scala 58:20:@852.4]
  assign io_output_packet_arp_oper = working_arp_oper; // @[linear.scala 58:20:@851.4]
  assign io_output_packet_arp_sha = working_arp_sha; // @[linear.scala 58:20:@850.4]
  assign io_output_packet_arp_spa = working_arp_spa; // @[linear.scala 58:20:@849.4]
  assign io_output_packet_arp_tha = working_arp_tha; // @[linear.scala 58:20:@848.4]
  assign io_output_packet_arp_tpa = working_arp_tpa; // @[linear.scala 58:20:@847.4]
  assign io_output_packet_ip_version = working_ip_version; // @[linear.scala 58:20:@846.4]
  assign io_output_packet_ip_ihl = working_ip_ihl; // @[linear.scala 58:20:@845.4]
  assign io_output_packet_ip_dscp = working_ip_dscp; // @[linear.scala 58:20:@844.4]
  assign io_output_packet_ip_ecn = working_ip_ecn; // @[linear.scala 58:20:@843.4]
  assign io_output_packet_ip_len = working_ip_len; // @[linear.scala 58:20:@842.4]
  assign io_output_packet_ip_id = working_ip_id; // @[linear.scala 58:20:@841.4]
  assign io_output_packet_ip_flags = working_ip_flags; // @[linear.scala 58:20:@840.4]
  assign io_output_packet_ip_foff = working_ip_foff; // @[linear.scala 58:20:@839.4]
  assign io_output_packet_ip_ttl = working_ip_ttl; // @[linear.scala 58:20:@838.4]
  assign io_output_packet_ip_proto = working_ip_proto; // @[linear.scala 58:20:@837.4]
  assign io_output_packet_ip_chksum = working_ip_chksum; // @[linear.scala 58:20:@836.4]
  assign io_output_packet_ip_src = working_ip_src; // @[linear.scala 58:20:@835.4]
  assign io_output_packet_ip_dest = working_ip_dest; // @[linear.scala 58:20:@834.4]
  assign io_output_lookup_status = lookup_status; // @[linear.scala 59:20:@871.4]
  assign io_output_lookup_nextHop = lookup_nextHop; // @[linear.scala 59:20:@870.4]
  assign io_outputStatus = 2'h1; // @[linear.scala 60:19:@872.4]
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
  cnt = _RAND_0[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  shiftCnt = _RAND_1[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  working_eth_dest_addr_0 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  working_eth_dest_addr_1 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  working_eth_dest_addr_2 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  working_eth_dest_addr_3 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  working_eth_dest_addr_4 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  working_eth_dest_addr_5 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  working_eth_sender_addr_0 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  working_eth_sender_addr_1 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  working_eth_sender_addr_2 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  working_eth_sender_addr_3 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  working_eth_sender_addr_4 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  working_eth_sender_addr_5 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  working_eth_pactype = _RAND_14[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  working_eth_vlan = _RAND_15[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  working_arp_htype = _RAND_16[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  working_arp_ptype = _RAND_17[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  working_arp_hlen = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  working_arp_plen = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  working_arp_oper = _RAND_20[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  working_arp_sha = _RAND_21[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  working_arp_spa = _RAND_22[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{`RANDOM}};
  working_arp_tha = _RAND_23[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  working_arp_tpa = _RAND_24[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  working_ip_version = _RAND_25[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  working_ip_ihl = _RAND_26[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  working_ip_dscp = _RAND_27[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  working_ip_ecn = _RAND_28[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  working_ip_len = _RAND_29[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  working_ip_id = _RAND_30[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  working_ip_flags = _RAND_31[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  working_ip_foff = _RAND_32[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  working_ip_ttl = _RAND_33[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  working_ip_proto = _RAND_34[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  working_ip_chksum = _RAND_35[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  working_ip_src = _RAND_36[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  working_ip_dest = _RAND_37[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  lookup_status = _RAND_38[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  lookup_nextHop = _RAND_39[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  addr = _RAND_40[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  state = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (_T_342) begin
      if (_T_346) begin
        if (_T_347) begin
          cnt <= 2'h0;
        end
      end
    end else begin
      if (state) begin
        if (!(_T_352)) begin
          if (!(_T_355)) begin
            if (!(_T_363)) begin
              cnt <= _T_368;
            end
          end
        end
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        if (_T_347) begin
          shiftCnt <= 6'h20;
        end
      end
    end else begin
      if (state) begin
        if (!(_T_352)) begin
          if (_T_355) begin
            shiftCnt <= _T_359;
          end
        end
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_0 <= io_input_eth_dest_addr_0;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_1 <= io_input_eth_dest_addr_1;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_2 <= io_input_eth_dest_addr_2;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_3 <= io_input_eth_dest_addr_3;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_4 <= io_input_eth_dest_addr_4;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_dest_addr_5 <= io_input_eth_dest_addr_5;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_0 <= io_input_eth_sender_addr_0;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_1 <= io_input_eth_sender_addr_1;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_2 <= io_input_eth_sender_addr_2;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_3 <= io_input_eth_sender_addr_3;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_4 <= io_input_eth_sender_addr_4;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_sender_addr_5 <= io_input_eth_sender_addr_5;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_htype <= io_input_arp_htype;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_ptype <= io_input_arp_ptype;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_hlen <= io_input_arp_hlen;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_plen <= io_input_arp_plen;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_oper <= io_input_arp_oper;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_sha <= io_input_arp_sha;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_spa <= io_input_arp_spa;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_tha <= io_input_arp_tha;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_arp_tpa <= io_input_arp_tpa;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_version <= io_input_ip_version;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_len <= io_input_ip_len;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_id <= io_input_ip_id;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_src <= io_input_ip_src;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        working_ip_dest <= io_input_ip_dest;
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        if (!(_T_347)) begin
          lookup_status <= 3'h0;
        end
      end
    end else begin
      if (state) begin
        if (_T_352) begin
          lookup_status <= 3'h1;
        end else begin
          if (!(_T_355)) begin
            if (_T_363) begin
              lookup_status <= 3'h2;
            end
          end
        end
      end
    end
    if (!(_T_342)) begin
      if (state) begin
        if (!(_T_352)) begin
          if (!(_T_355)) begin
            if (_T_363) begin
              if (_T_354) begin
                lookup_nextHop <= 32'ha010001;
              end else begin
                lookup_nextHop <= 32'ha020001;
              end
            end
          end
        end
      end
    end
    if (_T_342) begin
      if (_T_346) begin
        if (_T_347) begin
          addr <= io_input_ip_dest;
        end
      end
    end else begin
      if (state) begin
        if (!(_T_352)) begin
          if (_T_355) begin
            addr <= {{1'd0}, _T_360};
          end
        end
      end
    end
    if (reset) begin
      state <= 1'h0;
    end else begin
      if (_T_342) begin
        if (_T_346) begin
          if (_T_347) begin
            state <= 1'h1;
          end
        end
      end else begin
        if (state) begin
          if (_T_352) begin
            state <= 1'h0;
          end else begin
            if (!(_T_355)) begin
              if (_T_363) begin
                state <= 1'h0;
              end
            end
          end
        end
      end
    end
  end
endmodule
module Encoder( // @[:@966.2]
  input         clock, // @[:@967.4]
  input         reset, // @[:@968.4]
  input  [7:0]  io_input_eth_dest_addr_0, // @[:@969.4]
  input  [7:0]  io_input_eth_dest_addr_1, // @[:@969.4]
  input  [7:0]  io_input_eth_dest_addr_2, // @[:@969.4]
  input  [7:0]  io_input_eth_dest_addr_3, // @[:@969.4]
  input  [7:0]  io_input_eth_dest_addr_4, // @[:@969.4]
  input  [7:0]  io_input_eth_dest_addr_5, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_0, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_1, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_2, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_3, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_4, // @[:@969.4]
  input  [7:0]  io_input_eth_sender_addr_5, // @[:@969.4]
  input  [1:0]  io_input_eth_pactype, // @[:@969.4]
  input  [2:0]  io_input_eth_vlan, // @[:@969.4]
  input  [15:0] io_input_arp_htype, // @[:@969.4]
  input  [15:0] io_input_arp_ptype, // @[:@969.4]
  input  [7:0]  io_input_arp_hlen, // @[:@969.4]
  input  [7:0]  io_input_arp_plen, // @[:@969.4]
  input  [15:0] io_input_arp_oper, // @[:@969.4]
  input  [47:0] io_input_arp_sha, // @[:@969.4]
  input  [31:0] io_input_arp_spa, // @[:@969.4]
  input  [47:0] io_input_arp_tha, // @[:@969.4]
  input  [31:0] io_input_arp_tpa, // @[:@969.4]
  input  [3:0]  io_input_ip_version, // @[:@969.4]
  input  [3:0]  io_input_ip_ihl, // @[:@969.4]
  input  [5:0]  io_input_ip_dscp, // @[:@969.4]
  input  [1:0]  io_input_ip_ecn, // @[:@969.4]
  input  [15:0] io_input_ip_len, // @[:@969.4]
  input  [15:0] io_input_ip_id, // @[:@969.4]
  input  [2:0]  io_input_ip_flags, // @[:@969.4]
  input  [12:0] io_input_ip_foff, // @[:@969.4]
  input  [7:0]  io_input_ip_ttl, // @[:@969.4]
  input  [7:0]  io_input_ip_proto, // @[:@969.4]
  input  [15:0] io_input_ip_chksum, // @[:@969.4]
  input  [31:0] io_input_ip_src, // @[:@969.4]
  input  [31:0] io_input_ip_dest, // @[:@969.4]
  input  [1:0]  io_status, // @[:@969.4]
  output        io_stall, // @[:@969.4]
  input         io_pause, // @[:@969.4]
  output        io_writer_clk, // @[:@969.4]
  output        io_writer_en, // @[:@969.4]
  output [7:0]  io_writer_data_data, // @[:@969.4]
  output        io_writer_data_last, // @[:@969.4]
  input         io_writer_full, // @[:@969.4]
  input  [15:0] io_writer_space, // @[:@969.4]
  output        io_ipReader_clk, // @[:@969.4]
  output        io_ipReader_en, // @[:@969.4]
  input  [7:0]  io_ipReader_data_data, // @[:@969.4]
  input         io_ipReader_data_last, // @[:@969.4]
  input         io_ipReader_empty // @[:@969.4]
);
  reg  writing; // @[encoder.scala 26:24:@971.4]
  reg [31:0] _RAND_0;
  reg [4:0] cnt; // @[encoder.scala 27:20:@972.4]
  reg [31:0] _RAND_1;
  reg [2:0] state; // @[encoder.scala 30:22:@973.4]
  reg [31:0] _RAND_2;
  reg [7:0] sending_eth_dest_addr_0; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_3;
  reg [7:0] sending_eth_dest_addr_1; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_4;
  reg [7:0] sending_eth_dest_addr_2; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_5;
  reg [7:0] sending_eth_dest_addr_3; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_6;
  reg [7:0] sending_eth_dest_addr_4; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_7;
  reg [7:0] sending_eth_dest_addr_5; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_8;
  reg [7:0] sending_eth_sender_addr_0; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_9;
  reg [7:0] sending_eth_sender_addr_1; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_10;
  reg [7:0] sending_eth_sender_addr_2; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_11;
  reg [7:0] sending_eth_sender_addr_3; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_12;
  reg [7:0] sending_eth_sender_addr_4; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_13;
  reg [7:0] sending_eth_sender_addr_5; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_14;
  reg [1:0] sending_eth_pactype; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_15;
  reg [2:0] sending_eth_vlan; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_16;
  reg [15:0] sending_arp_htype; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_17;
  reg [15:0] sending_arp_ptype; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_18;
  reg [7:0] sending_arp_hlen; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_19;
  reg [7:0] sending_arp_plen; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_20;
  reg [15:0] sending_arp_oper; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_21;
  reg [47:0] sending_arp_sha; // @[encoder.scala 32:20:@974.4]
  reg [63:0] _RAND_22;
  reg [31:0] sending_arp_spa; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_23;
  reg [47:0] sending_arp_tha; // @[encoder.scala 32:20:@974.4]
  reg [63:0] _RAND_24;
  reg [31:0] sending_arp_tpa; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_25;
  reg [3:0] sending_ip_version; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_26;
  reg [3:0] sending_ip_ihl; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_27;
  reg [5:0] sending_ip_dscp; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_28;
  reg [1:0] sending_ip_ecn; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_29;
  reg [15:0] sending_ip_len; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_30;
  reg [15:0] sending_ip_id; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_31;
  reg [2:0] sending_ip_flags; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_32;
  reg [12:0] sending_ip_foff; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_33;
  reg [7:0] sending_ip_ttl; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_34;
  reg [7:0] sending_ip_proto; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_35;
  reg [15:0] sending_ip_chksum; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_36;
  reg [31:0] sending_ip_src; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_37;
  reg [31:0] sending_ip_dest; // @[encoder.scala 32:20:@974.4]
  reg [31:0] _RAND_38;
  wire [15:0] _T_217; // @[eth.scala 14:10:@975.4]
  wire [23:0] _T_218; // @[eth.scala 14:10:@976.4]
  wire [15:0] _T_219; // @[eth.scala 14:10:@977.4]
  wire [23:0] _T_220; // @[eth.scala 14:10:@978.4]
  wire [47:0] _T_221; // @[eth.scala 14:10:@979.4]
  wire [15:0] _T_222; // @[eth.scala 15:12:@980.4]
  wire [23:0] _T_223; // @[eth.scala 15:12:@981.4]
  wire [15:0] _T_224; // @[eth.scala 15:12:@982.4]
  wire [23:0] _T_225; // @[eth.scala 15:12:@983.4]
  wire [47:0] _T_226; // @[eth.scala 15:12:@984.4]
  wire  _T_233; // @[pactype.scala 27:12:@988.4]
  wire  _T_235; // @[pactype.scala 29:19:@993.6]
  wire [15:0] _GEN_0; // @[pactype.scala 29:36:@994.6]
  wire [15:0] _GEN_1; // @[pactype.scala 27:30:@989.4]
  wire [7:0] _T_230; // @[eth.scala 17:18:@985.4 eth.scala 17:18:@986.4]
  wire [15:0] _T_232; // @[pactype.scala 26:22:@987.4 pactype.scala 28:14:@990.6 pactype.scala 30:14:@995.8 pactype.scala 32:14:@998.8]
  wire [23:0] _T_238; // @[Cat.scala 30:58:@1000.4]
  wire [95:0] _T_239; // @[Cat.scala 30:58:@1001.4]
  wire [119:0] _T_240; // @[Cat.scala 30:58:@1002.4]
  wire [143:0] _T_241; // @[Cat.scala 30:58:@1003.4]
  wire [143:0] _T_306; // @[:@1005.4 :@1006.4]
  wire [7:0] header_0; // @[eth.scala 21:44:@1007.4]
  wire [7:0] header_1; // @[eth.scala 21:44:@1009.4]
  wire [7:0] header_2; // @[eth.scala 21:44:@1011.4]
  wire [7:0] header_3; // @[eth.scala 21:44:@1013.4]
  wire [7:0] header_4; // @[eth.scala 21:44:@1015.4]
  wire [7:0] header_5; // @[eth.scala 21:44:@1017.4]
  wire [7:0] header_6; // @[eth.scala 21:44:@1019.4]
  wire [7:0] header_7; // @[eth.scala 21:44:@1021.4]
  wire [7:0] header_8; // @[eth.scala 21:44:@1023.4]
  wire [7:0] header_9; // @[eth.scala 21:44:@1025.4]
  wire [7:0] header_10; // @[eth.scala 21:44:@1027.4]
  wire [7:0] header_11; // @[eth.scala 21:44:@1029.4]
  wire [7:0] header_12; // @[eth.scala 21:44:@1031.4]
  wire [7:0] header_13; // @[eth.scala 21:44:@1033.4]
  wire [7:0] header_14; // @[eth.scala 21:44:@1035.4]
  wire [7:0] header_15; // @[eth.scala 21:44:@1037.4]
  wire [7:0] header_16; // @[eth.scala 21:44:@1039.4]
  wire [7:0] header_17; // @[eth.scala 21:44:@1041.4]
  wire [79:0] _T_325; // @[encoder.scala 34:29:@1043.4]
  wire [79:0] _T_326; // @[encoder.scala 34:29:@1044.4]
  wire [159:0] _T_327; // @[encoder.scala 34:29:@1045.4]
  wire [23:0] _T_328; // @[encoder.scala 34:29:@1046.4]
  wire [31:0] _T_329; // @[encoder.scala 34:29:@1047.4]
  wire [39:0] _T_330; // @[encoder.scala 34:29:@1048.4]
  wire [63:0] _T_331; // @[encoder.scala 34:29:@1049.4]
  wire [223:0] _T_332; // @[encoder.scala 34:29:@1050.4]
  wire [223:0] _T_427; // @[:@1052.4 :@1053.4]
  wire [7:0] arpView_0; // @[encoder.scala 34:44:@1054.4]
  wire [7:0] arpView_1; // @[encoder.scala 34:44:@1056.4]
  wire [7:0] arpView_2; // @[encoder.scala 34:44:@1058.4]
  wire [7:0] arpView_3; // @[encoder.scala 34:44:@1060.4]
  wire [7:0] arpView_4; // @[encoder.scala 34:44:@1062.4]
  wire [7:0] arpView_5; // @[encoder.scala 34:44:@1064.4]
  wire [7:0] arpView_6; // @[encoder.scala 34:44:@1066.4]
  wire [7:0] arpView_7; // @[encoder.scala 34:44:@1068.4]
  wire [7:0] arpView_8; // @[encoder.scala 34:44:@1070.4]
  wire [7:0] arpView_9; // @[encoder.scala 34:44:@1072.4]
  wire [7:0] arpView_10; // @[encoder.scala 34:44:@1074.4]
  wire [7:0] arpView_11; // @[encoder.scala 34:44:@1076.4]
  wire [7:0] arpView_12; // @[encoder.scala 34:44:@1078.4]
  wire [7:0] arpView_13; // @[encoder.scala 34:44:@1080.4]
  wire [7:0] arpView_14; // @[encoder.scala 34:44:@1082.4]
  wire [7:0] arpView_15; // @[encoder.scala 34:44:@1084.4]
  wire [7:0] arpView_16; // @[encoder.scala 34:44:@1086.4]
  wire [7:0] arpView_17; // @[encoder.scala 34:44:@1088.4]
  wire [7:0] arpView_18; // @[encoder.scala 34:44:@1090.4]
  wire [7:0] arpView_19; // @[encoder.scala 34:44:@1092.4]
  wire [7:0] arpView_20; // @[encoder.scala 34:44:@1094.4]
  wire [7:0] arpView_21; // @[encoder.scala 34:44:@1096.4]
  wire [7:0] arpView_22; // @[encoder.scala 34:44:@1098.4]
  wire [7:0] arpView_23; // @[encoder.scala 34:44:@1100.4]
  wire [7:0] arpView_24; // @[encoder.scala 34:44:@1102.4]
  wire [7:0] arpView_25; // @[encoder.scala 34:44:@1104.4]
  wire [7:0] arpView_26; // @[encoder.scala 34:44:@1106.4]
  wire [7:0] arpView_27; // @[encoder.scala 34:44:@1108.4]
  wire [47:0] _T_456; // @[encoder.scala 35:27:@1110.4]
  wire [79:0] _T_457; // @[encoder.scala 35:27:@1111.4]
  wire [20:0] _T_458; // @[encoder.scala 35:27:@1112.4]
  wire [28:0] _T_459; // @[encoder.scala 35:27:@1113.4]
  wire [108:0] _T_460; // @[encoder.scala 35:27:@1114.4]
  wire [31:0] _T_461; // @[encoder.scala 35:27:@1115.4]
  wire [34:0] _T_462; // @[encoder.scala 35:27:@1116.4]
  wire [7:0] _T_463; // @[encoder.scala 35:27:@1117.4]
  wire [7:0] _T_464; // @[encoder.scala 35:27:@1118.4]
  wire [15:0] _T_465; // @[encoder.scala 35:27:@1119.4]
  wire [50:0] _T_466; // @[encoder.scala 35:27:@1120.4]
  wire [159:0] _T_467; // @[encoder.scala 35:27:@1121.4]
  wire [159:0] _T_538; // @[:@1123.4 :@1124.4]
  wire [7:0] ipView_0; // @[encoder.scala 35:42:@1125.4]
  wire [7:0] ipView_1; // @[encoder.scala 35:42:@1127.4]
  wire [7:0] ipView_2; // @[encoder.scala 35:42:@1129.4]
  wire [7:0] ipView_3; // @[encoder.scala 35:42:@1131.4]
  wire [7:0] ipView_4; // @[encoder.scala 35:42:@1133.4]
  wire [7:0] ipView_5; // @[encoder.scala 35:42:@1135.4]
  wire [7:0] ipView_6; // @[encoder.scala 35:42:@1137.4]
  wire [7:0] ipView_7; // @[encoder.scala 35:42:@1139.4]
  wire [7:0] ipView_8; // @[encoder.scala 35:42:@1141.4]
  wire [7:0] ipView_9; // @[encoder.scala 35:42:@1143.4]
  wire [7:0] ipView_10; // @[encoder.scala 35:42:@1145.4]
  wire [7:0] ipView_11; // @[encoder.scala 35:42:@1147.4]
  wire [7:0] ipView_12; // @[encoder.scala 35:42:@1149.4]
  wire [7:0] ipView_13; // @[encoder.scala 35:42:@1151.4]
  wire [7:0] ipView_14; // @[encoder.scala 35:42:@1153.4]
  wire [7:0] ipView_15; // @[encoder.scala 35:42:@1155.4]
  wire [7:0] ipView_16; // @[encoder.scala 35:42:@1157.4]
  wire [7:0] ipView_17; // @[encoder.scala 35:42:@1159.4]
  wire [7:0] ipView_18; // @[encoder.scala 35:42:@1161.4]
  wire [7:0] ipView_19; // @[encoder.scala 35:42:@1163.4]
  wire  _T_565; // @[Conditional.scala 37:30:@1173.4]
  wire  _T_567; // @[encoder.scala 47:12:@1175.6]
  wire  _T_568; // @[encoder.scala 47:35:@1176.6]
  wire  _T_569; // @[encoder.scala 47:22:@1177.6]
  wire [2:0] _GEN_2; // @[encoder.scala 47:54:@1178.6]
  wire [31:0] _GEN_3; // @[encoder.scala 47:54:@1178.6]
  wire [31:0] _GEN_4; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_5; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_6; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_7; // @[encoder.scala 47:54:@1178.6]
  wire [12:0] _GEN_8; // @[encoder.scala 47:54:@1178.6]
  wire [2:0] _GEN_9; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_10; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_11; // @[encoder.scala 47:54:@1178.6]
  wire [1:0] _GEN_12; // @[encoder.scala 47:54:@1178.6]
  wire [5:0] _GEN_13; // @[encoder.scala 47:54:@1178.6]
  wire [3:0] _GEN_14; // @[encoder.scala 47:54:@1178.6]
  wire [3:0] _GEN_15; // @[encoder.scala 47:54:@1178.6]
  wire [31:0] _GEN_16; // @[encoder.scala 47:54:@1178.6]
  wire [47:0] _GEN_17; // @[encoder.scala 47:54:@1178.6]
  wire [31:0] _GEN_18; // @[encoder.scala 47:54:@1178.6]
  wire [47:0] _GEN_19; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_20; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_21; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_22; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_23; // @[encoder.scala 47:54:@1178.6]
  wire [15:0] _GEN_24; // @[encoder.scala 47:54:@1178.6]
  wire [2:0] _GEN_25; // @[encoder.scala 47:54:@1178.6]
  wire [1:0] _GEN_26; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_27; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_28; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_29; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_30; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_31; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_32; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_33; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_34; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_35; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_36; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_37; // @[encoder.scala 47:54:@1178.6]
  wire [7:0] _GEN_38; // @[encoder.scala 47:54:@1178.6]
  wire [4:0] _GEN_39; // @[encoder.scala 47:54:@1178.6]
  wire  _T_571; // @[Conditional.scala 37:30:@1220.6]
  wire [4:0] _T_575; // @[:@1222.8]
  wire [4:0] _T_576; // @[:@1223.8]
  wire [7:0] _T_307; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1008.4]
  wire [7:0] _GEN_40; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_308; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1010.4]
  wire [7:0] _GEN_41; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_309; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1012.4]
  wire [7:0] _GEN_42; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_310; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1014.4]
  wire [7:0] _GEN_43; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_311; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1016.4]
  wire [7:0] _GEN_44; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_312; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1018.4]
  wire [7:0] _GEN_45; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_313; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1020.4]
  wire [7:0] _GEN_46; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_314; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1022.4]
  wire [7:0] _GEN_47; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_315; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1024.4]
  wire [7:0] _GEN_48; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_316; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1026.4]
  wire [7:0] _GEN_49; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_317; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1028.4]
  wire [7:0] _GEN_50; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_318; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1030.4]
  wire [7:0] _GEN_51; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_319; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1032.4]
  wire [7:0] _GEN_52; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_320; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1034.4]
  wire [7:0] _GEN_53; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_321; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1036.4]
  wire [7:0] _GEN_54; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_322; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1038.4]
  wire [7:0] _GEN_55; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_323; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1040.4]
  wire [7:0] _GEN_56; // @[encoder.scala 56:27:@1224.8]
  wire [7:0] _T_324; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1042.4]
  wire [7:0] _GEN_57; // @[encoder.scala 56:27:@1224.8]
  wire  _T_579; // @[encoder.scala 59:12:@1226.8]
  wire  _T_581; // @[encoder.scala 60:18:@1228.10]
  wire [5:0] _T_583; // @[encoder.scala 61:22:@1230.12]
  wire [5:0] _T_584; // @[encoder.scala 61:22:@1231.12]
  wire [4:0] _T_585; // @[encoder.scala 61:22:@1232.12]
  wire  _T_586; // @[encoder.scala 62:41:@1236.12]
  wire [2:0] _GEN_58; // @[encoder.scala 62:58:@1237.12]
  wire [4:0] _GEN_59; // @[encoder.scala 62:58:@1237.12]
  wire [4:0] _GEN_60; // @[encoder.scala 60:25:@1229.10]
  wire [2:0] _GEN_61; // @[encoder.scala 60:25:@1229.10]
  wire [4:0] _GEN_62; // @[encoder.scala 59:29:@1227.8]
  wire [2:0] _GEN_63; // @[encoder.scala 59:29:@1227.8]
  wire  _T_589; // @[Conditional.scala 37:30:@1248.8]
  wire [4:0] _T_593; // @[:@1250.10]
  wire [4:0] _T_594; // @[:@1251.10]
  wire [7:0] _T_428; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1055.4]
  wire [7:0] _GEN_64; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_429; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1057.4]
  wire [7:0] _GEN_65; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_430; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1059.4]
  wire [7:0] _GEN_66; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_431; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1061.4]
  wire [7:0] _GEN_67; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_432; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1063.4]
  wire [7:0] _GEN_68; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_433; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1065.4]
  wire [7:0] _GEN_69; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_434; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1067.4]
  wire [7:0] _GEN_70; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_435; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1069.4]
  wire [7:0] _GEN_71; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_436; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1071.4]
  wire [7:0] _GEN_72; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_437; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1073.4]
  wire [7:0] _GEN_73; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_438; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1075.4]
  wire [7:0] _GEN_74; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_439; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1077.4]
  wire [7:0] _GEN_75; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_440; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1079.4]
  wire [7:0] _GEN_76; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_441; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1081.4]
  wire [7:0] _GEN_77; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_442; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1083.4]
  wire [7:0] _GEN_78; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_443; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1085.4]
  wire [7:0] _GEN_79; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_444; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1087.4]
  wire [7:0] _GEN_80; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_445; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1089.4]
  wire [7:0] _GEN_81; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_446; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1091.4]
  wire [7:0] _GEN_82; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_447; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1093.4]
  wire [7:0] _GEN_83; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_448; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1095.4]
  wire [7:0] _GEN_84; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_449; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1097.4]
  wire [7:0] _GEN_85; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_450; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1099.4]
  wire [7:0] _GEN_86; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_451; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1101.4]
  wire [7:0] _GEN_87; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_452; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1103.4]
  wire [7:0] _GEN_88; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_453; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1105.4]
  wire [7:0] _GEN_89; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_454; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1107.4]
  wire [7:0] _GEN_90; // @[encoder.scala 75:27:@1252.10]
  wire [7:0] _T_455; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1109.4]
  wire [7:0] _GEN_91; // @[encoder.scala 75:27:@1252.10]
  wire  _T_596; // @[encoder.scala 76:34:@1253.10]
  wire  _T_599; // @[encoder.scala 79:12:@1256.10]
  wire  _T_601; // @[encoder.scala 80:18:@1258.12]
  wire [5:0] _T_603; // @[encoder.scala 81:22:@1260.14]
  wire [5:0] _T_604; // @[encoder.scala 81:22:@1261.14]
  wire [4:0] _T_605; // @[encoder.scala 81:22:@1262.14]
  wire [4:0] _GEN_92; // @[encoder.scala 80:25:@1259.12]
  wire [2:0] _GEN_93; // @[encoder.scala 80:25:@1259.12]
  wire [4:0] _GEN_94; // @[encoder.scala 79:29:@1257.10]
  wire [2:0] _GEN_95; // @[encoder.scala 79:29:@1257.10]
  wire  _T_606; // @[Conditional.scala 37:30:@1271.10]
  wire [4:0] _T_610; // @[:@1273.12]
  wire [4:0] _T_611; // @[:@1274.12]
  wire [7:0] _T_539; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1126.4]
  wire [7:0] _GEN_96; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_540; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1128.4]
  wire [7:0] _GEN_97; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_541; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1130.4]
  wire [7:0] _GEN_98; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_542; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1132.4]
  wire [7:0] _GEN_99; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_543; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1134.4]
  wire [7:0] _GEN_100; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_544; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1136.4]
  wire [7:0] _GEN_101; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_545; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1138.4]
  wire [7:0] _GEN_102; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_546; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1140.4]
  wire [7:0] _GEN_103; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_547; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1142.4]
  wire [7:0] _GEN_104; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_548; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1144.4]
  wire [7:0] _GEN_105; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_549; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1146.4]
  wire [7:0] _GEN_106; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_550; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1148.4]
  wire [7:0] _GEN_107; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_551; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1150.4]
  wire [7:0] _GEN_108; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_552; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1152.4]
  wire [7:0] _GEN_109; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_553; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1154.4]
  wire [7:0] _GEN_110; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_554; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1156.4]
  wire [7:0] _GEN_111; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_555; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1158.4]
  wire [7:0] _GEN_112; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_556; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1160.4]
  wire [7:0] _GEN_113; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_557; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1162.4]
  wire [7:0] _GEN_114; // @[encoder.scala 89:27:@1275.12]
  wire [7:0] _T_558; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1164.4]
  wire [7:0] _GEN_115; // @[encoder.scala 89:27:@1275.12]
  wire  _T_615; // @[encoder.scala 93:12:@1278.12]
  wire  _T_617; // @[encoder.scala 94:18:@1280.14]
  wire [5:0] _T_619; // @[encoder.scala 95:22:@1282.16]
  wire [5:0] _T_620; // @[encoder.scala 95:22:@1283.16]
  wire [4:0] _T_621; // @[encoder.scala 95:22:@1284.16]
  wire [4:0] _GEN_116; // @[encoder.scala 94:25:@1281.14]
  wire [2:0] _GEN_117; // @[encoder.scala 94:25:@1281.14]
  wire [4:0] _GEN_118; // @[encoder.scala 93:29:@1279.12]
  wire [2:0] _GEN_119; // @[encoder.scala 93:29:@1279.12]
  wire  _T_622; // @[Conditional.scala 37:30:@1293.12]
  wire  _T_624; // @[encoder.scala 104:23:@1297.14]
  wire  _T_626; // @[encoder.scala 104:47:@1298.14]
  wire  _T_627; // @[encoder.scala 104:43:@1299.14]
  wire  _T_628; // @[encoder.scala 108:34:@1302.14]
  wire [2:0] _GEN_120; // @[encoder.scala 108:47:@1303.14]
  wire  _GEN_121; // @[Conditional.scala 39:67:@1294.12]
  wire [7:0] _T_563; // @[encoder.scala 41:43:@1168.4 encoder.scala 41:43:@1169.4]
  wire [7:0] _GEN_122; // @[Conditional.scala 39:67:@1294.12]
  wire  _GEN_123; // @[Conditional.scala 39:67:@1294.12]
  wire [2:0] _GEN_124; // @[Conditional.scala 39:67:@1294.12]
  wire [7:0] _ipView_T_611; // @[encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12]
  wire [7:0] _GEN_125; // @[Conditional.scala 39:67:@1272.10]
  wire  _GEN_126; // @[Conditional.scala 39:67:@1272.10]
  wire  _GEN_127; // @[Conditional.scala 39:67:@1272.10]
  wire [4:0] _GEN_128; // @[Conditional.scala 39:67:@1272.10]
  wire [2:0] _GEN_129; // @[Conditional.scala 39:67:@1272.10]
  wire  _GEN_130; // @[Conditional.scala 39:67:@1272.10]
  wire [7:0] _arpView_T_594; // @[encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10]
  wire [7:0] _GEN_131; // @[Conditional.scala 39:67:@1249.8]
  wire  _GEN_132; // @[Conditional.scala 39:67:@1249.8]
  wire  _GEN_133; // @[Conditional.scala 39:67:@1249.8]
  wire [4:0] _GEN_134; // @[Conditional.scala 39:67:@1249.8]
  wire [2:0] _GEN_135; // @[Conditional.scala 39:67:@1249.8]
  wire  _GEN_136; // @[Conditional.scala 39:67:@1249.8]
  wire [7:0] _header_T_576; // @[encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8]
  wire [7:0] _GEN_137; // @[Conditional.scala 39:67:@1221.6]
  wire  _GEN_138; // @[Conditional.scala 39:67:@1221.6]
  wire [4:0] _GEN_139; // @[Conditional.scala 39:67:@1221.6]
  wire [2:0] _GEN_140; // @[Conditional.scala 39:67:@1221.6]
  wire  _GEN_141; // @[Conditional.scala 39:67:@1221.6]
  wire  _GEN_142; // @[Conditional.scala 39:67:@1221.6]
  wire [2:0] _GEN_143; // @[Conditional.scala 40:58:@1174.4]
  wire [31:0] _GEN_144; // @[Conditional.scala 40:58:@1174.4]
  wire [31:0] _GEN_145; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_146; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_147; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_148; // @[Conditional.scala 40:58:@1174.4]
  wire [12:0] _GEN_149; // @[Conditional.scala 40:58:@1174.4]
  wire [2:0] _GEN_150; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_151; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_152; // @[Conditional.scala 40:58:@1174.4]
  wire [1:0] _GEN_153; // @[Conditional.scala 40:58:@1174.4]
  wire [5:0] _GEN_154; // @[Conditional.scala 40:58:@1174.4]
  wire [3:0] _GEN_155; // @[Conditional.scala 40:58:@1174.4]
  wire [3:0] _GEN_156; // @[Conditional.scala 40:58:@1174.4]
  wire [31:0] _GEN_157; // @[Conditional.scala 40:58:@1174.4]
  wire [47:0] _GEN_158; // @[Conditional.scala 40:58:@1174.4]
  wire [31:0] _GEN_159; // @[Conditional.scala 40:58:@1174.4]
  wire [47:0] _GEN_160; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_161; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_162; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_163; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_164; // @[Conditional.scala 40:58:@1174.4]
  wire [15:0] _GEN_165; // @[Conditional.scala 40:58:@1174.4]
  wire [2:0] _GEN_166; // @[Conditional.scala 40:58:@1174.4]
  wire [1:0] _GEN_167; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_168; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_169; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_170; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_171; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_172; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_173; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_174; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_175; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_176; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_177; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_178; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_179; // @[Conditional.scala 40:58:@1174.4]
  wire [4:0] _GEN_180; // @[Conditional.scala 40:58:@1174.4]
  wire [7:0] _GEN_181; // @[Conditional.scala 40:58:@1174.4]
  wire  _GEN_182; // @[Conditional.scala 40:58:@1174.4]
  wire  _GEN_183; // @[Conditional.scala 40:58:@1174.4]
  wire  _GEN_184; // @[Conditional.scala 40:58:@1174.4]
  wire  _T_629; // @[encoder.scala 114:21:@1307.4]
  assign _T_217 = {sending_eth_dest_addr_2,sending_eth_dest_addr_1}; // @[eth.scala 14:10:@975.4]
  assign _T_218 = {sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0}; // @[eth.scala 14:10:@976.4]
  assign _T_219 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4}; // @[eth.scala 14:10:@977.4]
  assign _T_220 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3}; // @[eth.scala 14:10:@978.4]
  assign _T_221 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0}; // @[eth.scala 14:10:@979.4]
  assign _T_222 = {sending_eth_sender_addr_2,sending_eth_sender_addr_1}; // @[eth.scala 15:12:@980.4]
  assign _T_223 = {sending_eth_sender_addr_2,sending_eth_sender_addr_1,sending_eth_sender_addr_0}; // @[eth.scala 15:12:@981.4]
  assign _T_224 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4}; // @[eth.scala 15:12:@982.4]
  assign _T_225 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4,sending_eth_sender_addr_3}; // @[eth.scala 15:12:@983.4]
  assign _T_226 = {sending_eth_sender_addr_5,sending_eth_sender_addr_4,sending_eth_sender_addr_3,sending_eth_sender_addr_2,sending_eth_sender_addr_1,sending_eth_sender_addr_0}; // @[eth.scala 15:12:@984.4]
  assign _T_233 = sending_eth_pactype == 2'h1; // @[pactype.scala 27:12:@988.4]
  assign _T_235 = sending_eth_pactype == 2'h2; // @[pactype.scala 29:19:@993.6]
  assign _GEN_0 = _T_235 ? 16'h806 : 16'h0; // @[pactype.scala 29:36:@994.6]
  assign _GEN_1 = _T_233 ? 16'h800 : _GEN_0; // @[pactype.scala 27:30:@989.4]
  assign _T_230 = {{5'd0}, sending_eth_vlan}; // @[eth.scala 17:18:@985.4 eth.scala 17:18:@986.4]
  assign _T_232 = _GEN_1; // @[pactype.scala 26:22:@987.4 pactype.scala 28:14:@990.6 pactype.scala 30:14:@995.8 pactype.scala 32:14:@998.8]
  assign _T_238 = {_T_230,_GEN_1}; // @[Cat.scala 30:58:@1000.4]
  assign _T_239 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_226}; // @[Cat.scala 30:58:@1001.4]
  assign _T_240 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_226,24'h810000}; // @[Cat.scala 30:58:@1002.4]
  assign _T_241 = {sending_eth_dest_addr_5,sending_eth_dest_addr_4,sending_eth_dest_addr_3,sending_eth_dest_addr_2,sending_eth_dest_addr_1,sending_eth_dest_addr_0,_T_226,24'h810000,_T_230,_GEN_1}; // @[Cat.scala 30:58:@1003.4]
  assign _T_306 = _T_241; // @[:@1005.4 :@1006.4]
  assign header_0 = _T_241[7:0]; // @[eth.scala 21:44:@1007.4]
  assign header_1 = _T_241[15:8]; // @[eth.scala 21:44:@1009.4]
  assign header_2 = _T_241[23:16]; // @[eth.scala 21:44:@1011.4]
  assign header_3 = _T_241[31:24]; // @[eth.scala 21:44:@1013.4]
  assign header_4 = _T_241[39:32]; // @[eth.scala 21:44:@1015.4]
  assign header_5 = _T_241[47:40]; // @[eth.scala 21:44:@1017.4]
  assign header_6 = _T_241[55:48]; // @[eth.scala 21:44:@1019.4]
  assign header_7 = _T_241[63:56]; // @[eth.scala 21:44:@1021.4]
  assign header_8 = _T_241[71:64]; // @[eth.scala 21:44:@1023.4]
  assign header_9 = _T_241[79:72]; // @[eth.scala 21:44:@1025.4]
  assign header_10 = _T_241[87:80]; // @[eth.scala 21:44:@1027.4]
  assign header_11 = _T_241[95:88]; // @[eth.scala 21:44:@1029.4]
  assign header_12 = _T_241[103:96]; // @[eth.scala 21:44:@1031.4]
  assign header_13 = _T_241[111:104]; // @[eth.scala 21:44:@1033.4]
  assign header_14 = _T_241[119:112]; // @[eth.scala 21:44:@1035.4]
  assign header_15 = _T_241[127:120]; // @[eth.scala 21:44:@1037.4]
  assign header_16 = _T_241[135:128]; // @[eth.scala 21:44:@1039.4]
  assign header_17 = _T_241[143:136]; // @[eth.scala 21:44:@1041.4]
  assign _T_325 = {sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 34:29:@1043.4]
  assign _T_326 = {sending_arp_sha,sending_arp_spa}; // @[encoder.scala 34:29:@1044.4]
  assign _T_327 = {sending_arp_sha,sending_arp_spa,sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 34:29:@1045.4]
  assign _T_328 = {sending_arp_plen,sending_arp_oper}; // @[encoder.scala 34:29:@1046.4]
  assign _T_329 = {sending_arp_htype,sending_arp_ptype}; // @[encoder.scala 34:29:@1047.4]
  assign _T_330 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen}; // @[encoder.scala 34:29:@1048.4]
  assign _T_331 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen,sending_arp_plen,sending_arp_oper}; // @[encoder.scala 34:29:@1049.4]
  assign _T_332 = {sending_arp_htype,sending_arp_ptype,sending_arp_hlen,sending_arp_plen,sending_arp_oper,sending_arp_sha,sending_arp_spa,sending_arp_tha,sending_arp_tpa}; // @[encoder.scala 34:29:@1050.4]
  assign _T_427 = _T_332; // @[:@1052.4 :@1053.4]
  assign arpView_0 = _T_332[7:0]; // @[encoder.scala 34:44:@1054.4]
  assign arpView_1 = _T_332[15:8]; // @[encoder.scala 34:44:@1056.4]
  assign arpView_2 = _T_332[23:16]; // @[encoder.scala 34:44:@1058.4]
  assign arpView_3 = _T_332[31:24]; // @[encoder.scala 34:44:@1060.4]
  assign arpView_4 = _T_332[39:32]; // @[encoder.scala 34:44:@1062.4]
  assign arpView_5 = _T_332[47:40]; // @[encoder.scala 34:44:@1064.4]
  assign arpView_6 = _T_332[55:48]; // @[encoder.scala 34:44:@1066.4]
  assign arpView_7 = _T_332[63:56]; // @[encoder.scala 34:44:@1068.4]
  assign arpView_8 = _T_332[71:64]; // @[encoder.scala 34:44:@1070.4]
  assign arpView_9 = _T_332[79:72]; // @[encoder.scala 34:44:@1072.4]
  assign arpView_10 = _T_332[87:80]; // @[encoder.scala 34:44:@1074.4]
  assign arpView_11 = _T_332[95:88]; // @[encoder.scala 34:44:@1076.4]
  assign arpView_12 = _T_332[103:96]; // @[encoder.scala 34:44:@1078.4]
  assign arpView_13 = _T_332[111:104]; // @[encoder.scala 34:44:@1080.4]
  assign arpView_14 = _T_332[119:112]; // @[encoder.scala 34:44:@1082.4]
  assign arpView_15 = _T_332[127:120]; // @[encoder.scala 34:44:@1084.4]
  assign arpView_16 = _T_332[135:128]; // @[encoder.scala 34:44:@1086.4]
  assign arpView_17 = _T_332[143:136]; // @[encoder.scala 34:44:@1088.4]
  assign arpView_18 = _T_332[151:144]; // @[encoder.scala 34:44:@1090.4]
  assign arpView_19 = _T_332[159:152]; // @[encoder.scala 34:44:@1092.4]
  assign arpView_20 = _T_332[167:160]; // @[encoder.scala 34:44:@1094.4]
  assign arpView_21 = _T_332[175:168]; // @[encoder.scala 34:44:@1096.4]
  assign arpView_22 = _T_332[183:176]; // @[encoder.scala 34:44:@1098.4]
  assign arpView_23 = _T_332[191:184]; // @[encoder.scala 34:44:@1100.4]
  assign arpView_24 = _T_332[199:192]; // @[encoder.scala 34:44:@1102.4]
  assign arpView_25 = _T_332[207:200]; // @[encoder.scala 34:44:@1104.4]
  assign arpView_26 = _T_332[215:208]; // @[encoder.scala 34:44:@1106.4]
  assign arpView_27 = _T_332[223:216]; // @[encoder.scala 34:44:@1108.4]
  assign _T_456 = {sending_ip_chksum,sending_ip_src}; // @[encoder.scala 35:27:@1110.4]
  assign _T_457 = {sending_ip_chksum,sending_ip_src,sending_ip_dest}; // @[encoder.scala 35:27:@1111.4]
  assign _T_458 = {sending_ip_foff,sending_ip_ttl}; // @[encoder.scala 35:27:@1112.4]
  assign _T_459 = {sending_ip_foff,sending_ip_ttl,sending_ip_proto}; // @[encoder.scala 35:27:@1113.4]
  assign _T_460 = {sending_ip_foff,sending_ip_ttl,sending_ip_proto,sending_ip_chksum,sending_ip_src,sending_ip_dest}; // @[encoder.scala 35:27:@1114.4]
  assign _T_461 = {sending_ip_len,sending_ip_id}; // @[encoder.scala 35:27:@1115.4]
  assign _T_462 = {sending_ip_len,sending_ip_id,sending_ip_flags}; // @[encoder.scala 35:27:@1116.4]
  assign _T_463 = {sending_ip_dscp,sending_ip_ecn}; // @[encoder.scala 35:27:@1117.4]
  assign _T_464 = {sending_ip_version,sending_ip_ihl}; // @[encoder.scala 35:27:@1118.4]
  assign _T_465 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn}; // @[encoder.scala 35:27:@1119.4]
  assign _T_466 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn,sending_ip_len,sending_ip_id,sending_ip_flags}; // @[encoder.scala 35:27:@1120.4]
  assign _T_467 = {sending_ip_version,sending_ip_ihl,sending_ip_dscp,sending_ip_ecn,sending_ip_len,sending_ip_id,sending_ip_flags,_T_460}; // @[encoder.scala 35:27:@1121.4]
  assign _T_538 = _T_467; // @[:@1123.4 :@1124.4]
  assign ipView_0 = _T_467[7:0]; // @[encoder.scala 35:42:@1125.4]
  assign ipView_1 = _T_467[15:8]; // @[encoder.scala 35:42:@1127.4]
  assign ipView_2 = _T_467[23:16]; // @[encoder.scala 35:42:@1129.4]
  assign ipView_3 = _T_467[31:24]; // @[encoder.scala 35:42:@1131.4]
  assign ipView_4 = _T_467[39:32]; // @[encoder.scala 35:42:@1133.4]
  assign ipView_5 = _T_467[47:40]; // @[encoder.scala 35:42:@1135.4]
  assign ipView_6 = _T_467[55:48]; // @[encoder.scala 35:42:@1137.4]
  assign ipView_7 = _T_467[63:56]; // @[encoder.scala 35:42:@1139.4]
  assign ipView_8 = _T_467[71:64]; // @[encoder.scala 35:42:@1141.4]
  assign ipView_9 = _T_467[79:72]; // @[encoder.scala 35:42:@1143.4]
  assign ipView_10 = _T_467[87:80]; // @[encoder.scala 35:42:@1145.4]
  assign ipView_11 = _T_467[95:88]; // @[encoder.scala 35:42:@1147.4]
  assign ipView_12 = _T_467[103:96]; // @[encoder.scala 35:42:@1149.4]
  assign ipView_13 = _T_467[111:104]; // @[encoder.scala 35:42:@1151.4]
  assign ipView_14 = _T_467[119:112]; // @[encoder.scala 35:42:@1153.4]
  assign ipView_15 = _T_467[127:120]; // @[encoder.scala 35:42:@1155.4]
  assign ipView_16 = _T_467[135:128]; // @[encoder.scala 35:42:@1157.4]
  assign ipView_17 = _T_467[143:136]; // @[encoder.scala 35:42:@1159.4]
  assign ipView_18 = _T_467[151:144]; // @[encoder.scala 35:42:@1161.4]
  assign ipView_19 = _T_467[159:152]; // @[encoder.scala 35:42:@1163.4]
  assign _T_565 = 3'h0 == state; // @[Conditional.scala 37:30:@1173.4]
  assign _T_567 = io_pause == 1'h0; // @[encoder.scala 47:12:@1175.6]
  assign _T_568 = 1'h1; // @[encoder.scala 47:35:@1176.6]
  assign _T_569 = _T_567; // @[encoder.scala 47:22:@1177.6]
  assign _GEN_2 = _T_567 ? 3'h1 : state; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_3 = _T_567 ? io_input_ip_dest : sending_ip_dest; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_4 = _T_567 ? io_input_ip_src : sending_ip_src; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_5 = _T_567 ? io_input_ip_chksum : sending_ip_chksum; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_6 = _T_567 ? io_input_ip_proto : sending_ip_proto; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_7 = _T_567 ? io_input_ip_ttl : sending_ip_ttl; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_8 = _T_567 ? io_input_ip_foff : sending_ip_foff; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_9 = _T_567 ? io_input_ip_flags : sending_ip_flags; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_10 = _T_567 ? io_input_ip_id : sending_ip_id; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_11 = _T_567 ? io_input_ip_len : sending_ip_len; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_12 = _T_567 ? io_input_ip_ecn : sending_ip_ecn; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_13 = _T_567 ? io_input_ip_dscp : sending_ip_dscp; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_14 = _T_567 ? io_input_ip_ihl : sending_ip_ihl; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_15 = _T_567 ? io_input_ip_version : sending_ip_version; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_16 = _T_567 ? io_input_arp_tpa : sending_arp_tpa; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_17 = _T_567 ? io_input_arp_tha : sending_arp_tha; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_18 = _T_567 ? io_input_arp_spa : sending_arp_spa; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_19 = _T_567 ? io_input_arp_sha : sending_arp_sha; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_20 = _T_567 ? io_input_arp_oper : sending_arp_oper; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_21 = _T_567 ? io_input_arp_plen : sending_arp_plen; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_22 = _T_567 ? io_input_arp_hlen : sending_arp_hlen; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_23 = _T_567 ? io_input_arp_ptype : sending_arp_ptype; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_24 = _T_567 ? io_input_arp_htype : sending_arp_htype; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_25 = _T_567 ? io_input_eth_vlan : sending_eth_vlan; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_26 = _T_567 ? io_input_eth_pactype : sending_eth_pactype; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_27 = _T_567 ? io_input_eth_sender_addr_0 : sending_eth_sender_addr_0; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_28 = _T_567 ? io_input_eth_sender_addr_1 : sending_eth_sender_addr_1; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_29 = _T_567 ? io_input_eth_sender_addr_2 : sending_eth_sender_addr_2; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_30 = _T_567 ? io_input_eth_sender_addr_3 : sending_eth_sender_addr_3; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_31 = _T_567 ? io_input_eth_sender_addr_4 : sending_eth_sender_addr_4; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_32 = _T_567 ? io_input_eth_sender_addr_5 : sending_eth_sender_addr_5; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_33 = _T_567 ? io_input_eth_dest_addr_0 : sending_eth_dest_addr_0; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_34 = _T_567 ? io_input_eth_dest_addr_1 : sending_eth_dest_addr_1; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_35 = _T_567 ? io_input_eth_dest_addr_2 : sending_eth_dest_addr_2; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_36 = _T_567 ? io_input_eth_dest_addr_3 : sending_eth_dest_addr_3; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_37 = _T_567 ? io_input_eth_dest_addr_4 : sending_eth_dest_addr_4; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_38 = _T_567 ? io_input_eth_dest_addr_5 : sending_eth_dest_addr_5; // @[encoder.scala 47:54:@1178.6]
  assign _GEN_39 = _T_567 ? 5'h11 : cnt; // @[encoder.scala 47:54:@1178.6]
  assign _T_571 = 3'h1 == state; // @[Conditional.scala 37:30:@1220.6]
  assign _T_575 = cnt; // @[:@1222.8]
  assign _T_576 = cnt; // @[:@1223.8]
  assign _T_307 = header_0; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1008.4]
  assign _GEN_40 = header_0; // @[encoder.scala 56:27:@1224.8]
  assign _T_308 = header_1; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1010.4]
  assign _GEN_41 = 5'h1 == cnt ? header_1 : header_0; // @[encoder.scala 56:27:@1224.8]
  assign _T_309 = header_2; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1012.4]
  assign _GEN_42 = 5'h2 == cnt ? header_2 : _GEN_41; // @[encoder.scala 56:27:@1224.8]
  assign _T_310 = header_3; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1014.4]
  assign _GEN_43 = 5'h3 == cnt ? header_3 : _GEN_42; // @[encoder.scala 56:27:@1224.8]
  assign _T_311 = header_4; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1016.4]
  assign _GEN_44 = 5'h4 == cnt ? header_4 : _GEN_43; // @[encoder.scala 56:27:@1224.8]
  assign _T_312 = header_5; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1018.4]
  assign _GEN_45 = 5'h5 == cnt ? header_5 : _GEN_44; // @[encoder.scala 56:27:@1224.8]
  assign _T_313 = header_6; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1020.4]
  assign _GEN_46 = 5'h6 == cnt ? header_6 : _GEN_45; // @[encoder.scala 56:27:@1224.8]
  assign _T_314 = header_7; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1022.4]
  assign _GEN_47 = 5'h7 == cnt ? header_7 : _GEN_46; // @[encoder.scala 56:27:@1224.8]
  assign _T_315 = header_8; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1024.4]
  assign _GEN_48 = 5'h8 == cnt ? header_8 : _GEN_47; // @[encoder.scala 56:27:@1224.8]
  assign _T_316 = header_9; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1026.4]
  assign _GEN_49 = 5'h9 == cnt ? header_9 : _GEN_48; // @[encoder.scala 56:27:@1224.8]
  assign _T_317 = header_10; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1028.4]
  assign _GEN_50 = 5'ha == cnt ? header_10 : _GEN_49; // @[encoder.scala 56:27:@1224.8]
  assign _T_318 = header_11; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1030.4]
  assign _GEN_51 = 5'hb == cnt ? header_11 : _GEN_50; // @[encoder.scala 56:27:@1224.8]
  assign _T_319 = header_12; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1032.4]
  assign _GEN_52 = 5'hc == cnt ? header_12 : _GEN_51; // @[encoder.scala 56:27:@1224.8]
  assign _T_320 = header_13; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1034.4]
  assign _GEN_53 = 5'hd == cnt ? header_13 : _GEN_52; // @[encoder.scala 56:27:@1224.8]
  assign _T_321 = header_14; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1036.4]
  assign _GEN_54 = 5'he == cnt ? header_14 : _GEN_53; // @[encoder.scala 56:27:@1224.8]
  assign _T_322 = header_15; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1038.4]
  assign _GEN_55 = 5'hf == cnt ? header_15 : _GEN_54; // @[encoder.scala 56:27:@1224.8]
  assign _T_323 = header_16; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1040.4]
  assign _GEN_56 = 5'h10 == cnt ? header_16 : _GEN_55; // @[encoder.scala 56:27:@1224.8]
  assign _T_324 = header_17; // @[eth.scala 21:44:@1004.4 eth.scala 21:44:@1042.4]
  assign _GEN_57 = 5'h11 == cnt ? header_17 : _GEN_56; // @[encoder.scala 56:27:@1224.8]
  assign _T_579 = io_writer_full == 1'h0; // @[encoder.scala 59:12:@1226.8]
  assign _T_581 = cnt > 5'h0; // @[encoder.scala 60:18:@1228.10]
  assign _T_583 = cnt - 5'h1; // @[encoder.scala 61:22:@1230.12]
  assign _T_584 = $unsigned(_T_583); // @[encoder.scala 61:22:@1231.12]
  assign _T_585 = _T_584[4:0]; // @[encoder.scala 61:22:@1232.12]
  assign _T_586 = sending_eth_pactype == 2'h2; // @[encoder.scala 62:41:@1236.12]
  assign _GEN_58 = _T_235 ? 3'h2 : 3'h3; // @[encoder.scala 62:58:@1237.12]
  assign _GEN_59 = _T_235 ? 5'h1b : 5'h13; // @[encoder.scala 62:58:@1237.12]
  assign _GEN_60 = _T_581 ? _T_585 : _GEN_59; // @[encoder.scala 60:25:@1229.10]
  assign _GEN_61 = _T_581 ? state : _GEN_58; // @[encoder.scala 60:25:@1229.10]
  assign _GEN_62 = _T_579 ? _GEN_60 : cnt; // @[encoder.scala 59:29:@1227.8]
  assign _GEN_63 = _T_579 ? _GEN_61 : state; // @[encoder.scala 59:29:@1227.8]
  assign _T_589 = 3'h2 == state; // @[Conditional.scala 37:30:@1248.8]
  assign _T_593 = cnt; // @[:@1250.10]
  assign _T_594 = cnt; // @[:@1251.10]
  assign _T_428 = arpView_0; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1055.4]
  assign _GEN_64 = arpView_0; // @[encoder.scala 75:27:@1252.10]
  assign _T_429 = arpView_1; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1057.4]
  assign _GEN_65 = 5'h1 == cnt ? arpView_1 : arpView_0; // @[encoder.scala 75:27:@1252.10]
  assign _T_430 = arpView_2; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1059.4]
  assign _GEN_66 = 5'h2 == cnt ? arpView_2 : _GEN_65; // @[encoder.scala 75:27:@1252.10]
  assign _T_431 = arpView_3; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1061.4]
  assign _GEN_67 = 5'h3 == cnt ? arpView_3 : _GEN_66; // @[encoder.scala 75:27:@1252.10]
  assign _T_432 = arpView_4; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1063.4]
  assign _GEN_68 = 5'h4 == cnt ? arpView_4 : _GEN_67; // @[encoder.scala 75:27:@1252.10]
  assign _T_433 = arpView_5; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1065.4]
  assign _GEN_69 = 5'h5 == cnt ? arpView_5 : _GEN_68; // @[encoder.scala 75:27:@1252.10]
  assign _T_434 = arpView_6; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1067.4]
  assign _GEN_70 = 5'h6 == cnt ? arpView_6 : _GEN_69; // @[encoder.scala 75:27:@1252.10]
  assign _T_435 = arpView_7; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1069.4]
  assign _GEN_71 = 5'h7 == cnt ? arpView_7 : _GEN_70; // @[encoder.scala 75:27:@1252.10]
  assign _T_436 = arpView_8; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1071.4]
  assign _GEN_72 = 5'h8 == cnt ? arpView_8 : _GEN_71; // @[encoder.scala 75:27:@1252.10]
  assign _T_437 = arpView_9; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1073.4]
  assign _GEN_73 = 5'h9 == cnt ? arpView_9 : _GEN_72; // @[encoder.scala 75:27:@1252.10]
  assign _T_438 = arpView_10; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1075.4]
  assign _GEN_74 = 5'ha == cnt ? arpView_10 : _GEN_73; // @[encoder.scala 75:27:@1252.10]
  assign _T_439 = arpView_11; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1077.4]
  assign _GEN_75 = 5'hb == cnt ? arpView_11 : _GEN_74; // @[encoder.scala 75:27:@1252.10]
  assign _T_440 = arpView_12; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1079.4]
  assign _GEN_76 = 5'hc == cnt ? arpView_12 : _GEN_75; // @[encoder.scala 75:27:@1252.10]
  assign _T_441 = arpView_13; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1081.4]
  assign _GEN_77 = 5'hd == cnt ? arpView_13 : _GEN_76; // @[encoder.scala 75:27:@1252.10]
  assign _T_442 = arpView_14; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1083.4]
  assign _GEN_78 = 5'he == cnt ? arpView_14 : _GEN_77; // @[encoder.scala 75:27:@1252.10]
  assign _T_443 = arpView_15; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1085.4]
  assign _GEN_79 = 5'hf == cnt ? arpView_15 : _GEN_78; // @[encoder.scala 75:27:@1252.10]
  assign _T_444 = arpView_16; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1087.4]
  assign _GEN_80 = 5'h10 == cnt ? arpView_16 : _GEN_79; // @[encoder.scala 75:27:@1252.10]
  assign _T_445 = arpView_17; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1089.4]
  assign _GEN_81 = 5'h11 == cnt ? arpView_17 : _GEN_80; // @[encoder.scala 75:27:@1252.10]
  assign _T_446 = arpView_18; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1091.4]
  assign _GEN_82 = 5'h12 == cnt ? arpView_18 : _GEN_81; // @[encoder.scala 75:27:@1252.10]
  assign _T_447 = arpView_19; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1093.4]
  assign _GEN_83 = 5'h13 == cnt ? arpView_19 : _GEN_82; // @[encoder.scala 75:27:@1252.10]
  assign _T_448 = arpView_20; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1095.4]
  assign _GEN_84 = 5'h14 == cnt ? arpView_20 : _GEN_83; // @[encoder.scala 75:27:@1252.10]
  assign _T_449 = arpView_21; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1097.4]
  assign _GEN_85 = 5'h15 == cnt ? arpView_21 : _GEN_84; // @[encoder.scala 75:27:@1252.10]
  assign _T_450 = arpView_22; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1099.4]
  assign _GEN_86 = 5'h16 == cnt ? arpView_22 : _GEN_85; // @[encoder.scala 75:27:@1252.10]
  assign _T_451 = arpView_23; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1101.4]
  assign _GEN_87 = 5'h17 == cnt ? arpView_23 : _GEN_86; // @[encoder.scala 75:27:@1252.10]
  assign _T_452 = arpView_24; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1103.4]
  assign _GEN_88 = 5'h18 == cnt ? arpView_24 : _GEN_87; // @[encoder.scala 75:27:@1252.10]
  assign _T_453 = arpView_25; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1105.4]
  assign _GEN_89 = 5'h19 == cnt ? arpView_25 : _GEN_88; // @[encoder.scala 75:27:@1252.10]
  assign _T_454 = arpView_26; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1107.4]
  assign _GEN_90 = 5'h1a == cnt ? arpView_26 : _GEN_89; // @[encoder.scala 75:27:@1252.10]
  assign _T_455 = arpView_27; // @[encoder.scala 34:44:@1051.4 encoder.scala 34:44:@1109.4]
  assign _GEN_91 = 5'h1b == cnt ? arpView_27 : _GEN_90; // @[encoder.scala 75:27:@1252.10]
  assign _T_596 = cnt == 5'h0; // @[encoder.scala 76:34:@1253.10]
  assign _T_599 = io_writer_full == 1'h0; // @[encoder.scala 79:12:@1256.10]
  assign _T_601 = cnt > 5'h0; // @[encoder.scala 80:18:@1258.12]
  assign _T_603 = cnt - 5'h1; // @[encoder.scala 81:22:@1260.14]
  assign _T_604 = $unsigned(_T_583); // @[encoder.scala 81:22:@1261.14]
  assign _T_605 = _T_584[4:0]; // @[encoder.scala 81:22:@1262.14]
  assign _GEN_92 = _T_581 ? _T_585 : cnt; // @[encoder.scala 80:25:@1259.12]
  assign _GEN_93 = _T_581 ? state : 3'h0; // @[encoder.scala 80:25:@1259.12]
  assign _GEN_94 = _T_579 ? _GEN_92 : cnt; // @[encoder.scala 79:29:@1257.10]
  assign _GEN_95 = _T_579 ? _GEN_93 : state; // @[encoder.scala 79:29:@1257.10]
  assign _T_606 = 3'h3 == state; // @[Conditional.scala 37:30:@1271.10]
  assign _T_610 = cnt; // @[:@1273.12]
  assign _T_611 = cnt; // @[:@1274.12]
  assign _T_539 = ipView_0; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1126.4]
  assign _GEN_96 = ipView_0; // @[encoder.scala 89:27:@1275.12]
  assign _T_540 = ipView_1; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1128.4]
  assign _GEN_97 = 5'h1 == cnt ? ipView_1 : ipView_0; // @[encoder.scala 89:27:@1275.12]
  assign _T_541 = ipView_2; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1130.4]
  assign _GEN_98 = 5'h2 == cnt ? ipView_2 : _GEN_97; // @[encoder.scala 89:27:@1275.12]
  assign _T_542 = ipView_3; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1132.4]
  assign _GEN_99 = 5'h3 == cnt ? ipView_3 : _GEN_98; // @[encoder.scala 89:27:@1275.12]
  assign _T_543 = ipView_4; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1134.4]
  assign _GEN_100 = 5'h4 == cnt ? ipView_4 : _GEN_99; // @[encoder.scala 89:27:@1275.12]
  assign _T_544 = ipView_5; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1136.4]
  assign _GEN_101 = 5'h5 == cnt ? ipView_5 : _GEN_100; // @[encoder.scala 89:27:@1275.12]
  assign _T_545 = ipView_6; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1138.4]
  assign _GEN_102 = 5'h6 == cnt ? ipView_6 : _GEN_101; // @[encoder.scala 89:27:@1275.12]
  assign _T_546 = ipView_7; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1140.4]
  assign _GEN_103 = 5'h7 == cnt ? ipView_7 : _GEN_102; // @[encoder.scala 89:27:@1275.12]
  assign _T_547 = ipView_8; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1142.4]
  assign _GEN_104 = 5'h8 == cnt ? ipView_8 : _GEN_103; // @[encoder.scala 89:27:@1275.12]
  assign _T_548 = ipView_9; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1144.4]
  assign _GEN_105 = 5'h9 == cnt ? ipView_9 : _GEN_104; // @[encoder.scala 89:27:@1275.12]
  assign _T_549 = ipView_10; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1146.4]
  assign _GEN_106 = 5'ha == cnt ? ipView_10 : _GEN_105; // @[encoder.scala 89:27:@1275.12]
  assign _T_550 = ipView_11; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1148.4]
  assign _GEN_107 = 5'hb == cnt ? ipView_11 : _GEN_106; // @[encoder.scala 89:27:@1275.12]
  assign _T_551 = ipView_12; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1150.4]
  assign _GEN_108 = 5'hc == cnt ? ipView_12 : _GEN_107; // @[encoder.scala 89:27:@1275.12]
  assign _T_552 = ipView_13; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1152.4]
  assign _GEN_109 = 5'hd == cnt ? ipView_13 : _GEN_108; // @[encoder.scala 89:27:@1275.12]
  assign _T_553 = ipView_14; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1154.4]
  assign _GEN_110 = 5'he == cnt ? ipView_14 : _GEN_109; // @[encoder.scala 89:27:@1275.12]
  assign _T_554 = ipView_15; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1156.4]
  assign _GEN_111 = 5'hf == cnt ? ipView_15 : _GEN_110; // @[encoder.scala 89:27:@1275.12]
  assign _T_555 = ipView_16; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1158.4]
  assign _GEN_112 = 5'h10 == cnt ? ipView_16 : _GEN_111; // @[encoder.scala 89:27:@1275.12]
  assign _T_556 = ipView_17; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1160.4]
  assign _GEN_113 = 5'h11 == cnt ? ipView_17 : _GEN_112; // @[encoder.scala 89:27:@1275.12]
  assign _T_557 = ipView_18; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1162.4]
  assign _GEN_114 = 5'h12 == cnt ? ipView_18 : _GEN_113; // @[encoder.scala 89:27:@1275.12]
  assign _T_558 = ipView_19; // @[encoder.scala 35:42:@1122.4 encoder.scala 35:42:@1164.4]
  assign _GEN_115 = 5'h13 == cnt ? ipView_19 : _GEN_114; // @[encoder.scala 89:27:@1275.12]
  assign _T_615 = io_writer_full == 1'h0; // @[encoder.scala 93:12:@1278.12]
  assign _T_617 = cnt > 5'h0; // @[encoder.scala 94:18:@1280.14]
  assign _T_619 = cnt - 5'h1; // @[encoder.scala 95:22:@1282.16]
  assign _T_620 = $unsigned(_T_583); // @[encoder.scala 95:22:@1283.16]
  assign _T_621 = _T_584[4:0]; // @[encoder.scala 95:22:@1284.16]
  assign _GEN_116 = _T_581 ? _T_585 : cnt; // @[encoder.scala 94:25:@1281.14]
  assign _GEN_117 = _T_581 ? state : 3'h4; // @[encoder.scala 94:25:@1281.14]
  assign _GEN_118 = _T_579 ? _GEN_92 : cnt; // @[encoder.scala 93:29:@1279.12]
  assign _GEN_119 = _T_579 ? _GEN_117 : state; // @[encoder.scala 93:29:@1279.12]
  assign _T_622 = 3'h4 == state; // @[Conditional.scala 37:30:@1293.12]
  assign _T_624 = io_ipReader_empty == 1'h0; // @[encoder.scala 104:23:@1297.14]
  assign _T_626 = io_writer_full == 1'h0; // @[encoder.scala 104:47:@1298.14]
  assign _T_627 = _T_624 & _T_579; // @[encoder.scala 104:43:@1299.14]
  assign _T_628 = io_ipReader_data_last & _T_627; // @[encoder.scala 108:34:@1302.14]
  assign _GEN_120 = _T_628 ? 3'h0 : state; // @[encoder.scala 108:47:@1303.14]
  assign _GEN_121 = _T_622 ? io_ipReader_data_last : 1'h0; // @[Conditional.scala 39:67:@1294.12]
  assign _T_563 = 8'h0; // @[encoder.scala 41:43:@1168.4 encoder.scala 41:43:@1169.4]
  assign _GEN_122 = _T_622 ? io_ipReader_data_data : 8'h0; // @[Conditional.scala 39:67:@1294.12]
  assign _GEN_123 = _T_622 ? _T_627 : 1'h0; // @[Conditional.scala 39:67:@1294.12]
  assign _GEN_124 = _T_622 ? _GEN_120 : state; // @[Conditional.scala 39:67:@1294.12]
  assign _ipView_T_611 = _GEN_115; // @[encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12 encoder.scala 89:27:@1275.12]
  assign _GEN_125 = _T_606 ? _GEN_115 : _GEN_122; // @[Conditional.scala 39:67:@1272.10]
  assign _GEN_126 = _T_606 ? 1'h0 : _GEN_121; // @[Conditional.scala 39:67:@1272.10]
  assign _GEN_127 = _T_606 ? 1'h1 : _GEN_123; // @[Conditional.scala 39:67:@1272.10]
  assign _GEN_128 = _T_606 ? _GEN_94 : cnt; // @[Conditional.scala 39:67:@1272.10]
  assign _GEN_129 = _T_606 ? _GEN_119 : _GEN_124; // @[Conditional.scala 39:67:@1272.10]
  assign _GEN_130 = _T_606 ? 1'h0 : _GEN_123; // @[Conditional.scala 39:67:@1272.10]
  assign _arpView_T_594 = _GEN_91; // @[encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10 encoder.scala 75:27:@1252.10]
  assign _GEN_131 = _T_589 ? _GEN_91 : _GEN_125; // @[Conditional.scala 39:67:@1249.8]
  assign _GEN_132 = _T_589 ? _T_596 : _GEN_126; // @[Conditional.scala 39:67:@1249.8]
  assign _GEN_133 = _T_589 ? 1'h1 : _GEN_127; // @[Conditional.scala 39:67:@1249.8]
  assign _GEN_134 = _T_589 ? _GEN_94 : _GEN_128; // @[Conditional.scala 39:67:@1249.8]
  assign _GEN_135 = _T_589 ? _GEN_95 : _GEN_129; // @[Conditional.scala 39:67:@1249.8]
  assign _GEN_136 = _T_589 ? 1'h0 : _GEN_130; // @[Conditional.scala 39:67:@1249.8]
  assign _header_T_576 = _GEN_57; // @[encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8 encoder.scala 56:27:@1224.8]
  assign _GEN_137 = _T_571 ? _GEN_57 : _GEN_131; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_138 = _T_571 ? 1'h1 : _GEN_133; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_139 = _T_571 ? _GEN_62 : _GEN_134; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_140 = _T_571 ? _GEN_63 : _GEN_135; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_141 = _T_571 ? 1'h0 : _GEN_132; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_142 = _T_571 ? 1'h0 : _GEN_136; // @[Conditional.scala 39:67:@1221.6]
  assign _GEN_143 = _T_565 ? _GEN_2 : _GEN_140; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_144 = _T_565 ? _GEN_3 : sending_ip_dest; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_145 = _T_565 ? _GEN_4 : sending_ip_src; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_146 = _T_565 ? _GEN_5 : sending_ip_chksum; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_147 = _T_565 ? _GEN_6 : sending_ip_proto; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_148 = _T_565 ? _GEN_7 : sending_ip_ttl; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_149 = _T_565 ? _GEN_8 : sending_ip_foff; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_150 = _T_565 ? _GEN_9 : sending_ip_flags; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_151 = _T_565 ? _GEN_10 : sending_ip_id; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_152 = _T_565 ? _GEN_11 : sending_ip_len; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_153 = _T_565 ? _GEN_12 : sending_ip_ecn; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_154 = _T_565 ? _GEN_13 : sending_ip_dscp; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_155 = _T_565 ? _GEN_14 : sending_ip_ihl; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_156 = _T_565 ? _GEN_15 : sending_ip_version; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_157 = _T_565 ? _GEN_16 : sending_arp_tpa; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_158 = _T_565 ? _GEN_17 : sending_arp_tha; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_159 = _T_565 ? _GEN_18 : sending_arp_spa; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_160 = _T_565 ? _GEN_19 : sending_arp_sha; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_161 = _T_565 ? _GEN_20 : sending_arp_oper; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_162 = _T_565 ? _GEN_21 : sending_arp_plen; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_163 = _T_565 ? _GEN_22 : sending_arp_hlen; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_164 = _T_565 ? _GEN_23 : sending_arp_ptype; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_165 = _T_565 ? _GEN_24 : sending_arp_htype; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_166 = _T_565 ? _GEN_25 : sending_eth_vlan; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_167 = _T_565 ? _GEN_26 : sending_eth_pactype; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_168 = _T_565 ? _GEN_27 : sending_eth_sender_addr_0; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_169 = _T_565 ? _GEN_28 : sending_eth_sender_addr_1; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_170 = _T_565 ? _GEN_29 : sending_eth_sender_addr_2; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_171 = _T_565 ? _GEN_30 : sending_eth_sender_addr_3; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_172 = _T_565 ? _GEN_31 : sending_eth_sender_addr_4; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_173 = _T_565 ? _GEN_32 : sending_eth_sender_addr_5; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_174 = _T_565 ? _GEN_33 : sending_eth_dest_addr_0; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_175 = _T_565 ? _GEN_34 : sending_eth_dest_addr_1; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_176 = _T_565 ? _GEN_35 : sending_eth_dest_addr_2; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_177 = _T_565 ? _GEN_36 : sending_eth_dest_addr_3; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_178 = _T_565 ? _GEN_37 : sending_eth_dest_addr_4; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_179 = _T_565 ? _GEN_38 : sending_eth_dest_addr_5; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_180 = _T_565 ? _GEN_39 : _GEN_139; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_181 = _T_565 ? 8'h0 : _GEN_137; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_182 = _T_565 ? 1'h0 : _GEN_138; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_183 = _T_565 ? 1'h0 : _GEN_141; // @[Conditional.scala 40:58:@1174.4]
  assign _GEN_184 = _T_565 ? 1'h0 : _GEN_142; // @[Conditional.scala 40:58:@1174.4]
  assign _T_629 = state != 3'h0; // @[encoder.scala 114:21:@1307.4]
  assign io_stall = state != 3'h0; // @[encoder.scala 114:12:@1308.4]
  assign io_writer_clk = clock; // @[encoder.scala 43:17:@1172.4]
  assign io_writer_en = _T_565 ? 1'h0 : _GEN_138; // @[encoder.scala 42:16:@1171.4 encoder.scala 57:20:@1225.8 encoder.scala 77:20:@1255.10 encoder.scala 91:20:@1277.12 encoder.scala 105:20:@1300.14]
  assign io_writer_data_data = _T_565 ? 8'h0 : _GEN_137; // @[encoder.scala 41:23:@1170.4 encoder.scala 56:27:@1224.8 encoder.scala 75:27:@1252.10 encoder.scala 89:27:@1275.12 encoder.scala 103:22:@1296.14]
  assign io_writer_data_last = _T_565 ? 1'h0 : _GEN_141; // @[encoder.scala 40:23:@1167.4 encoder.scala 76:27:@1254.10 encoder.scala 90:27:@1276.12 encoder.scala 103:22:@1295.14]
  assign io_ipReader_clk = clock; // @[encoder.scala 37:19:@1165.4]
  assign io_ipReader_en = _T_565 ? 1'h0 : _GEN_142; // @[encoder.scala 38:18:@1166.4 encoder.scala 106:22:@1301.14]
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
      if (_T_565) begin
        if (_T_567) begin
          cnt <= 5'h11;
        end
      end else begin
        if (_T_571) begin
          if (_T_579) begin
            if (_T_581) begin
              cnt <= _T_585;
            end else begin
              if (_T_235) begin
                cnt <= 5'h1b;
              end else begin
                cnt <= 5'h13;
              end
            end
          end
        end else begin
          if (_T_589) begin
            if (_T_579) begin
              if (_T_581) begin
                cnt <= _T_585;
              end
            end
          end else begin
            if (_T_606) begin
              if (_T_579) begin
                if (_T_581) begin
                  cnt <= _T_585;
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
      if (_T_565) begin
        if (_T_567) begin
          state <= 3'h1;
        end
      end else begin
        if (_T_571) begin
          if (_T_579) begin
            if (!(_T_581)) begin
              if (_T_235) begin
                state <= 3'h2;
              end else begin
                state <= 3'h3;
              end
            end
          end
        end else begin
          if (_T_589) begin
            if (_T_579) begin
              if (!(_T_581)) begin
                state <= 3'h0;
              end
            end
          end else begin
            if (_T_606) begin
              if (_T_579) begin
                if (!(_T_581)) begin
                  state <= 3'h4;
                end
              end
            end else begin
              if (_T_622) begin
                if (_T_628) begin
                  state <= 3'h0;
                end
              end
            end
          end
        end
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_0 <= io_input_eth_dest_addr_0;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_1 <= io_input_eth_dest_addr_1;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_2 <= io_input_eth_dest_addr_2;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_3 <= io_input_eth_dest_addr_3;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_4 <= io_input_eth_dest_addr_4;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_dest_addr_5 <= io_input_eth_dest_addr_5;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_0 <= io_input_eth_sender_addr_0;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_1 <= io_input_eth_sender_addr_1;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_2 <= io_input_eth_sender_addr_2;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_3 <= io_input_eth_sender_addr_3;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_4 <= io_input_eth_sender_addr_4;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_sender_addr_5 <= io_input_eth_sender_addr_5;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_pactype <= io_input_eth_pactype;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_eth_vlan <= io_input_eth_vlan;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_htype <= io_input_arp_htype;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_ptype <= io_input_arp_ptype;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_hlen <= io_input_arp_hlen;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_plen <= io_input_arp_plen;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_oper <= io_input_arp_oper;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_sha <= io_input_arp_sha;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_spa <= io_input_arp_spa;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_tha <= io_input_arp_tha;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_arp_tpa <= io_input_arp_tpa;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_version <= io_input_ip_version;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_ihl <= io_input_ip_ihl;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_dscp <= io_input_ip_dscp;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_ecn <= io_input_ip_ecn;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_len <= io_input_ip_len;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_id <= io_input_ip_id;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_flags <= io_input_ip_flags;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_foff <= io_input_ip_foff;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_ttl <= io_input_ip_ttl;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_proto <= io_input_ip_proto;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_chksum <= io_input_ip_chksum;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_src <= io_input_ip_src;
      end
    end
    if (_T_565) begin
      if (_T_567) begin
        sending_ip_dest <= io_input_ip_dest;
      end
    end
  end
endmodule
module Transmitter( // @[:@1310.2]
  input        clock, // @[:@1311.4]
  input        reset, // @[:@1312.4]
  output       io_reader_clk, // @[:@1313.4]
  output       io_reader_en, // @[:@1313.4]
  input  [7:0] io_reader_data_data, // @[:@1313.4]
  input        io_reader_data_last, // @[:@1313.4]
  input        io_reader_empty, // @[:@1313.4]
  output [7:0] io_tx_tdata, // @[:@1313.4]
  output       io_tx_tvalid, // @[:@1313.4]
  output       io_tx_tlast, // @[:@1313.4]
  input        io_tx_tready // @[:@1313.4]
);
  wire  _T_30; // @[transmitter.scala 16:19:@1317.4]
  assign _T_30 = io_reader_empty == 1'h0; // @[transmitter.scala 16:19:@1317.4]
  assign io_reader_clk = clock; // @[transmitter.scala 18:17:@1320.4]
  assign io_reader_en = io_tx_tready; // @[transmitter.scala 17:16:@1319.4]
  assign io_tx_tdata = io_reader_data_data; // @[transmitter.scala 14:15:@1315.4]
  assign io_tx_tvalid = io_reader_empty == 1'h0; // @[transmitter.scala 16:16:@1318.4]
  assign io_tx_tlast = io_reader_data_last; // @[transmitter.scala 15:15:@1316.4]
endmodule
module Router( // @[:@1322.2]
  input        clock, // @[:@1323.4]
  input        reset, // @[:@1324.4]
  input        io_rx_clk, // @[:@1325.4]
  input        io_tx_clk, // @[:@1325.4]
  input  [7:0] io_rx_tdata, // @[:@1325.4]
  input        io_rx_tvalid, // @[:@1325.4]
  input        io_rx_tlast, // @[:@1325.4]
  output       io_rx_tready, // @[:@1325.4]
  output [7:0] io_tx_tdata, // @[:@1325.4]
  output       io_tx_tvalid, // @[:@1325.4]
  output       io_tx_tlast, // @[:@1325.4]
  input        io_tx_tready // @[:@1325.4]
);
  wire  acceptorBridge_clock; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_reset; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_write_clk; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_write_en; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_0; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_1; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_2; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_3; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_4; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_dest_addr_5; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_0; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_1; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_2; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_3; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_4; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_eth_sender_addr_5; // @[router.scala 34:30:@1327.4]
  wire [1:0] acceptorBridge_io_write_data_eth_pactype; // @[router.scala 34:30:@1327.4]
  wire [2:0] acceptorBridge_io_write_data_eth_vlan; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_arp_htype; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_arp_ptype; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_arp_hlen; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_arp_plen; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_arp_oper; // @[router.scala 34:30:@1327.4]
  wire [47:0] acceptorBridge_io_write_data_arp_sha; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_write_data_arp_spa; // @[router.scala 34:30:@1327.4]
  wire [47:0] acceptorBridge_io_write_data_arp_tha; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_write_data_arp_tpa; // @[router.scala 34:30:@1327.4]
  wire [3:0] acceptorBridge_io_write_data_ip_version; // @[router.scala 34:30:@1327.4]
  wire [3:0] acceptorBridge_io_write_data_ip_ihl; // @[router.scala 34:30:@1327.4]
  wire [5:0] acceptorBridge_io_write_data_ip_dscp; // @[router.scala 34:30:@1327.4]
  wire [1:0] acceptorBridge_io_write_data_ip_ecn; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_ip_len; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_ip_id; // @[router.scala 34:30:@1327.4]
  wire [2:0] acceptorBridge_io_write_data_ip_flags; // @[router.scala 34:30:@1327.4]
  wire [12:0] acceptorBridge_io_write_data_ip_foff; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_ip_ttl; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_write_data_ip_proto; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_data_ip_chksum; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_write_data_ip_src; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_write_data_ip_dest; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_write_full; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_write_space; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_read_clk; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_read_en; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_0; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_1; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_2; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_3; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_4; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_dest_addr_5; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_0; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_1; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_2; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_3; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_4; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_eth_sender_addr_5; // @[router.scala 34:30:@1327.4]
  wire [1:0] acceptorBridge_io_read_data_eth_pactype; // @[router.scala 34:30:@1327.4]
  wire [2:0] acceptorBridge_io_read_data_eth_vlan; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_arp_htype; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_arp_ptype; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_arp_hlen; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_arp_plen; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_arp_oper; // @[router.scala 34:30:@1327.4]
  wire [47:0] acceptorBridge_io_read_data_arp_sha; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_read_data_arp_spa; // @[router.scala 34:30:@1327.4]
  wire [47:0] acceptorBridge_io_read_data_arp_tha; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_read_data_arp_tpa; // @[router.scala 34:30:@1327.4]
  wire [3:0] acceptorBridge_io_read_data_ip_version; // @[router.scala 34:30:@1327.4]
  wire [3:0] acceptorBridge_io_read_data_ip_ihl; // @[router.scala 34:30:@1327.4]
  wire [5:0] acceptorBridge_io_read_data_ip_dscp; // @[router.scala 34:30:@1327.4]
  wire [1:0] acceptorBridge_io_read_data_ip_ecn; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_ip_len; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_ip_id; // @[router.scala 34:30:@1327.4]
  wire [2:0] acceptorBridge_io_read_data_ip_flags; // @[router.scala 34:30:@1327.4]
  wire [12:0] acceptorBridge_io_read_data_ip_foff; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_ip_ttl; // @[router.scala 34:30:@1327.4]
  wire [7:0] acceptorBridge_io_read_data_ip_proto; // @[router.scala 34:30:@1327.4]
  wire [15:0] acceptorBridge_io_read_data_ip_chksum; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_read_data_ip_src; // @[router.scala 34:30:@1327.4]
  wire [31:0] acceptorBridge_io_read_data_ip_dest; // @[router.scala 34:30:@1327.4]
  wire  acceptorBridge_io_read_empty; // @[router.scala 34:30:@1327.4]
  wire  transmitterBridge_clock; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_reset; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_write_clk; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_write_en; // @[router.scala 37:33:@1331.4]
  wire [7:0] transmitterBridge_io_write_data_data; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_write_data_last; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_write_full; // @[router.scala 37:33:@1331.4]
  wire [15:0] transmitterBridge_io_write_space; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_read_clk; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_read_en; // @[router.scala 37:33:@1331.4]
  wire [7:0] transmitterBridge_io_read_data_data; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_read_data_last; // @[router.scala 37:33:@1331.4]
  wire  transmitterBridge_io_read_empty; // @[router.scala 37:33:@1331.4]
  wire  ipBridge_clock; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_reset; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_write_clk; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_write_en; // @[router.scala 41:24:@1336.4]
  wire [7:0] ipBridge_io_write_data_data; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_write_data_last; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_write_full; // @[router.scala 41:24:@1336.4]
  wire [15:0] ipBridge_io_write_space; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_read_clk; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_read_en; // @[router.scala 41:24:@1336.4]
  wire [7:0] ipBridge_io_read_data_data; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_read_data_last; // @[router.scala 41:24:@1336.4]
  wire  ipBridge_io_read_empty; // @[router.scala 41:24:@1336.4]
  wire  Acceptor_clock; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_reset; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_rx_tlast; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_rx_tready; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_writer_clk; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_writer_en; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_0; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_1; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_2; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_3; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_4; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_dest_addr_5; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_0; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_1; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_2; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_3; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_4; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_eth_sender_addr_5; // @[router.scala 44:26:@1339.4]
  wire [1:0] Acceptor_io_writer_data_eth_pactype; // @[router.scala 44:26:@1339.4]
  wire [2:0] Acceptor_io_writer_data_eth_vlan; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_arp_htype; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_arp_ptype; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_arp_hlen; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_arp_plen; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_arp_oper; // @[router.scala 44:26:@1339.4]
  wire [47:0] Acceptor_io_writer_data_arp_sha; // @[router.scala 44:26:@1339.4]
  wire [31:0] Acceptor_io_writer_data_arp_spa; // @[router.scala 44:26:@1339.4]
  wire [47:0] Acceptor_io_writer_data_arp_tha; // @[router.scala 44:26:@1339.4]
  wire [31:0] Acceptor_io_writer_data_arp_tpa; // @[router.scala 44:26:@1339.4]
  wire [3:0] Acceptor_io_writer_data_ip_version; // @[router.scala 44:26:@1339.4]
  wire [3:0] Acceptor_io_writer_data_ip_ihl; // @[router.scala 44:26:@1339.4]
  wire [5:0] Acceptor_io_writer_data_ip_dscp; // @[router.scala 44:26:@1339.4]
  wire [1:0] Acceptor_io_writer_data_ip_ecn; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_ip_len; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_ip_id; // @[router.scala 44:26:@1339.4]
  wire [2:0] Acceptor_io_writer_data_ip_flags; // @[router.scala 44:26:@1339.4]
  wire [12:0] Acceptor_io_writer_data_ip_foff; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_ip_ttl; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_writer_data_ip_proto; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_data_ip_chksum; // @[router.scala 44:26:@1339.4]
  wire [31:0] Acceptor_io_writer_data_ip_src; // @[router.scala 44:26:@1339.4]
  wire [31:0] Acceptor_io_writer_data_ip_dest; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_writer_full; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_writer_space; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_ipWriter_clk; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_ipWriter_en; // @[router.scala 44:26:@1339.4]
  wire [7:0] Acceptor_io_ipWriter_data_data; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_ipWriter_data_last; // @[router.scala 44:26:@1339.4]
  wire  Acceptor_io_ipWriter_full; // @[router.scala 44:26:@1339.4]
  wire [15:0] Acceptor_io_ipWriter_space; // @[router.scala 44:26:@1339.4]
  wire  ctrl_clock; // @[router.scala 51:20:@1392.4]
  wire  ctrl_reset; // @[router.scala 51:20:@1392.4]
  wire  ctrl_io_forward_stall; // @[router.scala 51:20:@1392.4]
  wire  ctrl_io_forward_pause; // @[router.scala 51:20:@1392.4]
  wire  ctrl_io_encoder_stall; // @[router.scala 51:20:@1392.4]
  wire  ctrl_io_encoder_pause; // @[router.scala 51:20:@1392.4]
  wire  ctrl_io_inputWait; // @[router.scala 51:20:@1392.4]
  wire  forward_clock; // @[router.scala 56:23:@1398.4]
  wire  forward_reset; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_0; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_1; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_2; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_3; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_4; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_dest_addr_5; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_0; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_1; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_2; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_3; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_4; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_eth_sender_addr_5; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_input_eth_pactype; // @[router.scala 56:23:@1398.4]
  wire [2:0] forward_io_input_eth_vlan; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_arp_htype; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_arp_ptype; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_arp_hlen; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_arp_plen; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_arp_oper; // @[router.scala 56:23:@1398.4]
  wire [47:0] forward_io_input_arp_sha; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_input_arp_spa; // @[router.scala 56:23:@1398.4]
  wire [47:0] forward_io_input_arp_tha; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_input_arp_tpa; // @[router.scala 56:23:@1398.4]
  wire [3:0] forward_io_input_ip_version; // @[router.scala 56:23:@1398.4]
  wire [3:0] forward_io_input_ip_ihl; // @[router.scala 56:23:@1398.4]
  wire [5:0] forward_io_input_ip_dscp; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_input_ip_ecn; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_ip_len; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_ip_id; // @[router.scala 56:23:@1398.4]
  wire [2:0] forward_io_input_ip_flags; // @[router.scala 56:23:@1398.4]
  wire [12:0] forward_io_input_ip_foff; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_ip_ttl; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_input_ip_proto; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_input_ip_chksum; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_input_ip_src; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_input_ip_dest; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_status; // @[router.scala 56:23:@1398.4]
  wire  forward_io_stall; // @[router.scala 56:23:@1398.4]
  wire  forward_io_pause; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_0; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_1; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_2; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_3; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_4; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_dest_addr_5; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_0; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_1; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_2; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_3; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_4; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_eth_sender_addr_5; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_output_packet_eth_pactype; // @[router.scala 56:23:@1398.4]
  wire [2:0] forward_io_output_packet_eth_vlan; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_arp_htype; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_arp_ptype; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_arp_hlen; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_arp_plen; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_arp_oper; // @[router.scala 56:23:@1398.4]
  wire [47:0] forward_io_output_packet_arp_sha; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_output_packet_arp_spa; // @[router.scala 56:23:@1398.4]
  wire [47:0] forward_io_output_packet_arp_tha; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_output_packet_arp_tpa; // @[router.scala 56:23:@1398.4]
  wire [3:0] forward_io_output_packet_ip_version; // @[router.scala 56:23:@1398.4]
  wire [3:0] forward_io_output_packet_ip_ihl; // @[router.scala 56:23:@1398.4]
  wire [5:0] forward_io_output_packet_ip_dscp; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_output_packet_ip_ecn; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_ip_len; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_ip_id; // @[router.scala 56:23:@1398.4]
  wire [2:0] forward_io_output_packet_ip_flags; // @[router.scala 56:23:@1398.4]
  wire [12:0] forward_io_output_packet_ip_foff; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_ip_ttl; // @[router.scala 56:23:@1398.4]
  wire [7:0] forward_io_output_packet_ip_proto; // @[router.scala 56:23:@1398.4]
  wire [15:0] forward_io_output_packet_ip_chksum; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_output_packet_ip_src; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_output_packet_ip_dest; // @[router.scala 56:23:@1398.4]
  wire [2:0] forward_io_output_lookup_status; // @[router.scala 56:23:@1398.4]
  wire [31:0] forward_io_output_lookup_nextHop; // @[router.scala 56:23:@1398.4]
  wire [1:0] forward_io_outputStatus; // @[router.scala 56:23:@1398.4]
  wire  encoder_clock; // @[router.scala 64:23:@1442.4]
  wire  encoder_reset; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_0; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_1; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_2; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_3; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_4; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_dest_addr_5; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_0; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_1; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_2; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_3; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_4; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_eth_sender_addr_5; // @[router.scala 64:23:@1442.4]
  wire [1:0] encoder_io_input_eth_pactype; // @[router.scala 64:23:@1442.4]
  wire [2:0] encoder_io_input_eth_vlan; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_arp_htype; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_arp_ptype; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_arp_hlen; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_arp_plen; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_arp_oper; // @[router.scala 64:23:@1442.4]
  wire [47:0] encoder_io_input_arp_sha; // @[router.scala 64:23:@1442.4]
  wire [31:0] encoder_io_input_arp_spa; // @[router.scala 64:23:@1442.4]
  wire [47:0] encoder_io_input_arp_tha; // @[router.scala 64:23:@1442.4]
  wire [31:0] encoder_io_input_arp_tpa; // @[router.scala 64:23:@1442.4]
  wire [3:0] encoder_io_input_ip_version; // @[router.scala 64:23:@1442.4]
  wire [3:0] encoder_io_input_ip_ihl; // @[router.scala 64:23:@1442.4]
  wire [5:0] encoder_io_input_ip_dscp; // @[router.scala 64:23:@1442.4]
  wire [1:0] encoder_io_input_ip_ecn; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_ip_len; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_ip_id; // @[router.scala 64:23:@1442.4]
  wire [2:0] encoder_io_input_ip_flags; // @[router.scala 64:23:@1442.4]
  wire [12:0] encoder_io_input_ip_foff; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_ip_ttl; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_input_ip_proto; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_input_ip_chksum; // @[router.scala 64:23:@1442.4]
  wire [31:0] encoder_io_input_ip_src; // @[router.scala 64:23:@1442.4]
  wire [31:0] encoder_io_input_ip_dest; // @[router.scala 64:23:@1442.4]
  wire [1:0] encoder_io_status; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_stall; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_pause; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_writer_clk; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_writer_en; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_writer_data_data; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_writer_data_last; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_writer_full; // @[router.scala 64:23:@1442.4]
  wire [15:0] encoder_io_writer_space; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_ipReader_clk; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_ipReader_en; // @[router.scala 64:23:@1442.4]
  wire [7:0] encoder_io_ipReader_data_data; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_ipReader_data_last; // @[router.scala 64:23:@1442.4]
  wire  encoder_io_ipReader_empty; // @[router.scala 64:23:@1442.4]
  wire  Transmitter_clock; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_reset; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_reader_clk; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_reader_en; // @[router.scala 76:29:@1495.4]
  wire [7:0] Transmitter_io_reader_data_data; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_reader_data_last; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_reader_empty; // @[router.scala 76:29:@1495.4]
  wire [7:0] Transmitter_io_tx_tdata; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_tx_tvalid; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_tx_tlast; // @[router.scala 76:29:@1495.4]
  wire  Transmitter_io_tx_tready; // @[router.scala 76:29:@1495.4]
  wire  _T_69; // @[router.scala 52:32:@1395.4]
  wire [1:0] status; // @[router.scala 54:19:@1397.4]
  AsyncBridge acceptorBridge ( // @[router.scala 34:30:@1327.4]
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
  AsyncBridge_1 transmitterBridge ( // @[router.scala 37:33:@1331.4]
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
  AsyncBridge_2 ipBridge ( // @[router.scala 41:24:@1336.4]
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
  Acceptor Acceptor ( // @[router.scala 44:26:@1339.4]
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
  Ctrl ctrl ( // @[router.scala 51:20:@1392.4]
    .clock(ctrl_clock),
    .reset(ctrl_reset),
    .io_forward_stall(ctrl_io_forward_stall),
    .io_forward_pause(ctrl_io_forward_pause),
    .io_encoder_stall(ctrl_io_encoder_stall),
    .io_encoder_pause(ctrl_io_encoder_pause),
    .io_inputWait(ctrl_io_inputWait)
  );
  LLFT forward ( // @[router.scala 56:23:@1398.4]
    .clock(forward_clock),
    .reset(forward_reset),
    .io_input_eth_dest_addr_0(forward_io_input_eth_dest_addr_0),
    .io_input_eth_dest_addr_1(forward_io_input_eth_dest_addr_1),
    .io_input_eth_dest_addr_2(forward_io_input_eth_dest_addr_2),
    .io_input_eth_dest_addr_3(forward_io_input_eth_dest_addr_3),
    .io_input_eth_dest_addr_4(forward_io_input_eth_dest_addr_4),
    .io_input_eth_dest_addr_5(forward_io_input_eth_dest_addr_5),
    .io_input_eth_sender_addr_0(forward_io_input_eth_sender_addr_0),
    .io_input_eth_sender_addr_1(forward_io_input_eth_sender_addr_1),
    .io_input_eth_sender_addr_2(forward_io_input_eth_sender_addr_2),
    .io_input_eth_sender_addr_3(forward_io_input_eth_sender_addr_3),
    .io_input_eth_sender_addr_4(forward_io_input_eth_sender_addr_4),
    .io_input_eth_sender_addr_5(forward_io_input_eth_sender_addr_5),
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
    .io_status(forward_io_status),
    .io_stall(forward_io_stall),
    .io_pause(forward_io_pause),
    .io_output_packet_eth_dest_addr_0(forward_io_output_packet_eth_dest_addr_0),
    .io_output_packet_eth_dest_addr_1(forward_io_output_packet_eth_dest_addr_1),
    .io_output_packet_eth_dest_addr_2(forward_io_output_packet_eth_dest_addr_2),
    .io_output_packet_eth_dest_addr_3(forward_io_output_packet_eth_dest_addr_3),
    .io_output_packet_eth_dest_addr_4(forward_io_output_packet_eth_dest_addr_4),
    .io_output_packet_eth_dest_addr_5(forward_io_output_packet_eth_dest_addr_5),
    .io_output_packet_eth_sender_addr_0(forward_io_output_packet_eth_sender_addr_0),
    .io_output_packet_eth_sender_addr_1(forward_io_output_packet_eth_sender_addr_1),
    .io_output_packet_eth_sender_addr_2(forward_io_output_packet_eth_sender_addr_2),
    .io_output_packet_eth_sender_addr_3(forward_io_output_packet_eth_sender_addr_3),
    .io_output_packet_eth_sender_addr_4(forward_io_output_packet_eth_sender_addr_4),
    .io_output_packet_eth_sender_addr_5(forward_io_output_packet_eth_sender_addr_5),
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
    .io_output_lookup_status(forward_io_output_lookup_status),
    .io_output_lookup_nextHop(forward_io_output_lookup_nextHop),
    .io_outputStatus(forward_io_outputStatus)
  );
  Encoder encoder ( // @[router.scala 64:23:@1442.4]
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
    .io_pause(encoder_io_pause),
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
  Transmitter Transmitter ( // @[router.scala 76:29:@1495.4]
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
  assign _T_69 = ctrl_io_inputWait == 1'h0; // @[router.scala 52:32:@1395.4]
  assign status = acceptorBridge_io_read_empty ? 2'h0 : 2'h1; // @[router.scala 54:19:@1397.4]
  assign io_rx_tready = Acceptor_io_rx_tready; // @[router.scala 46:20:@1342.4]
  assign io_tx_tdata = Transmitter_io_tx_tdata; // @[router.scala 78:23:@1506.4]
  assign io_tx_tvalid = Transmitter_io_tx_tvalid; // @[router.scala 78:23:@1505.4]
  assign io_tx_tlast = Transmitter_io_tx_tlast; // @[router.scala 78:23:@1504.4]
  assign acceptorBridge_clock = clock; // @[:@1328.4]
  assign acceptorBridge_reset = reset; // @[:@1329.4]
  assign acceptorBridge_io_write_clk = Acceptor_io_writer_clk; // @[router.scala 47:29:@1385.4]
  assign acceptorBridge_io_write_en = Acceptor_io_writer_en; // @[router.scala 47:29:@1384.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_0 = Acceptor_io_writer_data_eth_dest_addr_0; // @[router.scala 47:29:@1378.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_1 = Acceptor_io_writer_data_eth_dest_addr_1; // @[router.scala 47:29:@1379.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_2 = Acceptor_io_writer_data_eth_dest_addr_2; // @[router.scala 47:29:@1380.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_3 = Acceptor_io_writer_data_eth_dest_addr_3; // @[router.scala 47:29:@1381.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_4 = Acceptor_io_writer_data_eth_dest_addr_4; // @[router.scala 47:29:@1382.4]
  assign acceptorBridge_io_write_data_eth_dest_addr_5 = Acceptor_io_writer_data_eth_dest_addr_5; // @[router.scala 47:29:@1383.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_0 = Acceptor_io_writer_data_eth_sender_addr_0; // @[router.scala 47:29:@1372.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_1 = Acceptor_io_writer_data_eth_sender_addr_1; // @[router.scala 47:29:@1373.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_2 = Acceptor_io_writer_data_eth_sender_addr_2; // @[router.scala 47:29:@1374.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_3 = Acceptor_io_writer_data_eth_sender_addr_3; // @[router.scala 47:29:@1375.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_4 = Acceptor_io_writer_data_eth_sender_addr_4; // @[router.scala 47:29:@1376.4]
  assign acceptorBridge_io_write_data_eth_sender_addr_5 = Acceptor_io_writer_data_eth_sender_addr_5; // @[router.scala 47:29:@1377.4]
  assign acceptorBridge_io_write_data_eth_pactype = Acceptor_io_writer_data_eth_pactype; // @[router.scala 47:29:@1371.4]
  assign acceptorBridge_io_write_data_eth_vlan = Acceptor_io_writer_data_eth_vlan; // @[router.scala 47:29:@1370.4]
  assign acceptorBridge_io_write_data_arp_htype = Acceptor_io_writer_data_arp_htype; // @[router.scala 47:29:@1369.4]
  assign acceptorBridge_io_write_data_arp_ptype = Acceptor_io_writer_data_arp_ptype; // @[router.scala 47:29:@1368.4]
  assign acceptorBridge_io_write_data_arp_hlen = Acceptor_io_writer_data_arp_hlen; // @[router.scala 47:29:@1367.4]
  assign acceptorBridge_io_write_data_arp_plen = Acceptor_io_writer_data_arp_plen; // @[router.scala 47:29:@1366.4]
  assign acceptorBridge_io_write_data_arp_oper = Acceptor_io_writer_data_arp_oper; // @[router.scala 47:29:@1365.4]
  assign acceptorBridge_io_write_data_arp_sha = Acceptor_io_writer_data_arp_sha; // @[router.scala 47:29:@1364.4]
  assign acceptorBridge_io_write_data_arp_spa = Acceptor_io_writer_data_arp_spa; // @[router.scala 47:29:@1363.4]
  assign acceptorBridge_io_write_data_arp_tha = Acceptor_io_writer_data_arp_tha; // @[router.scala 47:29:@1362.4]
  assign acceptorBridge_io_write_data_arp_tpa = Acceptor_io_writer_data_arp_tpa; // @[router.scala 47:29:@1361.4]
  assign acceptorBridge_io_write_data_ip_version = Acceptor_io_writer_data_ip_version; // @[router.scala 47:29:@1360.4]
  assign acceptorBridge_io_write_data_ip_ihl = Acceptor_io_writer_data_ip_ihl; // @[router.scala 47:29:@1359.4]
  assign acceptorBridge_io_write_data_ip_dscp = Acceptor_io_writer_data_ip_dscp; // @[router.scala 47:29:@1358.4]
  assign acceptorBridge_io_write_data_ip_ecn = Acceptor_io_writer_data_ip_ecn; // @[router.scala 47:29:@1357.4]
  assign acceptorBridge_io_write_data_ip_len = Acceptor_io_writer_data_ip_len; // @[router.scala 47:29:@1356.4]
  assign acceptorBridge_io_write_data_ip_id = Acceptor_io_writer_data_ip_id; // @[router.scala 47:29:@1355.4]
  assign acceptorBridge_io_write_data_ip_flags = Acceptor_io_writer_data_ip_flags; // @[router.scala 47:29:@1354.4]
  assign acceptorBridge_io_write_data_ip_foff = Acceptor_io_writer_data_ip_foff; // @[router.scala 47:29:@1353.4]
  assign acceptorBridge_io_write_data_ip_ttl = Acceptor_io_writer_data_ip_ttl; // @[router.scala 47:29:@1352.4]
  assign acceptorBridge_io_write_data_ip_proto = Acceptor_io_writer_data_ip_proto; // @[router.scala 47:29:@1351.4]
  assign acceptorBridge_io_write_data_ip_chksum = Acceptor_io_writer_data_ip_chksum; // @[router.scala 47:29:@1350.4]
  assign acceptorBridge_io_write_data_ip_src = Acceptor_io_writer_data_ip_src; // @[router.scala 47:29:@1349.4]
  assign acceptorBridge_io_write_data_ip_dest = Acceptor_io_writer_data_ip_dest; // @[router.scala 47:29:@1348.4]
  assign acceptorBridge_io_read_clk = clock; // @[router.scala 35:30:@1330.4]
  assign acceptorBridge_io_read_en = ctrl_io_inputWait == 1'h0; // @[router.scala 52:29:@1396.4]
  assign transmitterBridge_clock = clock; // @[:@1332.4]
  assign transmitterBridge_reset = reset; // @[:@1333.4]
  assign transmitterBridge_io_write_clk = encoder_io_writer_clk; // @[router.scala 38:34:@1334.4 router.scala 72:21:@1489.4]
  assign transmitterBridge_io_write_en = encoder_io_writer_en; // @[router.scala 72:21:@1488.4]
  assign transmitterBridge_io_write_data_data = encoder_io_writer_data_data; // @[router.scala 72:21:@1487.4]
  assign transmitterBridge_io_write_data_last = encoder_io_writer_data_last; // @[router.scala 72:21:@1486.4]
  assign transmitterBridge_io_read_clk = Transmitter_io_reader_clk; // @[router.scala 77:27:@1502.4]
  assign transmitterBridge_io_read_en = Transmitter_io_reader_en; // @[router.scala 77:27:@1501.4]
  assign ipBridge_clock = clock; // @[:@1337.4]
  assign ipBridge_reset = reset; // @[:@1338.4]
  assign ipBridge_io_write_clk = Acceptor_io_ipWriter_clk; // @[router.scala 48:23:@1391.4]
  assign ipBridge_io_write_en = Acceptor_io_ipWriter_en; // @[router.scala 48:23:@1390.4]
  assign ipBridge_io_write_data_data = Acceptor_io_ipWriter_data_data; // @[router.scala 48:23:@1389.4]
  assign ipBridge_io_write_data_last = Acceptor_io_ipWriter_data_last; // @[router.scala 48:23:@1388.4]
  assign ipBridge_io_read_clk = encoder_io_ipReader_clk; // @[router.scala 73:23:@1494.4]
  assign ipBridge_io_read_en = encoder_io_ipReader_en; // @[router.scala 73:23:@1493.4]
  assign Acceptor_clock = io_rx_clk; // @[:@1340.4]
  assign Acceptor_reset = reset; // @[:@1341.4]
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 46:20:@1345.4]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 46:20:@1344.4]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 46:20:@1343.4]
  assign Acceptor_io_writer_full = acceptorBridge_io_write_full; // @[router.scala 47:29:@1347.4]
  assign Acceptor_io_writer_space = acceptorBridge_io_write_space; // @[router.scala 47:29:@1346.4]
  assign Acceptor_io_ipWriter_full = ipBridge_io_write_full; // @[router.scala 48:23:@1387.4]
  assign Acceptor_io_ipWriter_space = ipBridge_io_write_space; // @[router.scala 48:23:@1386.4]
  assign ctrl_clock = clock; // @[:@1393.4]
  assign ctrl_reset = reset; // @[:@1394.4]
  assign ctrl_io_forward_stall = forward_io_stall; // @[router.scala 57:25:@1401.4]
  assign ctrl_io_encoder_stall = encoder_io_stall; // @[router.scala 65:25:@1445.4]
  assign forward_clock = clock; // @[:@1399.4]
  assign forward_reset = reset; // @[:@1400.4]
  assign forward_io_input_eth_dest_addr_0 = acceptorBridge_io_read_data_eth_dest_addr_0; // @[router.scala 59:31:@1433.4]
  assign forward_io_input_eth_dest_addr_1 = acceptorBridge_io_read_data_eth_dest_addr_1; // @[router.scala 59:31:@1434.4]
  assign forward_io_input_eth_dest_addr_2 = acceptorBridge_io_read_data_eth_dest_addr_2; // @[router.scala 59:31:@1435.4]
  assign forward_io_input_eth_dest_addr_3 = acceptorBridge_io_read_data_eth_dest_addr_3; // @[router.scala 59:31:@1436.4]
  assign forward_io_input_eth_dest_addr_4 = acceptorBridge_io_read_data_eth_dest_addr_4; // @[router.scala 59:31:@1437.4]
  assign forward_io_input_eth_dest_addr_5 = acceptorBridge_io_read_data_eth_dest_addr_5; // @[router.scala 59:31:@1438.4]
  assign forward_io_input_eth_sender_addr_0 = acceptorBridge_io_read_data_eth_sender_addr_0; // @[router.scala 59:31:@1427.4]
  assign forward_io_input_eth_sender_addr_1 = acceptorBridge_io_read_data_eth_sender_addr_1; // @[router.scala 59:31:@1428.4]
  assign forward_io_input_eth_sender_addr_2 = acceptorBridge_io_read_data_eth_sender_addr_2; // @[router.scala 59:31:@1429.4]
  assign forward_io_input_eth_sender_addr_3 = acceptorBridge_io_read_data_eth_sender_addr_3; // @[router.scala 59:31:@1430.4]
  assign forward_io_input_eth_sender_addr_4 = acceptorBridge_io_read_data_eth_sender_addr_4; // @[router.scala 59:31:@1431.4]
  assign forward_io_input_eth_sender_addr_5 = acceptorBridge_io_read_data_eth_sender_addr_5; // @[router.scala 59:31:@1432.4]
  assign forward_io_input_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 59:31:@1426.4]
  assign forward_io_input_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 59:31:@1425.4]
  assign forward_io_input_arp_htype = acceptorBridge_io_read_data_arp_htype; // @[router.scala 59:31:@1424.4]
  assign forward_io_input_arp_ptype = acceptorBridge_io_read_data_arp_ptype; // @[router.scala 59:31:@1423.4]
  assign forward_io_input_arp_hlen = acceptorBridge_io_read_data_arp_hlen; // @[router.scala 59:31:@1422.4]
  assign forward_io_input_arp_plen = acceptorBridge_io_read_data_arp_plen; // @[router.scala 59:31:@1421.4]
  assign forward_io_input_arp_oper = acceptorBridge_io_read_data_arp_oper; // @[router.scala 59:31:@1420.4]
  assign forward_io_input_arp_sha = acceptorBridge_io_read_data_arp_sha; // @[router.scala 59:31:@1419.4]
  assign forward_io_input_arp_spa = acceptorBridge_io_read_data_arp_spa; // @[router.scala 59:31:@1418.4]
  assign forward_io_input_arp_tha = acceptorBridge_io_read_data_arp_tha; // @[router.scala 59:31:@1417.4]
  assign forward_io_input_arp_tpa = acceptorBridge_io_read_data_arp_tpa; // @[router.scala 59:31:@1416.4]
  assign forward_io_input_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 59:31:@1415.4]
  assign forward_io_input_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 59:31:@1414.4]
  assign forward_io_input_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 59:31:@1413.4]
  assign forward_io_input_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 59:31:@1412.4]
  assign forward_io_input_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 59:31:@1411.4]
  assign forward_io_input_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 59:31:@1410.4]
  assign forward_io_input_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 59:31:@1409.4]
  assign forward_io_input_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 59:31:@1408.4]
  assign forward_io_input_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 59:31:@1407.4]
  assign forward_io_input_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 59:31:@1406.4]
  assign forward_io_input_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 59:31:@1405.4]
  assign forward_io_input_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 59:31:@1404.4]
  assign forward_io_input_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 59:31:@1403.4]
  assign forward_io_status = acceptorBridge_io_read_empty ? 2'h0 : 2'h1; // @[router.scala 60:10:@1439.4]
  assign forward_io_pause = ctrl_io_forward_pause; // @[router.scala 58:25:@1402.4]
  assign encoder_clock = clock; // @[:@1443.4]
  assign encoder_reset = reset; // @[:@1444.4]
  assign encoder_io_input_eth_dest_addr_0 = forward_io_output_packet_eth_dest_addr_0; // @[router.scala 70:20:@1477.4]
  assign encoder_io_input_eth_dest_addr_1 = forward_io_output_packet_eth_dest_addr_1; // @[router.scala 70:20:@1478.4]
  assign encoder_io_input_eth_dest_addr_2 = forward_io_output_packet_eth_dest_addr_2; // @[router.scala 70:20:@1479.4]
  assign encoder_io_input_eth_dest_addr_3 = forward_io_output_packet_eth_dest_addr_3; // @[router.scala 70:20:@1480.4]
  assign encoder_io_input_eth_dest_addr_4 = forward_io_output_packet_eth_dest_addr_4; // @[router.scala 70:20:@1481.4]
  assign encoder_io_input_eth_dest_addr_5 = forward_io_output_packet_eth_dest_addr_5; // @[router.scala 70:20:@1482.4]
  assign encoder_io_input_eth_sender_addr_0 = forward_io_output_packet_eth_sender_addr_0; // @[router.scala 70:20:@1471.4]
  assign encoder_io_input_eth_sender_addr_1 = forward_io_output_packet_eth_sender_addr_1; // @[router.scala 70:20:@1472.4]
  assign encoder_io_input_eth_sender_addr_2 = forward_io_output_packet_eth_sender_addr_2; // @[router.scala 70:20:@1473.4]
  assign encoder_io_input_eth_sender_addr_3 = forward_io_output_packet_eth_sender_addr_3; // @[router.scala 70:20:@1474.4]
  assign encoder_io_input_eth_sender_addr_4 = forward_io_output_packet_eth_sender_addr_4; // @[router.scala 70:20:@1475.4]
  assign encoder_io_input_eth_sender_addr_5 = forward_io_output_packet_eth_sender_addr_5; // @[router.scala 70:20:@1476.4]
  assign encoder_io_input_eth_pactype = forward_io_output_packet_eth_pactype; // @[router.scala 70:20:@1470.4]
  assign encoder_io_input_eth_vlan = forward_io_output_packet_eth_vlan; // @[router.scala 70:20:@1469.4]
  assign encoder_io_input_arp_htype = forward_io_output_packet_arp_htype; // @[router.scala 70:20:@1468.4]
  assign encoder_io_input_arp_ptype = forward_io_output_packet_arp_ptype; // @[router.scala 70:20:@1467.4]
  assign encoder_io_input_arp_hlen = forward_io_output_packet_arp_hlen; // @[router.scala 70:20:@1466.4]
  assign encoder_io_input_arp_plen = forward_io_output_packet_arp_plen; // @[router.scala 70:20:@1465.4]
  assign encoder_io_input_arp_oper = forward_io_output_packet_arp_oper; // @[router.scala 70:20:@1464.4]
  assign encoder_io_input_arp_sha = forward_io_output_packet_arp_sha; // @[router.scala 70:20:@1463.4]
  assign encoder_io_input_arp_spa = forward_io_output_packet_arp_spa; // @[router.scala 70:20:@1462.4]
  assign encoder_io_input_arp_tha = forward_io_output_packet_arp_tha; // @[router.scala 70:20:@1461.4]
  assign encoder_io_input_arp_tpa = forward_io_output_packet_arp_tpa; // @[router.scala 70:20:@1460.4]
  assign encoder_io_input_ip_version = forward_io_output_packet_ip_version; // @[router.scala 70:20:@1459.4]
  assign encoder_io_input_ip_ihl = forward_io_output_packet_ip_ihl; // @[router.scala 70:20:@1458.4]
  assign encoder_io_input_ip_dscp = forward_io_output_packet_ip_dscp; // @[router.scala 70:20:@1457.4]
  assign encoder_io_input_ip_ecn = forward_io_output_packet_ip_ecn; // @[router.scala 70:20:@1456.4]
  assign encoder_io_input_ip_len = forward_io_output_packet_ip_len; // @[router.scala 70:20:@1455.4]
  assign encoder_io_input_ip_id = forward_io_output_packet_ip_id; // @[router.scala 70:20:@1454.4]
  assign encoder_io_input_ip_flags = forward_io_output_packet_ip_flags; // @[router.scala 70:20:@1453.4]
  assign encoder_io_input_ip_foff = forward_io_output_packet_ip_foff; // @[router.scala 70:20:@1452.4]
  assign encoder_io_input_ip_ttl = forward_io_output_packet_ip_ttl; // @[router.scala 70:20:@1451.4]
  assign encoder_io_input_ip_proto = forward_io_output_packet_ip_proto; // @[router.scala 70:20:@1450.4]
  assign encoder_io_input_ip_chksum = forward_io_output_packet_ip_chksum; // @[router.scala 70:20:@1449.4]
  assign encoder_io_input_ip_src = forward_io_output_packet_ip_src; // @[router.scala 70:20:@1448.4]
  assign encoder_io_input_ip_dest = forward_io_output_packet_ip_dest; // @[router.scala 70:20:@1447.4]
  assign encoder_io_status = 2'h1; // @[router.scala 71:21:@1483.4]
  assign encoder_io_pause = ctrl_io_encoder_pause; // @[router.scala 66:25:@1446.4]
  assign encoder_io_writer_full = transmitterBridge_io_write_full; // @[router.scala 72:21:@1485.4]
  assign encoder_io_writer_space = transmitterBridge_io_write_space; // @[router.scala 72:21:@1484.4]
  assign encoder_io_ipReader_data_data = ipBridge_io_read_data_data; // @[router.scala 73:23:@1492.4]
  assign encoder_io_ipReader_data_last = ipBridge_io_read_data_last; // @[router.scala 73:23:@1491.4]
  assign encoder_io_ipReader_empty = ipBridge_io_read_empty; // @[router.scala 73:23:@1490.4]
  assign Transmitter_clock = io_tx_clk; // @[:@1496.4]
  assign Transmitter_reset = reset; // @[:@1497.4]
  assign Transmitter_io_reader_data_data = transmitterBridge_io_read_data_data; // @[router.scala 77:27:@1500.4]
  assign Transmitter_io_reader_data_last = transmitterBridge_io_read_data_last; // @[router.scala 77:27:@1499.4]
  assign Transmitter_io_reader_empty = transmitterBridge_io_read_empty; // @[router.scala 77:27:@1498.4]
  assign Transmitter_io_tx_tready = io_tx_tready; // @[router.scala 78:23:@1503.4]
endmodule
module Top( // @[:@1508.2]
  input        clock, // @[:@1509.4]
  input        reset, // @[:@1510.4]
  input        io_rx_clk, // @[:@1511.4]
  input        io_tx_clk, // @[:@1511.4]
  input  [7:0] io_rx_tdata, // @[:@1511.4]
  input        io_rx_tvalid, // @[:@1511.4]
  input        io_rx_tlast, // @[:@1511.4]
  output [7:0] io_tx_tdata, // @[:@1511.4]
  output       io_tx_tvalid, // @[:@1511.4]
  output       io_tx_tlast, // @[:@1511.4]
  input        io_tx_tready, // @[:@1511.4]
  output       io_tx_tuser // @[:@1511.4]
);
  wire  router_clock; // @[top.scala 22:22:@1513.4]
  wire  router_reset; // @[top.scala 22:22:@1513.4]
  wire  router_io_rx_clk; // @[top.scala 22:22:@1513.4]
  wire  router_io_tx_clk; // @[top.scala 22:22:@1513.4]
  wire [7:0] router_io_rx_tdata; // @[top.scala 22:22:@1513.4]
  wire  router_io_rx_tvalid; // @[top.scala 22:22:@1513.4]
  wire  router_io_rx_tlast; // @[top.scala 22:22:@1513.4]
  wire  router_io_rx_tready; // @[top.scala 22:22:@1513.4]
  wire [7:0] router_io_tx_tdata; // @[top.scala 22:22:@1513.4]
  wire  router_io_tx_tvalid; // @[top.scala 22:22:@1513.4]
  wire  router_io_tx_tlast; // @[top.scala 22:22:@1513.4]
  wire  router_io_tx_tready; // @[top.scala 22:22:@1513.4]
  Router router ( // @[top.scala 22:22:@1513.4]
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
  assign io_tx_tdata = router_io_tx_tdata; // @[top.scala 32:15:@1522.4]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 34:16:@1524.4]
  assign io_tx_tlast = router_io_tx_tlast; // @[top.scala 33:15:@1523.4]
  assign io_tx_tuser = 1'h0; // @[top.scala 37:15:@1526.4]
  assign router_clock = clock; // @[:@1514.4]
  assign router_reset = reset; // @[:@1515.4]
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 24:20:@1516.4]
  assign router_io_tx_clk = io_tx_clk; // @[top.scala 25:20:@1517.4]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 27:22:@1518.4]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 28:23:@1519.4]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 29:22:@1520.4]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 35:23:@1525.4]
endmodule
