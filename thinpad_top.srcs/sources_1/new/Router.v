module ARPAcceptor( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [7:0]  io_rx_tdata, // @[:@6.4]
  input         io_rx_tvalid, // @[:@6.4]
  input         io_rx_tlast, // @[:@6.4]
  output        io_rx_tready, // @[:@6.4]
  output [31:0] io_output_tpa, // @[:@6.4]
  output [47:0] io_output_tha, // @[:@6.4]
  output [31:0] io_output_spa, // @[:@6.4]
  output [47:0] io_output_sha, // @[:@6.4]
  output [15:0] io_output_oper, // @[:@6.4]
  output [7:0]  io_output_plen, // @[:@6.4]
  output [7:0]  io_output_hlen, // @[:@6.4]
  output [15:0] io_output_ptype, // @[:@6.4]
  output [15:0] io_output_htype, // @[:@6.4]
  input         io_start, // @[:@6.4]
  output        io_finished // @[:@6.4]
);
  reg [7:0] buf_0; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_0;
  reg [7:0] buf_1; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_1;
  reg [7:0] buf_2; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_2;
  reg [7:0] buf_3; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_3;
  reg [7:0] buf_4; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_4;
  reg [7:0] buf_5; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_5;
  reg [7:0] buf_6; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_6;
  reg [7:0] buf_7; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_7;
  reg [7:0] buf_8; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_8;
  reg [7:0] buf_9; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_9;
  reg [7:0] buf_10; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_10;
  reg [7:0] buf_11; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_11;
  reg [7:0] buf_12; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_12;
  reg [7:0] buf_13; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_13;
  reg [7:0] buf_14; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_14;
  reg [7:0] buf_15; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_15;
  reg [7:0] buf_16; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_16;
  reg [7:0] buf_17; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_17;
  reg [7:0] buf_18; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_18;
  reg [7:0] buf_19; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_19;
  reg [7:0] buf_20; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_20;
  reg [7:0] buf_21; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_21;
  reg [7:0] buf_22; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_22;
  reg [7:0] buf_23; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_23;
  reg [7:0] buf_24; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_24;
  reg [7:0] buf_25; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_25;
  reg [7:0] buf_26; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_26;
  reg [7:0] buf_27; // @[arp.scala 14:16:@8.4]
  reg [31:0] _RAND_27;
  reg [4:0] cnt; // @[arp.scala 15:20:@9.4]
  reg [31:0] _RAND_28;
  reg  reading; // @[arp.scala 16:24:@10.4]
  reg [31:0] _RAND_29;
  wire  _T_68; // @[arp.scala 22:23:@16.6]
  wire  _T_70; // @[arp.scala 23:16:@18.8]
  wire [7:0] _buf_cnt; // @[arp.scala 24:18:@20.10 arp.scala 24:18:@20.10]
  wire [7:0] _GEN_0; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_1; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_2; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_3; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_4; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_5; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_6; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_7; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_8; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_9; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_10; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_11; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_12; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_13; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_14; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_15; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_16; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_17; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_18; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_19; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_20; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_21; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_22; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_23; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_24; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_25; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_26; // @[arp.scala 24:18:@20.10]
  wire [7:0] _GEN_27; // @[arp.scala 24:18:@20.10]
  wire [5:0] _T_73; // @[arp.scala 25:20:@21.10]
  wire [4:0] _T_74; // @[arp.scala 25:20:@22.10]
  wire [7:0] _GEN_28; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_29; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_30; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_31; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_32; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_33; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_34; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_35; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_36; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_37; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_38; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_39; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_40; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_41; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_42; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_43; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_44; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_45; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_46; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_47; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_48; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_49; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_50; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_51; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_52; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_53; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_54; // @[arp.scala 23:24:@19.8]
  wire [7:0] _GEN_55; // @[arp.scala 23:24:@19.8]
  wire [4:0] _GEN_56; // @[arp.scala 23:24:@19.8]
  wire  _T_76; // @[arp.scala 28:16:@25.8]
  reg [4:0] _T_78; // @[arp.scala 28:36:@26.8]
  reg [31:0] _RAND_30;
  wire  _T_80; // @[arp.scala 28:42:@28.8]
  wire  _T_81; // @[arp.scala 28:25:@29.8]
  wire  _GEN_57; // @[arp.scala 28:53:@30.8]
  wire [7:0] _GEN_58; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_59; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_60; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_61; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_62; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_63; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_64; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_65; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_66; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_67; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_68; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_69; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_70; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_71; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_72; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_73; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_74; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_75; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_76; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_77; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_78; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_79; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_80; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_81; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_82; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_83; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_84; // @[arp.scala 22:35:@17.6]
  wire [7:0] _GEN_85; // @[arp.scala 22:35:@17.6]
  wire [4:0] _GEN_86; // @[arp.scala 22:35:@17.6]
  wire  _GEN_87; // @[arp.scala 22:35:@17.6]
  wire [4:0] _GEN_88; // @[arp.scala 18:18:@11.4]
  wire  _GEN_89; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_90; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_91; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_92; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_93; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_94; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_95; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_96; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_97; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_98; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_99; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_100; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_101; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_102; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_103; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_104; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_105; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_106; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_107; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_108; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_109; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_110; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_111; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_112; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_113; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_114; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_115; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_116; // @[arp.scala 18:18:@11.4]
  wire [7:0] _GEN_117; // @[arp.scala 18:18:@11.4]
  wire [15:0] _T_84; // @[:@35.4]
  wire [23:0] _T_85; // @[:@36.4]
  wire [15:0] _T_86; // @[:@37.4]
  wire [15:0] _T_87; // @[:@38.4]
  wire [31:0] _T_88; // @[:@39.4]
  wire [55:0] _T_89; // @[:@40.4]
  wire [15:0] _T_90; // @[:@41.4]
  wire [23:0] _T_91; // @[:@42.4]
  wire [15:0] _T_92; // @[:@43.4]
  wire [15:0] _T_93; // @[:@44.4]
  wire [31:0] _T_94; // @[:@45.4]
  wire [55:0] _T_95; // @[:@46.4]
  wire [111:0] _T_96; // @[:@47.4]
  wire [15:0] _T_97; // @[:@48.4]
  wire [23:0] _T_98; // @[:@49.4]
  wire [15:0] _T_99; // @[:@50.4]
  wire [15:0] _T_100; // @[:@51.4]
  wire [31:0] _T_101; // @[:@52.4]
  wire [55:0] _T_102; // @[:@53.4]
  wire [15:0] _T_103; // @[:@54.4]
  wire [23:0] _T_104; // @[:@55.4]
  wire [15:0] _T_105; // @[:@56.4]
  wire [15:0] _T_106; // @[:@57.4]
  wire [31:0] _T_107; // @[:@58.4]
  wire [55:0] _T_108; // @[:@59.4]
  wire [111:0] _T_109; // @[:@60.4]
  wire [223:0] _T_110; // @[:@61.4]
  wire [223:0] _T_114; // @[:@63.4 :@64.4]
  wire [15:0] _T_115; // @[arp.scala 34:42:@65.4]
  wire [15:0] _T_116; // @[arp.scala 34:42:@67.4]
  wire [7:0] _T_117; // @[arp.scala 34:42:@69.4]
  wire [7:0] _T_118; // @[arp.scala 34:42:@71.4]
  wire [15:0] _T_119; // @[arp.scala 34:42:@73.4]
  wire [47:0] _T_120; // @[arp.scala 34:42:@75.4]
  wire [31:0] _T_121; // @[arp.scala 34:42:@77.4]
  wire [47:0] _T_122; // @[arp.scala 34:42:@79.4]
  wire [31:0] _T_123; // @[arp.scala 34:42:@81.4]
  wire  _T_125; // @[arp.scala 35:18:@92.4]
  wire [31:0] _T_112_tpa; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@82.4]
  wire [47:0] _T_112_tha; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@80.4]
  wire [31:0] _T_112_spa; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@78.4]
  wire [47:0] _T_112_sha; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@76.4]
  wire [15:0] _T_112_oper; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@74.4]
  wire [7:0] _T_112_plen; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@72.4]
  wire [7:0] _T_112_hlen; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@70.4]
  wire [15:0] _T_112_ptype; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@68.4]
  wire [15:0] _T_112_htype; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@66.4]
  assign _T_68 = io_rx_tvalid & reading; // @[arp.scala 22:23:@16.6]
  assign _T_70 = cnt < 5'h1c; // @[arp.scala 23:16:@18.8]
  assign _buf_cnt = io_rx_tdata; // @[arp.scala 24:18:@20.10 arp.scala 24:18:@20.10]
  assign _GEN_0 = 5'h0 == cnt ? io_rx_tdata : buf_0; // @[arp.scala 24:18:@20.10]
  assign _GEN_1 = 5'h1 == cnt ? io_rx_tdata : buf_1; // @[arp.scala 24:18:@20.10]
  assign _GEN_2 = 5'h2 == cnt ? io_rx_tdata : buf_2; // @[arp.scala 24:18:@20.10]
  assign _GEN_3 = 5'h3 == cnt ? io_rx_tdata : buf_3; // @[arp.scala 24:18:@20.10]
  assign _GEN_4 = 5'h4 == cnt ? io_rx_tdata : buf_4; // @[arp.scala 24:18:@20.10]
  assign _GEN_5 = 5'h5 == cnt ? io_rx_tdata : buf_5; // @[arp.scala 24:18:@20.10]
  assign _GEN_6 = 5'h6 == cnt ? io_rx_tdata : buf_6; // @[arp.scala 24:18:@20.10]
  assign _GEN_7 = 5'h7 == cnt ? io_rx_tdata : buf_7; // @[arp.scala 24:18:@20.10]
  assign _GEN_8 = 5'h8 == cnt ? io_rx_tdata : buf_8; // @[arp.scala 24:18:@20.10]
  assign _GEN_9 = 5'h9 == cnt ? io_rx_tdata : buf_9; // @[arp.scala 24:18:@20.10]
  assign _GEN_10 = 5'ha == cnt ? io_rx_tdata : buf_10; // @[arp.scala 24:18:@20.10]
  assign _GEN_11 = 5'hb == cnt ? io_rx_tdata : buf_11; // @[arp.scala 24:18:@20.10]
  assign _GEN_12 = 5'hc == cnt ? io_rx_tdata : buf_12; // @[arp.scala 24:18:@20.10]
  assign _GEN_13 = 5'hd == cnt ? io_rx_tdata : buf_13; // @[arp.scala 24:18:@20.10]
  assign _GEN_14 = 5'he == cnt ? io_rx_tdata : buf_14; // @[arp.scala 24:18:@20.10]
  assign _GEN_15 = 5'hf == cnt ? io_rx_tdata : buf_15; // @[arp.scala 24:18:@20.10]
  assign _GEN_16 = 5'h10 == cnt ? io_rx_tdata : buf_16; // @[arp.scala 24:18:@20.10]
  assign _GEN_17 = 5'h11 == cnt ? io_rx_tdata : buf_17; // @[arp.scala 24:18:@20.10]
  assign _GEN_18 = 5'h12 == cnt ? io_rx_tdata : buf_18; // @[arp.scala 24:18:@20.10]
  assign _GEN_19 = 5'h13 == cnt ? io_rx_tdata : buf_19; // @[arp.scala 24:18:@20.10]
  assign _GEN_20 = 5'h14 == cnt ? io_rx_tdata : buf_20; // @[arp.scala 24:18:@20.10]
  assign _GEN_21 = 5'h15 == cnt ? io_rx_tdata : buf_21; // @[arp.scala 24:18:@20.10]
  assign _GEN_22 = 5'h16 == cnt ? io_rx_tdata : buf_22; // @[arp.scala 24:18:@20.10]
  assign _GEN_23 = 5'h17 == cnt ? io_rx_tdata : buf_23; // @[arp.scala 24:18:@20.10]
  assign _GEN_24 = 5'h18 == cnt ? io_rx_tdata : buf_24; // @[arp.scala 24:18:@20.10]
  assign _GEN_25 = 5'h19 == cnt ? io_rx_tdata : buf_25; // @[arp.scala 24:18:@20.10]
  assign _GEN_26 = 5'h1a == cnt ? io_rx_tdata : buf_26; // @[arp.scala 24:18:@20.10]
  assign _GEN_27 = 5'h1b == cnt ? io_rx_tdata : buf_27; // @[arp.scala 24:18:@20.10]
  assign _T_73 = cnt + 5'h1; // @[arp.scala 25:20:@21.10]
  assign _T_74 = cnt + 5'h1; // @[arp.scala 25:20:@22.10]
  assign _GEN_28 = _T_70 ? _GEN_0 : buf_0; // @[arp.scala 23:24:@19.8]
  assign _GEN_29 = _T_70 ? _GEN_1 : buf_1; // @[arp.scala 23:24:@19.8]
  assign _GEN_30 = _T_70 ? _GEN_2 : buf_2; // @[arp.scala 23:24:@19.8]
  assign _GEN_31 = _T_70 ? _GEN_3 : buf_3; // @[arp.scala 23:24:@19.8]
  assign _GEN_32 = _T_70 ? _GEN_4 : buf_4; // @[arp.scala 23:24:@19.8]
  assign _GEN_33 = _T_70 ? _GEN_5 : buf_5; // @[arp.scala 23:24:@19.8]
  assign _GEN_34 = _T_70 ? _GEN_6 : buf_6; // @[arp.scala 23:24:@19.8]
  assign _GEN_35 = _T_70 ? _GEN_7 : buf_7; // @[arp.scala 23:24:@19.8]
  assign _GEN_36 = _T_70 ? _GEN_8 : buf_8; // @[arp.scala 23:24:@19.8]
  assign _GEN_37 = _T_70 ? _GEN_9 : buf_9; // @[arp.scala 23:24:@19.8]
  assign _GEN_38 = _T_70 ? _GEN_10 : buf_10; // @[arp.scala 23:24:@19.8]
  assign _GEN_39 = _T_70 ? _GEN_11 : buf_11; // @[arp.scala 23:24:@19.8]
  assign _GEN_40 = _T_70 ? _GEN_12 : buf_12; // @[arp.scala 23:24:@19.8]
  assign _GEN_41 = _T_70 ? _GEN_13 : buf_13; // @[arp.scala 23:24:@19.8]
  assign _GEN_42 = _T_70 ? _GEN_14 : buf_14; // @[arp.scala 23:24:@19.8]
  assign _GEN_43 = _T_70 ? _GEN_15 : buf_15; // @[arp.scala 23:24:@19.8]
  assign _GEN_44 = _T_70 ? _GEN_16 : buf_16; // @[arp.scala 23:24:@19.8]
  assign _GEN_45 = _T_70 ? _GEN_17 : buf_17; // @[arp.scala 23:24:@19.8]
  assign _GEN_46 = _T_70 ? _GEN_18 : buf_18; // @[arp.scala 23:24:@19.8]
  assign _GEN_47 = _T_70 ? _GEN_19 : buf_19; // @[arp.scala 23:24:@19.8]
  assign _GEN_48 = _T_70 ? _GEN_20 : buf_20; // @[arp.scala 23:24:@19.8]
  assign _GEN_49 = _T_70 ? _GEN_21 : buf_21; // @[arp.scala 23:24:@19.8]
  assign _GEN_50 = _T_70 ? _GEN_22 : buf_22; // @[arp.scala 23:24:@19.8]
  assign _GEN_51 = _T_70 ? _GEN_23 : buf_23; // @[arp.scala 23:24:@19.8]
  assign _GEN_52 = _T_70 ? _GEN_24 : buf_24; // @[arp.scala 23:24:@19.8]
  assign _GEN_53 = _T_70 ? _GEN_25 : buf_25; // @[arp.scala 23:24:@19.8]
  assign _GEN_54 = _T_70 ? _GEN_26 : buf_26; // @[arp.scala 23:24:@19.8]
  assign _GEN_55 = _T_70 ? _GEN_27 : buf_27; // @[arp.scala 23:24:@19.8]
  assign _GEN_56 = _T_70 ? _T_74 : cnt; // @[arp.scala 23:24:@19.8]
  assign _T_76 = cnt == 5'h1c; // @[arp.scala 28:16:@25.8]
  assign _T_80 = _T_78 != 5'h1c; // @[arp.scala 28:42:@28.8]
  assign _T_81 = _T_76 & _T_80; // @[arp.scala 28:25:@29.8]
  assign _GEN_57 = _T_81 ? 1'h0 : reading; // @[arp.scala 28:53:@30.8]
  assign _GEN_58 = _T_68 ? _GEN_28 : buf_0; // @[arp.scala 22:35:@17.6]
  assign _GEN_59 = _T_68 ? _GEN_29 : buf_1; // @[arp.scala 22:35:@17.6]
  assign _GEN_60 = _T_68 ? _GEN_30 : buf_2; // @[arp.scala 22:35:@17.6]
  assign _GEN_61 = _T_68 ? _GEN_31 : buf_3; // @[arp.scala 22:35:@17.6]
  assign _GEN_62 = _T_68 ? _GEN_32 : buf_4; // @[arp.scala 22:35:@17.6]
  assign _GEN_63 = _T_68 ? _GEN_33 : buf_5; // @[arp.scala 22:35:@17.6]
  assign _GEN_64 = _T_68 ? _GEN_34 : buf_6; // @[arp.scala 22:35:@17.6]
  assign _GEN_65 = _T_68 ? _GEN_35 : buf_7; // @[arp.scala 22:35:@17.6]
  assign _GEN_66 = _T_68 ? _GEN_36 : buf_8; // @[arp.scala 22:35:@17.6]
  assign _GEN_67 = _T_68 ? _GEN_37 : buf_9; // @[arp.scala 22:35:@17.6]
  assign _GEN_68 = _T_68 ? _GEN_38 : buf_10; // @[arp.scala 22:35:@17.6]
  assign _GEN_69 = _T_68 ? _GEN_39 : buf_11; // @[arp.scala 22:35:@17.6]
  assign _GEN_70 = _T_68 ? _GEN_40 : buf_12; // @[arp.scala 22:35:@17.6]
  assign _GEN_71 = _T_68 ? _GEN_41 : buf_13; // @[arp.scala 22:35:@17.6]
  assign _GEN_72 = _T_68 ? _GEN_42 : buf_14; // @[arp.scala 22:35:@17.6]
  assign _GEN_73 = _T_68 ? _GEN_43 : buf_15; // @[arp.scala 22:35:@17.6]
  assign _GEN_74 = _T_68 ? _GEN_44 : buf_16; // @[arp.scala 22:35:@17.6]
  assign _GEN_75 = _T_68 ? _GEN_45 : buf_17; // @[arp.scala 22:35:@17.6]
  assign _GEN_76 = _T_68 ? _GEN_46 : buf_18; // @[arp.scala 22:35:@17.6]
  assign _GEN_77 = _T_68 ? _GEN_47 : buf_19; // @[arp.scala 22:35:@17.6]
  assign _GEN_78 = _T_68 ? _GEN_48 : buf_20; // @[arp.scala 22:35:@17.6]
  assign _GEN_79 = _T_68 ? _GEN_49 : buf_21; // @[arp.scala 22:35:@17.6]
  assign _GEN_80 = _T_68 ? _GEN_50 : buf_22; // @[arp.scala 22:35:@17.6]
  assign _GEN_81 = _T_68 ? _GEN_51 : buf_23; // @[arp.scala 22:35:@17.6]
  assign _GEN_82 = _T_68 ? _GEN_52 : buf_24; // @[arp.scala 22:35:@17.6]
  assign _GEN_83 = _T_68 ? _GEN_53 : buf_25; // @[arp.scala 22:35:@17.6]
  assign _GEN_84 = _T_68 ? _GEN_54 : buf_26; // @[arp.scala 22:35:@17.6]
  assign _GEN_85 = _T_68 ? _GEN_55 : buf_27; // @[arp.scala 22:35:@17.6]
  assign _GEN_86 = _T_68 ? _GEN_56 : cnt; // @[arp.scala 22:35:@17.6]
  assign _GEN_87 = _T_68 ? _GEN_57 : reading; // @[arp.scala 22:35:@17.6]
  assign _GEN_88 = io_start ? 5'h0 : _GEN_86; // @[arp.scala 18:18:@11.4]
  assign _GEN_89 = io_start ? 1'h1 : _GEN_87; // @[arp.scala 18:18:@11.4]
  assign _GEN_90 = io_start ? buf_0 : _GEN_58; // @[arp.scala 18:18:@11.4]
  assign _GEN_91 = io_start ? buf_1 : _GEN_59; // @[arp.scala 18:18:@11.4]
  assign _GEN_92 = io_start ? buf_2 : _GEN_60; // @[arp.scala 18:18:@11.4]
  assign _GEN_93 = io_start ? buf_3 : _GEN_61; // @[arp.scala 18:18:@11.4]
  assign _GEN_94 = io_start ? buf_4 : _GEN_62; // @[arp.scala 18:18:@11.4]
  assign _GEN_95 = io_start ? buf_5 : _GEN_63; // @[arp.scala 18:18:@11.4]
  assign _GEN_96 = io_start ? buf_6 : _GEN_64; // @[arp.scala 18:18:@11.4]
  assign _GEN_97 = io_start ? buf_7 : _GEN_65; // @[arp.scala 18:18:@11.4]
  assign _GEN_98 = io_start ? buf_8 : _GEN_66; // @[arp.scala 18:18:@11.4]
  assign _GEN_99 = io_start ? buf_9 : _GEN_67; // @[arp.scala 18:18:@11.4]
  assign _GEN_100 = io_start ? buf_10 : _GEN_68; // @[arp.scala 18:18:@11.4]
  assign _GEN_101 = io_start ? buf_11 : _GEN_69; // @[arp.scala 18:18:@11.4]
  assign _GEN_102 = io_start ? buf_12 : _GEN_70; // @[arp.scala 18:18:@11.4]
  assign _GEN_103 = io_start ? buf_13 : _GEN_71; // @[arp.scala 18:18:@11.4]
  assign _GEN_104 = io_start ? buf_14 : _GEN_72; // @[arp.scala 18:18:@11.4]
  assign _GEN_105 = io_start ? buf_15 : _GEN_73; // @[arp.scala 18:18:@11.4]
  assign _GEN_106 = io_start ? buf_16 : _GEN_74; // @[arp.scala 18:18:@11.4]
  assign _GEN_107 = io_start ? buf_17 : _GEN_75; // @[arp.scala 18:18:@11.4]
  assign _GEN_108 = io_start ? buf_18 : _GEN_76; // @[arp.scala 18:18:@11.4]
  assign _GEN_109 = io_start ? buf_19 : _GEN_77; // @[arp.scala 18:18:@11.4]
  assign _GEN_110 = io_start ? buf_20 : _GEN_78; // @[arp.scala 18:18:@11.4]
  assign _GEN_111 = io_start ? buf_21 : _GEN_79; // @[arp.scala 18:18:@11.4]
  assign _GEN_112 = io_start ? buf_22 : _GEN_80; // @[arp.scala 18:18:@11.4]
  assign _GEN_113 = io_start ? buf_23 : _GEN_81; // @[arp.scala 18:18:@11.4]
  assign _GEN_114 = io_start ? buf_24 : _GEN_82; // @[arp.scala 18:18:@11.4]
  assign _GEN_115 = io_start ? buf_25 : _GEN_83; // @[arp.scala 18:18:@11.4]
  assign _GEN_116 = io_start ? buf_26 : _GEN_84; // @[arp.scala 18:18:@11.4]
  assign _GEN_117 = io_start ? buf_27 : _GEN_85; // @[arp.scala 18:18:@11.4]
  assign _T_84 = {buf_2,buf_1}; // @[:@35.4]
  assign _T_85 = {buf_2,buf_1,buf_0}; // @[:@36.4]
  assign _T_86 = {buf_4,buf_3}; // @[:@37.4]
  assign _T_87 = {buf_6,buf_5}; // @[:@38.4]
  assign _T_88 = {buf_6,buf_5,buf_4,buf_3}; // @[:@39.4]
  assign _T_89 = {buf_6,buf_5,buf_4,buf_3,buf_2,buf_1,buf_0}; // @[:@40.4]
  assign _T_90 = {buf_9,buf_8}; // @[:@41.4]
  assign _T_91 = {buf_9,buf_8,buf_7}; // @[:@42.4]
  assign _T_92 = {buf_11,buf_10}; // @[:@43.4]
  assign _T_93 = {buf_13,buf_12}; // @[:@44.4]
  assign _T_94 = {buf_13,buf_12,buf_11,buf_10}; // @[:@45.4]
  assign _T_95 = {buf_13,buf_12,buf_11,buf_10,buf_9,buf_8,buf_7}; // @[:@46.4]
  assign _T_96 = {buf_13,buf_12,buf_11,buf_10,buf_9,buf_8,buf_7,_T_89}; // @[:@47.4]
  assign _T_97 = {buf_16,buf_15}; // @[:@48.4]
  assign _T_98 = {buf_16,buf_15,buf_14}; // @[:@49.4]
  assign _T_99 = {buf_18,buf_17}; // @[:@50.4]
  assign _T_100 = {buf_20,buf_19}; // @[:@51.4]
  assign _T_101 = {buf_20,buf_19,buf_18,buf_17}; // @[:@52.4]
  assign _T_102 = {buf_20,buf_19,buf_18,buf_17,buf_16,buf_15,buf_14}; // @[:@53.4]
  assign _T_103 = {buf_23,buf_22}; // @[:@54.4]
  assign _T_104 = {buf_23,buf_22,buf_21}; // @[:@55.4]
  assign _T_105 = {buf_25,buf_24}; // @[:@56.4]
  assign _T_106 = {buf_27,buf_26}; // @[:@57.4]
  assign _T_107 = {buf_27,buf_26,buf_25,buf_24}; // @[:@58.4]
  assign _T_108 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21}; // @[:@59.4]
  assign _T_109 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21,_T_102}; // @[:@60.4]
  assign _T_110 = {buf_27,buf_26,buf_25,buf_24,buf_23,buf_22,buf_21,_T_102,_T_96}; // @[:@61.4]
  assign _T_114 = _T_110; // @[:@63.4 :@64.4]
  assign _T_115 = _T_110[15:0]; // @[arp.scala 34:42:@65.4]
  assign _T_116 = _T_110[31:16]; // @[arp.scala 34:42:@67.4]
  assign _T_117 = _T_110[39:32]; // @[arp.scala 34:42:@69.4]
  assign _T_118 = _T_110[47:40]; // @[arp.scala 34:42:@71.4]
  assign _T_119 = _T_110[63:48]; // @[arp.scala 34:42:@73.4]
  assign _T_120 = _T_110[111:64]; // @[arp.scala 34:42:@75.4]
  assign _T_121 = _T_110[143:112]; // @[arp.scala 34:42:@77.4]
  assign _T_122 = _T_110[191:144]; // @[arp.scala 34:42:@79.4]
  assign _T_123 = _T_110[223:192]; // @[arp.scala 34:42:@81.4]
  assign _T_125 = reading == 1'h0; // @[arp.scala 35:18:@92.4]
  assign _T_112_tpa = _T_123; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@82.4]
  assign _T_112_tha = _T_122; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@80.4]
  assign _T_112_spa = _T_121; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@78.4]
  assign _T_112_sha = _T_120; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@76.4]
  assign _T_112_oper = _T_119; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@74.4]
  assign _T_112_plen = _T_118; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@72.4]
  assign _T_112_hlen = _T_117; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@70.4]
  assign _T_112_ptype = _T_116; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@68.4]
  assign _T_112_htype = _T_115; // @[arp.scala 34:42:@62.4 arp.scala 34:42:@66.4]
  assign io_rx_tready = 1'h1; // @[arp.scala 36:16:@94.4]
  assign io_output_tpa = _T_110[223:192]; // @[arp.scala 34:13:@91.4]
  assign io_output_tha = _T_110[191:144]; // @[arp.scala 34:13:@90.4]
  assign io_output_spa = _T_110[143:112]; // @[arp.scala 34:13:@89.4]
  assign io_output_sha = _T_110[111:64]; // @[arp.scala 34:13:@88.4]
  assign io_output_oper = _T_110[63:48]; // @[arp.scala 34:13:@87.4]
  assign io_output_plen = _T_110[47:40]; // @[arp.scala 34:13:@86.4]
  assign io_output_hlen = _T_110[39:32]; // @[arp.scala 34:13:@85.4]
  assign io_output_ptype = _T_110[31:16]; // @[arp.scala 34:13:@84.4]
  assign io_output_htype = _T_110[15:0]; // @[arp.scala 34:13:@83.4]
  assign io_finished = reading == 1'h0; // @[arp.scala 35:15:@93.4]
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
  _T_78 = _RAND_30[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h0 == cnt) begin
            buf_0 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h1 == cnt) begin
            buf_1 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h2 == cnt) begin
            buf_2 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h3 == cnt) begin
            buf_3 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h4 == cnt) begin
            buf_4 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h5 == cnt) begin
            buf_5 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h6 == cnt) begin
            buf_6 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h7 == cnt) begin
            buf_7 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h8 == cnt) begin
            buf_8 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h9 == cnt) begin
            buf_9 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'ha == cnt) begin
            buf_10 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'hb == cnt) begin
            buf_11 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'hc == cnt) begin
            buf_12 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'hd == cnt) begin
            buf_13 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'he == cnt) begin
            buf_14 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'hf == cnt) begin
            buf_15 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h10 == cnt) begin
            buf_16 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h11 == cnt) begin
            buf_17 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h12 == cnt) begin
            buf_18 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h13 == cnt) begin
            buf_19 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h14 == cnt) begin
            buf_20 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h15 == cnt) begin
            buf_21 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h16 == cnt) begin
            buf_22 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h17 == cnt) begin
            buf_23 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h18 == cnt) begin
            buf_24 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h19 == cnt) begin
            buf_25 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h1a == cnt) begin
            buf_26 <= io_rx_tdata;
          end
        end
      end
    end
    if (!(io_start)) begin
      if (_T_68) begin
        if (_T_70) begin
          if (5'h1b == cnt) begin
            buf_27 <= io_rx_tdata;
          end
        end
      end
    end
    if (reset) begin
      cnt <= 5'h0;
    end else begin
      if (io_start) begin
        cnt <= 5'h0;
      end else begin
        if (_T_68) begin
          if (_T_70) begin
            cnt <= _T_74;
          end
        end
      end
    end
    if (reset) begin
      reading <= 1'h0;
    end else begin
      if (io_start) begin
        reading <= 1'h1;
      end else begin
        if (_T_68) begin
          if (_T_81) begin
            reading <= 1'h0;
          end
        end
      end
    end
    _T_78 <= cnt;
  end
endmodule
module Acceptor( // @[:@96.2]
  input         clock, // @[:@97.4]
  input         reset, // @[:@98.4]
  input  [7:0]  io_rx_tdata, // @[:@99.4]
  input         io_rx_tvalid, // @[:@99.4]
  input         io_rx_tlast, // @[:@99.4]
  output        io_rx_tready, // @[:@99.4]
  output [47:0] io_dest_addr, // @[:@99.4]
  output [47:0] io_sender_addr, // @[:@99.4]
  output [1:0]  io_pactype, // @[:@99.4]
  output [2:0]  io_port, // @[:@99.4]
  output [31:0] io_arp_tpa, // @[:@99.4]
  output [47:0] io_arp_tha, // @[:@99.4]
  output [31:0] io_arp_spa, // @[:@99.4]
  output [47:0] io_arp_sha, // @[:@99.4]
  output [15:0] io_arp_oper, // @[:@99.4]
  output [7:0]  io_arp_plen, // @[:@99.4]
  output [7:0]  io_arp_hlen, // @[:@99.4]
  output [15:0] io_arp_ptype, // @[:@99.4]
  output [15:0] io_arp_htype, // @[:@99.4]
  output        io_emit // @[:@99.4]
);
  wire  arpAcceptor_clock; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_reset; // @[acceptor.scala 45:27:@175.4]
  wire [7:0] arpAcceptor_io_rx_tdata; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_io_rx_tvalid; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_io_rx_tlast; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_io_rx_tready; // @[acceptor.scala 45:27:@175.4]
  wire [31:0] arpAcceptor_io_output_tpa; // @[acceptor.scala 45:27:@175.4]
  wire [47:0] arpAcceptor_io_output_tha; // @[acceptor.scala 45:27:@175.4]
  wire [31:0] arpAcceptor_io_output_spa; // @[acceptor.scala 45:27:@175.4]
  wire [47:0] arpAcceptor_io_output_sha; // @[acceptor.scala 45:27:@175.4]
  wire [15:0] arpAcceptor_io_output_oper; // @[acceptor.scala 45:27:@175.4]
  wire [7:0] arpAcceptor_io_output_plen; // @[acceptor.scala 45:27:@175.4]
  wire [7:0] arpAcceptor_io_output_hlen; // @[acceptor.scala 45:27:@175.4]
  wire [15:0] arpAcceptor_io_output_ptype; // @[acceptor.scala 45:27:@175.4]
  wire [15:0] arpAcceptor_io_output_htype; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_io_start; // @[acceptor.scala 45:27:@175.4]
  wire  arpAcceptor_io_finished; // @[acceptor.scala 45:27:@175.4]
  reg [11:0] cnt; // @[acceptor.scala 24:20:@101.4]
  reg [31:0] _RAND_0;
  reg [7:0] header_0; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_1;
  reg [7:0] header_1; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_2;
  reg [7:0] header_2; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_3;
  reg [7:0] header_3; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_4;
  reg [7:0] header_4; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_5;
  reg [7:0] header_5; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_6;
  reg [7:0] header_6; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_7;
  reg [7:0] header_7; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_8;
  reg [7:0] header_8; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_9;
  reg [7:0] header_9; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_10;
  reg [7:0] header_10; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_11;
  reg [7:0] header_11; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_12;
  reg [7:0] header_12; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_13;
  reg [7:0] header_13; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_14;
  reg [7:0] header_14; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_15;
  reg [7:0] header_15; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_16;
  reg [7:0] header_16; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_17;
  reg [7:0] header_17; // @[acceptor.scala 25:19:@102.4]
  reg [31:0] _RAND_18;
  wire [15:0] _T_63; // @[acceptor.scala 28:28:@103.4]
  wire [15:0] _T_64; // @[acceptor.scala 28:28:@104.4]
  wire [31:0] _T_65; // @[acceptor.scala 28:28:@105.4]
  wire [15:0] _T_66; // @[acceptor.scala 28:28:@106.4]
  wire [15:0] _T_67; // @[acceptor.scala 28:28:@107.4]
  wire [23:0] _T_68; // @[acceptor.scala 28:28:@108.4]
  wire [39:0] _T_69; // @[acceptor.scala 28:28:@109.4]
  wire [71:0] _T_70; // @[acceptor.scala 28:28:@110.4]
  wire [15:0] _T_71; // @[acceptor.scala 28:28:@111.4]
  wire [15:0] _T_72; // @[acceptor.scala 28:28:@112.4]
  wire [31:0] _T_73; // @[acceptor.scala 28:28:@113.4]
  wire [15:0] _T_74; // @[acceptor.scala 28:28:@114.4]
  wire [15:0] _T_75; // @[acceptor.scala 28:28:@115.4]
  wire [23:0] _T_76; // @[acceptor.scala 28:28:@116.4]
  wire [39:0] _T_77; // @[acceptor.scala 28:28:@117.4]
  wire [71:0] _T_78; // @[acceptor.scala 28:28:@118.4]
  wire [143:0] _T_79; // @[acceptor.scala 28:28:@119.4]
  wire [95:0] _T_80; // @[acceptor.scala 28:35:@120.4]
  wire [15:0] _T_81; // @[acceptor.scala 29:26:@122.4]
  wire [15:0] _T_82; // @[acceptor.scala 29:26:@123.4]
  wire [31:0] _T_83; // @[acceptor.scala 29:26:@124.4]
  wire [15:0] _T_84; // @[acceptor.scala 29:26:@125.4]
  wire [15:0] _T_85; // @[acceptor.scala 29:26:@126.4]
  wire [23:0] _T_86; // @[acceptor.scala 29:26:@127.4]
  wire [39:0] _T_87; // @[acceptor.scala 29:26:@128.4]
  wire [71:0] _T_88; // @[acceptor.scala 29:26:@129.4]
  wire [15:0] _T_89; // @[acceptor.scala 29:26:@130.4]
  wire [15:0] _T_90; // @[acceptor.scala 29:26:@131.4]
  wire [31:0] _T_91; // @[acceptor.scala 29:26:@132.4]
  wire [15:0] _T_92; // @[acceptor.scala 29:26:@133.4]
  wire [15:0] _T_93; // @[acceptor.scala 29:26:@134.4]
  wire [23:0] _T_94; // @[acceptor.scala 29:26:@135.4]
  wire [39:0] _T_95; // @[acceptor.scala 29:26:@136.4]
  wire [71:0] _T_96; // @[acceptor.scala 29:26:@137.4]
  wire [143:0] _T_97; // @[acceptor.scala 29:26:@138.4]
  wire  _T_101; // @[pactype.scala 14:16:@142.4]
  wire  _T_103; // @[pactype.scala 14:34:@143.4]
  wire  _T_104; // @[pactype.scala 14:25:@144.4]
  wire  _T_106; // @[pactype.scala 16:22:@149.6]
  wire  _T_108; // @[pactype.scala 16:40:@150.6]
  wire  _T_109; // @[pactype.scala 16:31:@151.6]
  wire [1:0] _GEN_0; // @[pactype.scala 16:50:@152.6]
  wire [1:0] _GEN_1; // @[pactype.scala 14:44:@145.4]
  wire [12:0] _T_112; // @[acceptor.scala 36:16:@164.8]
  wire [11:0] _T_113; // @[acceptor.scala 36:16:@165.8]
  wire [11:0] _GEN_2; // @[acceptor.scala 35:28:@163.6]
  wire [11:0] _GEN_3; // @[acceptor.scala 33:21:@159.4]
  wire  _T_115; // @[acceptor.scala 40:14:@169.6]
  wire [4:0] _T_117; // @[:@171.8]
  wire [7:0] _header_T_117; // @[acceptor.scala 41:19:@172.8 acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_4; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_5; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_6; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_7; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_8; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_9; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_10; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_11; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_12; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_13; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_14; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_15; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_16; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_17; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_18; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_19; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_20; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_21; // @[acceptor.scala 41:19:@172.8]
  wire [7:0] _GEN_22; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_23; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_24; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_25; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_26; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_27; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_28; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_29; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_30; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_31; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_32; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_33; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_34; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_35; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_36; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_37; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_38; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_39; // @[acceptor.scala 40:30:@170.6]
  wire [7:0] _GEN_40; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_41; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_42; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_43; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_44; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_45; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_46; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_47; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_48; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_49; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_50; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_51; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_52; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_53; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_54; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_55; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_56; // @[acceptor.scala 39:22:@168.4]
  wire [7:0] _GEN_57; // @[acceptor.scala 39:22:@168.4]
  wire  _T_119; // @[acceptor.scala 47:47:@182.4]
  wire  _T_120; // @[acceptor.scala 47:40:@183.4]
  wire  _T_122; // @[acceptor.scala 49:25:@186.4]
  wire  _T_123; // @[acceptor.scala 49:41:@187.4]
  reg  _T_125; // @[acceptor.scala 49:79:@188.4]
  reg [31:0] _RAND_19;
  wire  _T_127; // @[acceptor.scala 49:71:@190.4]
  wire  arpEmit; // @[acceptor.scala 49:68:@191.4]
  wire [1:0] _T_99; // @[pactype.scala 12:22:@141.4 pactype.scala 15:14:@146.6 pactype.scala 17:14:@153.8 pactype.scala 19:14:@156.8]
  wire  _T_128; // @[acceptor.scala 48:21:@185.4 acceptor.scala 49:11:@192.4]
  ARPAcceptor arpAcceptor ( // @[acceptor.scala 45:27:@175.4]
    .clock(arpAcceptor_clock),
    .reset(arpAcceptor_reset),
    .io_rx_tdata(arpAcceptor_io_rx_tdata),
    .io_rx_tvalid(arpAcceptor_io_rx_tvalid),
    .io_rx_tlast(arpAcceptor_io_rx_tlast),
    .io_rx_tready(arpAcceptor_io_rx_tready),
    .io_output_tpa(arpAcceptor_io_output_tpa),
    .io_output_tha(arpAcceptor_io_output_tha),
    .io_output_spa(arpAcceptor_io_output_spa),
    .io_output_sha(arpAcceptor_io_output_sha),
    .io_output_oper(arpAcceptor_io_output_oper),
    .io_output_plen(arpAcceptor_io_output_plen),
    .io_output_hlen(arpAcceptor_io_output_hlen),
    .io_output_ptype(arpAcceptor_io_output_ptype),
    .io_output_htype(arpAcceptor_io_output_htype),
    .io_start(arpAcceptor_io_start),
    .io_finished(arpAcceptor_io_finished)
  );
  assign _T_63 = {header_1,header_0}; // @[acceptor.scala 28:28:@103.4]
  assign _T_64 = {header_3,header_2}; // @[acceptor.scala 28:28:@104.4]
  assign _T_65 = {header_3,header_2,header_1,header_0}; // @[acceptor.scala 28:28:@105.4]
  assign _T_66 = {header_5,header_4}; // @[acceptor.scala 28:28:@106.4]
  assign _T_67 = {header_8,header_7}; // @[acceptor.scala 28:28:@107.4]
  assign _T_68 = {header_8,header_7,header_6}; // @[acceptor.scala 28:28:@108.4]
  assign _T_69 = {header_8,header_7,header_6,header_5,header_4}; // @[acceptor.scala 28:28:@109.4]
  assign _T_70 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 28:28:@110.4]
  assign _T_71 = {header_10,header_9}; // @[acceptor.scala 28:28:@111.4]
  assign _T_72 = {header_12,header_11}; // @[acceptor.scala 28:28:@112.4]
  assign _T_73 = {header_12,header_11,header_10,header_9}; // @[acceptor.scala 28:28:@113.4]
  assign _T_74 = {header_14,header_13}; // @[acceptor.scala 28:28:@114.4]
  assign _T_75 = {header_17,header_16}; // @[acceptor.scala 28:28:@115.4]
  assign _T_76 = {header_17,header_16,header_15}; // @[acceptor.scala 28:28:@116.4]
  assign _T_77 = {header_17,header_16,header_15,header_14,header_13}; // @[acceptor.scala 28:28:@117.4]
  assign _T_78 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9}; // @[acceptor.scala 28:28:@118.4]
  assign _T_79 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_70}; // @[acceptor.scala 28:28:@119.4]
  assign _T_80 = _T_79[143:48]; // @[acceptor.scala 28:35:@120.4]
  assign _T_81 = {header_1,header_0}; // @[acceptor.scala 29:26:@122.4]
  assign _T_82 = {header_3,header_2}; // @[acceptor.scala 29:26:@123.4]
  assign _T_83 = {header_3,header_2,header_1,header_0}; // @[acceptor.scala 29:26:@124.4]
  assign _T_84 = {header_5,header_4}; // @[acceptor.scala 29:26:@125.4]
  assign _T_85 = {header_8,header_7}; // @[acceptor.scala 29:26:@126.4]
  assign _T_86 = {header_8,header_7,header_6}; // @[acceptor.scala 29:26:@127.4]
  assign _T_87 = {header_8,header_7,header_6,header_5,header_4}; // @[acceptor.scala 29:26:@128.4]
  assign _T_88 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 29:26:@129.4]
  assign _T_89 = {header_10,header_9}; // @[acceptor.scala 29:26:@130.4]
  assign _T_90 = {header_12,header_11}; // @[acceptor.scala 29:26:@131.4]
  assign _T_91 = {header_12,header_11,header_10,header_9}; // @[acceptor.scala 29:26:@132.4]
  assign _T_92 = {header_14,header_13}; // @[acceptor.scala 29:26:@133.4]
  assign _T_93 = {header_17,header_16}; // @[acceptor.scala 29:26:@134.4]
  assign _T_94 = {header_17,header_16,header_15}; // @[acceptor.scala 29:26:@135.4]
  assign _T_95 = {header_17,header_16,header_15,header_14,header_13}; // @[acceptor.scala 29:26:@136.4]
  assign _T_96 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9}; // @[acceptor.scala 29:26:@137.4]
  assign _T_97 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_70}; // @[acceptor.scala 29:26:@138.4]
  assign _T_101 = header_16 == 8'h8; // @[pactype.scala 14:16:@142.4]
  assign _T_103 = header_17 == 8'h0; // @[pactype.scala 14:34:@143.4]
  assign _T_104 = _T_101 & _T_103; // @[pactype.scala 14:25:@144.4]
  assign _T_106 = header_16 == 8'h8; // @[pactype.scala 16:22:@149.6]
  assign _T_108 = header_17 == 8'h6; // @[pactype.scala 16:40:@150.6]
  assign _T_109 = _T_101 & _T_108; // @[pactype.scala 16:31:@151.6]
  assign _GEN_0 = _T_109 ? 2'h2 : 2'h0; // @[pactype.scala 16:50:@152.6]
  assign _GEN_1 = _T_104 ? 2'h1 : _GEN_0; // @[pactype.scala 14:44:@145.4]
  assign _T_112 = cnt + 12'h1; // @[acceptor.scala 36:16:@164.8]
  assign _T_113 = cnt + 12'h1; // @[acceptor.scala 36:16:@165.8]
  assign _GEN_2 = io_rx_tvalid ? _T_113 : cnt; // @[acceptor.scala 35:28:@163.6]
  assign _GEN_3 = io_rx_tlast ? 12'h0 : _GEN_2; // @[acceptor.scala 33:21:@159.4]
  assign _T_115 = cnt < 12'h12; // @[acceptor.scala 40:14:@169.6]
  assign _T_117 = cnt[4:0]; // @[:@171.8]
  assign _header_T_117 = io_rx_tdata; // @[acceptor.scala 41:19:@172.8 acceptor.scala 41:19:@172.8]
  assign _GEN_4 = 5'h0 == _T_117 ? io_rx_tdata : header_0; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_5 = 5'h1 == _T_117 ? io_rx_tdata : header_1; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_6 = 5'h2 == _T_117 ? io_rx_tdata : header_2; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_7 = 5'h3 == _T_117 ? io_rx_tdata : header_3; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_8 = 5'h4 == _T_117 ? io_rx_tdata : header_4; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_9 = 5'h5 == _T_117 ? io_rx_tdata : header_5; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_10 = 5'h6 == _T_117 ? io_rx_tdata : header_6; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_11 = 5'h7 == _T_117 ? io_rx_tdata : header_7; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_12 = 5'h8 == _T_117 ? io_rx_tdata : header_8; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_13 = 5'h9 == _T_117 ? io_rx_tdata : header_9; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_14 = 5'ha == _T_117 ? io_rx_tdata : header_10; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_15 = 5'hb == _T_117 ? io_rx_tdata : header_11; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_16 = 5'hc == _T_117 ? io_rx_tdata : header_12; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_17 = 5'hd == _T_117 ? io_rx_tdata : header_13; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_18 = 5'he == _T_117 ? io_rx_tdata : header_14; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_19 = 5'hf == _T_117 ? io_rx_tdata : header_15; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_20 = 5'h10 == _T_117 ? io_rx_tdata : header_16; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_21 = 5'h11 == _T_117 ? io_rx_tdata : header_17; // @[acceptor.scala 41:19:@172.8]
  assign _GEN_22 = _T_115 ? _GEN_4 : header_0; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_23 = _T_115 ? _GEN_5 : header_1; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_24 = _T_115 ? _GEN_6 : header_2; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_25 = _T_115 ? _GEN_7 : header_3; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_26 = _T_115 ? _GEN_8 : header_4; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_27 = _T_115 ? _GEN_9 : header_5; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_28 = _T_115 ? _GEN_10 : header_6; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_29 = _T_115 ? _GEN_11 : header_7; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_30 = _T_115 ? _GEN_12 : header_8; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_31 = _T_115 ? _GEN_13 : header_9; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_32 = _T_115 ? _GEN_14 : header_10; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_33 = _T_115 ? _GEN_15 : header_11; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_34 = _T_115 ? _GEN_16 : header_12; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_35 = _T_115 ? _GEN_17 : header_13; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_36 = _T_115 ? _GEN_18 : header_14; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_37 = _T_115 ? _GEN_19 : header_15; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_38 = _T_115 ? _GEN_20 : header_16; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_39 = _T_115 ? _GEN_21 : header_17; // @[acceptor.scala 40:30:@170.6]
  assign _GEN_40 = io_rx_tvalid ? _GEN_22 : header_0; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_41 = io_rx_tvalid ? _GEN_23 : header_1; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_42 = io_rx_tvalid ? _GEN_24 : header_2; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_43 = io_rx_tvalid ? _GEN_25 : header_3; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_44 = io_rx_tvalid ? _GEN_26 : header_4; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_45 = io_rx_tvalid ? _GEN_27 : header_5; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_46 = io_rx_tvalid ? _GEN_28 : header_6; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_47 = io_rx_tvalid ? _GEN_29 : header_7; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_48 = io_rx_tvalid ? _GEN_30 : header_8; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_49 = io_rx_tvalid ? _GEN_31 : header_9; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_50 = io_rx_tvalid ? _GEN_32 : header_10; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_51 = io_rx_tvalid ? _GEN_33 : header_11; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_52 = io_rx_tvalid ? _GEN_34 : header_12; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_53 = io_rx_tvalid ? _GEN_35 : header_13; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_54 = io_rx_tvalid ? _GEN_36 : header_14; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_55 = io_rx_tvalid ? _GEN_37 : header_15; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_56 = io_rx_tvalid ? _GEN_38 : header_16; // @[acceptor.scala 39:22:@168.4]
  assign _GEN_57 = io_rx_tvalid ? _GEN_39 : header_17; // @[acceptor.scala 39:22:@168.4]
  assign _T_119 = cnt == 12'h11; // @[acceptor.scala 47:47:@182.4]
  assign _T_120 = io_rx_tvalid & _T_119; // @[acceptor.scala 47:40:@183.4]
  assign _T_122 = io_pactype == 2'h2; // @[acceptor.scala 49:25:@186.4]
  assign _T_123 = _T_122 & arpAcceptor_io_finished; // @[acceptor.scala 49:41:@187.4]
  assign _T_127 = _T_125 == 1'h0; // @[acceptor.scala 49:71:@190.4]
  assign arpEmit = _T_123 & _T_127; // @[acceptor.scala 49:68:@191.4]
  assign _T_99 = _GEN_1; // @[pactype.scala 12:22:@141.4 pactype.scala 15:14:@146.6 pactype.scala 17:14:@153.8 pactype.scala 19:14:@156.8]
  assign _T_128 = arpEmit; // @[acceptor.scala 48:21:@185.4 acceptor.scala 49:11:@192.4]
  assign io_rx_tready = 1'h1; // @[acceptor.scala 46:21:@178.4]
  assign io_dest_addr = _T_79[47:0]; // @[acceptor.scala 29:16:@139.4]
  assign io_sender_addr = _T_80[47:0]; // @[acceptor.scala 28:18:@121.4]
  assign io_pactype = _T_104 ? 2'h1 : _GEN_0; // @[acceptor.scala 31:14:@158.4]
  assign io_port = header_15[2:0]; // @[acceptor.scala 30:11:@140.4]
  assign io_arp_tpa = arpAcceptor_io_output_tpa; // @[acceptor.scala 51:10:@202.4]
  assign io_arp_tha = arpAcceptor_io_output_tha; // @[acceptor.scala 51:10:@201.4]
  assign io_arp_spa = arpAcceptor_io_output_spa; // @[acceptor.scala 51:10:@200.4]
  assign io_arp_sha = arpAcceptor_io_output_sha; // @[acceptor.scala 51:10:@199.4]
  assign io_arp_oper = arpAcceptor_io_output_oper; // @[acceptor.scala 51:10:@198.4]
  assign io_arp_plen = arpAcceptor_io_output_plen; // @[acceptor.scala 51:10:@197.4]
  assign io_arp_hlen = arpAcceptor_io_output_hlen; // @[acceptor.scala 51:10:@196.4]
  assign io_arp_ptype = arpAcceptor_io_output_ptype; // @[acceptor.scala 51:10:@195.4]
  assign io_arp_htype = arpAcceptor_io_output_htype; // @[acceptor.scala 51:10:@194.4]
  assign io_emit = _T_123 & _T_127; // @[acceptor.scala 50:11:@193.4]
  assign arpAcceptor_clock = clock; // @[:@176.4]
  assign arpAcceptor_reset = reset; // @[:@177.4]
  assign arpAcceptor_io_rx_tdata = io_rx_tdata; // @[acceptor.scala 46:21:@181.4]
  assign arpAcceptor_io_rx_tvalid = io_rx_tvalid; // @[acceptor.scala 46:21:@180.4]
  assign arpAcceptor_io_rx_tlast = io_rx_tlast; // @[acceptor.scala 46:21:@179.4]
  assign arpAcceptor_io_start = io_rx_tvalid & _T_119; // @[acceptor.scala 47:24:@184.4]
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
  _T_125 = _RAND_19[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 12'h0;
    end else begin
      if (io_rx_tlast) begin
        cnt <= 12'h0;
      end else begin
        if (io_rx_tvalid) begin
          cnt <= _T_113;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h0 == _T_117) begin
          header_0 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h1 == _T_117) begin
          header_1 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h2 == _T_117) begin
          header_2 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h3 == _T_117) begin
          header_3 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h4 == _T_117) begin
          header_4 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h5 == _T_117) begin
          header_5 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h6 == _T_117) begin
          header_6 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h7 == _T_117) begin
          header_7 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h8 == _T_117) begin
          header_8 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h9 == _T_117) begin
          header_9 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'ha == _T_117) begin
          header_10 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'hb == _T_117) begin
          header_11 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'hc == _T_117) begin
          header_12 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'hd == _T_117) begin
          header_13 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'he == _T_117) begin
          header_14 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'hf == _T_117) begin
          header_15 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h10 == _T_117) begin
          header_16 <= io_rx_tdata;
        end
      end
    end
    if (io_rx_tvalid) begin
      if (_T_115) begin
        if (5'h11 == _T_117) begin
          header_17 <= io_rx_tdata;
        end
      end
    end
    _T_125 <= arpAcceptor_io_finished;
  end
endmodule
module Router( // @[:@204.2]
  input        clock, // @[:@205.4]
  input        reset, // @[:@206.4]
  input        io_rx_clk, // @[:@207.4]
  input  [7:0] io_rx_tdata, // @[:@207.4]
  input        io_rx_tvalid, // @[:@207.4]
  input        io_rx_tlast, // @[:@207.4]
  output       io_rx_tready, // @[:@207.4]
  output [7:0] io_tx_tdata, // @[:@207.4]
  output       io_tx_tvalid, // @[:@207.4]
  output       io_tx_tlast, // @[:@207.4]
  input        io_tx_tready // @[:@207.4]
);
  wire  Acceptor_clock; // @[router.scala 15:26:@209.4]
  wire  Acceptor_reset; // @[router.scala 15:26:@209.4]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 15:26:@209.4]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 15:26:@209.4]
  wire  Acceptor_io_rx_tlast; // @[router.scala 15:26:@209.4]
  wire  Acceptor_io_rx_tready; // @[router.scala 15:26:@209.4]
  wire [47:0] Acceptor_io_dest_addr; // @[router.scala 15:26:@209.4]
  wire [47:0] Acceptor_io_sender_addr; // @[router.scala 15:26:@209.4]
  wire [1:0] Acceptor_io_pactype; // @[router.scala 15:26:@209.4]
  wire [2:0] Acceptor_io_port; // @[router.scala 15:26:@209.4]
  wire [31:0] Acceptor_io_arp_tpa; // @[router.scala 15:26:@209.4]
  wire [47:0] Acceptor_io_arp_tha; // @[router.scala 15:26:@209.4]
  wire [31:0] Acceptor_io_arp_spa; // @[router.scala 15:26:@209.4]
  wire [47:0] Acceptor_io_arp_sha; // @[router.scala 15:26:@209.4]
  wire [15:0] Acceptor_io_arp_oper; // @[router.scala 15:26:@209.4]
  wire [7:0] Acceptor_io_arp_plen; // @[router.scala 15:26:@209.4]
  wire [7:0] Acceptor_io_arp_hlen; // @[router.scala 15:26:@209.4]
  wire [15:0] Acceptor_io_arp_ptype; // @[router.scala 15:26:@209.4]
  wire [15:0] Acceptor_io_arp_htype; // @[router.scala 15:26:@209.4]
  wire  Acceptor_io_emit; // @[router.scala 15:26:@209.4]
  Acceptor Acceptor ( // @[router.scala 15:26:@209.4]
    .clock(Acceptor_clock),
    .reset(Acceptor_reset),
    .io_rx_tdata(Acceptor_io_rx_tdata),
    .io_rx_tvalid(Acceptor_io_rx_tvalid),
    .io_rx_tlast(Acceptor_io_rx_tlast),
    .io_rx_tready(Acceptor_io_rx_tready),
    .io_dest_addr(Acceptor_io_dest_addr),
    .io_sender_addr(Acceptor_io_sender_addr),
    .io_pactype(Acceptor_io_pactype),
    .io_port(Acceptor_io_port),
    .io_arp_tpa(Acceptor_io_arp_tpa),
    .io_arp_tha(Acceptor_io_arp_tha),
    .io_arp_spa(Acceptor_io_arp_spa),
    .io_arp_sha(Acceptor_io_arp_sha),
    .io_arp_oper(Acceptor_io_arp_oper),
    .io_arp_plen(Acceptor_io_arp_plen),
    .io_arp_hlen(Acceptor_io_arp_hlen),
    .io_arp_ptype(Acceptor_io_arp_ptype),
    .io_arp_htype(Acceptor_io_arp_htype),
    .io_emit(Acceptor_io_emit)
  );
  assign io_rx_tready = 1'h1; // @[router.scala 17:20:@212.4]
  assign io_tx_tdata = 8'h0; // @[router.scala 25:17:@229.4]
  assign io_tx_tvalid = Acceptor_io_emit; // @[router.scala 26:18:@230.4]
  assign io_tx_tlast = 1'h0; // @[router.scala 27:17:@231.4]
  assign Acceptor_clock = io_rx_clk; // @[:@210.4]
  assign Acceptor_reset = reset; // @[:@211.4]
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 17:20:@215.4]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 17:20:@214.4]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 17:20:@213.4]
endmodule
module Top( // @[:@234.2]
  input        clock, // @[:@235.4]
  input        reset, // @[:@236.4]
  input        io_rx_clk, // @[:@237.4]
  input  [7:0] io_rx_tdata, // @[:@237.4]
  input        io_rx_tvalid, // @[:@237.4]
  input        io_rx_tlast, // @[:@237.4]
  output [7:0] io_tx_tdata, // @[:@237.4]
  output       io_tx_tvalid, // @[:@237.4]
  output       io_tx_tlast, // @[:@237.4]
  input        io_tx_tready // @[:@237.4]
);
  wire  router_clock; // @[top.scala 20:22:@239.4]
  wire  router_reset; // @[top.scala 20:22:@239.4]
  wire  router_io_rx_clk; // @[top.scala 20:22:@239.4]
  wire [7:0] router_io_rx_tdata; // @[top.scala 20:22:@239.4]
  wire  router_io_rx_tvalid; // @[top.scala 20:22:@239.4]
  wire  router_io_rx_tlast; // @[top.scala 20:22:@239.4]
  wire  router_io_rx_tready; // @[top.scala 20:22:@239.4]
  wire [7:0] router_io_tx_tdata; // @[top.scala 20:22:@239.4]
  wire  router_io_tx_tvalid; // @[top.scala 20:22:@239.4]
  wire  router_io_tx_tlast; // @[top.scala 20:22:@239.4]
  wire  router_io_tx_tready; // @[top.scala 20:22:@239.4]
  Router router ( // @[top.scala 20:22:@239.4]
    .clock(router_clock),
    .reset(router_reset),
    .io_rx_clk(router_io_rx_clk),
    .io_rx_tdata(router_io_rx_tdata),
    .io_rx_tvalid(router_io_rx_tvalid),
    .io_rx_tlast(router_io_rx_tlast),
    .io_rx_tready(router_io_rx_tready),
    .io_tx_tdata(router_io_tx_tdata),
    .io_tx_tvalid(router_io_tx_tvalid),
    .io_tx_tlast(router_io_tx_tlast),
    .io_tx_tready(router_io_tx_tready)
  );
  assign io_tx_tdata = 8'h0; // @[top.scala 29:15:@247.4]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 31:16:@249.4]
  assign io_tx_tlast = 1'h0; // @[top.scala 30:15:@248.4]
  assign router_clock = clock; // @[:@240.4]
  assign router_reset = reset; // @[:@241.4]
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 22:20:@242.4]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 24:22:@243.4]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 25:23:@244.4]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 26:22:@245.4]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 32:23:@250.4]
endmodule
