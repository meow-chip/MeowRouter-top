module Ctrl( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [47:0] io_pc, // @[:@6.4]
  input         io_branch, // @[:@6.4]
  input  [47:0] io_baddr, // @[:@6.4]
  input         io_fetch_stall, // @[:@6.4]
  output        io_fetch_pause, // @[:@6.4]
  output        io_fetch_flush, // @[:@6.4]
  input         io_exec_stall, // @[:@6.4]
  output        io_exec_pause, // @[:@6.4]
  output        io_exec_flush // @[:@6.4]
);
  reg [47:0] pc; // @[Ctrl.scala 26:19:@8.4]
  reg [63:0] _RAND_0;
  wire  stalled; // @[Ctrl.scala 29:32:@10.4]
  wire  _T_28; // @[Ctrl.scala 36:8:@15.4]
  wire [48:0] _T_32; // @[Ctrl.scala 41:22:@20.8]
  wire [47:0] _T_33; // @[Ctrl.scala 41:22:@21.8]
  wire [48:0] _T_35; // @[Ctrl.scala 44:16:@26.8]
  wire [47:0] _T_36; // @[Ctrl.scala 44:16:@27.8]
  wire  _GEN_0; // @[Ctrl.scala 37:21:@17.6]
  wire [47:0] _GEN_1; // @[Ctrl.scala 37:21:@17.6]
  wire [47:0] _GEN_2; // @[Ctrl.scala 37:21:@17.6]
  wire  _GEN_3; // @[Ctrl.scala 36:18:@16.4]
  wire [47:0] _GEN_4; // @[Ctrl.scala 36:18:@16.4]
  wire [47:0] _GEN_5; // @[Ctrl.scala 36:18:@16.4]
  assign stalled = io_fetch_stall | io_exec_stall; // @[Ctrl.scala 29:32:@10.4]
  assign _T_28 = stalled == 1'h0; // @[Ctrl.scala 36:8:@15.4]
  assign _T_32 = io_baddr + 48'h4; // @[Ctrl.scala 41:22:@20.8]
  assign _T_33 = io_baddr + 48'h4; // @[Ctrl.scala 41:22:@21.8]
  assign _T_35 = pc + 48'h4; // @[Ctrl.scala 44:16:@26.8]
  assign _T_36 = pc + 48'h4; // @[Ctrl.scala 44:16:@27.8]
  assign _GEN_0 = io_branch; // @[Ctrl.scala 37:21:@17.6]
  assign _GEN_1 = io_branch ? _T_33 : _T_36; // @[Ctrl.scala 37:21:@17.6]
  assign _GEN_2 = io_branch ? io_baddr : pc; // @[Ctrl.scala 37:21:@17.6]
  assign _GEN_3 = _T_28 ? io_branch : 1'h0; // @[Ctrl.scala 36:18:@16.4]
  assign _GEN_4 = _T_28 ? _GEN_1 : pc; // @[Ctrl.scala 36:18:@16.4]
  assign _GEN_5 = _T_28 ? _GEN_2 : pc; // @[Ctrl.scala 36:18:@16.4]
  assign io_pc = _T_28 ? _GEN_2 : pc; // @[Ctrl.scala 27:9:@9.4 Ctrl.scala 42:13:@23.8]
  assign io_fetch_pause = io_fetch_stall | io_exec_stall; // @[Ctrl.scala 30:18:@11.4]
  assign io_fetch_flush = _T_28 ? io_branch : 1'h0; // @[Ctrl.scala 33:18:@13.4 Ctrl.scala 39:22:@18.8]
  assign io_exec_pause = io_fetch_stall | io_exec_stall; // @[Ctrl.scala 31:17:@12.4]
  assign io_exec_flush = _T_28 ? io_branch : 1'h0; // @[Ctrl.scala 34:17:@14.4 Ctrl.scala 40:21:@19.8]
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
  _RAND_0 = {2{`RANDOM}};
  pc = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      pc <= 48'hffffffff8000;
    end else begin
      if (_T_28) begin
        if (io_branch) begin
          pc <= _T_33;
        end else begin
          pc <= _T_36;
        end
      end
    end
  end
endmodule
module Passthrough( // @[:@32.2]
  input         clock, // @[:@33.4]
  input         reset, // @[:@34.4]
  input  [47:0] io_addr, // @[:@35.4]
  input         io_read, // @[:@35.4]
  input         io_write, // @[:@35.4]
  input  [63:0] io_wdata, // @[:@35.4]
  input  [7:0]  io_be, // @[:@35.4]
  output [3:0]  io_axi_AWID, // @[:@35.4]
  output [47:0] io_axi_AWADDR, // @[:@35.4]
  output [7:0]  io_axi_AWLEN, // @[:@35.4]
  output [2:0]  io_axi_AWSIZE, // @[:@35.4]
  output [1:0]  io_axi_AWBURST, // @[:@35.4]
  output [3:0]  io_axi_AWCACHE, // @[:@35.4]
  output [2:0]  io_axi_AWPROT, // @[:@35.4]
  output [2:0]  io_axi_AWQOS, // @[:@35.4]
  output [3:0]  io_axi_AWREGION, // @[:@35.4]
  output        io_axi_AWVALID, // @[:@35.4]
  input         io_axi_AWREADY, // @[:@35.4]
  output [63:0] io_axi_WDATA, // @[:@35.4]
  output [7:0]  io_axi_WSTRB, // @[:@35.4]
  output        io_axi_WLAST, // @[:@35.4]
  output        io_axi_WVALID, // @[:@35.4]
  input         io_axi_WREADY, // @[:@35.4]
  input  [3:0]  io_axi_BID, // @[:@35.4]
  input  [1:0]  io_axi_BRESP, // @[:@35.4]
  input         io_axi_BVALID, // @[:@35.4]
  output        io_axi_BREADY, // @[:@35.4]
  output [3:0]  io_axi_ARID, // @[:@35.4]
  output [47:0] io_axi_ARADDR, // @[:@35.4]
  output [7:0]  io_axi_ARLEN, // @[:@35.4]
  output [2:0]  io_axi_ARSIZE, // @[:@35.4]
  output [1:0]  io_axi_ARBURST, // @[:@35.4]
  output [3:0]  io_axi_ARCACHE, // @[:@35.4]
  output [2:0]  io_axi_ARPROT, // @[:@35.4]
  output [2:0]  io_axi_ARQOS, // @[:@35.4]
  output [3:0]  io_axi_ARREGION, // @[:@35.4]
  output        io_axi_ARVALID, // @[:@35.4]
  input         io_axi_ARREADY, // @[:@35.4]
  input  [3:0]  io_axi_RID, // @[:@35.4]
  input  [63:0] io_axi_RDATA, // @[:@35.4]
  input  [1:0]  io_axi_RRESP, // @[:@35.4]
  input         io_axi_RLAST, // @[:@35.4]
  input         io_axi_RVALID, // @[:@35.4]
  output        io_axi_RREADY, // @[:@35.4]
  output        io_stall, // @[:@35.4]
  input         io_pause, // @[:@35.4]
  output [63:0] io_rdata, // @[:@35.4]
  output        io_vacant // @[:@35.4]
);
  reg [2:0] state; // @[Passthrough.scala 18:22:@37.4]
  reg [31:0] _RAND_0;
  reg [47:0] workingAddr; // @[Passthrough.scala 20:28:@38.4]
  reg [63:0] _RAND_1;
  reg [63:0] workingData; // @[Passthrough.scala 21:24:@39.4]
  reg [63:0] _RAND_2;
  reg [7:0] workingBE; // @[Passthrough.scala 22:26:@40.4]
  reg [31:0] _RAND_3;
  reg [63:0] result; // @[Passthrough.scala 24:19:@41.4]
  reg [63:0] _RAND_4;
  reg  pipeRead; // @[Passthrough.scala 25:25:@42.4]
  reg [31:0] _RAND_5;
  reg  pipeWrite; // @[Passthrough.scala 26:26:@43.4]
  reg [31:0] _RAND_6;
  wire [317:0] _T_186; // @[:@45.4 :@46.4]
  wire  _T_187; // @[Passthrough.scala 28:25:@47.4]
  wire  _T_188; // @[Passthrough.scala 28:25:@49.4]
  wire  _T_189; // @[Passthrough.scala 28:25:@51.4]
  wire [1:0] _T_190; // @[Passthrough.scala 28:25:@53.4]
  wire [63:0] _T_191; // @[Passthrough.scala 28:25:@55.4]
  wire [3:0] _T_192; // @[Passthrough.scala 28:25:@57.4]
  wire  _T_193; // @[Passthrough.scala 28:25:@59.4]
  wire  _T_194; // @[Passthrough.scala 28:25:@61.4]
  wire [3:0] _T_195; // @[Passthrough.scala 28:25:@63.4]
  wire [2:0] _T_196; // @[Passthrough.scala 28:25:@65.4]
  wire [2:0] _T_197; // @[Passthrough.scala 28:25:@67.4]
  wire [3:0] _T_198; // @[Passthrough.scala 28:25:@69.4]
  wire [1:0] _T_199; // @[Passthrough.scala 28:25:@71.4]
  wire [2:0] _T_200; // @[Passthrough.scala 28:25:@73.4]
  wire [7:0] _T_201; // @[Passthrough.scala 28:25:@75.4]
  wire [47:0] _T_202; // @[Passthrough.scala 28:25:@77.4]
  wire [3:0] _T_203; // @[Passthrough.scala 28:25:@79.4]
  wire  _T_204; // @[Passthrough.scala 28:25:@81.4]
  wire  _T_205; // @[Passthrough.scala 28:25:@83.4]
  wire [1:0] _T_206; // @[Passthrough.scala 28:25:@85.4]
  wire [3:0] _T_207; // @[Passthrough.scala 28:25:@87.4]
  wire  _T_208; // @[Passthrough.scala 28:25:@89.4]
  wire  _T_209; // @[Passthrough.scala 28:25:@91.4]
  wire  _T_210; // @[Passthrough.scala 28:25:@93.4]
  wire [7:0] _T_211; // @[Passthrough.scala 28:25:@95.4]
  wire [63:0] _T_212; // @[Passthrough.scala 28:25:@97.4]
  wire  _T_213; // @[Passthrough.scala 28:25:@99.4]
  wire  _T_214; // @[Passthrough.scala 28:25:@101.4]
  wire [3:0] _T_215; // @[Passthrough.scala 28:25:@103.4]
  wire [2:0] _T_216; // @[Passthrough.scala 28:25:@105.4]
  wire [2:0] _T_217; // @[Passthrough.scala 28:25:@107.4]
  wire [3:0] _T_218; // @[Passthrough.scala 28:25:@109.4]
  wire [1:0] _T_219; // @[Passthrough.scala 28:25:@111.4]
  wire [2:0] _T_220; // @[Passthrough.scala 28:25:@113.4]
  wire [7:0] _T_221; // @[Passthrough.scala 28:25:@115.4]
  wire [47:0] _T_222; // @[Passthrough.scala 28:25:@117.4]
  wire [3:0] _T_223; // @[Passthrough.scala 28:25:@119.4]
  wire  _T_230; // @[Passthrough.scala 37:21:@164.4]
  wire  _T_231; // @[Passthrough.scala 39:27:@167.4]
  wire  _T_233; // @[Passthrough.scala 39:16:@168.4]
  wire  _T_235; // @[Passthrough.scala 46:8:@170.4]
  wire  _T_237; // @[Passthrough.scala 46:21:@171.4]
  wire  _T_238; // @[Passthrough.scala 46:18:@172.4]
  wire  _GEN_0; // @[Passthrough.scala 46:32:@173.4]
  wire  _GEN_1; // @[Passthrough.scala 46:32:@173.4]
  wire  _T_239; // @[Conditional.scala 37:30:@177.4]
  wire  _T_241; // @[Passthrough.scala 53:12:@179.6]
  wire [2:0] _GEN_2; // @[Passthrough.scala 61:30:@190.10]
  wire [2:0] _GEN_3; // @[Passthrough.scala 58:23:@186.8]
  wire [47:0] _GEN_4; // @[Passthrough.scala 53:23:@180.6]
  wire [63:0] _T_243; // @[Passthrough.scala 55:41:@182.8 Passthrough.scala 55:41:@183.8]
  wire [63:0] _GEN_5; // @[Passthrough.scala 53:23:@180.6]
  wire [7:0] _GEN_6; // @[Passthrough.scala 53:23:@180.6]
  wire [2:0] _GEN_7; // @[Passthrough.scala 53:23:@180.6]
  wire  _T_244; // @[Conditional.scala 37:30:@196.6]
  wire [2:0] _GEN_8; // @[Passthrough.scala 71:28:@200.8]
  wire  _T_246; // @[Conditional.scala 37:30:@205.8]
  wire [2:0] _GEN_9; // @[Passthrough.scala 80:28:@209.10]
  wire  _T_248; // @[Conditional.scala 37:30:@214.10]
  wire [63:0] _GEN_10; // @[Passthrough.scala 87:27:@217.12]
  wire [2:0] _GEN_11; // @[Passthrough.scala 87:27:@217.12]
  wire  _T_250; // @[Conditional.scala 37:30:@223.12]
  wire [2:0] _GEN_12; // @[Passthrough.scala 102:27:@229.14]
  wire  _T_253; // @[Conditional.scala 37:30:@234.14]
  wire [2:0] _GEN_13; // @[Passthrough.scala 113:27:@237.16]
  wire  _T_147_BREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@82.4]
  wire  _GEN_14; // @[Conditional.scala 39:67:@235.14]
  wire [2:0] _GEN_15; // @[Conditional.scala 39:67:@235.14]
  wire  _T_147_WVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@92.4]
  wire  _GEN_16; // @[Conditional.scala 39:67:@224.12]
  wire [63:0] _T_147_WDATA; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@98.4]
  wire [63:0] _GEN_17; // @[Conditional.scala 39:67:@224.12]
  wire [7:0] _T_147_WSTRB; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@96.4]
  wire [7:0] _GEN_18; // @[Conditional.scala 39:67:@224.12]
  wire  _T_147_WLAST; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@94.4]
  wire  _GEN_19; // @[Conditional.scala 39:67:@224.12]
  wire [2:0] _GEN_20; // @[Conditional.scala 39:67:@224.12]
  wire  _GEN_21; // @[Conditional.scala 39:67:@224.12]
  wire  _T_147_RREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@48.4]
  wire  _GEN_22; // @[Conditional.scala 39:67:@215.10]
  wire [63:0] _GEN_23; // @[Conditional.scala 39:67:@215.10]
  wire [2:0] _GEN_24; // @[Conditional.scala 39:67:@215.10]
  wire  _GEN_25; // @[Conditional.scala 39:67:@215.10]
  wire [63:0] _GEN_26; // @[Conditional.scala 39:67:@215.10]
  wire [7:0] _GEN_27; // @[Conditional.scala 39:67:@215.10]
  wire  _GEN_28; // @[Conditional.scala 39:67:@215.10]
  wire  _GEN_29; // @[Conditional.scala 39:67:@215.10]
  wire [47:0] _T_147_AWADDR; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@118.4]
  wire [47:0] _GEN_30; // @[Conditional.scala 39:67:@206.8]
  wire  _T_147_AWVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@102.4]
  wire  _GEN_31; // @[Conditional.scala 39:67:@206.8]
  wire [2:0] _GEN_32; // @[Conditional.scala 39:67:@206.8]
  wire  _GEN_33; // @[Conditional.scala 39:67:@206.8]
  wire [63:0] _GEN_34; // @[Conditional.scala 39:67:@206.8]
  wire  _GEN_35; // @[Conditional.scala 39:67:@206.8]
  wire [63:0] _GEN_36; // @[Conditional.scala 39:67:@206.8]
  wire [7:0] _GEN_37; // @[Conditional.scala 39:67:@206.8]
  wire  _GEN_38; // @[Conditional.scala 39:67:@206.8]
  wire  _GEN_39; // @[Conditional.scala 39:67:@206.8]
  wire [47:0] _T_147_ARADDR; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@78.4]
  wire [47:0] _GEN_40; // @[Conditional.scala 39:67:@197.6]
  wire  _T_147_ARVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@62.4]
  wire  _GEN_41; // @[Conditional.scala 39:67:@197.6]
  wire [2:0] _GEN_42; // @[Conditional.scala 39:67:@197.6]
  wire [47:0] _GEN_43; // @[Conditional.scala 39:67:@197.6]
  wire  _GEN_44; // @[Conditional.scala 39:67:@197.6]
  wire  _GEN_45; // @[Conditional.scala 39:67:@197.6]
  wire [63:0] _GEN_46; // @[Conditional.scala 39:67:@197.6]
  wire  _GEN_47; // @[Conditional.scala 39:67:@197.6]
  wire [63:0] _GEN_48; // @[Conditional.scala 39:67:@197.6]
  wire [7:0] _GEN_49; // @[Conditional.scala 39:67:@197.6]
  wire  _GEN_50; // @[Conditional.scala 39:67:@197.6]
  wire  _GEN_51; // @[Conditional.scala 39:67:@197.6]
  wire [47:0] _GEN_52; // @[Conditional.scala 40:58:@178.4]
  wire [63:0] _GEN_53; // @[Conditional.scala 40:58:@178.4]
  wire [7:0] _GEN_54; // @[Conditional.scala 40:58:@178.4]
  wire [2:0] _GEN_55; // @[Conditional.scala 40:58:@178.4]
  wire [47:0] _GEN_56; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_57; // @[Conditional.scala 40:58:@178.4]
  wire [47:0] _GEN_58; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_59; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_60; // @[Conditional.scala 40:58:@178.4]
  wire [63:0] _GEN_61; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_62; // @[Conditional.scala 40:58:@178.4]
  wire [63:0] _GEN_63; // @[Conditional.scala 40:58:@178.4]
  wire [7:0] _GEN_64; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_65; // @[Conditional.scala 40:58:@178.4]
  wire  _GEN_66; // @[Conditional.scala 40:58:@178.4]
  wire [3:0] _T_147_AWID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@120.4]
  wire [7:0] _T_147_AWLEN; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@116.4]
  wire [2:0] _T_147_AWSIZE; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@114.4]
  wire [1:0] _T_147_AWBURST; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@112.4]
  wire [3:0] _T_147_AWCACHE; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@110.4]
  wire [2:0] _T_147_AWPROT; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@108.4]
  wire [2:0] _T_147_AWQOS; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@106.4]
  wire [3:0] _T_147_AWREGION; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@104.4]
  wire  _T_147_AWREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@100.4 Passthrough.scala 28:10:@147.4]
  wire  _T_147_WREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@90.4 Passthrough.scala 28:10:@142.4]
  wire [3:0] _T_147_BID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@88.4 Passthrough.scala 28:10:@141.4]
  wire [1:0] _T_147_BRESP; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@86.4 Passthrough.scala 28:10:@140.4]
  wire  _T_147_BVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@84.4 Passthrough.scala 28:10:@139.4]
  wire [3:0] _T_147_ARID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@80.4]
  wire [7:0] _T_147_ARLEN; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@76.4]
  wire [2:0] _T_147_ARSIZE; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@74.4]
  wire [1:0] _T_147_ARBURST; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@72.4]
  wire [3:0] _T_147_ARCACHE; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@70.4]
  wire [2:0] _T_147_ARPROT; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@68.4]
  wire [2:0] _T_147_ARQOS; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@66.4]
  wire [3:0] _T_147_ARREGION; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@64.4]
  wire  _T_147_ARREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@60.4 Passthrough.scala 28:10:@127.4]
  wire [3:0] _T_147_RID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@58.4 Passthrough.scala 28:10:@126.4]
  wire [63:0] _T_147_RDATA; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@56.4 Passthrough.scala 28:10:@125.4]
  wire [1:0] _T_147_RRESP; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@54.4 Passthrough.scala 28:10:@124.4]
  wire  _T_147_RLAST; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@52.4 Passthrough.scala 28:10:@123.4]
  wire  _T_147_RVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@50.4 Passthrough.scala 28:10:@122.4]
  assign _T_186 = 318'h0; // @[:@45.4 :@46.4]
  assign _T_187 = 1'h0; // @[Passthrough.scala 28:25:@47.4]
  assign _T_188 = 1'h0; // @[Passthrough.scala 28:25:@49.4]
  assign _T_189 = 1'h0; // @[Passthrough.scala 28:25:@51.4]
  assign _T_190 = 2'h0; // @[Passthrough.scala 28:25:@53.4]
  assign _T_191 = 64'h0; // @[Passthrough.scala 28:25:@55.4]
  assign _T_192 = 4'h0; // @[Passthrough.scala 28:25:@57.4]
  assign _T_193 = 1'h0; // @[Passthrough.scala 28:25:@59.4]
  assign _T_194 = 1'h0; // @[Passthrough.scala 28:25:@61.4]
  assign _T_195 = 4'h0; // @[Passthrough.scala 28:25:@63.4]
  assign _T_196 = 3'h0; // @[Passthrough.scala 28:25:@65.4]
  assign _T_197 = 3'h0; // @[Passthrough.scala 28:25:@67.4]
  assign _T_198 = 4'h0; // @[Passthrough.scala 28:25:@69.4]
  assign _T_199 = 2'h0; // @[Passthrough.scala 28:25:@71.4]
  assign _T_200 = 3'h0; // @[Passthrough.scala 28:25:@73.4]
  assign _T_201 = 8'h0; // @[Passthrough.scala 28:25:@75.4]
  assign _T_202 = 48'h0; // @[Passthrough.scala 28:25:@77.4]
  assign _T_203 = 4'h0; // @[Passthrough.scala 28:25:@79.4]
  assign _T_204 = 1'h0; // @[Passthrough.scala 28:25:@81.4]
  assign _T_205 = 1'h0; // @[Passthrough.scala 28:25:@83.4]
  assign _T_206 = 2'h0; // @[Passthrough.scala 28:25:@85.4]
  assign _T_207 = 4'h0; // @[Passthrough.scala 28:25:@87.4]
  assign _T_208 = 1'h0; // @[Passthrough.scala 28:25:@89.4]
  assign _T_209 = 1'h0; // @[Passthrough.scala 28:25:@91.4]
  assign _T_210 = 1'h0; // @[Passthrough.scala 28:25:@93.4]
  assign _T_211 = 8'h0; // @[Passthrough.scala 28:25:@95.4]
  assign _T_212 = 64'h0; // @[Passthrough.scala 28:25:@97.4]
  assign _T_213 = 1'h0; // @[Passthrough.scala 28:25:@99.4]
  assign _T_214 = 1'h0; // @[Passthrough.scala 28:25:@101.4]
  assign _T_215 = 4'h0; // @[Passthrough.scala 28:25:@103.4]
  assign _T_216 = 3'h0; // @[Passthrough.scala 28:25:@105.4]
  assign _T_217 = 3'h0; // @[Passthrough.scala 28:25:@107.4]
  assign _T_218 = 4'h0; // @[Passthrough.scala 28:25:@109.4]
  assign _T_219 = 2'h0; // @[Passthrough.scala 28:25:@111.4]
  assign _T_220 = 3'h0; // @[Passthrough.scala 28:25:@113.4]
  assign _T_221 = 8'h0; // @[Passthrough.scala 28:25:@115.4]
  assign _T_222 = 48'h0; // @[Passthrough.scala 28:25:@117.4]
  assign _T_223 = 4'h0; // @[Passthrough.scala 28:25:@119.4]
  assign _T_230 = state != 3'h0; // @[Passthrough.scala 37:21:@164.4]
  assign _T_231 = pipeRead | pipeWrite; // @[Passthrough.scala 39:27:@167.4]
  assign _T_233 = _T_231 == 1'h0; // @[Passthrough.scala 39:16:@168.4]
  assign _T_235 = io_pause == 1'h0; // @[Passthrough.scala 46:8:@170.4]
  assign _T_237 = io_stall == 1'h0; // @[Passthrough.scala 46:21:@171.4]
  assign _T_238 = _T_235 & _T_237; // @[Passthrough.scala 46:18:@172.4]
  assign _GEN_0 = _T_238 ? io_read : pipeRead; // @[Passthrough.scala 46:32:@173.4]
  assign _GEN_1 = _T_238 ? io_write : pipeWrite; // @[Passthrough.scala 46:32:@173.4]
  assign _T_239 = 3'h0 == state; // @[Conditional.scala 37:30:@177.4]
  assign _T_241 = io_pause == 1'h0; // @[Passthrough.scala 53:12:@179.6]
  assign _GEN_2 = io_write ? 3'h3 : state; // @[Passthrough.scala 61:30:@190.10]
  assign _GEN_3 = io_read ? 3'h1 : _GEN_2; // @[Passthrough.scala 58:23:@186.8]
  assign _GEN_4 = _T_235 ? io_addr : workingAddr; // @[Passthrough.scala 53:23:@180.6]
  assign _T_243 = io_wdata; // @[Passthrough.scala 55:41:@182.8 Passthrough.scala 55:41:@183.8]
  assign _GEN_5 = _T_235 ? io_wdata : workingData; // @[Passthrough.scala 53:23:@180.6]
  assign _GEN_6 = _T_235 ? io_be : workingBE; // @[Passthrough.scala 53:23:@180.6]
  assign _GEN_7 = _T_235 ? _GEN_3 : state; // @[Passthrough.scala 53:23:@180.6]
  assign _T_244 = 3'h1 == state; // @[Conditional.scala 37:30:@196.6]
  assign _GEN_8 = io_axi_ARREADY ? 3'h2 : state; // @[Passthrough.scala 71:28:@200.8]
  assign _T_246 = 3'h3 == state; // @[Conditional.scala 37:30:@205.8]
  assign _GEN_9 = io_axi_AWREADY ? 3'h4 : state; // @[Passthrough.scala 80:28:@209.10]
  assign _T_248 = 3'h2 == state; // @[Conditional.scala 37:30:@214.10]
  assign _GEN_10 = io_axi_RVALID ? io_axi_RDATA : result; // @[Passthrough.scala 87:27:@217.12]
  assign _GEN_11 = io_axi_RVALID ? 3'h0 : state; // @[Passthrough.scala 87:27:@217.12]
  assign _T_250 = 3'h4 == state; // @[Conditional.scala 37:30:@223.12]
  assign _GEN_12 = io_axi_WREADY ? 3'h5 : state; // @[Passthrough.scala 102:27:@229.14]
  assign _T_253 = 3'h5 == state; // @[Conditional.scala 37:30:@234.14]
  assign _GEN_13 = io_axi_BVALID ? 3'h0 : state; // @[Passthrough.scala 113:27:@237.16]
  assign _T_147_BREADY = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@82.4]
  assign _GEN_14 = _T_253; // @[Conditional.scala 39:67:@235.14]
  assign _GEN_15 = _T_253 ? _GEN_13 : state; // @[Conditional.scala 39:67:@235.14]
  assign _T_147_WVALID = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@92.4]
  assign _GEN_16 = _T_250; // @[Conditional.scala 39:67:@224.12]
  assign _T_147_WDATA = 64'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@98.4]
  assign _GEN_17 = _T_250 ? workingData : 64'h0; // @[Conditional.scala 39:67:@224.12]
  assign _T_147_WSTRB = 8'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@96.4]
  assign _GEN_18 = _T_250 ? workingBE : 8'h0; // @[Conditional.scala 39:67:@224.12]
  assign _T_147_WLAST = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@94.4]
  assign _GEN_19 = _T_250; // @[Conditional.scala 39:67:@224.12]
  assign _GEN_20 = _T_250 ? _GEN_12 : _GEN_15; // @[Conditional.scala 39:67:@224.12]
  assign _GEN_21 = _T_250 ? 1'h0 : _T_253; // @[Conditional.scala 39:67:@224.12]
  assign _T_147_RREADY = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@48.4]
  assign _GEN_22 = _T_248; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_23 = _T_248 ? _GEN_10 : result; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_24 = _T_248 ? _GEN_11 : _GEN_20; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_25 = _T_248 ? 1'h0 : _T_250; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_26 = _T_248 ? 64'h0 : _GEN_17; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_27 = _T_248 ? 8'h0 : _GEN_18; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_28 = _T_248 ? 1'h0 : _T_250; // @[Conditional.scala 39:67:@215.10]
  assign _GEN_29 = _T_248 ? 1'h0 : _GEN_21; // @[Conditional.scala 39:67:@215.10]
  assign _T_147_AWADDR = 48'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@118.4]
  assign _GEN_30 = _T_246 ? workingAddr : 48'h0; // @[Conditional.scala 39:67:@206.8]
  assign _T_147_AWVALID = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@102.4]
  assign _GEN_31 = _T_246; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_32 = _T_246 ? _GEN_9 : _GEN_24; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_33 = _T_246 ? 1'h0 : _T_248; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_34 = _T_246 ? result : _GEN_23; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_35 = _T_246 ? 1'h0 : _GEN_25; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_36 = _T_246 ? 64'h0 : _GEN_26; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_37 = _T_246 ? 8'h0 : _GEN_27; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_38 = _T_246 ? 1'h0 : _GEN_25; // @[Conditional.scala 39:67:@206.8]
  assign _GEN_39 = _T_246 ? 1'h0 : _GEN_29; // @[Conditional.scala 39:67:@206.8]
  assign _T_147_ARADDR = 48'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@78.4]
  assign _GEN_40 = _T_244 ? workingAddr : 48'h0; // @[Conditional.scala 39:67:@197.6]
  assign _T_147_ARVALID = 1'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@62.4]
  assign _GEN_41 = _T_244; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_42 = _T_244 ? _GEN_8 : _GEN_32; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_43 = _T_244 ? 48'h0 : _GEN_30; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_44 = _T_244 ? 1'h0 : _T_246; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_45 = _T_244 ? 1'h0 : _GEN_33; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_46 = _T_244 ? result : _GEN_34; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_47 = _T_244 ? 1'h0 : _GEN_35; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_48 = _T_244 ? 64'h0 : _GEN_36; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_49 = _T_244 ? 8'h0 : _GEN_37; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_50 = _T_244 ? 1'h0 : _GEN_35; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_51 = _T_244 ? 1'h0 : _GEN_39; // @[Conditional.scala 39:67:@197.6]
  assign _GEN_52 = _T_239 ? _GEN_4 : workingAddr; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_53 = _T_239 ? _GEN_5 : workingData; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_54 = _T_239 ? _GEN_6 : workingBE; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_55 = _T_239 ? _GEN_7 : _GEN_42; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_56 = _T_239 ? 48'h0 : _GEN_40; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_57 = _T_239 ? 1'h0 : _T_244; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_58 = _T_239 ? 48'h0 : _GEN_43; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_59 = _T_239 ? 1'h0 : _GEN_44; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_60 = _T_239 ? 1'h0 : _GEN_45; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_61 = _T_239 ? result : _GEN_46; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_62 = _T_239 ? 1'h0 : _GEN_47; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_63 = _T_239 ? 64'h0 : _GEN_48; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_64 = _T_239 ? 8'h0 : _GEN_49; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_65 = _T_239 ? 1'h0 : _GEN_47; // @[Conditional.scala 40:58:@178.4]
  assign _GEN_66 = _T_239 ? 1'h0 : _GEN_51; // @[Conditional.scala 40:58:@178.4]
  assign _T_147_AWID = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@120.4]
  assign _T_147_AWLEN = 8'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@116.4]
  assign _T_147_AWSIZE = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@114.4]
  assign _T_147_AWBURST = 2'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@112.4]
  assign _T_147_AWCACHE = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@110.4]
  assign _T_147_AWPROT = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@108.4]
  assign _T_147_AWQOS = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@106.4]
  assign _T_147_AWREGION = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@104.4]
  assign _T_147_AWREADY = io_axi_AWREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@100.4 Passthrough.scala 28:10:@147.4]
  assign _T_147_WREADY = io_axi_WREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@90.4 Passthrough.scala 28:10:@142.4]
  assign _T_147_BID = io_axi_BID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@88.4 Passthrough.scala 28:10:@141.4]
  assign _T_147_BRESP = io_axi_BRESP; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@86.4 Passthrough.scala 28:10:@140.4]
  assign _T_147_BVALID = io_axi_BVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@84.4 Passthrough.scala 28:10:@139.4]
  assign _T_147_ARID = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@80.4]
  assign _T_147_ARLEN = 8'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@76.4]
  assign _T_147_ARSIZE = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@74.4]
  assign _T_147_ARBURST = 2'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@72.4]
  assign _T_147_ARCACHE = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@70.4]
  assign _T_147_ARPROT = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@68.4]
  assign _T_147_ARQOS = 3'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@66.4]
  assign _T_147_ARREGION = 4'h0; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@64.4]
  assign _T_147_ARREADY = io_axi_ARREADY; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@60.4 Passthrough.scala 28:10:@127.4]
  assign _T_147_RID = io_axi_RID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@58.4 Passthrough.scala 28:10:@126.4]
  assign _T_147_RDATA = io_axi_RDATA; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@56.4 Passthrough.scala 28:10:@125.4]
  assign _T_147_RRESP = io_axi_RRESP; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@54.4 Passthrough.scala 28:10:@124.4]
  assign _T_147_RLAST = io_axi_RLAST; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@52.4 Passthrough.scala 28:10:@123.4]
  assign _T_147_RVALID = io_axi_RVALID; // @[Passthrough.scala 28:25:@44.4 Passthrough.scala 28:25:@50.4 Passthrough.scala 28:10:@122.4]
  assign io_axi_AWID = 4'h0; // @[Passthrough.scala 28:10:@157.4]
  assign io_axi_AWADDR = _T_239 ? 48'h0 : _GEN_43; // @[Passthrough.scala 28:10:@156.4 Passthrough.scala 77:21:@207.10]
  assign io_axi_AWLEN = 8'h1; // @[Passthrough.scala 28:10:@155.4 Passthrough.scala 33:16:@161.4]
  assign io_axi_AWSIZE = 3'h6; // @[Passthrough.scala 28:10:@154.4 Passthrough.scala 34:17:@162.4]
  assign io_axi_AWBURST = 2'h1; // @[Passthrough.scala 28:10:@153.4 Passthrough.scala 35:18:@163.4]
  assign io_axi_AWCACHE = 4'h0; // @[Passthrough.scala 28:10:@152.4]
  assign io_axi_AWPROT = 3'h0; // @[Passthrough.scala 28:10:@151.4]
  assign io_axi_AWQOS = 3'h0; // @[Passthrough.scala 28:10:@150.4]
  assign io_axi_AWREGION = 4'h0; // @[Passthrough.scala 28:10:@149.4]
  assign io_axi_AWVALID = _T_239 ? 1'h0 : _GEN_44; // @[Passthrough.scala 28:10:@148.4 Passthrough.scala 78:22:@208.10]
  assign io_axi_WDATA = _T_239 ? 64'h0 : _GEN_48; // @[Passthrough.scala 28:10:@146.4 Passthrough.scala 98:20:@226.14]
  assign io_axi_WSTRB = _T_239 ? 8'h0 : _GEN_49; // @[Passthrough.scala 28:10:@145.4 Passthrough.scala 99:20:@227.14]
  assign io_axi_WLAST = _T_239 ? 1'h0 : _GEN_47; // @[Passthrough.scala 28:10:@144.4 Passthrough.scala 100:20:@228.14]
  assign io_axi_WVALID = _T_239 ? 1'h0 : _GEN_47; // @[Passthrough.scala 28:10:@143.4 Passthrough.scala 97:21:@225.14]
  assign io_axi_BREADY = _T_239 ? 1'h0 : _GEN_51; // @[Passthrough.scala 28:10:@138.4 Passthrough.scala 112:21:@236.16]
  assign io_axi_ARID = 4'h0; // @[Passthrough.scala 28:10:@137.4]
  assign io_axi_ARADDR = _T_239 ? 48'h0 : _GEN_40; // @[Passthrough.scala 28:10:@136.4 Passthrough.scala 68:21:@198.8]
  assign io_axi_ARLEN = 8'h1; // @[Passthrough.scala 28:10:@135.4 Passthrough.scala 29:16:@158.4]
  assign io_axi_ARSIZE = 3'h6; // @[Passthrough.scala 28:10:@134.4 Passthrough.scala 30:17:@159.4]
  assign io_axi_ARBURST = 2'h1; // @[Passthrough.scala 28:10:@133.4 Passthrough.scala 31:18:@160.4]
  assign io_axi_ARCACHE = 4'h0; // @[Passthrough.scala 28:10:@132.4]
  assign io_axi_ARPROT = 3'h0; // @[Passthrough.scala 28:10:@131.4]
  assign io_axi_ARQOS = 3'h0; // @[Passthrough.scala 28:10:@130.4]
  assign io_axi_ARREGION = 4'h0; // @[Passthrough.scala 28:10:@129.4]
  assign io_axi_ARVALID = _T_239 ? 1'h0 : _T_244; // @[Passthrough.scala 28:10:@128.4 Passthrough.scala 69:22:@199.8]
  assign io_axi_RREADY = _T_239 ? 1'h0 : _GEN_45; // @[Passthrough.scala 28:10:@121.4 Passthrough.scala 86:21:@216.12]
  assign io_stall = state != 3'h0; // @[Passthrough.scala 37:12:@165.4]
  assign io_rdata = result; // @[Passthrough.scala 38:12:@166.4]
  assign io_vacant = _T_231 == 1'h0; // @[Passthrough.scala 39:13:@169.4]
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
  state = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  workingAddr = _RAND_1[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  workingData = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  workingBE = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  result = _RAND_4[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  pipeRead = _RAND_5[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  pipeWrite = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      state <= 3'h0;
    end else begin
      if (_T_239) begin
        if (_T_235) begin
          if (io_read) begin
            state <= 3'h1;
          end else begin
            if (io_write) begin
              state <= 3'h3;
            end
          end
        end
      end else begin
        if (_T_244) begin
          if (io_axi_ARREADY) begin
            state <= 3'h2;
          end
        end else begin
          if (_T_246) begin
            if (io_axi_AWREADY) begin
              state <= 3'h4;
            end
          end else begin
            if (_T_248) begin
              if (io_axi_RVALID) begin
                state <= 3'h0;
              end
            end else begin
              if (_T_250) begin
                if (io_axi_WREADY) begin
                  state <= 3'h5;
                end
              end else begin
                if (_T_253) begin
                  if (io_axi_BVALID) begin
                    state <= 3'h0;
                  end
                end
              end
            end
          end
        end
      end
    end
    if (reset) begin
      workingAddr <= 48'h0;
    end else begin
      if (_T_239) begin
        if (_T_235) begin
          workingAddr <= io_addr;
        end
      end
    end
    if (_T_239) begin
      if (_T_235) begin
        workingData <= io_wdata;
      end
    end
    if (reset) begin
      workingBE <= 8'h0;
    end else begin
      if (_T_239) begin
        if (_T_235) begin
          workingBE <= io_be;
        end
      end
    end
    if (!(_T_239)) begin
      if (!(_T_244)) begin
        if (!(_T_246)) begin
          if (_T_248) begin
            if (io_axi_RVALID) begin
              result <= io_axi_RDATA;
            end
          end
        end
      end
    end
    if (reset) begin
      pipeRead <= 1'h0;
    end else begin
      if (_T_238) begin
        pipeRead <= io_read;
      end
    end
    if (reset) begin
      pipeWrite <= 1'h0;
    end else begin
      if (_T_238) begin
        pipeWrite <= io_write;
      end
    end
  end
endmodule
module ICache( // @[:@242.2]
  input         clock, // @[:@243.4]
  input         reset, // @[:@244.4]
  input  [47:0] io_addr, // @[:@245.4]
  input         io_read, // @[:@245.4]
  output [3:0]  io_axi_AWID, // @[:@245.4]
  output [47:0] io_axi_AWADDR, // @[:@245.4]
  output [7:0]  io_axi_AWLEN, // @[:@245.4]
  output [2:0]  io_axi_AWSIZE, // @[:@245.4]
  output [1:0]  io_axi_AWBURST, // @[:@245.4]
  output [3:0]  io_axi_AWCACHE, // @[:@245.4]
  output [2:0]  io_axi_AWPROT, // @[:@245.4]
  output [2:0]  io_axi_AWQOS, // @[:@245.4]
  output [3:0]  io_axi_AWREGION, // @[:@245.4]
  output        io_axi_AWVALID, // @[:@245.4]
  input         io_axi_AWREADY, // @[:@245.4]
  output [63:0] io_axi_WDATA, // @[:@245.4]
  output [7:0]  io_axi_WSTRB, // @[:@245.4]
  output        io_axi_WLAST, // @[:@245.4]
  output        io_axi_WVALID, // @[:@245.4]
  input         io_axi_WREADY, // @[:@245.4]
  input  [3:0]  io_axi_BID, // @[:@245.4]
  input  [1:0]  io_axi_BRESP, // @[:@245.4]
  input         io_axi_BVALID, // @[:@245.4]
  output        io_axi_BREADY, // @[:@245.4]
  output [3:0]  io_axi_ARID, // @[:@245.4]
  output [47:0] io_axi_ARADDR, // @[:@245.4]
  output [7:0]  io_axi_ARLEN, // @[:@245.4]
  output [2:0]  io_axi_ARSIZE, // @[:@245.4]
  output [1:0]  io_axi_ARBURST, // @[:@245.4]
  output [3:0]  io_axi_ARCACHE, // @[:@245.4]
  output [2:0]  io_axi_ARPROT, // @[:@245.4]
  output [2:0]  io_axi_ARQOS, // @[:@245.4]
  output [3:0]  io_axi_ARREGION, // @[:@245.4]
  output        io_axi_ARVALID, // @[:@245.4]
  input         io_axi_ARREADY, // @[:@245.4]
  input  [3:0]  io_axi_RID, // @[:@245.4]
  input  [63:0] io_axi_RDATA, // @[:@245.4]
  input  [1:0]  io_axi_RRESP, // @[:@245.4]
  input         io_axi_RLAST, // @[:@245.4]
  input         io_axi_RVALID, // @[:@245.4]
  output        io_axi_RREADY, // @[:@245.4]
  output        io_stall, // @[:@245.4]
  input         io_pause, // @[:@245.4]
  input         io_flush, // @[:@245.4]
  output [31:0] io_data, // @[:@245.4]
  output        io_vacant // @[:@245.4]
);
  wire  inner_clock; // @[ICache.scala 24:21:@247.4]
  wire  inner_reset; // @[ICache.scala 24:21:@247.4]
  wire [47:0] inner_io_addr; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_read; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_write; // @[ICache.scala 24:21:@247.4]
  wire [63:0] inner_io_wdata; // @[ICache.scala 24:21:@247.4]
  wire [7:0] inner_io_be; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_AWID; // @[ICache.scala 24:21:@247.4]
  wire [47:0] inner_io_axi_AWADDR; // @[ICache.scala 24:21:@247.4]
  wire [7:0] inner_io_axi_AWLEN; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_AWSIZE; // @[ICache.scala 24:21:@247.4]
  wire [1:0] inner_io_axi_AWBURST; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_AWCACHE; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_AWPROT; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_AWQOS; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_AWREGION; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_AWVALID; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_AWREADY; // @[ICache.scala 24:21:@247.4]
  wire [63:0] inner_io_axi_WDATA; // @[ICache.scala 24:21:@247.4]
  wire [7:0] inner_io_axi_WSTRB; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_WLAST; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_WVALID; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_WREADY; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_BID; // @[ICache.scala 24:21:@247.4]
  wire [1:0] inner_io_axi_BRESP; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_BVALID; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_BREADY; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_ARID; // @[ICache.scala 24:21:@247.4]
  wire [47:0] inner_io_axi_ARADDR; // @[ICache.scala 24:21:@247.4]
  wire [7:0] inner_io_axi_ARLEN; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_ARSIZE; // @[ICache.scala 24:21:@247.4]
  wire [1:0] inner_io_axi_ARBURST; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_ARCACHE; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_ARPROT; // @[ICache.scala 24:21:@247.4]
  wire [2:0] inner_io_axi_ARQOS; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_ARREGION; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_ARVALID; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_ARREADY; // @[ICache.scala 24:21:@247.4]
  wire [3:0] inner_io_axi_RID; // @[ICache.scala 24:21:@247.4]
  wire [63:0] inner_io_axi_RDATA; // @[ICache.scala 24:21:@247.4]
  wire [1:0] inner_io_axi_RRESP; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_RLAST; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_RVALID; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_axi_RREADY; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_stall; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_pause; // @[ICache.scala 24:21:@247.4]
  wire [63:0] inner_io_rdata; // @[ICache.scala 24:21:@247.4]
  wire  inner_io_vacant; // @[ICache.scala 24:21:@247.4]
  reg [47:0] pipeAddr; // @[ICache.scala 26:25:@250.4]
  reg [63:0] _RAND_0;
  wire  _T_96; // @[ICache.scala 28:8:@251.4]
  wire  _T_98; // @[ICache.scala 28:21:@252.4]
  wire  _T_99; // @[ICache.scala 28:18:@253.4]
  wire [47:0] _GEN_0; // @[ICache.scala 28:32:@254.4]
  wire [44:0] _T_100; // @[ICache.scala 33:27:@257.4]
  wire [47:0] _T_102; // @[ICache.scala 33:45:@258.4]
  wire [63:0] _T_130; // @[:@302.4 :@303.4]
  wire [31:0] vecView_0; // @[ICache.scala 40:37:@304.4]
  wire [31:0] vecView_1; // @[ICache.scala 40:37:@306.4]
  wire  _T_133; // @[ICache.scala 41:30:@310.4]
  wire [31:0] _T_118_0; // @[ICache.scala 40:37:@301.4 ICache.scala 40:37:@305.4]
  wire [31:0] _T_131; // @[ICache.scala 39:21:@300.4 ICache.scala 40:11:@308.4]
  wire [31:0] _GEN_1; // @[ICache.scala 41:11:@311.4]
  wire [31:0] _T_118_1; // @[ICache.scala 40:37:@301.4 ICache.scala 40:37:@307.4]
  wire [31:0] _T_132; // @[ICache.scala 39:21:@300.4 ICache.scala 40:11:@309.4]
  wire [31:0] _GEN_2; // @[ICache.scala 41:11:@311.4]
  wire  _T_136; // @[ICache.scala 47:32:@315.4]
  wire [31:0] _vecView_T_133; // @[ICache.scala 41:11:@311.4 ICache.scala 41:11:@311.4 ICache.scala 41:11:@311.4]
  Passthrough inner ( // @[ICache.scala 24:21:@247.4]
    .clock(inner_clock),
    .reset(inner_reset),
    .io_addr(inner_io_addr),
    .io_read(inner_io_read),
    .io_write(inner_io_write),
    .io_wdata(inner_io_wdata),
    .io_be(inner_io_be),
    .io_axi_AWID(inner_io_axi_AWID),
    .io_axi_AWADDR(inner_io_axi_AWADDR),
    .io_axi_AWLEN(inner_io_axi_AWLEN),
    .io_axi_AWSIZE(inner_io_axi_AWSIZE),
    .io_axi_AWBURST(inner_io_axi_AWBURST),
    .io_axi_AWCACHE(inner_io_axi_AWCACHE),
    .io_axi_AWPROT(inner_io_axi_AWPROT),
    .io_axi_AWQOS(inner_io_axi_AWQOS),
    .io_axi_AWREGION(inner_io_axi_AWREGION),
    .io_axi_AWVALID(inner_io_axi_AWVALID),
    .io_axi_AWREADY(inner_io_axi_AWREADY),
    .io_axi_WDATA(inner_io_axi_WDATA),
    .io_axi_WSTRB(inner_io_axi_WSTRB),
    .io_axi_WLAST(inner_io_axi_WLAST),
    .io_axi_WVALID(inner_io_axi_WVALID),
    .io_axi_WREADY(inner_io_axi_WREADY),
    .io_axi_BID(inner_io_axi_BID),
    .io_axi_BRESP(inner_io_axi_BRESP),
    .io_axi_BVALID(inner_io_axi_BVALID),
    .io_axi_BREADY(inner_io_axi_BREADY),
    .io_axi_ARID(inner_io_axi_ARID),
    .io_axi_ARADDR(inner_io_axi_ARADDR),
    .io_axi_ARLEN(inner_io_axi_ARLEN),
    .io_axi_ARSIZE(inner_io_axi_ARSIZE),
    .io_axi_ARBURST(inner_io_axi_ARBURST),
    .io_axi_ARCACHE(inner_io_axi_ARCACHE),
    .io_axi_ARPROT(inner_io_axi_ARPROT),
    .io_axi_ARQOS(inner_io_axi_ARQOS),
    .io_axi_ARREGION(inner_io_axi_ARREGION),
    .io_axi_ARVALID(inner_io_axi_ARVALID),
    .io_axi_ARREADY(inner_io_axi_ARREADY),
    .io_axi_RID(inner_io_axi_RID),
    .io_axi_RDATA(inner_io_axi_RDATA),
    .io_axi_RRESP(inner_io_axi_RRESP),
    .io_axi_RLAST(inner_io_axi_RLAST),
    .io_axi_RVALID(inner_io_axi_RVALID),
    .io_axi_RREADY(inner_io_axi_RREADY),
    .io_stall(inner_io_stall),
    .io_pause(inner_io_pause),
    .io_rdata(inner_io_rdata),
    .io_vacant(inner_io_vacant)
  );
  assign _T_96 = io_stall == 1'h0; // @[ICache.scala 28:8:@251.4]
  assign _T_98 = io_pause == 1'h0; // @[ICache.scala 28:21:@252.4]
  assign _T_99 = _T_96 & _T_98; // @[ICache.scala 28:18:@253.4]
  assign _GEN_0 = _T_99 ? io_addr : pipeAddr; // @[ICache.scala 28:32:@254.4]
  assign _T_100 = io_addr[47:3]; // @[ICache.scala 33:27:@257.4]
  assign _T_102 = {_T_100,3'h0}; // @[ICache.scala 33:45:@258.4]
  assign _T_130 = inner_io_rdata; // @[:@302.4 :@303.4]
  assign vecView_0 = _T_130[31:0]; // @[ICache.scala 40:37:@304.4]
  assign vecView_1 = _T_130[63:32]; // @[ICache.scala 40:37:@306.4]
  assign _T_133 = pipeAddr[2]; // @[ICache.scala 41:30:@310.4]
  assign _T_118_0 = vecView_0; // @[ICache.scala 40:37:@301.4 ICache.scala 40:37:@305.4]
  assign _T_131 = vecView_0; // @[ICache.scala 39:21:@300.4 ICache.scala 40:11:@308.4]
  assign _GEN_1 = vecView_0; // @[ICache.scala 41:11:@311.4]
  assign _T_118_1 = vecView_1; // @[ICache.scala 40:37:@301.4 ICache.scala 40:37:@307.4]
  assign _T_132 = vecView_1; // @[ICache.scala 39:21:@300.4 ICache.scala 40:11:@309.4]
  assign _GEN_2 = _T_133 ? vecView_1 : vecView_0; // @[ICache.scala 41:11:@311.4]
  assign _T_136 = inner_io_vacant | io_flush; // @[ICache.scala 47:32:@315.4]
  assign _vecView_T_133 = _GEN_2; // @[ICache.scala 41:11:@311.4 ICache.scala 41:11:@311.4 ICache.scala 41:11:@311.4]
  assign io_axi_AWID = 4'h0; // @[ICache.scala 35:16:@297.4]
  assign io_axi_AWADDR = inner_io_axi_AWADDR; // @[ICache.scala 35:16:@296.4]
  assign io_axi_AWLEN = 8'h1; // @[ICache.scala 35:16:@295.4]
  assign io_axi_AWSIZE = 3'h6; // @[ICache.scala 35:16:@294.4]
  assign io_axi_AWBURST = 2'h1; // @[ICache.scala 35:16:@293.4]
  assign io_axi_AWCACHE = 4'h0; // @[ICache.scala 35:16:@292.4]
  assign io_axi_AWPROT = 3'h0; // @[ICache.scala 35:16:@291.4]
  assign io_axi_AWQOS = 3'h0; // @[ICache.scala 35:16:@290.4]
  assign io_axi_AWREGION = 4'h0; // @[ICache.scala 35:16:@289.4]
  assign io_axi_AWVALID = inner_io_axi_AWVALID; // @[ICache.scala 35:16:@288.4]
  assign io_axi_WDATA = inner_io_axi_WDATA; // @[ICache.scala 35:16:@286.4]
  assign io_axi_WSTRB = inner_io_axi_WSTRB; // @[ICache.scala 35:16:@285.4]
  assign io_axi_WLAST = inner_io_axi_WLAST; // @[ICache.scala 35:16:@284.4]
  assign io_axi_WVALID = inner_io_axi_WVALID; // @[ICache.scala 35:16:@283.4]
  assign io_axi_BREADY = inner_io_axi_BREADY; // @[ICache.scala 35:16:@278.4]
  assign io_axi_ARID = 4'h0; // @[ICache.scala 35:16:@277.4]
  assign io_axi_ARADDR = inner_io_axi_ARADDR; // @[ICache.scala 35:16:@276.4]
  assign io_axi_ARLEN = 8'h1; // @[ICache.scala 35:16:@275.4]
  assign io_axi_ARSIZE = 3'h6; // @[ICache.scala 35:16:@274.4]
  assign io_axi_ARBURST = 2'h1; // @[ICache.scala 35:16:@273.4]
  assign io_axi_ARCACHE = 4'h0; // @[ICache.scala 35:16:@272.4]
  assign io_axi_ARPROT = 3'h0; // @[ICache.scala 35:16:@271.4]
  assign io_axi_ARQOS = 3'h0; // @[ICache.scala 35:16:@270.4]
  assign io_axi_ARREGION = 4'h0; // @[ICache.scala 35:16:@269.4]
  assign io_axi_ARVALID = inner_io_axi_ARVALID; // @[ICache.scala 35:16:@268.4]
  assign io_axi_RREADY = inner_io_axi_RREADY; // @[ICache.scala 35:16:@261.4]
  assign io_stall = inner_io_stall; // @[ICache.scala 36:18:@298.4]
  assign io_data = _T_133 ? vecView_1 : vecView_0; // @[ICache.scala 41:11:@311.4]
  assign io_vacant = inner_io_vacant | io_flush; // @[ICache.scala 47:13:@316.4]
  assign inner_clock = clock; // @[:@248.4]
  assign inner_reset = reset; // @[:@249.4]
  assign inner_io_addr = {_T_100,3'h0}; // @[ICache.scala 33:17:@259.4]
  assign inner_io_read = io_read; // @[ICache.scala 34:17:@260.4]
  assign inner_io_write = 1'h0; // @[ICache.scala 43:18:@312.4]
  assign inner_io_wdata = 64'h0;
  assign inner_io_be = 8'h0;
  assign inner_io_axi_AWREADY = io_axi_AWREADY; // @[ICache.scala 35:16:@287.4]
  assign inner_io_axi_WREADY = io_axi_WREADY; // @[ICache.scala 35:16:@282.4]
  assign inner_io_axi_BID = io_axi_BID; // @[ICache.scala 35:16:@281.4]
  assign inner_io_axi_BRESP = io_axi_BRESP; // @[ICache.scala 35:16:@280.4]
  assign inner_io_axi_BVALID = io_axi_BVALID; // @[ICache.scala 35:16:@279.4]
  assign inner_io_axi_ARREADY = io_axi_ARREADY; // @[ICache.scala 35:16:@267.4]
  assign inner_io_axi_RID = io_axi_RID; // @[ICache.scala 35:16:@266.4]
  assign inner_io_axi_RDATA = io_axi_RDATA; // @[ICache.scala 35:16:@265.4]
  assign inner_io_axi_RRESP = io_axi_RRESP; // @[ICache.scala 35:16:@264.4]
  assign inner_io_axi_RLAST = io_axi_RLAST; // @[ICache.scala 35:16:@263.4]
  assign inner_io_axi_RVALID = io_axi_RVALID; // @[ICache.scala 35:16:@262.4]
  assign inner_io_pause = io_pause; // @[ICache.scala 37:18:@299.4]
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
  _RAND_0 = {2{`RANDOM}};
  pipeAddr = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      pipeAddr <= 48'h0;
    end else begin
      if (_T_99) begin
        pipeAddr <= io_addr;
      end
    end
  end
endmodule
module InstrFetch( // @[:@318.2]
  input         clock, // @[:@319.4]
  input         reset, // @[:@320.4]
  input  [47:0] io_pc, // @[:@321.4]
  output [47:0] io_icache_addr, // @[:@321.4]
  output        io_icache_read, // @[:@321.4]
  input  [3:0]  io_icache_axi_AWID, // @[:@321.4]
  input  [47:0] io_icache_axi_AWADDR, // @[:@321.4]
  input  [7:0]  io_icache_axi_AWLEN, // @[:@321.4]
  input  [2:0]  io_icache_axi_AWSIZE, // @[:@321.4]
  input  [1:0]  io_icache_axi_AWBURST, // @[:@321.4]
  input  [3:0]  io_icache_axi_AWCACHE, // @[:@321.4]
  input  [2:0]  io_icache_axi_AWPROT, // @[:@321.4]
  input  [2:0]  io_icache_axi_AWQOS, // @[:@321.4]
  input  [3:0]  io_icache_axi_AWREGION, // @[:@321.4]
  input         io_icache_axi_AWVALID, // @[:@321.4]
  output        io_icache_axi_AWREADY, // @[:@321.4]
  input  [63:0] io_icache_axi_WDATA, // @[:@321.4]
  input  [7:0]  io_icache_axi_WSTRB, // @[:@321.4]
  input         io_icache_axi_WLAST, // @[:@321.4]
  input         io_icache_axi_WVALID, // @[:@321.4]
  output        io_icache_axi_WREADY, // @[:@321.4]
  output [3:0]  io_icache_axi_BID, // @[:@321.4]
  output [1:0]  io_icache_axi_BRESP, // @[:@321.4]
  output        io_icache_axi_BVALID, // @[:@321.4]
  input         io_icache_axi_BREADY, // @[:@321.4]
  input  [3:0]  io_icache_axi_ARID, // @[:@321.4]
  input  [47:0] io_icache_axi_ARADDR, // @[:@321.4]
  input  [7:0]  io_icache_axi_ARLEN, // @[:@321.4]
  input  [2:0]  io_icache_axi_ARSIZE, // @[:@321.4]
  input  [1:0]  io_icache_axi_ARBURST, // @[:@321.4]
  input  [3:0]  io_icache_axi_ARCACHE, // @[:@321.4]
  input  [2:0]  io_icache_axi_ARPROT, // @[:@321.4]
  input  [2:0]  io_icache_axi_ARQOS, // @[:@321.4]
  input  [3:0]  io_icache_axi_ARREGION, // @[:@321.4]
  input         io_icache_axi_ARVALID, // @[:@321.4]
  output        io_icache_axi_ARREADY, // @[:@321.4]
  output [3:0]  io_icache_axi_RID, // @[:@321.4]
  output [63:0] io_icache_axi_RDATA, // @[:@321.4]
  output [1:0]  io_icache_axi_RRESP, // @[:@321.4]
  output        io_icache_axi_RLAST, // @[:@321.4]
  output        io_icache_axi_RVALID, // @[:@321.4]
  input         io_icache_axi_RREADY, // @[:@321.4]
  input         io_icache_stall, // @[:@321.4]
  output        io_icache_pause, // @[:@321.4]
  output        io_icache_flush, // @[:@321.4]
  input  [31:0] io_icache_data, // @[:@321.4]
  input         io_icache_vacant, // @[:@321.4]
  input         io_fetch, // @[:@321.4]
  output [47:0] io_output_0_addr, // @[:@321.4]
  output [4:0]  io_output_0_instr_op, // @[:@321.4]
  output [2:0]  io_output_0_instr_base, // @[:@321.4]
  output [31:0] io_output_0_instr_imm, // @[:@321.4]
  output [4:0]  io_output_0_instr_rs1, // @[:@321.4]
  output [4:0]  io_output_0_instr_rs2, // @[:@321.4]
  output [4:0]  io_output_0_instr_rd, // @[:@321.4]
  output [6:0]  io_output_0_instr_funct7, // @[:@321.4]
  output [2:0]  io_output_0_instr_funct3, // @[:@321.4]
  output        io_output_0_vacant, // @[:@321.4]
  output [3:0]  io_axi_AWID, // @[:@321.4]
  output [47:0] io_axi_AWADDR, // @[:@321.4]
  output [7:0]  io_axi_AWLEN, // @[:@321.4]
  output [2:0]  io_axi_AWSIZE, // @[:@321.4]
  output [1:0]  io_axi_AWBURST, // @[:@321.4]
  output [3:0]  io_axi_AWCACHE, // @[:@321.4]
  output [2:0]  io_axi_AWPROT, // @[:@321.4]
  output [2:0]  io_axi_AWQOS, // @[:@321.4]
  output [3:0]  io_axi_AWREGION, // @[:@321.4]
  output        io_axi_AWVALID, // @[:@321.4]
  input         io_axi_AWREADY, // @[:@321.4]
  output [63:0] io_axi_WDATA, // @[:@321.4]
  output [7:0]  io_axi_WSTRB, // @[:@321.4]
  output        io_axi_WLAST, // @[:@321.4]
  output        io_axi_WVALID, // @[:@321.4]
  input         io_axi_WREADY, // @[:@321.4]
  input  [3:0]  io_axi_BID, // @[:@321.4]
  input  [1:0]  io_axi_BRESP, // @[:@321.4]
  input         io_axi_BVALID, // @[:@321.4]
  output        io_axi_BREADY, // @[:@321.4]
  output [3:0]  io_axi_ARID, // @[:@321.4]
  output [47:0] io_axi_ARADDR, // @[:@321.4]
  output [7:0]  io_axi_ARLEN, // @[:@321.4]
  output [2:0]  io_axi_ARSIZE, // @[:@321.4]
  output [1:0]  io_axi_ARBURST, // @[:@321.4]
  output [3:0]  io_axi_ARCACHE, // @[:@321.4]
  output [2:0]  io_axi_ARPROT, // @[:@321.4]
  output [2:0]  io_axi_ARQOS, // @[:@321.4]
  output [3:0]  io_axi_ARREGION, // @[:@321.4]
  output        io_axi_ARVALID, // @[:@321.4]
  input         io_axi_ARREADY, // @[:@321.4]
  input  [3:0]  io_axi_RID, // @[:@321.4]
  input  [63:0] io_axi_RDATA, // @[:@321.4]
  input  [1:0]  io_axi_RRESP, // @[:@321.4]
  input         io_axi_RLAST, // @[:@321.4]
  input         io_axi_RVALID, // @[:@321.4]
  output        io_axi_RREADY, // @[:@321.4]
  output        io_ctrl_stall, // @[:@321.4]
  input         io_ctrl_pause, // @[:@321.4]
  input         io_ctrl_flush // @[:@321.4]
);
  reg [47:0] pipePc; // @[InstrFetch.scala 45:23:@365.4]
  reg [63:0] _RAND_0;
  wire  _T_290; // @[InstrFetch.scala 46:8:@366.4]
  wire  _T_292; // @[InstrFetch.scala 46:26:@367.4]
  wire  _T_293; // @[InstrFetch.scala 46:23:@368.4]
  wire [47:0] _GEN_0; // @[InstrFetch.scala 46:42:@369.4]
  wire [31:0] _T_308; // @[:@373.4 :@374.4]
  wire [31:0] _T_309; // @[InstrFetch.scala 54:43:@375.4]
  wire [31:0] _T_301_0; // @[InstrFetch.scala 54:43:@372.4 InstrFetch.scala 54:43:@376.4]
  wire [29:0] _T_338; // @[Decoder.scala 115:23:@378.4]
  wire [4:0] _T_337_op; // @[Decoder.scala 113:24:@377.4 Decoder.scala 115:17:@379.4]
  wire  _T_339; // @[Decoder.scala 122:39:@380.4]
  wire  _T_340; // @[Decoder.scala 121:48:@385.6]
  wire  _T_341; // @[Decoder.scala 121:48:@390.8]
  wire  _T_342; // @[Decoder.scala 121:48:@395.10]
  wire  _T_343; // @[Decoder.scala 121:48:@400.12]
  wire  _T_344; // @[Decoder.scala 121:48:@405.14]
  wire  _T_345; // @[Decoder.scala 121:48:@410.16]
  wire  _T_346; // @[Decoder.scala 121:48:@415.18]
  wire  _T_347; // @[Decoder.scala 121:48:@420.20]
  wire  _T_348; // @[Decoder.scala 121:48:@425.22]
  wire  _T_349; // @[Decoder.scala 121:48:@430.24]
  wire  _T_350; // @[Decoder.scala 121:48:@435.26]
  wire  _T_351; // @[Decoder.scala 121:48:@440.28]
  wire [2:0] _GEN_1; // @[Decoder.scala 121:57:@441.28]
  wire [2:0] _GEN_2; // @[Decoder.scala 121:57:@436.26]
  wire [2:0] _GEN_3; // @[Decoder.scala 121:57:@431.24]
  wire [2:0] _GEN_4; // @[Decoder.scala 121:57:@426.22]
  wire [2:0] _GEN_5; // @[Decoder.scala 121:57:@421.20]
  wire [2:0] _GEN_6; // @[Decoder.scala 121:57:@416.18]
  wire [2:0] _GEN_7; // @[Decoder.scala 121:57:@411.16]
  wire [2:0] _GEN_8; // @[Decoder.scala 121:57:@406.14]
  wire [2:0] _GEN_9; // @[Decoder.scala 121:57:@401.12]
  wire [2:0] _GEN_10; // @[Decoder.scala 121:57:@396.10]
  wire [2:0] _GEN_11; // @[Decoder.scala 121:57:@391.8]
  wire [2:0] _GEN_12; // @[Decoder.scala 121:57:@386.6]
  wire [2:0] _GEN_13; // @[Decoder.scala 122:48:@381.4]
  wire [2:0] _T_353; // @[Decoder.scala 129:26:@447.4]
  wire [6:0] _T_354; // @[Decoder.scala 130:26:@449.4]
  wire [4:0] _T_355; // @[Decoder.scala 131:22:@451.4]
  wire [4:0] _T_356; // @[Decoder.scala 132:23:@453.4]
  wire [4:0] _T_357; // @[Decoder.scala 133:23:@455.4]
  wire [2:0] _T_337_base; // @[Decoder.scala 113:24:@377.4 Decoder.scala 122:62:@382.6 Decoder.scala 121:71:@387.8 Decoder.scala 121:71:@392.10 Decoder.scala 121:71:@397.12 Decoder.scala 121:71:@402.14 Decoder.scala 121:71:@407.16 Decoder.scala 121:71:@412.18 Decoder.scala 121:71:@417.20 Decoder.scala 121:71:@422.22 Decoder.scala 121:71:@427.24 Decoder.scala 121:71:@432.26 Decoder.scala 121:71:@437.28 Decoder.scala 121:71:@442.30 Decoder.scala 126:39:@445.30]
  wire  _T_360; // @[Decoder.scala 137:24:@458.4]
  wire [11:0] _T_361; // @[Decoder.scala 138:25:@460.6]
  wire [11:0] _T_362; // @[Decoder.scala 138:34:@461.6]
  wire  _T_364; // @[Decoder.scala 139:30:@465.6]
  wire [6:0] _T_365; // @[Decoder.scala 140:26:@467.8]
  wire [4:0] _T_366; // @[Decoder.scala 140:40:@468.8]
  wire [11:0] _T_367; // @[Decoder.scala 140:35:@469.8]
  wire [11:0] _T_368; // @[Decoder.scala 140:49:@470.8]
  wire  _T_370; // @[Decoder.scala 141:30:@474.8]
  wire  _T_371; // @[Decoder.scala 142:26:@476.10]
  wire  _T_372; // @[Decoder.scala 142:36:@477.10]
  wire [1:0] _T_373; // @[Decoder.scala 142:31:@478.10]
  wire [5:0] _T_374; // @[Decoder.scala 142:45:@479.10]
  wire [7:0] _T_375; // @[Decoder.scala 142:40:@480.10]
  wire [3:0] _T_376; // @[Decoder.scala 142:59:@481.10]
  wire [11:0] _T_377; // @[Decoder.scala 142:54:@482.10]
  wire [12:0] _T_379; // @[Decoder.scala 142:67:@483.10]
  wire [12:0] _T_380; // @[Decoder.scala 142:80:@484.10]
  wire  _T_382; // @[Decoder.scala 143:30:@488.10]
  wire [19:0] _T_383; // @[Decoder.scala 144:25:@490.12]
  wire [19:0] _T_384; // @[Decoder.scala 144:34:@491.12]
  wire [31:0] _GEN_19; // @[Decoder.scala 144:41:@492.12]
  wire [31:0] _T_385; // @[Decoder.scala 144:41:@492.12]
  wire  _T_387; // @[Decoder.scala 145:30:@496.12]
  wire  _T_388; // @[Decoder.scala 146:26:@498.14]
  wire [7:0] _T_389; // @[Decoder.scala 146:36:@499.14]
  wire [8:0] _T_390; // @[Decoder.scala 146:31:@500.14]
  wire  _T_391; // @[Decoder.scala 146:50:@501.14]
  wire [9:0] _T_392; // @[Decoder.scala 146:45:@502.14]
  wire [9:0] _T_393; // @[Decoder.scala 146:60:@503.14]
  wire [19:0] _T_394; // @[Decoder.scala 146:55:@504.14]
  wire [20:0] _T_396; // @[Decoder.scala 146:69:@505.14]
  wire [20:0] _T_397; // @[Decoder.scala 146:82:@506.14]
  wire [20:0] _GEN_14; // @[Decoder.scala 145:64:@497.12]
  wire [31:0] _GEN_15; // @[Decoder.scala 143:64:@489.10]
  wire [31:0] _GEN_16; // @[Decoder.scala 141:64:@475.8]
  wire [31:0] _GEN_17; // @[Decoder.scala 139:64:@466.6]
  wire [31:0] _GEN_18; // @[Decoder.scala 137:58:@459.4]
  wire [48:0] _T_399; // @[InstrFetch.scala 56:33:@517.4]
  wire [47:0] _T_400; // @[InstrFetch.scala 56:33:@518.4]
  wire [31:0] _T_337_imm; // @[Decoder.scala 113:24:@377.4 Decoder.scala 136:18:@457.4 Decoder.scala 138:20:@462.6 Decoder.scala 140:20:@471.8 Decoder.scala 142:20:@485.10 Decoder.scala 144:20:@493.12 Decoder.scala 146:20:@507.14]
  wire [4:0] _T_337_rs1; // @[Decoder.scala 113:24:@377.4 Decoder.scala 132:18:@454.4]
  wire [4:0] _T_337_rs2; // @[Decoder.scala 113:24:@377.4 Decoder.scala 133:18:@456.4]
  wire [4:0] _T_337_rd; // @[Decoder.scala 113:24:@377.4 Decoder.scala 131:17:@452.4]
  wire [6:0] _T_337_funct7; // @[Decoder.scala 113:24:@377.4 Decoder.scala 130:21:@450.4]
  wire [2:0] _T_337_funct3; // @[Decoder.scala 113:24:@377.4 Decoder.scala 129:21:@448.4]
  assign _T_290 = io_ctrl_stall == 1'h0; // @[InstrFetch.scala 46:8:@366.4]
  assign _T_292 = io_ctrl_pause == 1'h0; // @[InstrFetch.scala 46:26:@367.4]
  assign _T_293 = _T_290 & _T_292; // @[InstrFetch.scala 46:23:@368.4]
  assign _GEN_0 = _T_293 ? io_pc : pipePc; // @[InstrFetch.scala 46:42:@369.4]
  assign _T_308 = io_icache_data; // @[:@373.4 :@374.4]
  assign _T_309 = io_icache_data; // @[InstrFetch.scala 54:43:@375.4]
  assign _T_301_0 = io_icache_data; // @[InstrFetch.scala 54:43:@372.4 InstrFetch.scala 54:43:@376.4]
  assign _T_338 = io_icache_data[31:2]; // @[Decoder.scala 115:23:@378.4]
  assign _T_337_op = _T_338[4:0]; // @[Decoder.scala 113:24:@377.4 Decoder.scala 115:17:@379.4]
  assign _T_339 = _T_337_op == 5'h1b; // @[Decoder.scala 122:39:@380.4]
  assign _T_340 = _T_337_op == 5'h6; // @[Decoder.scala 121:48:@385.6]
  assign _T_341 = _T_337_op == 5'h4; // @[Decoder.scala 121:48:@390.8]
  assign _T_342 = _T_337_op == 5'he; // @[Decoder.scala 121:48:@395.10]
  assign _T_343 = _T_337_op == 5'hc; // @[Decoder.scala 121:48:@400.12]
  assign _T_344 = _T_337_op == 5'h0; // @[Decoder.scala 121:48:@405.14]
  assign _T_345 = _T_337_op == 5'h18; // @[Decoder.scala 121:48:@410.16]
  assign _T_346 = _T_337_op == 5'h8; // @[Decoder.scala 121:48:@415.18]
  assign _T_347 = _T_337_op == 5'hd; // @[Decoder.scala 121:48:@420.20]
  assign _T_348 = _T_337_op == 5'h1c; // @[Decoder.scala 121:48:@425.22]
  assign _T_349 = _T_337_op == 5'h19; // @[Decoder.scala 121:48:@430.24]
  assign _T_350 = _T_337_op == 5'h5; // @[Decoder.scala 121:48:@435.26]
  assign _T_351 = _T_337_op == 5'h3; // @[Decoder.scala 121:48:@440.28]
  assign _GEN_1 = _T_351 ? 3'h2 : 3'h0; // @[Decoder.scala 121:57:@441.28]
  assign _GEN_2 = _T_350 ? 3'h5 : _GEN_1; // @[Decoder.scala 121:57:@436.26]
  assign _GEN_3 = _T_349 ? 3'h2 : _GEN_2; // @[Decoder.scala 121:57:@431.24]
  assign _GEN_4 = _T_348 ? 3'h2 : _GEN_3; // @[Decoder.scala 121:57:@426.22]
  assign _GEN_5 = _T_347 ? 3'h5 : _GEN_4; // @[Decoder.scala 121:57:@421.20]
  assign _GEN_6 = _T_346 ? 3'h3 : _GEN_5; // @[Decoder.scala 121:57:@416.18]
  assign _GEN_7 = _T_345 ? 3'h4 : _GEN_6; // @[Decoder.scala 121:57:@411.16]
  assign _GEN_8 = _T_344 ? 3'h2 : _GEN_7; // @[Decoder.scala 121:57:@406.14]
  assign _GEN_9 = _T_343 ? 3'h1 : _GEN_8; // @[Decoder.scala 121:57:@401.12]
  assign _GEN_10 = _T_342 ? 3'h1 : _GEN_9; // @[Decoder.scala 121:57:@396.10]
  assign _GEN_11 = _T_341 ? 3'h2 : _GEN_10; // @[Decoder.scala 121:57:@391.8]
  assign _GEN_12 = _T_340 ? 3'h2 : _GEN_11; // @[Decoder.scala 121:57:@386.6]
  assign _GEN_13 = _T_339 ? 3'h6 : _GEN_12; // @[Decoder.scala 122:48:@381.4]
  assign _T_353 = io_icache_data[14:12]; // @[Decoder.scala 129:26:@447.4]
  assign _T_354 = io_icache_data[31:25]; // @[Decoder.scala 130:26:@449.4]
  assign _T_355 = io_icache_data[11:7]; // @[Decoder.scala 131:22:@451.4]
  assign _T_356 = io_icache_data[19:15]; // @[Decoder.scala 132:23:@453.4]
  assign _T_357 = io_icache_data[24:20]; // @[Decoder.scala 133:23:@455.4]
  assign _T_337_base = _GEN_13; // @[Decoder.scala 113:24:@377.4 Decoder.scala 122:62:@382.6 Decoder.scala 121:71:@387.8 Decoder.scala 121:71:@392.10 Decoder.scala 121:71:@397.12 Decoder.scala 121:71:@402.14 Decoder.scala 121:71:@407.16 Decoder.scala 121:71:@412.18 Decoder.scala 121:71:@417.20 Decoder.scala 121:71:@422.22 Decoder.scala 121:71:@427.24 Decoder.scala 121:71:@432.26 Decoder.scala 121:71:@437.28 Decoder.scala 121:71:@442.30 Decoder.scala 126:39:@445.30]
  assign _T_360 = _GEN_13 == 3'h2; // @[Decoder.scala 137:24:@458.4]
  assign _T_361 = io_icache_data[31:20]; // @[Decoder.scala 138:25:@460.6]
  assign _T_362 = $signed(_T_361); // @[Decoder.scala 138:34:@461.6]
  assign _T_364 = _GEN_13 == 3'h3; // @[Decoder.scala 139:30:@465.6]
  assign _T_365 = io_icache_data[31:25]; // @[Decoder.scala 140:26:@467.8]
  assign _T_366 = io_icache_data[11:7]; // @[Decoder.scala 140:40:@468.8]
  assign _T_367 = {_T_354,_T_355}; // @[Decoder.scala 140:35:@469.8]
  assign _T_368 = $signed(_T_367); // @[Decoder.scala 140:49:@470.8]
  assign _T_370 = _GEN_13 == 3'h4; // @[Decoder.scala 141:30:@474.8]
  assign _T_371 = io_icache_data[31]; // @[Decoder.scala 142:26:@476.10]
  assign _T_372 = io_icache_data[7]; // @[Decoder.scala 142:36:@477.10]
  assign _T_373 = {_T_371,_T_372}; // @[Decoder.scala 142:31:@478.10]
  assign _T_374 = io_icache_data[30:25]; // @[Decoder.scala 142:45:@479.10]
  assign _T_375 = {_T_371,_T_372,_T_374}; // @[Decoder.scala 142:40:@480.10]
  assign _T_376 = io_icache_data[11:8]; // @[Decoder.scala 142:59:@481.10]
  assign _T_377 = {_T_371,_T_372,_T_374,_T_376}; // @[Decoder.scala 142:54:@482.10]
  assign _T_379 = {_T_371,_T_372,_T_374,_T_376,1'h0}; // @[Decoder.scala 142:67:@483.10]
  assign _T_380 = $signed(_T_379); // @[Decoder.scala 142:80:@484.10]
  assign _T_382 = _GEN_13 == 3'h5; // @[Decoder.scala 143:30:@488.10]
  assign _T_383 = io_icache_data[31:12]; // @[Decoder.scala 144:25:@490.12]
  assign _T_384 = $signed(_T_383); // @[Decoder.scala 144:34:@491.12]
  assign _GEN_19 = {{12{_T_384[19]}},_T_384}; // @[Decoder.scala 144:41:@492.12]
  assign _T_385 = $signed(_GEN_19) << 12; // @[Decoder.scala 144:41:@492.12]
  assign _T_387 = _GEN_13 == 3'h6; // @[Decoder.scala 145:30:@496.12]
  assign _T_388 = io_icache_data[31]; // @[Decoder.scala 146:26:@498.14]
  assign _T_389 = io_icache_data[19:12]; // @[Decoder.scala 146:36:@499.14]
  assign _T_390 = {_T_371,_T_389}; // @[Decoder.scala 146:31:@500.14]
  assign _T_391 = io_icache_data[20]; // @[Decoder.scala 146:50:@501.14]
  assign _T_392 = {_T_371,_T_389,_T_391}; // @[Decoder.scala 146:45:@502.14]
  assign _T_393 = io_icache_data[30:21]; // @[Decoder.scala 146:60:@503.14]
  assign _T_394 = {_T_371,_T_389,_T_391,_T_393}; // @[Decoder.scala 146:55:@504.14]
  assign _T_396 = {_T_371,_T_389,_T_391,_T_393,1'h0}; // @[Decoder.scala 146:69:@505.14]
  assign _T_397 = $signed(_T_396); // @[Decoder.scala 146:82:@506.14]
  assign _GEN_14 = _T_387 ? $signed(_T_397) : $signed(21'sh0); // @[Decoder.scala 145:64:@497.12]
  assign _GEN_15 = _T_382 ? $signed(_T_385) : $signed({{11{_GEN_14[20]}},_GEN_14}); // @[Decoder.scala 143:64:@489.10]
  assign _GEN_16 = _T_370 ? $signed({{19{_T_380[12]}},_T_380}) : $signed(_GEN_15); // @[Decoder.scala 141:64:@475.8]
  assign _GEN_17 = _T_364 ? $signed({{20{_T_368[11]}},_T_368}) : $signed(_GEN_16); // @[Decoder.scala 139:64:@466.6]
  assign _GEN_18 = _T_360 ? $signed({{20{_T_362[11]}},_T_362}) : $signed(_GEN_17); // @[Decoder.scala 137:58:@459.4]
  assign _T_399 = {{1'd0}, pipePc}; // @[InstrFetch.scala 56:33:@517.4]
  assign _T_400 = _T_399[47:0]; // @[InstrFetch.scala 56:33:@518.4]
  assign _T_337_imm = _GEN_18; // @[Decoder.scala 113:24:@377.4 Decoder.scala 136:18:@457.4 Decoder.scala 138:20:@462.6 Decoder.scala 140:20:@471.8 Decoder.scala 142:20:@485.10 Decoder.scala 144:20:@493.12 Decoder.scala 146:20:@507.14]
  assign _T_337_rs1 = _T_356; // @[Decoder.scala 113:24:@377.4 Decoder.scala 132:18:@454.4]
  assign _T_337_rs2 = _T_357; // @[Decoder.scala 113:24:@377.4 Decoder.scala 133:18:@456.4]
  assign _T_337_rd = _T_355; // @[Decoder.scala 113:24:@377.4 Decoder.scala 131:17:@452.4]
  assign _T_337_funct7 = _T_354; // @[Decoder.scala 113:24:@377.4 Decoder.scala 130:21:@450.4]
  assign _T_337_funct3 = _T_353; // @[Decoder.scala 113:24:@377.4 Decoder.scala 129:21:@448.4]
  assign io_icache_addr = io_pc; // @[InstrFetch.scala 42:9:@363.4]
  assign io_icache_read = io_fetch; // @[InstrFetch.scala 43:12:@364.4]
  assign io_icache_axi_AWREADY = io_axi_AWREADY; // @[InstrFetch.scala 41:10:@352.4]
  assign io_icache_axi_WREADY = io_axi_WREADY; // @[InstrFetch.scala 41:10:@347.4]
  assign io_icache_axi_BID = io_axi_BID; // @[InstrFetch.scala 41:10:@346.4]
  assign io_icache_axi_BRESP = io_axi_BRESP; // @[InstrFetch.scala 41:10:@345.4]
  assign io_icache_axi_BVALID = io_axi_BVALID; // @[InstrFetch.scala 41:10:@344.4]
  assign io_icache_axi_ARREADY = io_axi_ARREADY; // @[InstrFetch.scala 41:10:@332.4]
  assign io_icache_axi_RID = io_axi_RID; // @[InstrFetch.scala 41:10:@331.4]
  assign io_icache_axi_RDATA = io_axi_RDATA; // @[InstrFetch.scala 41:10:@330.4]
  assign io_icache_axi_RRESP = io_axi_RRESP; // @[InstrFetch.scala 41:10:@329.4]
  assign io_icache_axi_RLAST = io_axi_RLAST; // @[InstrFetch.scala 41:10:@328.4]
  assign io_icache_axi_RVALID = io_axi_RVALID; // @[InstrFetch.scala 41:10:@327.4]
  assign io_icache_pause = io_ctrl_pause; // @[InstrFetch.scala 39:17:@324.4]
  assign io_icache_flush = io_ctrl_flush; // @[InstrFetch.scala 40:17:@325.4]
  assign io_output_0_addr = _T_399[47:0]; // @[InstrFetch.scala 56:23:@519.4]
  assign io_output_0_instr_op = _T_338[4:0]; // @[InstrFetch.scala 55:24:@516.4]
  assign io_output_0_instr_base = _T_339 ? 3'h6 : _GEN_12; // @[InstrFetch.scala 55:24:@515.4]
  assign io_output_0_instr_imm = _T_360 ? $signed({{20{_T_362[11]}},_T_362}) : $signed(_GEN_17); // @[InstrFetch.scala 55:24:@514.4]
  assign io_output_0_instr_rs1 = io_icache_data[19:15]; // @[InstrFetch.scala 55:24:@513.4]
  assign io_output_0_instr_rs2 = io_icache_data[24:20]; // @[InstrFetch.scala 55:24:@512.4]
  assign io_output_0_instr_rd = io_icache_data[11:7]; // @[InstrFetch.scala 55:24:@511.4]
  assign io_output_0_instr_funct7 = io_icache_data[31:25]; // @[InstrFetch.scala 55:24:@510.4]
  assign io_output_0_instr_funct3 = io_icache_data[14:12]; // @[InstrFetch.scala 55:24:@509.4]
  assign io_output_0_vacant = io_icache_vacant; // @[InstrFetch.scala 57:25:@520.4]
  assign io_axi_AWID = 4'h0; // @[InstrFetch.scala 41:10:@362.4]
  assign io_axi_AWADDR = io_icache_axi_AWADDR; // @[InstrFetch.scala 41:10:@361.4]
  assign io_axi_AWLEN = 8'h1; // @[InstrFetch.scala 41:10:@360.4]
  assign io_axi_AWSIZE = 3'h6; // @[InstrFetch.scala 41:10:@359.4]
  assign io_axi_AWBURST = 2'h1; // @[InstrFetch.scala 41:10:@358.4]
  assign io_axi_AWCACHE = 4'h0; // @[InstrFetch.scala 41:10:@357.4]
  assign io_axi_AWPROT = 3'h0; // @[InstrFetch.scala 41:10:@356.4]
  assign io_axi_AWQOS = 3'h0; // @[InstrFetch.scala 41:10:@355.4]
  assign io_axi_AWREGION = 4'h0; // @[InstrFetch.scala 41:10:@354.4]
  assign io_axi_AWVALID = io_icache_axi_AWVALID; // @[InstrFetch.scala 41:10:@353.4]
  assign io_axi_WDATA = io_icache_axi_WDATA; // @[InstrFetch.scala 41:10:@351.4]
  assign io_axi_WSTRB = io_icache_axi_WSTRB; // @[InstrFetch.scala 41:10:@350.4]
  assign io_axi_WLAST = io_icache_axi_WLAST; // @[InstrFetch.scala 41:10:@349.4]
  assign io_axi_WVALID = io_icache_axi_WVALID; // @[InstrFetch.scala 41:10:@348.4]
  assign io_axi_BREADY = io_icache_axi_BREADY; // @[InstrFetch.scala 41:10:@343.4]
  assign io_axi_ARID = 4'h0; // @[InstrFetch.scala 41:10:@342.4]
  assign io_axi_ARADDR = io_icache_axi_ARADDR; // @[InstrFetch.scala 41:10:@341.4]
  assign io_axi_ARLEN = 8'h1; // @[InstrFetch.scala 41:10:@340.4]
  assign io_axi_ARSIZE = 3'h6; // @[InstrFetch.scala 41:10:@339.4]
  assign io_axi_ARBURST = 2'h1; // @[InstrFetch.scala 41:10:@338.4]
  assign io_axi_ARCACHE = 4'h0; // @[InstrFetch.scala 41:10:@337.4]
  assign io_axi_ARPROT = 3'h0; // @[InstrFetch.scala 41:10:@336.4]
  assign io_axi_ARQOS = 3'h0; // @[InstrFetch.scala 41:10:@335.4]
  assign io_axi_ARREGION = 4'h0; // @[InstrFetch.scala 41:10:@334.4]
  assign io_axi_ARVALID = io_icache_axi_ARVALID; // @[InstrFetch.scala 41:10:@333.4]
  assign io_axi_RREADY = io_icache_axi_RREADY; // @[InstrFetch.scala 41:10:@326.4]
  assign io_ctrl_stall = io_icache_stall; // @[InstrFetch.scala 38:17:@323.4]
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
  _RAND_0 = {2{`RANDOM}};
  pipePc = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      pipePc <= 48'h0;
    end else begin
      if (_T_293) begin
        pipePc <= io_pc;
      end
    end
  end
endmodule
module DCache( // @[:@732.2]
  input         clock, // @[:@733.4]
  input         reset, // @[:@734.4]
  input  [47:0] io_addr, // @[:@735.4]
  input         io_read, // @[:@735.4]
  input         io_write, // @[:@735.4]
  input  [63:0] io_wdata, // @[:@735.4]
  input  [7:0]  io_be, // @[:@735.4]
  output [3:0]  io_axi_AWID, // @[:@735.4]
  output [47:0] io_axi_AWADDR, // @[:@735.4]
  output [7:0]  io_axi_AWLEN, // @[:@735.4]
  output [2:0]  io_axi_AWSIZE, // @[:@735.4]
  output [1:0]  io_axi_AWBURST, // @[:@735.4]
  output [3:0]  io_axi_AWCACHE, // @[:@735.4]
  output [2:0]  io_axi_AWPROT, // @[:@735.4]
  output [2:0]  io_axi_AWQOS, // @[:@735.4]
  output [3:0]  io_axi_AWREGION, // @[:@735.4]
  output        io_axi_AWVALID, // @[:@735.4]
  input         io_axi_AWREADY, // @[:@735.4]
  output [63:0] io_axi_WDATA, // @[:@735.4]
  output [7:0]  io_axi_WSTRB, // @[:@735.4]
  output        io_axi_WLAST, // @[:@735.4]
  output        io_axi_WVALID, // @[:@735.4]
  input         io_axi_WREADY, // @[:@735.4]
  input  [3:0]  io_axi_BID, // @[:@735.4]
  input  [1:0]  io_axi_BRESP, // @[:@735.4]
  input         io_axi_BVALID, // @[:@735.4]
  output        io_axi_BREADY, // @[:@735.4]
  output [3:0]  io_axi_ARID, // @[:@735.4]
  output [47:0] io_axi_ARADDR, // @[:@735.4]
  output [7:0]  io_axi_ARLEN, // @[:@735.4]
  output [2:0]  io_axi_ARSIZE, // @[:@735.4]
  output [1:0]  io_axi_ARBURST, // @[:@735.4]
  output [3:0]  io_axi_ARCACHE, // @[:@735.4]
  output [2:0]  io_axi_ARPROT, // @[:@735.4]
  output [2:0]  io_axi_ARQOS, // @[:@735.4]
  output [3:0]  io_axi_ARREGION, // @[:@735.4]
  output        io_axi_ARVALID, // @[:@735.4]
  input         io_axi_ARREADY, // @[:@735.4]
  input  [3:0]  io_axi_RID, // @[:@735.4]
  input  [63:0] io_axi_RDATA, // @[:@735.4]
  input  [1:0]  io_axi_RRESP, // @[:@735.4]
  input         io_axi_RLAST, // @[:@735.4]
  input         io_axi_RVALID, // @[:@735.4]
  output        io_axi_RREADY, // @[:@735.4]
  output        io_stall, // @[:@735.4]
  input         io_pause, // @[:@735.4]
  output [63:0] io_rdata, // @[:@735.4]
  output        io_vacant // @[:@735.4]
);
  wire  inner_clock; // @[DCache.scala 26:21:@737.4]
  wire  inner_reset; // @[DCache.scala 26:21:@737.4]
  wire [47:0] inner_io_addr; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_read; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_write; // @[DCache.scala 26:21:@737.4]
  wire [63:0] inner_io_wdata; // @[DCache.scala 26:21:@737.4]
  wire [7:0] inner_io_be; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_AWID; // @[DCache.scala 26:21:@737.4]
  wire [47:0] inner_io_axi_AWADDR; // @[DCache.scala 26:21:@737.4]
  wire [7:0] inner_io_axi_AWLEN; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_AWSIZE; // @[DCache.scala 26:21:@737.4]
  wire [1:0] inner_io_axi_AWBURST; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_AWCACHE; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_AWPROT; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_AWQOS; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_AWREGION; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_AWVALID; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_AWREADY; // @[DCache.scala 26:21:@737.4]
  wire [63:0] inner_io_axi_WDATA; // @[DCache.scala 26:21:@737.4]
  wire [7:0] inner_io_axi_WSTRB; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_WLAST; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_WVALID; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_WREADY; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_BID; // @[DCache.scala 26:21:@737.4]
  wire [1:0] inner_io_axi_BRESP; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_BVALID; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_BREADY; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_ARID; // @[DCache.scala 26:21:@737.4]
  wire [47:0] inner_io_axi_ARADDR; // @[DCache.scala 26:21:@737.4]
  wire [7:0] inner_io_axi_ARLEN; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_ARSIZE; // @[DCache.scala 26:21:@737.4]
  wire [1:0] inner_io_axi_ARBURST; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_ARCACHE; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_ARPROT; // @[DCache.scala 26:21:@737.4]
  wire [2:0] inner_io_axi_ARQOS; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_ARREGION; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_ARVALID; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_ARREADY; // @[DCache.scala 26:21:@737.4]
  wire [3:0] inner_io_axi_RID; // @[DCache.scala 26:21:@737.4]
  wire [63:0] inner_io_axi_RDATA; // @[DCache.scala 26:21:@737.4]
  wire [1:0] inner_io_axi_RRESP; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_RLAST; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_RVALID; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_axi_RREADY; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_stall; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_pause; // @[DCache.scala 26:21:@737.4]
  wire [63:0] inner_io_rdata; // @[DCache.scala 26:21:@737.4]
  wire  inner_io_vacant; // @[DCache.scala 26:21:@737.4]
  Passthrough inner ( // @[DCache.scala 26:21:@737.4]
    .clock(inner_clock),
    .reset(inner_reset),
    .io_addr(inner_io_addr),
    .io_read(inner_io_read),
    .io_write(inner_io_write),
    .io_wdata(inner_io_wdata),
    .io_be(inner_io_be),
    .io_axi_AWID(inner_io_axi_AWID),
    .io_axi_AWADDR(inner_io_axi_AWADDR),
    .io_axi_AWLEN(inner_io_axi_AWLEN),
    .io_axi_AWSIZE(inner_io_axi_AWSIZE),
    .io_axi_AWBURST(inner_io_axi_AWBURST),
    .io_axi_AWCACHE(inner_io_axi_AWCACHE),
    .io_axi_AWPROT(inner_io_axi_AWPROT),
    .io_axi_AWQOS(inner_io_axi_AWQOS),
    .io_axi_AWREGION(inner_io_axi_AWREGION),
    .io_axi_AWVALID(inner_io_axi_AWVALID),
    .io_axi_AWREADY(inner_io_axi_AWREADY),
    .io_axi_WDATA(inner_io_axi_WDATA),
    .io_axi_WSTRB(inner_io_axi_WSTRB),
    .io_axi_WLAST(inner_io_axi_WLAST),
    .io_axi_WVALID(inner_io_axi_WVALID),
    .io_axi_WREADY(inner_io_axi_WREADY),
    .io_axi_BID(inner_io_axi_BID),
    .io_axi_BRESP(inner_io_axi_BRESP),
    .io_axi_BVALID(inner_io_axi_BVALID),
    .io_axi_BREADY(inner_io_axi_BREADY),
    .io_axi_ARID(inner_io_axi_ARID),
    .io_axi_ARADDR(inner_io_axi_ARADDR),
    .io_axi_ARLEN(inner_io_axi_ARLEN),
    .io_axi_ARSIZE(inner_io_axi_ARSIZE),
    .io_axi_ARBURST(inner_io_axi_ARBURST),
    .io_axi_ARCACHE(inner_io_axi_ARCACHE),
    .io_axi_ARPROT(inner_io_axi_ARPROT),
    .io_axi_ARQOS(inner_io_axi_ARQOS),
    .io_axi_ARREGION(inner_io_axi_ARREGION),
    .io_axi_ARVALID(inner_io_axi_ARVALID),
    .io_axi_ARREADY(inner_io_axi_ARREADY),
    .io_axi_RID(inner_io_axi_RID),
    .io_axi_RDATA(inner_io_axi_RDATA),
    .io_axi_RRESP(inner_io_axi_RRESP),
    .io_axi_RLAST(inner_io_axi_RLAST),
    .io_axi_RVALID(inner_io_axi_RVALID),
    .io_axi_RREADY(inner_io_axi_RREADY),
    .io_stall(inner_io_stall),
    .io_pause(inner_io_pause),
    .io_rdata(inner_io_rdata),
    .io_vacant(inner_io_vacant)
  );
  assign io_axi_AWID = 4'h0; // @[DCache.scala 28:12:@780.4]
  assign io_axi_AWADDR = inner_io_axi_AWADDR; // @[DCache.scala 28:12:@779.4]
  assign io_axi_AWLEN = 8'h1; // @[DCache.scala 28:12:@778.4]
  assign io_axi_AWSIZE = 3'h6; // @[DCache.scala 28:12:@777.4]
  assign io_axi_AWBURST = 2'h1; // @[DCache.scala 28:12:@776.4]
  assign io_axi_AWCACHE = 4'h0; // @[DCache.scala 28:12:@775.4]
  assign io_axi_AWPROT = 3'h0; // @[DCache.scala 28:12:@774.4]
  assign io_axi_AWQOS = 3'h0; // @[DCache.scala 28:12:@773.4]
  assign io_axi_AWREGION = 4'h0; // @[DCache.scala 28:12:@772.4]
  assign io_axi_AWVALID = inner_io_axi_AWVALID; // @[DCache.scala 28:12:@771.4]
  assign io_axi_WDATA = inner_io_axi_WDATA; // @[DCache.scala 28:12:@769.4]
  assign io_axi_WSTRB = inner_io_axi_WSTRB; // @[DCache.scala 28:12:@768.4]
  assign io_axi_WLAST = inner_io_axi_WLAST; // @[DCache.scala 28:12:@767.4]
  assign io_axi_WVALID = inner_io_axi_WVALID; // @[DCache.scala 28:12:@766.4]
  assign io_axi_BREADY = inner_io_axi_BREADY; // @[DCache.scala 28:12:@761.4]
  assign io_axi_ARID = 4'h0; // @[DCache.scala 28:12:@760.4]
  assign io_axi_ARADDR = inner_io_axi_ARADDR; // @[DCache.scala 28:12:@759.4]
  assign io_axi_ARLEN = 8'h1; // @[DCache.scala 28:12:@758.4]
  assign io_axi_ARSIZE = 3'h6; // @[DCache.scala 28:12:@757.4]
  assign io_axi_ARBURST = 2'h1; // @[DCache.scala 28:12:@756.4]
  assign io_axi_ARCACHE = 4'h0; // @[DCache.scala 28:12:@755.4]
  assign io_axi_ARPROT = 3'h0; // @[DCache.scala 28:12:@754.4]
  assign io_axi_ARQOS = 3'h0; // @[DCache.scala 28:12:@753.4]
  assign io_axi_ARREGION = 4'h0; // @[DCache.scala 28:12:@752.4]
  assign io_axi_ARVALID = inner_io_axi_ARVALID; // @[DCache.scala 28:12:@751.4]
  assign io_axi_RREADY = inner_io_axi_RREADY; // @[DCache.scala 28:12:@744.4]
  assign io_stall = inner_io_stall; // @[DCache.scala 28:12:@743.4]
  assign io_rdata = inner_io_rdata; // @[DCache.scala 28:12:@741.4]
  assign io_vacant = inner_io_vacant; // @[DCache.scala 28:12:@740.4]
  assign inner_clock = clock; // @[:@738.4]
  assign inner_reset = reset; // @[:@739.4]
  assign inner_io_addr = io_addr; // @[DCache.scala 28:12:@785.4]
  assign inner_io_read = io_read; // @[DCache.scala 28:12:@784.4]
  assign inner_io_write = io_write; // @[DCache.scala 28:12:@783.4]
  assign inner_io_wdata = io_wdata; // @[DCache.scala 28:12:@782.4]
  assign inner_io_be = io_be; // @[DCache.scala 28:12:@781.4]
  assign inner_io_axi_AWREADY = io_axi_AWREADY; // @[DCache.scala 28:12:@770.4]
  assign inner_io_axi_WREADY = io_axi_WREADY; // @[DCache.scala 28:12:@765.4]
  assign inner_io_axi_BID = io_axi_BID; // @[DCache.scala 28:12:@764.4]
  assign inner_io_axi_BRESP = io_axi_BRESP; // @[DCache.scala 28:12:@763.4]
  assign inner_io_axi_BVALID = io_axi_BVALID; // @[DCache.scala 28:12:@762.4]
  assign inner_io_axi_ARREADY = io_axi_ARREADY; // @[DCache.scala 28:12:@750.4]
  assign inner_io_axi_RID = io_axi_RID; // @[DCache.scala 28:12:@749.4]
  assign inner_io_axi_RDATA = io_axi_RDATA; // @[DCache.scala 28:12:@748.4]
  assign inner_io_axi_RRESP = io_axi_RRESP; // @[DCache.scala 28:12:@747.4]
  assign inner_io_axi_RLAST = io_axi_RLAST; // @[DCache.scala 28:12:@746.4]
  assign inner_io_axi_RVALID = io_axi_RVALID; // @[DCache.scala 28:12:@745.4]
  assign inner_io_pause = 1'h0; // @[DCache.scala 28:12:@742.4]
endmodule
module Exec( // @[:@787.2]
  input         clock, // @[:@788.4]
  input         reset, // @[:@789.4]
  output [4:0]  io_regReaders_0_addr, // @[:@790.4]
  input  [63:0] io_regReaders_0_data, // @[:@790.4]
  output [4:0]  io_regReaders_1_addr, // @[:@790.4]
  input  [63:0] io_regReaders_1_data, // @[:@790.4]
  output [4:0]  io_regWriter_addr, // @[:@790.4]
  output [63:0] io_regWriter_data, // @[:@790.4]
  input  [47:0] io_instr_addr, // @[:@790.4]
  input  [4:0]  io_instr_instr_op, // @[:@790.4]
  input  [2:0]  io_instr_instr_base, // @[:@790.4]
  input  [31:0] io_instr_instr_imm, // @[:@790.4]
  input  [4:0]  io_instr_instr_rs1, // @[:@790.4]
  input  [4:0]  io_instr_instr_rs2, // @[:@790.4]
  input  [4:0]  io_instr_instr_rd, // @[:@790.4]
  input  [6:0]  io_instr_instr_funct7, // @[:@790.4]
  input  [2:0]  io_instr_instr_funct3, // @[:@790.4]
  input         io_instr_vacant, // @[:@790.4]
  output [3:0]  io_axi_AWID, // @[:@790.4]
  output [47:0] io_axi_AWADDR, // @[:@790.4]
  output [7:0]  io_axi_AWLEN, // @[:@790.4]
  output [2:0]  io_axi_AWSIZE, // @[:@790.4]
  output [1:0]  io_axi_AWBURST, // @[:@790.4]
  output [3:0]  io_axi_AWCACHE, // @[:@790.4]
  output [2:0]  io_axi_AWPROT, // @[:@790.4]
  output [2:0]  io_axi_AWQOS, // @[:@790.4]
  output [3:0]  io_axi_AWREGION, // @[:@790.4]
  output        io_axi_AWVALID, // @[:@790.4]
  input         io_axi_AWREADY, // @[:@790.4]
  output [63:0] io_axi_WDATA, // @[:@790.4]
  output [7:0]  io_axi_WSTRB, // @[:@790.4]
  output        io_axi_WLAST, // @[:@790.4]
  output        io_axi_WVALID, // @[:@790.4]
  input         io_axi_WREADY, // @[:@790.4]
  input  [3:0]  io_axi_BID, // @[:@790.4]
  input  [1:0]  io_axi_BRESP, // @[:@790.4]
  input         io_axi_BVALID, // @[:@790.4]
  output        io_axi_BREADY, // @[:@790.4]
  output [3:0]  io_axi_ARID, // @[:@790.4]
  output [47:0] io_axi_ARADDR, // @[:@790.4]
  output [7:0]  io_axi_ARLEN, // @[:@790.4]
  output [2:0]  io_axi_ARSIZE, // @[:@790.4]
  output [1:0]  io_axi_ARBURST, // @[:@790.4]
  output [3:0]  io_axi_ARCACHE, // @[:@790.4]
  output [2:0]  io_axi_ARPROT, // @[:@790.4]
  output [2:0]  io_axi_ARQOS, // @[:@790.4]
  output [3:0]  io_axi_ARREGION, // @[:@790.4]
  output        io_axi_ARVALID, // @[:@790.4]
  input         io_axi_ARREADY, // @[:@790.4]
  input  [3:0]  io_axi_RID, // @[:@790.4]
  input  [63:0] io_axi_RDATA, // @[:@790.4]
  input  [1:0]  io_axi_RRESP, // @[:@790.4]
  input         io_axi_RLAST, // @[:@790.4]
  input         io_axi_RVALID, // @[:@790.4]
  output        io_axi_RREADY, // @[:@790.4]
  output        io_ctrl_stall, // @[:@790.4]
  input         io_ctrl_pause, // @[:@790.4]
  input         io_ctrl_flush, // @[:@790.4]
  output        io_branch_branch, // @[:@790.4]
  output [47:0] io_branch_target // @[:@790.4]
);
  wire  dcache_clock; // @[Exec.scala 34:22:@803.4]
  wire  dcache_reset; // @[Exec.scala 34:22:@803.4]
  wire [47:0] dcache_io_addr; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_read; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_write; // @[Exec.scala 34:22:@803.4]
  wire [63:0] dcache_io_wdata; // @[Exec.scala 34:22:@803.4]
  wire [7:0] dcache_io_be; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_AWID; // @[Exec.scala 34:22:@803.4]
  wire [47:0] dcache_io_axi_AWADDR; // @[Exec.scala 34:22:@803.4]
  wire [7:0] dcache_io_axi_AWLEN; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_AWSIZE; // @[Exec.scala 34:22:@803.4]
  wire [1:0] dcache_io_axi_AWBURST; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_AWCACHE; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_AWPROT; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_AWQOS; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_AWREGION; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_AWVALID; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_AWREADY; // @[Exec.scala 34:22:@803.4]
  wire [63:0] dcache_io_axi_WDATA; // @[Exec.scala 34:22:@803.4]
  wire [7:0] dcache_io_axi_WSTRB; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_WLAST; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_WVALID; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_WREADY; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_BID; // @[Exec.scala 34:22:@803.4]
  wire [1:0] dcache_io_axi_BRESP; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_BVALID; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_BREADY; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_ARID; // @[Exec.scala 34:22:@803.4]
  wire [47:0] dcache_io_axi_ARADDR; // @[Exec.scala 34:22:@803.4]
  wire [7:0] dcache_io_axi_ARLEN; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_ARSIZE; // @[Exec.scala 34:22:@803.4]
  wire [1:0] dcache_io_axi_ARBURST; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_ARCACHE; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_ARPROT; // @[Exec.scala 34:22:@803.4]
  wire [2:0] dcache_io_axi_ARQOS; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_ARREGION; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_ARVALID; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_ARREADY; // @[Exec.scala 34:22:@803.4]
  wire [3:0] dcache_io_axi_RID; // @[Exec.scala 34:22:@803.4]
  wire [63:0] dcache_io_axi_RDATA; // @[Exec.scala 34:22:@803.4]
  wire [1:0] dcache_io_axi_RRESP; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_RLAST; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_RVALID; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_axi_RREADY; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_stall; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_pause; // @[Exec.scala 34:22:@803.4]
  wire [63:0] dcache_io_rdata; // @[Exec.scala 34:22:@803.4]
  wire  dcache_io_vacant; // @[Exec.scala 34:22:@803.4]
  wire [48:0] _T_125; // @[:@793.4 :@794.4]
  wire [47:0] _T_126; // @[Exec.scala 30:28:@795.4]
  wire  _T_127; // @[Exec.scala 30:28:@797.4]
  wire [64:0] _T_138; // @[:@895.4 :@896.4]
  wire [2:0] _T_139; // @[Exec.scala 44:32:@897.4]
  wire [6:0] _T_140; // @[Exec.scala 44:32:@899.4]
  wire [4:0] _T_141; // @[Exec.scala 44:32:@901.4]
  wire [4:0] _T_142; // @[Exec.scala 44:32:@903.4]
  wire [4:0] _T_143; // @[Exec.scala 44:32:@905.4]
  wire [31:0] _T_144; // @[Exec.scala 44:32:@907.4]
  wire [31:0] _T_145; // @[Exec.scala 44:32:@908.4]
  wire [2:0] _T_146; // @[Exec.scala 44:32:@910.4]
  wire [4:0] _T_147; // @[Exec.scala 44:32:@912.4]
  reg [47:0] current_addr; // @[Exec.scala 46:24:@923.4]
  reg [63:0] _RAND_0;
  reg [4:0] current_instr_op; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_1;
  reg [2:0] current_instr_base; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_2;
  reg [31:0] current_instr_imm; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_3;
  reg [4:0] current_instr_rs1; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_4;
  reg [4:0] current_instr_rs2; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_5;
  reg [4:0] current_instr_rd; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_6;
  reg [6:0] current_instr_funct7; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_7;
  reg [2:0] current_instr_funct3; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_8;
  reg  current_vacant; // @[Exec.scala 46:24:@923.4]
  reg [31:0] _RAND_9;
  reg [63:0] readRs1; // @[Exec.scala 47:20:@924.4]
  reg [63:0] _RAND_10;
  reg [63:0] readRs2; // @[Exec.scala 48:20:@925.4]
  reg [63:0] _RAND_11;
  wire  _T_153; // @[Exec.scala 62:8:@928.4]
  wire  _T_155; // @[Exec.scala 62:26:@929.4]
  wire  _T_156; // @[Exec.scala 62:23:@930.4]
  wire  _T_158; // @[Exec.scala 63:10:@932.6]
  wire  default_vacant; // @[Exec.scala 42:21:@892.4 Exec.scala 45:18:@922.4]
  wire  _GEN_0; // @[Exec.scala 63:26:@933.6]
  wire [2:0] _T_136_funct3; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@898.4]
  wire [2:0] default_instr_funct3; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@914.4]
  wire [2:0] _GEN_1; // @[Exec.scala 63:26:@933.6]
  wire [6:0] _T_136_funct7; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@900.4]
  wire [6:0] default_instr_funct7; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@915.4]
  wire [6:0] _GEN_2; // @[Exec.scala 63:26:@933.6]
  wire [4:0] _T_136_rd; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@902.4]
  wire [4:0] default_instr_rd; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@916.4]
  wire [4:0] _GEN_3; // @[Exec.scala 63:26:@933.6]
  wire [4:0] _T_136_rs2; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@904.4]
  wire [4:0] default_instr_rs2; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@917.4]
  wire [4:0] _GEN_4; // @[Exec.scala 63:26:@933.6]
  wire [4:0] _T_136_rs1; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@906.4]
  wire [4:0] default_instr_rs1; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@918.4]
  wire [4:0] _GEN_5; // @[Exec.scala 63:26:@933.6]
  wire [31:0] _T_136_imm; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@909.4]
  wire [31:0] default_instr_imm; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@919.4]
  wire [31:0] _GEN_6; // @[Exec.scala 63:26:@933.6]
  wire [2:0] _T_136_base; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@911.4]
  wire [2:0] default_instr_base; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@920.4]
  wire [2:0] _GEN_7; // @[Exec.scala 63:26:@933.6]
  wire [4:0] _T_136_op; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@913.4]
  wire [4:0] default_instr_op; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@921.4]
  wire [4:0] _GEN_8; // @[Exec.scala 63:26:@933.6]
  wire [47:0] default_addr;
  wire [47:0] _GEN_9; // @[Exec.scala 63:26:@933.6]
  wire [63:0] _GEN_10; // @[Exec.scala 63:26:@933.6]
  wire [63:0] _GEN_11; // @[Exec.scala 63:26:@933.6]
  wire  _GEN_12; // @[Exec.scala 62:42:@931.4]
  wire [2:0] _GEN_13; // @[Exec.scala 62:42:@931.4]
  wire [6:0] _GEN_14; // @[Exec.scala 62:42:@931.4]
  wire [4:0] _GEN_15; // @[Exec.scala 62:42:@931.4]
  wire [4:0] _GEN_16; // @[Exec.scala 62:42:@931.4]
  wire [4:0] _GEN_17; // @[Exec.scala 62:42:@931.4]
  wire [31:0] _GEN_18; // @[Exec.scala 62:42:@931.4]
  wire [2:0] _GEN_19; // @[Exec.scala 62:42:@931.4]
  wire [4:0] _GEN_20; // @[Exec.scala 62:42:@931.4]
  wire [47:0] _GEN_21; // @[Exec.scala 62:42:@931.4]
  wire [63:0] _GEN_22; // @[Exec.scala 62:42:@931.4]
  wire [63:0] _GEN_23; // @[Exec.scala 62:42:@931.4]
  reg  lsState; // @[Exec.scala 75:24:@960.4]
  reg [31:0] _RAND_12;
  reg [47:0] lsAddr; // @[Exec.scala 77:19:@962.4]
  reg [63:0] _RAND_13;
  wire  _T_171; // @[Exec.scala 87:8:@974.4]
  wire  _T_172; // @[Conditional.scala 37:30:@976.6]
  wire  _T_221; // @[Conditional.scala 37:30:@1064.8]
  wire  _T_252; // @[Conditional.scala 37:30:@1113.10]
  wire  _T_297; // @[Conditional.scala 37:30:@1202.12]
  wire  _T_330; // @[Conditional.scala 37:30:@1258.14]
  wire  _T_334; // @[Conditional.scala 37:30:@1267.16]
  wire  _T_342; // @[Conditional.scala 37:30:@1280.18]
  wire  _T_343; // @[Conditional.scala 37:30:@1282.20]
  wire  _T_350; // @[Conditional.scala 37:30:@1295.22]
  wire  _T_384; // @[Exec.scala 357:18:@1349.24]
  wire  _GEN_72; // @[Exec.scala 357:36:@1350.24]
  wire  _GEN_75; // @[Conditional.scala 39:67:@1296.22]
  wire  _GEN_79; // @[Conditional.scala 40:58:@1283.20]
  wire  _T_385; // @[Conditional.scala 37:30:@1357.20]
  wire  _T_386; // @[Conditional.scala 37:30:@1359.22]
  wire  _T_413; // @[Conditional.scala 37:30:@1399.24]
  wire  _T_415; // @[Exec.scala 403:18:@1401.26]
  wire  _GEN_86; // @[Exec.scala 403:36:@1402.26]
  wire  _GEN_87; // @[Conditional.scala 39:67:@1400.24]
  wire  _GEN_93; // @[Conditional.scala 40:58:@1360.22]
  wire  _GEN_115; // @[Conditional.scala 39:67:@1358.20]
  wire  _GEN_123; // @[Conditional.scala 39:67:@1281.18]
  wire  _GEN_136; // @[Conditional.scala 39:67:@1268.16]
  wire  _GEN_147; // @[Conditional.scala 39:67:@1259.14]
  wire  _GEN_158; // @[Conditional.scala 39:67:@1203.12]
  wire  _GEN_169; // @[Conditional.scala 39:67:@1114.10]
  wire  _GEN_180; // @[Conditional.scala 39:67:@1065.8]
  wire  _GEN_191; // @[Conditional.scala 40:58:@977.6]
  wire  lsNextState; // @[Exec.scala 87:25:@975.4]
  wire  _GEN_202; // @[Exec.scala 76:25:@961.4 Exec.scala 79:15:@963.4 Exec.scala 314:25:@1292.22 Exec.scala 365:27:@1352.26 Exec.scala 399:25:@1396.24 Exec.scala 404:27:@1403.28]
  wire  _T_162; // @[Exec.scala 80:20:@964.4]
  wire  _T_164; // @[Exec.scala 80:34:@965.4]
  wire  _T_165; // @[Exec.scala 80:31:@966.4]
  wire  _GEN_24; // @[Exec.scala 80:50:@967.4]
  wire  _T_167; // @[Exec.scala 85:21:@970.4]
  wire  _T_168; // @[Exec.scala 85:53:@971.4]
  wire  _T_169; // @[Exec.scala 85:38:@972.4]
  wire  _T_174; // @[Exec.scala 93:14:@978.8]
  wire [4:0] _GEN_25; // @[Exec.scala 93:30:@979.8]
  wire  _T_178; // @[Conditional.scala 37:30:@984.8]
  wire [63:0] _T_179; // @[Exec.scala 101:54:@986.10]
  wire [63:0] _T_176; // @[Exec.scala 96:28:@982.8 Exec.scala 97:18:@983.8]
  wire [64:0] _T_180; // @[Exec.scala 101:44:@987.10]
  wire [63:0] _T_181; // @[Exec.scala 101:44:@988.10]
  wire [63:0] _T_182; // @[Exec.scala 101:44:@989.10]
  wire [63:0] _T_183; // @[Exec.scala 101:62:@990.10]
  wire  _T_185; // @[Conditional.scala 37:30:@994.10]
  wire [4:0] _T_186; // @[Exec.scala 104:54:@996.12]
  wire [94:0] _GEN_208; // @[Exec.scala 104:43:@997.12]
  wire [94:0] _T_187; // @[Exec.scala 104:43:@997.12]
  wire  _T_189; // @[Conditional.scala 37:30:@1001.12]
  wire [63:0] _T_190; // @[Exec.scala 108:26:@1003.14]
  wire  _T_191; // @[Exec.scala 108:33:@1004.14]
  wire  _GEN_26; // @[Exec.scala 108:45:@1005.14]
  wire  _T_195; // @[Conditional.scala 37:30:@1013.14]
  wire [63:0] _T_196; // @[Exec.scala 116:37:@1015.16]
  wire  _T_197; // @[Exec.scala 116:26:@1016.16]
  wire  _GEN_27; // @[Exec.scala 116:45:@1017.16]
  wire  _T_201; // @[Conditional.scala 37:30:@1025.16]
  wire [63:0] _T_202; // @[Exec.scala 124:43:@1027.18]
  wire [63:0] _T_203; // @[Exec.scala 124:50:@1028.18]
  wire  _T_205; // @[Conditional.scala 37:30:@1032.18]
  wire  _T_206; // @[Exec.scala 128:38:@1034.20]
  wire [63:0] _T_207; // @[Exec.scala 130:45:@1036.22]
  wire [4:0] _T_208; // @[Exec.scala 130:63:@1037.22]
  wire [63:0] _T_209; // @[Exec.scala 130:52:@1038.22]
  wire [63:0] _T_210; // @[Exec.scala 130:71:@1039.22]
  wire [4:0] _T_211; // @[Exec.scala 133:55:@1043.22]
  wire [63:0] _T_212; // @[Exec.scala 133:44:@1044.22]
  wire [63:0] _GEN_28; // @[Exec.scala 128:43:@1035.20]
  wire  _T_214; // @[Conditional.scala 37:30:@1049.20]
  wire [63:0] _T_215; // @[Exec.scala 138:43:@1051.22]
  wire [63:0] _T_216; // @[Exec.scala 138:50:@1052.22]
  wire  _T_218; // @[Conditional.scala 37:30:@1056.22]
  wire [63:0] _T_219; // @[Exec.scala 142:43:@1058.24]
  wire [63:0] _T_220; // @[Exec.scala 142:50:@1059.24]
  wire [63:0] _GEN_29; // @[Conditional.scala 39:67:@1057.22]
  wire [63:0] _GEN_30; // @[Conditional.scala 39:67:@1050.20]
  wire [63:0] _GEN_31; // @[Conditional.scala 39:67:@1033.18]
  wire [63:0] _GEN_32; // @[Conditional.scala 39:67:@1026.16]
  wire [63:0] _GEN_33; // @[Conditional.scala 39:67:@1014.14]
  wire [63:0] _GEN_34; // @[Conditional.scala 39:67:@1002.12]
  wire [94:0] _GEN_35; // @[Conditional.scala 39:67:@995.10]
  wire [94:0] _GEN_36; // @[Conditional.scala 40:58:@985.8]
  wire  _T_223; // @[Exec.scala 148:14:@1066.10]
  wire [4:0] _GEN_37; // @[Exec.scala 148:30:@1067.10]
  wire  _T_228; // @[Conditional.scala 37:30:@1072.10]
  wire [63:0] _T_229; // @[Exec.scala 160:33:@1074.12]
  wire [63:0] _GEN_209; // @[Exec.scala 160:40:@1075.12]
  wire [64:0] _T_230; // @[Exec.scala 160:40:@1075.12]
  wire [63:0] _T_231; // @[Exec.scala 160:40:@1076.12]
  wire [63:0] _T_232; // @[Exec.scala 160:40:@1077.12]
  wire  _T_234; // @[Conditional.scala 37:30:@1081.12]
  wire [63:0] _T_235; // @[Exec.scala 166:33:@1083.14]
  wire [4:0] _T_236; // @[Exec.scala 166:60:@1084.14]
  wire [94:0] _GEN_210; // @[Exec.scala 166:40:@1085.14]
  wire [94:0] _T_237; // @[Exec.scala 166:40:@1085.14]
  wire  _T_239; // @[Conditional.scala 37:30:@1089.14]
  wire  _T_240; // @[Exec.scala 170:38:@1091.16]
  wire [31:0] _T_241; // @[Exec.scala 172:34:@1093.18]
  wire [31:0] _T_242; // @[Exec.scala 172:42:@1094.18]
  wire [4:0] _T_243; // @[Exec.scala 172:69:@1095.18]
  wire [31:0] _T_244; // @[Exec.scala 172:49:@1096.18]
  wire [31:0] _T_245; // @[Exec.scala 175:35:@1100.18]
  wire [4:0] _T_246; // @[Exec.scala 175:70:@1101.18]
  wire [31:0] _T_247; // @[Exec.scala 175:50:@1102.18]
  wire [31:0] _T_248; // @[Exec.scala 175:78:@1103.18]
  wire [31:0] _GEN_38; // @[Exec.scala 170:43:@1092.16]
  wire [31:0] _GEN_39; // @[Conditional.scala 39:67:@1090.14]
  wire [94:0] _GEN_40; // @[Conditional.scala 39:67:@1082.12]
  wire [94:0] _GEN_41; // @[Conditional.scala 40:58:@1073.10]
  wire [31:0] _GEN_211; // @[Exec.scala 154:28:@1070.10 Exec.scala 155:18:@1071.10 Exec.scala 160:22:@1078.12 Exec.scala 166:22:@1086.14 Exec.scala 172:24:@1097.18 Exec.scala 175:24:@1104.18]
  wire [31:0] _T_225; // @[Exec.scala 154:28:@1070.10 Exec.scala 155:18:@1071.10 Exec.scala 160:22:@1078.12 Exec.scala 166:22:@1086.14 Exec.scala 172:24:@1097.18 Exec.scala 175:24:@1104.18]
  wire [63:0] _T_250; // @[Exec.scala 180:26:@1107.10 Exec.scala 181:16:@1108.10]
  wire [63:0] _T_251; // @[Exec.scala 182:37:@1109.10]
  wire  _T_254; // @[Exec.scala 186:14:@1115.12]
  wire [4:0] _GEN_42; // @[Exec.scala 186:30:@1116.12]
  wire  _T_256; // @[Conditional.scala 37:30:@1119.12]
  wire  _T_257; // @[Exec.scala 192:38:@1121.14]
  wire [64:0] _T_258; // @[Exec.scala 195:44:@1123.16]
  wire [64:0] _T_259; // @[Exec.scala 195:44:@1124.16]
  wire [63:0] _T_260; // @[Exec.scala 195:44:@1125.16]
  wire [64:0] _T_261; // @[Exec.scala 198:44:@1129.16]
  wire [63:0] _T_262; // @[Exec.scala 198:44:@1130.16]
  wire [63:0] _GEN_43; // @[Exec.scala 192:43:@1122.14]
  wire  _T_264; // @[Conditional.scala 37:30:@1135.14]
  wire [5:0] _T_265; // @[Exec.scala 203:52:@1137.16]
  wire [126:0] _GEN_212; // @[Exec.scala 203:42:@1138.16]
  wire [126:0] _T_266; // @[Exec.scala 203:42:@1138.16]
  wire  _T_268; // @[Conditional.scala 37:30:@1142.16]
  wire [63:0] _T_269; // @[Exec.scala 207:26:@1144.18]
  wire [63:0] _T_270; // @[Exec.scala 207:43:@1145.18]
  wire  _T_271; // @[Exec.scala 207:33:@1146.18]
  wire  _GEN_44; // @[Exec.scala 207:51:@1147.18]
  wire  _T_275; // @[Conditional.scala 37:30:@1155.18]
  wire  _T_276; // @[Exec.scala 215:33:@1157.20]
  wire  _GEN_45; // @[Exec.scala 215:51:@1158.20]
  wire  _T_280; // @[Conditional.scala 37:30:@1166.20]
  wire [63:0] _T_281; // @[Exec.scala 223:42:@1168.22]
  wire  _T_283; // @[Conditional.scala 37:30:@1172.22]
  wire  _T_284; // @[Exec.scala 227:38:@1174.24]
  wire [63:0] _T_285; // @[Exec.scala 231:45:@1176.26]
  wire [5:0] _T_286; // @[Exec.scala 231:62:@1177.26]
  wire [63:0] _T_287; // @[Exec.scala 231:52:@1178.26]
  wire [63:0] _T_288; // @[Exec.scala 231:70:@1179.26]
  wire [5:0] _T_289; // @[Exec.scala 233:54:@1183.26]
  wire [63:0] _T_290; // @[Exec.scala 233:44:@1184.26]
  wire [63:0] _GEN_46; // @[Exec.scala 227:43:@1175.24]
  wire  _T_292; // @[Conditional.scala 37:30:@1189.24]
  wire [63:0] _T_293; // @[Exec.scala 238:42:@1191.26]
  wire  _T_295; // @[Conditional.scala 37:30:@1195.26]
  wire [63:0] _T_296; // @[Exec.scala 242:42:@1197.28]
  wire [63:0] _GEN_47; // @[Conditional.scala 39:67:@1196.26]
  wire [63:0] _GEN_48; // @[Conditional.scala 39:67:@1190.24]
  wire [63:0] _GEN_49; // @[Conditional.scala 39:67:@1173.22]
  wire [63:0] _GEN_50; // @[Conditional.scala 39:67:@1167.20]
  wire [63:0] _GEN_51; // @[Conditional.scala 39:67:@1156.18]
  wire [63:0] _GEN_52; // @[Conditional.scala 39:67:@1143.16]
  wire [126:0] _GEN_53; // @[Conditional.scala 39:67:@1136.14]
  wire [126:0] _GEN_54; // @[Conditional.scala 40:58:@1120.12]
  wire  _T_299; // @[Exec.scala 248:14:@1204.14]
  wire [4:0] _GEN_55; // @[Exec.scala 248:30:@1205.14]
  wire  _T_304; // @[Conditional.scala 37:30:@1210.14]
  wire  _T_305; // @[Exec.scala 256:38:@1212.16]
  wire [64:0] _T_306; // @[Exec.scala 258:35:@1214.18]
  wire [64:0] _T_307; // @[Exec.scala 258:35:@1215.18]
  wire [63:0] _T_308; // @[Exec.scala 258:35:@1216.18]
  wire [64:0] _T_309; // @[Exec.scala 261:35:@1220.18]
  wire [63:0] _T_310; // @[Exec.scala 261:35:@1221.18]
  wire [63:0] _GEN_56; // @[Exec.scala 256:43:@1213.16]
  wire  _T_312; // @[Conditional.scala 37:30:@1226.16]
  wire [4:0] _T_313; // @[Exec.scala 267:43:@1228.18]
  wire [94:0] _GEN_213; // @[Exec.scala 267:33:@1229.18]
  wire [94:0] _T_314; // @[Exec.scala 267:33:@1229.18]
  wire  _T_316; // @[Conditional.scala 37:30:@1233.18]
  wire  _T_317; // @[Exec.scala 271:38:@1235.20]
  wire [31:0] _T_318; // @[Exec.scala 273:35:@1237.22]
  wire [31:0] _T_319; // @[Exec.scala 273:43:@1238.22]
  wire [4:0] _T_320; // @[Exec.scala 273:60:@1239.22]
  wire [31:0] _T_321; // @[Exec.scala 273:50:@1240.22]
  wire [31:0] _T_322; // @[Exec.scala 273:68:@1241.22]
  wire [31:0] _T_323; // @[Exec.scala 276:34:@1245.22]
  wire [4:0] _T_324; // @[Exec.scala 276:59:@1246.22]
  wire [31:0] _T_325; // @[Exec.scala 276:49:@1247.22]
  wire [31:0] _GEN_57; // @[Exec.scala 271:43:@1236.20]
  wire [31:0] _GEN_58; // @[Conditional.scala 39:67:@1234.18]
  wire [94:0] _GEN_59; // @[Conditional.scala 39:67:@1227.16]
  wire [94:0] _GEN_60; // @[Conditional.scala 40:58:@1211.14]
  wire [31:0] _T_301; // @[Exec.scala 251:28:@1208.14 Exec.scala 252:18:@1209.14 Exec.scala 258:24:@1217.18 Exec.scala 261:24:@1222.18 Exec.scala 267:22:@1230.18 Exec.scala 273:24:@1242.22 Exec.scala 276:24:@1248.22]
  wire [31:0] _T_328; // @[Exec.scala 283:28:@1252.14]
  wire [63:0] _T_327; // @[Exec.scala 282:26:@1251.14 Exec.scala 283:16:@1253.14]
  wire [63:0] _T_329; // @[Exec.scala 284:37:@1254.14]
  wire [63:0] _T_332; // @[Exec.scala 291:28:@1261.16 Exec.scala 292:18:@1262.16]
  wire [63:0] _T_333; // @[Exec.scala 293:39:@1263.16]
  wire [47:0] _T_337; // @[Exec.scala 299:52:@1271.18]
  wire [47:0] _GEN_214; // @[Exec.scala 299:37:@1272.18]
  wire [48:0] _T_338; // @[Exec.scala 299:37:@1272.18]
  wire [47:0] _T_339; // @[Exec.scala 299:37:@1273.18]
  wire [47:0] _T_340; // @[Exec.scala 299:37:@1274.18]
  wire [63:0] _T_336; // @[Exec.scala 298:26:@1270.18 Exec.scala 299:16:@1275.18]
  wire [63:0] _T_341; // @[Exec.scala 301:37:@1276.18]
  wire [31:0] _T_344; // @[Exec.scala 309:61:@1284.22]
  wire [63:0] _GEN_215; // @[Exec.scala 309:41:@1285.22]
  wire [64:0] _T_345; // @[Exec.scala 309:41:@1285.22]
  wire [63:0] _T_346; // @[Exec.scala 309:41:@1286.22]
  wire [60:0] _T_347; // @[Exec.scala 311:46:@1288.22]
  wire [63:0] _GEN_216; // @[Exec.scala 311:52:@1289.22]
  wire [63:0] _T_348; // @[Exec.scala 311:52:@1289.22]
  wire [2:0] _T_351; // @[Exec.scala 319:42:@1297.24]
  wire [3:0] _GEN_217; // @[Exec.scala 319:49:@1298.24]
  wire [6:0] _T_353; // @[Exec.scala 319:49:@1298.24]
  wire [63:0] _T_354; // @[Exec.scala 319:32:@1299.24]
  wire  _T_361; // @[Conditional.scala 37:30:@1306.24]
  wire [7:0] _T_362; // @[Exec.scala 329:40:@1308.26]
  wire [7:0] _T_363; // @[Exec.scala 329:47:@1309.26]
  wire  _T_365; // @[Conditional.scala 37:30:@1313.26]
  wire [15:0] _T_366; // @[Exec.scala 333:40:@1315.28]
  wire [15:0] _T_367; // @[Exec.scala 333:48:@1316.28]
  wire  _T_369; // @[Conditional.scala 37:30:@1320.28]
  wire [31:0] _T_370; // @[Exec.scala 337:40:@1322.30]
  wire [31:0] _T_371; // @[Exec.scala 337:48:@1323.30]
  wire [31:0] _GEN_65; // @[Conditional.scala 39:67:@1321.28]
  wire [31:0] _GEN_67; // @[Conditional.scala 39:67:@1314.26]
  wire [31:0] _GEN_69; // @[Conditional.scala 40:58:@1307.24]
  wire [63:0] _T_358; // @[Exec.scala 321:36:@1301.24 Exec.scala 329:30:@1310.26 Exec.scala 333:30:@1317.28 Exec.scala 337:30:@1324.30]
  wire [63:0] _T_359; // @[Exec.scala 324:36:@1303.24]
  wire  _T_373; // @[Conditional.scala 37:30:@1327.30]
  wire  _T_375; // @[Conditional.scala 37:30:@1332.32]
  wire [7:0] _T_376; // @[Exec.scala 345:34:@1334.34]
  wire  _T_378; // @[Conditional.scala 37:30:@1338.34]
  wire [16:0] _T_379; // @[Exec.scala 349:34:@1340.36]
  wire  _T_381; // @[Conditional.scala 37:30:@1344.36]
  wire [32:0] _T_382; // @[Exec.scala 353:34:@1346.38]
  wire [63:0] _GEN_61; // @[Conditional.scala 39:67:@1345.36]
  wire [63:0] _GEN_62; // @[Conditional.scala 39:67:@1339.34]
  wire [63:0] _GEN_63; // @[Conditional.scala 39:67:@1333.32]
  wire [63:0] _GEN_64; // @[Conditional.scala 39:67:@1328.30]
  wire [63:0] _GEN_66; // @[Conditional.scala 39:67:@1321.28]
  wire [63:0] _GEN_68; // @[Conditional.scala 39:67:@1314.26]
  wire [63:0] _GEN_70; // @[Conditional.scala 40:58:@1307.24]
  wire [4:0] _GEN_71; // @[Exec.scala 357:36:@1350.24]
  wire [63:0] _T_356; // @[Exec.scala 320:30:@1300.24 Exec.scala 324:20:@1304.24 Exec.scala 341:24:@1329.32 Exec.scala 345:24:@1335.34 Exec.scala 349:24:@1341.36 Exec.scala 353:24:@1347.38]
  wire [63:0] _GEN_73; // @[Conditional.scala 39:67:@1296.22]
  wire [4:0] _GEN_74; // @[Conditional.scala 39:67:@1296.22]
  wire [63:0] _GEN_76; // @[Conditional.scala 40:58:@1283.20]
  wire [63:0] _GEN_77; // @[Conditional.scala 40:58:@1283.20]
  wire  _GEN_78; // @[Conditional.scala 40:58:@1283.20]
  wire [63:0] _GEN_80; // @[Conditional.scala 40:58:@1283.20]
  wire [4:0] _GEN_81; // @[Conditional.scala 40:58:@1283.20]
  wire [31:0] _T_387; // @[Exec.scala 374:61:@1361.24]
  wire [63:0] _GEN_218; // @[Exec.scala 374:41:@1362.24]
  wire [64:0] _T_388; // @[Exec.scala 374:41:@1362.24]
  wire [63:0] _T_389; // @[Exec.scala 374:41:@1363.24]
  wire [2:0] _T_390; // @[Exec.scala 375:44:@1364.24]
  wire [60:0] _T_391; // @[Exec.scala 377:46:@1366.24]
  wire [63:0] _GEN_219; // @[Exec.scala 377:52:@1367.24]
  wire [63:0] _T_392; // @[Exec.scala 377:52:@1367.24]
  wire [3:0] _GEN_220; // @[Exec.scala 389:56:@1372.24]
  wire [6:0] _T_398; // @[Exec.scala 389:56:@1372.24]
  wire [190:0] _GEN_221; // @[Exec.scala 389:40:@1373.24]
  wire [190:0] _T_399; // @[Exec.scala 389:40:@1373.24]
  wire  _T_402; // @[Conditional.scala 37:30:@1377.24]
  wire  _T_405; // @[Conditional.scala 37:30:@1382.26]
  wire  _T_408; // @[Conditional.scala 37:30:@1387.28]
  wire  _T_411; // @[Conditional.scala 37:30:@1392.30]
  wire [7:0] _GEN_82; // @[Conditional.scala 39:67:@1393.30]
  wire [7:0] _GEN_83; // @[Conditional.scala 39:67:@1388.28]
  wire [7:0] _GEN_84; // @[Conditional.scala 39:67:@1383.26]
  wire [7:0] _GEN_85; // @[Conditional.scala 40:58:@1378.24]
  wire [7:0] _T_395; // @[Exec.scala 380:32:@1370.24 Exec.scala 381:22:@1371.24 Exec.scala 393:55:@1379.26 Exec.scala 394:55:@1384.28 Exec.scala 395:55:@1389.30 Exec.scala 396:55:@1394.32]
  wire [14:0] _GEN_222; // @[Exec.scala 390:38:@1375.24]
  wire [14:0] _T_400; // @[Exec.scala 390:38:@1375.24]
  wire [63:0] _GEN_88; // @[Conditional.scala 40:58:@1360.22]
  wire [63:0] _GEN_89; // @[Conditional.scala 40:58:@1360.22]
  wire  _GEN_90; // @[Conditional.scala 40:58:@1360.22]
  wire [190:0] _GEN_91; // @[Conditional.scala 40:58:@1360.22]
  wire [14:0] _GEN_92; // @[Conditional.scala 40:58:@1360.22]
  wire  _T_416; // @[Conditional.scala 37:30:@1408.22]
  wire [48:0] _T_418; // @[Exec.scala 413:35:@1410.24]
  wire [47:0] _T_419; // @[Exec.scala 413:35:@1411.24]
  wire [47:0] _T_420; // @[Exec.scala 414:53:@1412.24]
  wire [47:0] _GEN_223; // @[Exec.scala 414:38:@1413.24]
  wire [48:0] _T_421; // @[Exec.scala 414:38:@1413.24]
  wire [47:0] _T_422; // @[Exec.scala 414:38:@1414.24]
  wire [47:0] _T_423; // @[Exec.scala 414:38:@1415.24]
  wire [47:0] _T_425; // @[Exec.scala 416:34:@1417.24]
  wire  _T_426; // @[Conditional.scala 37:30:@1423.24]
  wire [48:0] _T_428; // @[Exec.scala 423:35:@1425.26]
  wire [47:0] _T_429; // @[Exec.scala 423:35:@1426.26]
  wire [63:0] _T_430; // @[Exec.scala 424:30:@1427.26]
  wire [63:0] _GEN_224; // @[Exec.scala 424:37:@1428.26]
  wire [64:0] _T_431; // @[Exec.scala 424:37:@1428.26]
  wire [63:0] _T_432; // @[Exec.scala 424:37:@1429.26]
  wire [63:0] _T_433; // @[Exec.scala 424:37:@1430.26]
  wire [62:0] _T_434; // @[Exec.scala 424:58:@1431.26]
  wire [63:0] _GEN_225; // @[Exec.scala 424:64:@1432.26]
  wire [63:0] _T_435; // @[Exec.scala 424:64:@1432.26]
  wire [63:0] _T_437; // @[Exec.scala 427:34:@1434.26]
  wire  _T_438; // @[Conditional.scala 37:30:@1440.26]
  wire [63:0] _T_442; // @[Exec.scala 437:32:@1444.28]
  wire [63:0] _T_443; // @[Exec.scala 438:32:@1445.28]
  wire  _T_445; // @[Conditional.scala 37:30:@1446.28]
  wire  _T_446; // @[Exec.scala 441:31:@1448.30]
  wire  _T_448; // @[Conditional.scala 37:30:@1452.30]
  wire  _T_449; // @[Exec.scala 445:31:@1454.32]
  wire  _T_451; // @[Conditional.scala 37:30:@1458.32]
  wire  _T_452; // @[Exec.scala 449:32:@1460.34]
  wire  _T_454; // @[Conditional.scala 37:30:@1464.34]
  wire  _T_455; // @[Exec.scala 453:32:@1466.36]
  wire  _T_457; // @[Conditional.scala 37:30:@1470.36]
  wire  _T_458; // @[Exec.scala 457:31:@1472.38]
  wire  _T_460; // @[Conditional.scala 37:30:@1476.38]
  wire  _T_461; // @[Exec.scala 461:31:@1478.40]
  wire  _GEN_94; // @[Conditional.scala 39:67:@1477.38]
  wire  _GEN_95; // @[Conditional.scala 39:67:@1471.36]
  wire  _GEN_96; // @[Conditional.scala 39:67:@1465.34]
  wire  _GEN_97; // @[Conditional.scala 39:67:@1459.32]
  wire  _GEN_98; // @[Conditional.scala 39:67:@1453.30]
  wire  _GEN_99; // @[Conditional.scala 40:58:@1447.28]
  wire [47:0] _T_462; // @[Exec.scala 466:63:@1482.28]
  wire [47:0] _GEN_226; // @[Exec.scala 466:48:@1483.28]
  wire [48:0] _T_463; // @[Exec.scala 466:48:@1483.28]
  wire [47:0] _T_464; // @[Exec.scala 466:48:@1484.28]
  wire [47:0] _T_465; // @[Exec.scala 466:48:@1485.28]
  wire [47:0] _T_466; // @[Exec.scala 466:71:@1486.28]
  wire  _T_440; // @[Exec.scala 434:26:@1442.28 Exec.scala 435:16:@1443.28 Exec.scala 441:20:@1449.30 Exec.scala 445:20:@1455.32 Exec.scala 449:20:@1461.34 Exec.scala 453:20:@1467.36 Exec.scala 457:20:@1473.38 Exec.scala 461:20:@1479.40]
  wire  _T_123_branch; // @[Exec.scala 30:28:@792.4 Exec.scala 30:28:@798.4]
  wire  _GEN_100; // @[Conditional.scala 39:67:@1441.26]
  wire [47:0] _T_123_target; // @[Exec.scala 30:28:@792.4 Exec.scala 30:28:@796.4]
  wire [47:0] _GEN_101; // @[Conditional.scala 39:67:@1441.26]
  wire  _GEN_102; // @[Conditional.scala 39:67:@1424.24]
  wire [63:0] _GEN_103; // @[Conditional.scala 39:67:@1424.24]
  wire [4:0] _GEN_104; // @[Conditional.scala 39:67:@1424.24]
  wire [47:0] _GEN_105; // @[Conditional.scala 39:67:@1424.24]
  wire  _GEN_106; // @[Conditional.scala 39:67:@1409.22]
  wire [63:0] _GEN_107; // @[Conditional.scala 39:67:@1409.22]
  wire [4:0] _GEN_108; // @[Conditional.scala 39:67:@1409.22]
  wire [47:0] _GEN_109; // @[Conditional.scala 39:67:@1409.22]
  wire [63:0] _GEN_110; // @[Conditional.scala 39:67:@1358.20]
  wire [63:0] _GEN_111; // @[Conditional.scala 39:67:@1358.20]
  wire  _GEN_112; // @[Conditional.scala 39:67:@1358.20]
  wire [190:0] _GEN_113; // @[Conditional.scala 39:67:@1358.20]
  wire [14:0] _GEN_114; // @[Conditional.scala 39:67:@1358.20]
  wire  _GEN_116; // @[Conditional.scala 39:67:@1358.20]
  wire [63:0] _GEN_117; // @[Conditional.scala 39:67:@1358.20]
  wire [4:0] _GEN_118; // @[Conditional.scala 39:67:@1358.20]
  wire [47:0] _GEN_119; // @[Conditional.scala 39:67:@1358.20]
  wire [63:0] _GEN_120; // @[Conditional.scala 39:67:@1281.18]
  wire [63:0] _GEN_121; // @[Conditional.scala 39:67:@1281.18]
  wire  _GEN_122; // @[Conditional.scala 39:67:@1281.18]
  wire [63:0] _GEN_124; // @[Conditional.scala 39:67:@1281.18]
  wire [4:0] _GEN_125; // @[Conditional.scala 39:67:@1281.18]
  wire  _GEN_126; // @[Conditional.scala 39:67:@1281.18]
  wire [190:0] _GEN_127; // @[Conditional.scala 39:67:@1281.18]
  wire [14:0] _GEN_128; // @[Conditional.scala 39:67:@1281.18]
  wire  _GEN_129; // @[Conditional.scala 39:67:@1281.18]
  wire [63:0] _GEN_130; // @[Conditional.scala 39:67:@1281.18]
  wire [4:0] _GEN_131; // @[Conditional.scala 39:67:@1268.16]
  wire [63:0] _GEN_132; // @[Conditional.scala 39:67:@1268.16]
  wire [63:0] _GEN_133; // @[Conditional.scala 39:67:@1268.16]
  wire [63:0] _GEN_134; // @[Conditional.scala 39:67:@1268.16]
  wire  _GEN_135; // @[Conditional.scala 39:67:@1268.16]
  wire  _GEN_137; // @[Conditional.scala 39:67:@1268.16]
  wire [190:0] _GEN_138; // @[Conditional.scala 39:67:@1268.16]
  wire [14:0] _GEN_139; // @[Conditional.scala 39:67:@1268.16]
  wire  _GEN_140; // @[Conditional.scala 39:67:@1268.16]
  wire [63:0] _GEN_141; // @[Conditional.scala 39:67:@1268.16]
  wire [4:0] _GEN_142; // @[Conditional.scala 39:67:@1259.14]
  wire [63:0] _GEN_143; // @[Conditional.scala 39:67:@1259.14]
  wire [63:0] _GEN_144; // @[Conditional.scala 39:67:@1259.14]
  wire [63:0] _GEN_145; // @[Conditional.scala 39:67:@1259.14]
  wire  _GEN_146; // @[Conditional.scala 39:67:@1259.14]
  wire  _GEN_148; // @[Conditional.scala 39:67:@1259.14]
  wire [190:0] _GEN_149; // @[Conditional.scala 39:67:@1259.14]
  wire [14:0] _GEN_150; // @[Conditional.scala 39:67:@1259.14]
  wire  _GEN_151; // @[Conditional.scala 39:67:@1259.14]
  wire [63:0] _GEN_152; // @[Conditional.scala 39:67:@1259.14]
  wire [4:0] _GEN_153; // @[Conditional.scala 39:67:@1203.12]
  wire [63:0] _GEN_154; // @[Conditional.scala 39:67:@1203.12]
  wire [63:0] _GEN_155; // @[Conditional.scala 39:67:@1203.12]
  wire [63:0] _GEN_156; // @[Conditional.scala 39:67:@1203.12]
  wire  _GEN_157; // @[Conditional.scala 39:67:@1203.12]
  wire  _GEN_159; // @[Conditional.scala 39:67:@1203.12]
  wire [190:0] _GEN_160; // @[Conditional.scala 39:67:@1203.12]
  wire [14:0] _GEN_161; // @[Conditional.scala 39:67:@1203.12]
  wire  _GEN_162; // @[Conditional.scala 39:67:@1203.12]
  wire [63:0] _GEN_163; // @[Conditional.scala 39:67:@1203.12]
  wire [4:0] _GEN_164; // @[Conditional.scala 39:67:@1114.10]
  wire [126:0] _GEN_165; // @[Conditional.scala 39:67:@1114.10]
  wire [63:0] _GEN_166; // @[Conditional.scala 39:67:@1114.10]
  wire [63:0] _GEN_167; // @[Conditional.scala 39:67:@1114.10]
  wire  _GEN_168; // @[Conditional.scala 39:67:@1114.10]
  wire  _GEN_170; // @[Conditional.scala 39:67:@1114.10]
  wire [190:0] _GEN_171; // @[Conditional.scala 39:67:@1114.10]
  wire [14:0] _GEN_172; // @[Conditional.scala 39:67:@1114.10]
  wire  _GEN_173; // @[Conditional.scala 39:67:@1114.10]
  wire [63:0] _GEN_174; // @[Conditional.scala 39:67:@1114.10]
  wire [4:0] _GEN_175; // @[Conditional.scala 39:67:@1065.8]
  wire [126:0] _GEN_176; // @[Conditional.scala 39:67:@1065.8]
  wire [63:0] _GEN_177; // @[Conditional.scala 39:67:@1065.8]
  wire [63:0] _GEN_178; // @[Conditional.scala 39:67:@1065.8]
  wire  _GEN_179; // @[Conditional.scala 39:67:@1065.8]
  wire  _GEN_181; // @[Conditional.scala 39:67:@1065.8]
  wire [190:0] _GEN_182; // @[Conditional.scala 39:67:@1065.8]
  wire [14:0] _GEN_183; // @[Conditional.scala 39:67:@1065.8]
  wire  _GEN_184; // @[Conditional.scala 39:67:@1065.8]
  wire [63:0] _GEN_185; // @[Conditional.scala 39:67:@1065.8]
  wire [4:0] _GEN_186; // @[Conditional.scala 40:58:@977.6]
  wire [126:0] _GEN_187; // @[Conditional.scala 40:58:@977.6]
  wire [63:0] _GEN_188; // @[Conditional.scala 40:58:@977.6]
  wire [63:0] _GEN_189; // @[Conditional.scala 40:58:@977.6]
  wire  _GEN_190; // @[Conditional.scala 40:58:@977.6]
  wire  _GEN_192; // @[Conditional.scala 40:58:@977.6]
  wire [190:0] _GEN_193; // @[Conditional.scala 40:58:@977.6]
  wire [14:0] _GEN_194; // @[Conditional.scala 40:58:@977.6]
  wire  _GEN_195; // @[Conditional.scala 40:58:@977.6]
  wire [63:0] _GEN_196; // @[Conditional.scala 40:58:@977.6]
  wire [4:0] _GEN_197; // @[Exec.scala 87:25:@975.4]
  wire [126:0] _GEN_198; // @[Exec.scala 87:25:@975.4]
  wire [63:0] _GEN_199; // @[Exec.scala 87:25:@975.4]
  wire [63:0] _GEN_200; // @[Exec.scala 87:25:@975.4]
  wire  _GEN_201; // @[Exec.scala 87:25:@975.4]
  wire  _GEN_203; // @[Exec.scala 87:25:@975.4]
  wire [190:0] _GEN_204; // @[Exec.scala 87:25:@975.4]
  wire [14:0] _GEN_205; // @[Exec.scala 87:25:@975.4]
  wire  _GEN_206; // @[Exec.scala 87:25:@975.4]
  wire [63:0] _GEN_207; // @[Exec.scala 87:25:@975.4]
  DCache dcache ( // @[Exec.scala 34:22:@803.4]
    .clock(dcache_clock),
    .reset(dcache_reset),
    .io_addr(dcache_io_addr),
    .io_read(dcache_io_read),
    .io_write(dcache_io_write),
    .io_wdata(dcache_io_wdata),
    .io_be(dcache_io_be),
    .io_axi_AWID(dcache_io_axi_AWID),
    .io_axi_AWADDR(dcache_io_axi_AWADDR),
    .io_axi_AWLEN(dcache_io_axi_AWLEN),
    .io_axi_AWSIZE(dcache_io_axi_AWSIZE),
    .io_axi_AWBURST(dcache_io_axi_AWBURST),
    .io_axi_AWCACHE(dcache_io_axi_AWCACHE),
    .io_axi_AWPROT(dcache_io_axi_AWPROT),
    .io_axi_AWQOS(dcache_io_axi_AWQOS),
    .io_axi_AWREGION(dcache_io_axi_AWREGION),
    .io_axi_AWVALID(dcache_io_axi_AWVALID),
    .io_axi_AWREADY(dcache_io_axi_AWREADY),
    .io_axi_WDATA(dcache_io_axi_WDATA),
    .io_axi_WSTRB(dcache_io_axi_WSTRB),
    .io_axi_WLAST(dcache_io_axi_WLAST),
    .io_axi_WVALID(dcache_io_axi_WVALID),
    .io_axi_WREADY(dcache_io_axi_WREADY),
    .io_axi_BID(dcache_io_axi_BID),
    .io_axi_BRESP(dcache_io_axi_BRESP),
    .io_axi_BVALID(dcache_io_axi_BVALID),
    .io_axi_BREADY(dcache_io_axi_BREADY),
    .io_axi_ARID(dcache_io_axi_ARID),
    .io_axi_ARADDR(dcache_io_axi_ARADDR),
    .io_axi_ARLEN(dcache_io_axi_ARLEN),
    .io_axi_ARSIZE(dcache_io_axi_ARSIZE),
    .io_axi_ARBURST(dcache_io_axi_ARBURST),
    .io_axi_ARCACHE(dcache_io_axi_ARCACHE),
    .io_axi_ARPROT(dcache_io_axi_ARPROT),
    .io_axi_ARQOS(dcache_io_axi_ARQOS),
    .io_axi_ARREGION(dcache_io_axi_ARREGION),
    .io_axi_ARVALID(dcache_io_axi_ARVALID),
    .io_axi_ARREADY(dcache_io_axi_ARREADY),
    .io_axi_RID(dcache_io_axi_RID),
    .io_axi_RDATA(dcache_io_axi_RDATA),
    .io_axi_RRESP(dcache_io_axi_RRESP),
    .io_axi_RLAST(dcache_io_axi_RLAST),
    .io_axi_RVALID(dcache_io_axi_RVALID),
    .io_axi_RREADY(dcache_io_axi_RREADY),
    .io_stall(dcache_io_stall),
    .io_pause(dcache_io_pause),
    .io_rdata(dcache_io_rdata),
    .io_vacant(dcache_io_vacant)
  );
  assign _T_125 = 49'h0; // @[:@793.4 :@794.4]
  assign _T_126 = 48'h0; // @[Exec.scala 30:28:@795.4]
  assign _T_127 = 1'h0; // @[Exec.scala 30:28:@797.4]
  assign _T_138 = 65'h0; // @[:@895.4 :@896.4]
  assign _T_139 = 3'h0; // @[Exec.scala 44:32:@897.4]
  assign _T_140 = 7'h0; // @[Exec.scala 44:32:@899.4]
  assign _T_141 = 5'h0; // @[Exec.scala 44:32:@901.4]
  assign _T_142 = 5'h0; // @[Exec.scala 44:32:@903.4]
  assign _T_143 = 5'h0; // @[Exec.scala 44:32:@905.4]
  assign _T_144 = 32'h0; // @[Exec.scala 44:32:@907.4]
  assign _T_145 = 32'sh0; // @[Exec.scala 44:32:@908.4]
  assign _T_146 = 3'h0; // @[Exec.scala 44:32:@910.4]
  assign _T_147 = 5'h0; // @[Exec.scala 44:32:@912.4]
  assign _T_153 = io_ctrl_pause == 1'h0; // @[Exec.scala 62:8:@928.4]
  assign _T_155 = io_ctrl_stall == 1'h0; // @[Exec.scala 62:26:@929.4]
  assign _T_156 = _T_153 & _T_155; // @[Exec.scala 62:23:@930.4]
  assign _T_158 = io_ctrl_flush == 1'h0; // @[Exec.scala 63:10:@932.6]
  assign default_vacant = 1'h1; // @[Exec.scala 42:21:@892.4 Exec.scala 45:18:@922.4]
  assign _GEN_0 = _T_158 ? io_instr_vacant : 1'h1; // @[Exec.scala 63:26:@933.6]
  assign _T_136_funct3 = 3'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@898.4]
  assign default_instr_funct3 = 3'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@914.4]
  assign _GEN_1 = _T_158 ? io_instr_instr_funct3 : 3'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_funct7 = 7'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@900.4]
  assign default_instr_funct7 = 7'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@915.4]
  assign _GEN_2 = _T_158 ? io_instr_instr_funct7 : 7'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_rd = 5'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@902.4]
  assign default_instr_rd = 5'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@916.4]
  assign _GEN_3 = _T_158 ? io_instr_instr_rd : 5'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_rs2 = 5'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@904.4]
  assign default_instr_rs2 = 5'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@917.4]
  assign _GEN_4 = _T_158 ? io_instr_instr_rs2 : 5'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_rs1 = 5'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@906.4]
  assign default_instr_rs1 = 5'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@918.4]
  assign _GEN_5 = _T_158 ? io_instr_instr_rs1 : 5'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_imm = 32'sh0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@909.4]
  assign default_instr_imm = 32'sh0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@919.4]
  assign _GEN_6 = _T_158 ? $signed(io_instr_instr_imm) : $signed(32'sh0); // @[Exec.scala 63:26:@933.6]
  assign _T_136_base = 3'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@911.4]
  assign default_instr_base = 3'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@920.4]
  assign _GEN_7 = _T_158 ? io_instr_instr_base : 3'h0; // @[Exec.scala 63:26:@933.6]
  assign _T_136_op = 5'h0; // @[Exec.scala 44:32:@894.4 Exec.scala 44:32:@913.4]
  assign default_instr_op = 5'h0; // @[Exec.scala 42:21:@892.4 Exec.scala 44:17:@921.4]
  assign _GEN_8 = _T_158 ? io_instr_instr_op : 5'h0; // @[Exec.scala 63:26:@933.6]
  assign default_addr = 48'h0;
  assign _GEN_9 = _T_158 ? io_instr_addr : 48'h0; // @[Exec.scala 63:26:@933.6]
  assign _GEN_10 = _T_158 ? io_regReaders_0_data : readRs1; // @[Exec.scala 63:26:@933.6]
  assign _GEN_11 = _T_158 ? io_regReaders_1_data : readRs2; // @[Exec.scala 63:26:@933.6]
  assign _GEN_12 = _T_156 ? _GEN_0 : current_vacant; // @[Exec.scala 62:42:@931.4]
  assign _GEN_13 = _T_156 ? _GEN_1 : current_instr_funct3; // @[Exec.scala 62:42:@931.4]
  assign _GEN_14 = _T_156 ? _GEN_2 : current_instr_funct7; // @[Exec.scala 62:42:@931.4]
  assign _GEN_15 = _T_156 ? _GEN_3 : current_instr_rd; // @[Exec.scala 62:42:@931.4]
  assign _GEN_16 = _T_156 ? _GEN_4 : current_instr_rs2; // @[Exec.scala 62:42:@931.4]
  assign _GEN_17 = _T_156 ? _GEN_5 : current_instr_rs1; // @[Exec.scala 62:42:@931.4]
  assign _GEN_18 = _T_156 ? $signed(_GEN_6) : $signed(current_instr_imm); // @[Exec.scala 62:42:@931.4]
  assign _GEN_19 = _T_156 ? _GEN_7 : current_instr_base; // @[Exec.scala 62:42:@931.4]
  assign _GEN_20 = _T_156 ? _GEN_8 : current_instr_op; // @[Exec.scala 62:42:@931.4]
  assign _GEN_21 = _T_156 ? _GEN_9 : current_addr; // @[Exec.scala 62:42:@931.4]
  assign _GEN_22 = _T_156 ? _GEN_10 : readRs1; // @[Exec.scala 62:42:@931.4]
  assign _GEN_23 = _T_156 ? _GEN_11 : readRs2; // @[Exec.scala 62:42:@931.4]
  assign _T_171 = current_vacant == 1'h0; // @[Exec.scala 87:8:@974.4]
  assign _T_172 = 5'h4 == current_instr_op; // @[Conditional.scala 37:30:@976.6]
  assign _T_221 = 5'h6 == current_instr_op; // @[Conditional.scala 37:30:@1064.8]
  assign _T_252 = 5'hc == current_instr_op; // @[Conditional.scala 37:30:@1113.10]
  assign _T_297 = 5'he == current_instr_op; // @[Conditional.scala 37:30:@1202.12]
  assign _T_330 = 5'hd == current_instr_op; // @[Conditional.scala 37:30:@1258.14]
  assign _T_334 = 5'h5 == current_instr_op; // @[Conditional.scala 37:30:@1267.16]
  assign _T_342 = 5'h0 == current_instr_op; // @[Conditional.scala 37:30:@1280.18]
  assign _T_343 = 1'h0 == lsState; // @[Conditional.scala 37:30:@1282.20]
  assign _T_350 = lsState; // @[Conditional.scala 37:30:@1295.22]
  assign _T_384 = dcache_io_stall == 1'h0; // @[Exec.scala 357:18:@1349.24]
  assign _GEN_72 = _T_384 ? 1'h0 : lsState; // @[Exec.scala 357:36:@1350.24]
  assign _GEN_75 = lsState ? _GEN_72 : lsState; // @[Conditional.scala 39:67:@1296.22]
  assign _GEN_79 = _T_343 ? 1'h1 : _GEN_75; // @[Conditional.scala 40:58:@1283.20]
  assign _T_385 = 5'h8 == current_instr_op; // @[Conditional.scala 37:30:@1357.20]
  assign _T_386 = 1'h0 == lsState; // @[Conditional.scala 37:30:@1359.22]
  assign _T_413 = lsState; // @[Conditional.scala 37:30:@1399.24]
  assign _T_415 = dcache_io_stall == 1'h0; // @[Exec.scala 403:18:@1401.26]
  assign _GEN_86 = _T_384 ? 1'h0 : lsState; // @[Exec.scala 403:36:@1402.26]
  assign _GEN_87 = lsState ? _GEN_72 : lsState; // @[Conditional.scala 39:67:@1400.24]
  assign _GEN_93 = _T_343 ? 1'h1 : _GEN_75; // @[Conditional.scala 40:58:@1360.22]
  assign _GEN_115 = _T_385 ? _GEN_79 : lsState; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_123 = _T_342 ? _GEN_79 : _GEN_115; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_136 = _T_334 ? lsState : _GEN_123; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_147 = _T_330 ? lsState : _GEN_136; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_158 = _T_297 ? lsState : _GEN_147; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_169 = _T_252 ? lsState : _GEN_158; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_180 = _T_221 ? lsState : _GEN_169; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_191 = _T_172 ? lsState : _GEN_180; // @[Conditional.scala 40:58:@977.6]
  assign lsNextState = _T_171 ? _GEN_191 : lsState; // @[Exec.scala 87:25:@975.4]
  assign _GEN_202 = lsNextState; // @[Exec.scala 76:25:@961.4 Exec.scala 79:15:@963.4 Exec.scala 314:25:@1292.22 Exec.scala 365:27:@1352.26 Exec.scala 399:25:@1396.24 Exec.scala 404:27:@1403.28]
  assign _T_162 = lsNextState; // @[Exec.scala 80:20:@964.4]
  assign _T_164 = io_ctrl_pause == 1'h0; // @[Exec.scala 80:34:@965.4]
  assign _T_165 = lsNextState | _T_153; // @[Exec.scala 80:31:@966.4]
  assign _GEN_24 = _T_165 ? lsNextState : lsState; // @[Exec.scala 80:50:@967.4]
  assign _T_167 = current_vacant == 1'h0; // @[Exec.scala 85:21:@970.4]
  assign _T_168 = lsNextState; // @[Exec.scala 85:53:@971.4]
  assign _T_169 = _T_171 & lsNextState; // @[Exec.scala 85:38:@972.4]
  assign _T_174 = io_ctrl_pause == 1'h0; // @[Exec.scala 93:14:@978.8]
  assign _GEN_25 = _T_153 ? current_instr_rd : 5'h0; // @[Exec.scala 93:30:@979.8]
  assign _T_178 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@984.8]
  assign _T_179 = $signed(readRs1); // @[Exec.scala 101:54:@986.10]
  assign _T_176 = {{32{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 96:28:@982.8 Exec.scala 97:18:@983.8]
  assign _T_180 = $signed(_T_176) + $signed(_T_179); // @[Exec.scala 101:44:@987.10]
  assign _T_181 = $signed(_T_176) + $signed(_T_179); // @[Exec.scala 101:44:@988.10]
  assign _T_182 = $signed(_T_181); // @[Exec.scala 101:44:@989.10]
  assign _T_183 = $unsigned(_T_182); // @[Exec.scala 101:62:@990.10]
  assign _T_185 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@994.10]
  assign _T_186 = _T_176[4:0]; // @[Exec.scala 104:54:@996.12]
  assign _GEN_208 = {{31'd0}, readRs1}; // @[Exec.scala 104:43:@997.12]
  assign _T_187 = _GEN_208 << _T_186; // @[Exec.scala 104:43:@997.12]
  assign _T_189 = 3'h2 == current_instr_funct3; // @[Conditional.scala 37:30:@1001.12]
  assign _T_190 = $signed(readRs1); // @[Exec.scala 108:26:@1003.14]
  assign _T_191 = $signed(_T_179) < $signed(_T_176); // @[Exec.scala 108:33:@1004.14]
  assign _GEN_26 = _T_191; // @[Exec.scala 108:45:@1005.14]
  assign _T_195 = 3'h3 == current_instr_funct3; // @[Conditional.scala 37:30:@1013.14]
  assign _T_196 = $unsigned(_T_176); // @[Exec.scala 116:37:@1015.16]
  assign _T_197 = readRs1 < _T_196; // @[Exec.scala 116:26:@1016.16]
  assign _GEN_27 = _T_197; // @[Exec.scala 116:45:@1017.16]
  assign _T_201 = 3'h4 == current_instr_funct3; // @[Conditional.scala 37:30:@1025.16]
  assign _T_202 = $unsigned(_T_176); // @[Exec.scala 124:43:@1027.18]
  assign _T_203 = _T_196 ^ readRs1; // @[Exec.scala 124:50:@1028.18]
  assign _T_205 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1032.18]
  assign _T_206 = current_instr_funct7[5]; // @[Exec.scala 128:38:@1034.20]
  assign _T_207 = $signed(readRs1); // @[Exec.scala 130:45:@1036.22]
  assign _T_208 = _T_176[4:0]; // @[Exec.scala 130:63:@1037.22]
  assign _T_209 = $signed(_T_179) >>> _T_186; // @[Exec.scala 130:52:@1038.22]
  assign _T_210 = $unsigned(_T_209); // @[Exec.scala 130:71:@1039.22]
  assign _T_211 = _T_176[4:0]; // @[Exec.scala 133:55:@1043.22]
  assign _T_212 = readRs1 >> _T_186; // @[Exec.scala 133:44:@1044.22]
  assign _GEN_28 = _T_206 ? _T_210 : _T_212; // @[Exec.scala 128:43:@1035.20]
  assign _T_214 = 3'h6 == current_instr_funct3; // @[Conditional.scala 37:30:@1049.20]
  assign _T_215 = $unsigned(_T_176); // @[Exec.scala 138:43:@1051.22]
  assign _T_216 = _T_196 | readRs1; // @[Exec.scala 138:50:@1052.22]
  assign _T_218 = 3'h7 == current_instr_funct3; // @[Conditional.scala 37:30:@1056.22]
  assign _T_219 = $unsigned(_T_176); // @[Exec.scala 142:43:@1058.24]
  assign _T_220 = _T_196 & readRs1; // @[Exec.scala 142:50:@1059.24]
  assign _GEN_29 = _T_218 ? _T_220 : 64'h0; // @[Conditional.scala 39:67:@1057.22]
  assign _GEN_30 = _T_214 ? _T_216 : _GEN_29; // @[Conditional.scala 39:67:@1050.20]
  assign _GEN_31 = _T_205 ? _GEN_28 : _GEN_30; // @[Conditional.scala 39:67:@1033.18]
  assign _GEN_32 = _T_201 ? _T_203 : _GEN_31; // @[Conditional.scala 39:67:@1026.16]
  assign _GEN_33 = _T_195 ? {{63'd0}, _T_197} : _GEN_32; // @[Conditional.scala 39:67:@1014.14]
  assign _GEN_34 = _T_189 ? {{63'd0}, _T_191} : _GEN_33; // @[Conditional.scala 39:67:@1002.12]
  assign _GEN_35 = _T_185 ? _T_187 : {{31'd0}, _GEN_34}; // @[Conditional.scala 39:67:@995.10]
  assign _GEN_36 = _T_178 ? {{31'd0}, _T_183} : _GEN_35; // @[Conditional.scala 40:58:@985.8]
  assign _T_223 = io_ctrl_pause == 1'h0; // @[Exec.scala 148:14:@1066.10]
  assign _GEN_37 = _T_153 ? current_instr_rd : 5'h0; // @[Exec.scala 148:30:@1067.10]
  assign _T_228 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1072.10]
  assign _T_229 = $signed(readRs1); // @[Exec.scala 160:33:@1074.12]
  assign _GEN_209 = {{32{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 160:40:@1075.12]
  assign _T_230 = $signed(_T_179) + $signed(_T_176); // @[Exec.scala 160:40:@1075.12]
  assign _T_231 = $signed(_T_179) + $signed(_T_176); // @[Exec.scala 160:40:@1076.12]
  assign _T_232 = $signed(_T_231); // @[Exec.scala 160:40:@1077.12]
  assign _T_234 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1081.12]
  assign _T_235 = $signed(readRs1); // @[Exec.scala 166:33:@1083.14]
  assign _T_236 = current_instr_imm[4:0]; // @[Exec.scala 166:60:@1084.14]
  assign _GEN_210 = {{31{_T_179[63]}},_T_179}; // @[Exec.scala 166:40:@1085.14]
  assign _T_237 = $signed(_GEN_210) << _T_236; // @[Exec.scala 166:40:@1085.14]
  assign _T_239 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1089.14]
  assign _T_240 = current_instr_funct7[5]; // @[Exec.scala 170:38:@1091.16]
  assign _T_241 = readRs1[31:0]; // @[Exec.scala 172:34:@1093.18]
  assign _T_242 = $signed(_T_241); // @[Exec.scala 172:42:@1094.18]
  assign _T_243 = current_instr_imm[4:0]; // @[Exec.scala 172:69:@1095.18]
  assign _T_244 = $signed(_T_242) >>> _T_236; // @[Exec.scala 172:49:@1096.18]
  assign _T_245 = readRs1[31:0]; // @[Exec.scala 175:35:@1100.18]
  assign _T_246 = current_instr_imm[4:0]; // @[Exec.scala 175:70:@1101.18]
  assign _T_247 = _T_241 >> _T_236; // @[Exec.scala 175:50:@1102.18]
  assign _T_248 = $signed(_T_247); // @[Exec.scala 175:78:@1103.18]
  assign _GEN_38 = _T_206 ? $signed(_T_244) : $signed(_T_248); // @[Exec.scala 170:43:@1092.16]
  assign _GEN_39 = _T_205 ? $signed(_GEN_38) : $signed(32'sh0); // @[Conditional.scala 39:67:@1090.14]
  assign _GEN_40 = _T_185 ? $signed(_T_237) : $signed({{63{_GEN_39[31]}},_GEN_39}); // @[Conditional.scala 39:67:@1082.12]
  assign _GEN_41 = _T_178 ? $signed({{31{_T_232[63]}},_T_232}) : $signed(_GEN_40); // @[Conditional.scala 40:58:@1073.10]
  assign _GEN_211 = _GEN_41[31:0]; // @[Exec.scala 154:28:@1070.10 Exec.scala 155:18:@1071.10 Exec.scala 160:22:@1078.12 Exec.scala 166:22:@1086.14 Exec.scala 172:24:@1097.18 Exec.scala 175:24:@1104.18]
  assign _T_225 = $signed(_GEN_211); // @[Exec.scala 154:28:@1070.10 Exec.scala 155:18:@1071.10 Exec.scala 160:22:@1078.12 Exec.scala 166:22:@1086.14 Exec.scala 172:24:@1097.18 Exec.scala 175:24:@1104.18]
  assign _T_250 = {{32{_T_225[31]}},_T_225}; // @[Exec.scala 180:26:@1107.10 Exec.scala 181:16:@1108.10]
  assign _T_251 = $unsigned(_T_250); // @[Exec.scala 182:37:@1109.10]
  assign _T_254 = io_ctrl_pause == 1'h0; // @[Exec.scala 186:14:@1115.12]
  assign _GEN_42 = _T_153 ? current_instr_rd : 5'h0; // @[Exec.scala 186:30:@1116.12]
  assign _T_256 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1119.12]
  assign _T_257 = current_instr_funct7[5]; // @[Exec.scala 192:38:@1121.14]
  assign _T_258 = readRs1 - readRs2; // @[Exec.scala 195:44:@1123.16]
  assign _T_259 = $unsigned(_T_258); // @[Exec.scala 195:44:@1124.16]
  assign _T_260 = _T_259[63:0]; // @[Exec.scala 195:44:@1125.16]
  assign _T_261 = readRs1 + readRs2; // @[Exec.scala 198:44:@1129.16]
  assign _T_262 = readRs1 + readRs2; // @[Exec.scala 198:44:@1130.16]
  assign _GEN_43 = _T_206 ? _T_260 : _T_262; // @[Exec.scala 192:43:@1122.14]
  assign _T_264 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1135.14]
  assign _T_265 = readRs2[5:0]; // @[Exec.scala 203:52:@1137.16]
  assign _GEN_212 = {{63'd0}, readRs1}; // @[Exec.scala 203:42:@1138.16]
  assign _T_266 = _GEN_212 << _T_265; // @[Exec.scala 203:42:@1138.16]
  assign _T_268 = 3'h2 == current_instr_funct3; // @[Conditional.scala 37:30:@1142.16]
  assign _T_269 = $signed(readRs1); // @[Exec.scala 207:26:@1144.18]
  assign _T_270 = $signed(readRs2); // @[Exec.scala 207:43:@1145.18]
  assign _T_271 = $signed(_T_179) < $signed(_T_270); // @[Exec.scala 207:33:@1146.18]
  assign _GEN_44 = _T_271; // @[Exec.scala 207:51:@1147.18]
  assign _T_275 = 3'h3 == current_instr_funct3; // @[Conditional.scala 37:30:@1155.18]
  assign _T_276 = readRs1 < readRs2; // @[Exec.scala 215:33:@1157.20]
  assign _GEN_45 = _T_276; // @[Exec.scala 215:51:@1158.20]
  assign _T_280 = 3'h4 == current_instr_funct3; // @[Conditional.scala 37:30:@1166.20]
  assign _T_281 = readRs1 ^ readRs2; // @[Exec.scala 223:42:@1168.22]
  assign _T_283 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1172.22]
  assign _T_284 = current_instr_funct7[5]; // @[Exec.scala 227:38:@1174.24]
  assign _T_285 = $signed(readRs1); // @[Exec.scala 231:45:@1176.26]
  assign _T_286 = readRs2[5:0]; // @[Exec.scala 231:62:@1177.26]
  assign _T_287 = $signed(_T_179) >>> _T_265; // @[Exec.scala 231:52:@1178.26]
  assign _T_288 = $unsigned(_T_287); // @[Exec.scala 231:70:@1179.26]
  assign _T_289 = readRs2[5:0]; // @[Exec.scala 233:54:@1183.26]
  assign _T_290 = readRs1 >> _T_265; // @[Exec.scala 233:44:@1184.26]
  assign _GEN_46 = _T_206 ? _T_288 : _T_290; // @[Exec.scala 227:43:@1175.24]
  assign _T_292 = 3'h6 == current_instr_funct3; // @[Conditional.scala 37:30:@1189.24]
  assign _T_293 = readRs1 | readRs2; // @[Exec.scala 238:42:@1191.26]
  assign _T_295 = 3'h7 == current_instr_funct3; // @[Conditional.scala 37:30:@1195.26]
  assign _T_296 = readRs1 & readRs2; // @[Exec.scala 242:42:@1197.28]
  assign _GEN_47 = _T_218 ? _T_296 : 64'h0; // @[Conditional.scala 39:67:@1196.26]
  assign _GEN_48 = _T_214 ? _T_293 : _GEN_47; // @[Conditional.scala 39:67:@1190.24]
  assign _GEN_49 = _T_205 ? _GEN_46 : _GEN_48; // @[Conditional.scala 39:67:@1173.22]
  assign _GEN_50 = _T_201 ? _T_281 : _GEN_49; // @[Conditional.scala 39:67:@1167.20]
  assign _GEN_51 = _T_195 ? {{63'd0}, _T_276} : _GEN_50; // @[Conditional.scala 39:67:@1156.18]
  assign _GEN_52 = _T_189 ? {{63'd0}, _T_271} : _GEN_51; // @[Conditional.scala 39:67:@1143.16]
  assign _GEN_53 = _T_185 ? _T_266 : {{63'd0}, _GEN_52}; // @[Conditional.scala 39:67:@1136.14]
  assign _GEN_54 = _T_178 ? {{63'd0}, _GEN_43} : _GEN_53; // @[Conditional.scala 40:58:@1120.12]
  assign _T_299 = io_ctrl_pause == 1'h0; // @[Exec.scala 248:14:@1204.14]
  assign _GEN_55 = _T_153 ? current_instr_rd : 5'h0; // @[Exec.scala 248:30:@1205.14]
  assign _T_304 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1210.14]
  assign _T_305 = current_instr_funct7[5]; // @[Exec.scala 256:38:@1212.16]
  assign _T_306 = readRs1 - readRs2; // @[Exec.scala 258:35:@1214.18]
  assign _T_307 = $unsigned(_T_258); // @[Exec.scala 258:35:@1215.18]
  assign _T_308 = _T_259[63:0]; // @[Exec.scala 258:35:@1216.18]
  assign _T_309 = readRs1 + readRs2; // @[Exec.scala 261:35:@1220.18]
  assign _T_310 = readRs1 + readRs2; // @[Exec.scala 261:35:@1221.18]
  assign _GEN_56 = _T_206 ? _T_260 : _T_262; // @[Exec.scala 256:43:@1213.16]
  assign _T_312 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1226.16]
  assign _T_313 = readRs2[4:0]; // @[Exec.scala 267:43:@1228.18]
  assign _GEN_213 = {{31'd0}, readRs1}; // @[Exec.scala 267:33:@1229.18]
  assign _T_314 = _GEN_208 << _T_313; // @[Exec.scala 267:33:@1229.18]
  assign _T_316 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1233.18]
  assign _T_317 = current_instr_funct7[5]; // @[Exec.scala 271:38:@1235.20]
  assign _T_318 = readRs1[31:0]; // @[Exec.scala 273:35:@1237.22]
  assign _T_319 = $signed(_T_241); // @[Exec.scala 273:43:@1238.22]
  assign _T_320 = readRs2[4:0]; // @[Exec.scala 273:60:@1239.22]
  assign _T_321 = $signed(_T_242) >>> _T_313; // @[Exec.scala 273:50:@1240.22]
  assign _T_322 = $unsigned(_T_321); // @[Exec.scala 273:68:@1241.22]
  assign _T_323 = readRs1[31:0]; // @[Exec.scala 276:34:@1245.22]
  assign _T_324 = readRs2[4:0]; // @[Exec.scala 276:59:@1246.22]
  assign _T_325 = _T_241 >> _T_313; // @[Exec.scala 276:49:@1247.22]
  assign _GEN_57 = _T_206 ? _T_322 : _T_325; // @[Exec.scala 271:43:@1236.20]
  assign _GEN_58 = _T_205 ? _GEN_57 : 32'h0; // @[Conditional.scala 39:67:@1234.18]
  assign _GEN_59 = _T_185 ? _T_314 : {{63'd0}, _GEN_58}; // @[Conditional.scala 39:67:@1227.16]
  assign _GEN_60 = _T_178 ? {{31'd0}, _GEN_43} : _GEN_59; // @[Conditional.scala 40:58:@1211.14]
  assign _T_301 = _GEN_60[31:0]; // @[Exec.scala 251:28:@1208.14 Exec.scala 252:18:@1209.14 Exec.scala 258:24:@1217.18 Exec.scala 261:24:@1222.18 Exec.scala 267:22:@1230.18 Exec.scala 273:24:@1242.22 Exec.scala 276:24:@1248.22]
  assign _T_328 = $signed(_T_301); // @[Exec.scala 283:28:@1252.14]
  assign _T_327 = {{32{_T_328[31]}},_T_328}; // @[Exec.scala 282:26:@1251.14 Exec.scala 283:16:@1253.14]
  assign _T_329 = $unsigned(_T_327); // @[Exec.scala 284:37:@1254.14]
  assign _T_332 = {{32{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 291:28:@1261.16 Exec.scala 292:18:@1262.16]
  assign _T_333 = $unsigned(_T_176); // @[Exec.scala 293:39:@1263.16]
  assign _T_337 = $signed(current_addr); // @[Exec.scala 299:52:@1271.18]
  assign _GEN_214 = {{16{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 299:37:@1272.18]
  assign _T_338 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 299:37:@1272.18]
  assign _T_339 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 299:37:@1273.18]
  assign _T_340 = $signed(_T_339); // @[Exec.scala 299:37:@1274.18]
  assign _T_336 = {{16{_T_340[47]}},_T_340}; // @[Exec.scala 298:26:@1270.18 Exec.scala 299:16:@1275.18]
  assign _T_341 = $unsigned(_T_336); // @[Exec.scala 301:37:@1276.18]
  assign _T_344 = $unsigned(current_instr_imm); // @[Exec.scala 309:61:@1284.22]
  assign _GEN_215 = {{32'd0}, _T_344}; // @[Exec.scala 309:41:@1285.22]
  assign _T_345 = readRs1 + _GEN_215; // @[Exec.scala 309:41:@1285.22]
  assign _T_346 = readRs1 + _GEN_215; // @[Exec.scala 309:41:@1286.22]
  assign _T_347 = _T_346[63:3]; // @[Exec.scala 311:46:@1288.22]
  assign _GEN_216 = {{3'd0}, _T_347}; // @[Exec.scala 311:52:@1289.22]
  assign _T_348 = _GEN_216 << 3; // @[Exec.scala 311:52:@1289.22]
  assign _T_351 = lsAddr[2:0]; // @[Exec.scala 319:42:@1297.24]
  assign _GEN_217 = {{1'd0}, _T_351}; // @[Exec.scala 319:49:@1298.24]
  assign _T_353 = _GEN_217 * 4'h8; // @[Exec.scala 319:49:@1298.24]
  assign _T_354 = dcache_io_rdata >> _T_353; // @[Exec.scala 319:32:@1299.24]
  assign _T_361 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1306.24]
  assign _T_362 = _T_354[7:0]; // @[Exec.scala 329:40:@1308.26]
  assign _T_363 = $signed(_T_362); // @[Exec.scala 329:47:@1309.26]
  assign _T_365 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1313.26]
  assign _T_366 = _T_354[15:0]; // @[Exec.scala 333:40:@1315.28]
  assign _T_367 = $signed(_T_366); // @[Exec.scala 333:48:@1316.28]
  assign _T_369 = 3'h2 == current_instr_funct3; // @[Conditional.scala 37:30:@1320.28]
  assign _T_370 = _T_354[31:0]; // @[Exec.scala 337:40:@1322.30]
  assign _T_371 = $signed(_T_370); // @[Exec.scala 337:48:@1323.30]
  assign _GEN_65 = _T_371; // @[Conditional.scala 39:67:@1321.28]
  assign _GEN_67 = _T_185 ? $signed({{16{_T_367[15]}},_T_367}) : $signed(_T_371); // @[Conditional.scala 39:67:@1314.26]
  assign _GEN_69 = _T_178 ? $signed({{24{_T_363[7]}},_T_363}) : $signed(_GEN_67); // @[Conditional.scala 40:58:@1307.24]
  assign _T_358 = {{32{_GEN_69[31]}},_GEN_69}; // @[Exec.scala 321:36:@1301.24 Exec.scala 329:30:@1310.26 Exec.scala 333:30:@1317.28 Exec.scala 337:30:@1324.30]
  assign _T_359 = $unsigned(_T_358); // @[Exec.scala 324:36:@1303.24]
  assign _T_373 = 3'h3 == current_instr_funct3; // @[Conditional.scala 37:30:@1327.30]
  assign _T_375 = 3'h4 == current_instr_funct3; // @[Conditional.scala 37:30:@1332.32]
  assign _T_376 = _T_354[7:0]; // @[Exec.scala 345:34:@1334.34]
  assign _T_378 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1338.34]
  assign _T_379 = _T_354[16:0]; // @[Exec.scala 349:34:@1340.36]
  assign _T_381 = 3'h6 == current_instr_funct3; // @[Conditional.scala 37:30:@1344.36]
  assign _T_382 = _T_354[32:0]; // @[Exec.scala 353:34:@1346.38]
  assign _GEN_61 = _T_214 ? {{31'd0}, _T_382} : _T_359; // @[Conditional.scala 39:67:@1345.36]
  assign _GEN_62 = _T_205 ? {{47'd0}, _T_379} : _GEN_61; // @[Conditional.scala 39:67:@1339.34]
  assign _GEN_63 = _T_201 ? {{56'd0}, _T_362} : _GEN_62; // @[Conditional.scala 39:67:@1333.32]
  assign _GEN_64 = _T_195 ? _T_354 : _GEN_63; // @[Conditional.scala 39:67:@1328.30]
  assign _GEN_66 = _T_189 ? _T_359 : _GEN_64; // @[Conditional.scala 39:67:@1321.28]
  assign _GEN_68 = _T_185 ? _T_359 : _GEN_66; // @[Conditional.scala 39:67:@1314.26]
  assign _GEN_70 = _T_178 ? _T_359 : _GEN_68; // @[Conditional.scala 40:58:@1307.24]
  assign _GEN_71 = _T_384 ? current_instr_rd : 5'h0; // @[Exec.scala 357:36:@1350.24]
  assign _T_356 = _GEN_70; // @[Exec.scala 320:30:@1300.24 Exec.scala 324:20:@1304.24 Exec.scala 341:24:@1329.32 Exec.scala 345:24:@1335.34 Exec.scala 349:24:@1341.36 Exec.scala 353:24:@1347.38]
  assign _GEN_73 = lsState ? _GEN_70 : 64'h0; // @[Conditional.scala 39:67:@1296.22]
  assign _GEN_74 = lsState ? _GEN_71 : 5'h0; // @[Conditional.scala 39:67:@1296.22]
  assign _GEN_76 = _T_343 ? _T_346 : {{16'd0}, lsAddr}; // @[Conditional.scala 40:58:@1283.20]
  assign _GEN_77 = _T_348; // @[Conditional.scala 40:58:@1283.20]
  assign _GEN_78 = _T_343; // @[Conditional.scala 40:58:@1283.20]
  assign _GEN_80 = _T_343 ? 64'h0 : _GEN_73; // @[Conditional.scala 40:58:@1283.20]
  assign _GEN_81 = _T_343 ? 5'h0 : _GEN_74; // @[Conditional.scala 40:58:@1283.20]
  assign _T_387 = $unsigned(current_instr_imm); // @[Exec.scala 374:61:@1361.24]
  assign _GEN_218 = {{32'd0}, _T_344}; // @[Exec.scala 374:41:@1362.24]
  assign _T_388 = readRs1 + _GEN_215; // @[Exec.scala 374:41:@1362.24]
  assign _T_389 = readRs1 + _GEN_215; // @[Exec.scala 374:41:@1363.24]
  assign _T_390 = _T_346[2:0]; // @[Exec.scala 375:44:@1364.24]
  assign _T_391 = _T_346[63:3]; // @[Exec.scala 377:46:@1366.24]
  assign _GEN_219 = {{3'd0}, _T_347}; // @[Exec.scala 377:52:@1367.24]
  assign _T_392 = _GEN_216 << 3; // @[Exec.scala 377:52:@1367.24]
  assign _GEN_220 = {{1'd0}, _T_390}; // @[Exec.scala 389:56:@1372.24]
  assign _T_398 = _GEN_220 * 4'h8; // @[Exec.scala 389:56:@1372.24]
  assign _GEN_221 = {{127'd0}, readRs2}; // @[Exec.scala 389:40:@1373.24]
  assign _T_399 = _GEN_221 << _T_398; // @[Exec.scala 389:40:@1373.24]
  assign _T_402 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1377.24]
  assign _T_405 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1382.26]
  assign _T_408 = 3'h2 == current_instr_funct3; // @[Conditional.scala 37:30:@1387.28]
  assign _T_411 = 3'h3 == current_instr_funct3; // @[Conditional.scala 37:30:@1392.30]
  assign _GEN_82 = _T_195 ? 8'hff : 8'h0; // @[Conditional.scala 39:67:@1393.30]
  assign _GEN_83 = _T_189 ? 8'hf : _GEN_82; // @[Conditional.scala 39:67:@1388.28]
  assign _GEN_84 = _T_185 ? 8'h3 : _GEN_83; // @[Conditional.scala 39:67:@1383.26]
  assign _GEN_85 = _T_178 ? 8'h1 : _GEN_84; // @[Conditional.scala 40:58:@1378.24]
  assign _T_395 = _GEN_85; // @[Exec.scala 380:32:@1370.24 Exec.scala 381:22:@1371.24 Exec.scala 393:55:@1379.26 Exec.scala 394:55:@1384.28 Exec.scala 395:55:@1389.30 Exec.scala 396:55:@1394.32]
  assign _GEN_222 = {{7'd0}, _GEN_85}; // @[Exec.scala 390:38:@1375.24]
  assign _T_400 = _GEN_222 << _T_390; // @[Exec.scala 390:38:@1375.24]
  assign _GEN_88 = _T_343 ? _T_346 : {{16'd0}, lsAddr}; // @[Conditional.scala 40:58:@1360.22]
  assign _GEN_89 = _T_348; // @[Conditional.scala 40:58:@1360.22]
  assign _GEN_90 = _T_343; // @[Conditional.scala 40:58:@1360.22]
  assign _GEN_91 = _T_399; // @[Conditional.scala 40:58:@1360.22]
  assign _GEN_92 = _T_400; // @[Conditional.scala 40:58:@1360.22]
  assign _T_416 = 5'h1b == current_instr_op; // @[Conditional.scala 37:30:@1408.22]
  assign _T_418 = current_addr + 48'h4; // @[Exec.scala 413:35:@1410.24]
  assign _T_419 = current_addr + 48'h4; // @[Exec.scala 413:35:@1411.24]
  assign _T_420 = $signed(current_addr); // @[Exec.scala 414:53:@1412.24]
  assign _GEN_223 = {{16{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 414:38:@1413.24]
  assign _T_421 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 414:38:@1413.24]
  assign _T_422 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 414:38:@1414.24]
  assign _T_423 = $signed(_T_339); // @[Exec.scala 414:38:@1415.24]
  assign _T_425 = $unsigned(_T_340); // @[Exec.scala 416:34:@1417.24]
  assign _T_426 = 5'h19 == current_instr_op; // @[Conditional.scala 37:30:@1423.24]
  assign _T_428 = current_addr + 48'h4; // @[Exec.scala 423:35:@1425.26]
  assign _T_429 = current_addr + 48'h4; // @[Exec.scala 423:35:@1426.26]
  assign _T_430 = $signed(readRs1); // @[Exec.scala 424:30:@1427.26]
  assign _GEN_224 = {{32{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 424:37:@1428.26]
  assign _T_431 = $signed(_T_179) + $signed(_T_176); // @[Exec.scala 424:37:@1428.26]
  assign _T_432 = $signed(_T_179) + $signed(_T_176); // @[Exec.scala 424:37:@1429.26]
  assign _T_433 = $signed(_T_231); // @[Exec.scala 424:37:@1430.26]
  assign _T_434 = _T_232[63:1]; // @[Exec.scala 424:58:@1431.26]
  assign _GEN_225 = {{1{_T_434[62]}},_T_434}; // @[Exec.scala 424:64:@1432.26]
  assign _T_435 = $signed(_GEN_225) << 1; // @[Exec.scala 424:64:@1432.26]
  assign _T_437 = $unsigned(_T_435); // @[Exec.scala 427:34:@1434.26]
  assign _T_438 = 5'h18 == current_instr_op; // @[Conditional.scala 37:30:@1440.26]
  assign _T_442 = $signed(readRs1); // @[Exec.scala 437:32:@1444.28]
  assign _T_443 = $signed(readRs2); // @[Exec.scala 438:32:@1445.28]
  assign _T_445 = 3'h0 == current_instr_funct3; // @[Conditional.scala 37:30:@1446.28]
  assign _T_446 = readRs1 == readRs2; // @[Exec.scala 441:31:@1448.30]
  assign _T_448 = 3'h1 == current_instr_funct3; // @[Conditional.scala 37:30:@1452.30]
  assign _T_449 = readRs1 != readRs2; // @[Exec.scala 445:31:@1454.32]
  assign _T_451 = 3'h4 == current_instr_funct3; // @[Conditional.scala 37:30:@1458.32]
  assign _T_452 = $signed(_T_179) < $signed(_T_270); // @[Exec.scala 449:32:@1460.34]
  assign _T_454 = 3'h5 == current_instr_funct3; // @[Conditional.scala 37:30:@1464.34]
  assign _T_455 = $signed(_T_179) > $signed(_T_270); // @[Exec.scala 453:32:@1466.36]
  assign _T_457 = 3'h6 == current_instr_funct3; // @[Conditional.scala 37:30:@1470.36]
  assign _T_458 = readRs1 < readRs2; // @[Exec.scala 457:31:@1472.38]
  assign _T_460 = 3'h7 == current_instr_funct3; // @[Conditional.scala 37:30:@1476.38]
  assign _T_461 = readRs1 > readRs2; // @[Exec.scala 461:31:@1478.40]
  assign _GEN_94 = _T_218 ? _T_461 : 1'h0; // @[Conditional.scala 39:67:@1477.38]
  assign _GEN_95 = _T_214 ? _T_276 : _GEN_94; // @[Conditional.scala 39:67:@1471.36]
  assign _GEN_96 = _T_205 ? _T_455 : _GEN_95; // @[Conditional.scala 39:67:@1465.34]
  assign _GEN_97 = _T_201 ? _T_271 : _GEN_96; // @[Conditional.scala 39:67:@1459.32]
  assign _GEN_98 = _T_185 ? _T_449 : _GEN_97; // @[Conditional.scala 39:67:@1453.30]
  assign _GEN_99 = _T_178 ? _T_446 : _GEN_98; // @[Conditional.scala 40:58:@1447.28]
  assign _T_462 = $signed(current_addr); // @[Exec.scala 466:63:@1482.28]
  assign _GEN_226 = {{16{current_instr_imm[31]}},current_instr_imm}; // @[Exec.scala 466:48:@1483.28]
  assign _T_463 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 466:48:@1483.28]
  assign _T_464 = $signed(_GEN_214) + $signed(_T_337); // @[Exec.scala 466:48:@1484.28]
  assign _T_465 = $signed(_T_339); // @[Exec.scala 466:48:@1485.28]
  assign _T_466 = $unsigned(_T_340); // @[Exec.scala 466:71:@1486.28]
  assign _T_440 = _GEN_99; // @[Exec.scala 434:26:@1442.28 Exec.scala 435:16:@1443.28 Exec.scala 441:20:@1449.30 Exec.scala 445:20:@1455.32 Exec.scala 449:20:@1461.34 Exec.scala 453:20:@1467.36 Exec.scala 457:20:@1473.38 Exec.scala 461:20:@1479.40]
  assign _T_123_branch = 1'h0; // @[Exec.scala 30:28:@792.4 Exec.scala 30:28:@798.4]
  assign _GEN_100 = _T_438 ? _GEN_99 : 1'h0; // @[Conditional.scala 39:67:@1441.26]
  assign _T_123_target = 48'h0; // @[Exec.scala 30:28:@792.4 Exec.scala 30:28:@796.4]
  assign _GEN_101 = _T_438 ? _T_425 : 48'h0; // @[Conditional.scala 39:67:@1441.26]
  assign _GEN_102 = _T_426 ? 1'h1 : _GEN_100; // @[Conditional.scala 39:67:@1424.24]
  assign _GEN_103 = _T_426 ? _T_437 : {{16'd0}, _GEN_101}; // @[Conditional.scala 39:67:@1424.24]
  assign _GEN_104 = _T_426 ? current_instr_rd : 5'h0; // @[Conditional.scala 39:67:@1424.24]
  assign _GEN_105 = _T_426 ? _T_419 : 48'h0; // @[Conditional.scala 39:67:@1424.24]
  assign _GEN_106 = _T_416 ? 1'h1 : _GEN_102; // @[Conditional.scala 39:67:@1409.22]
  assign _GEN_107 = _T_416 ? {{16'd0}, _T_425} : _GEN_103; // @[Conditional.scala 39:67:@1409.22]
  assign _GEN_108 = _T_416 ? current_instr_rd : _GEN_104; // @[Conditional.scala 39:67:@1409.22]
  assign _GEN_109 = _T_416 ? _T_419 : _GEN_105; // @[Conditional.scala 39:67:@1409.22]
  assign _GEN_110 = _T_385 ? _GEN_76 : {{16'd0}, lsAddr}; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_111 = _T_348; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_112 = _T_385 ? _T_343 : 1'h0; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_113 = _T_399; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_114 = _T_400; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_116 = _T_385 ? 1'h0 : _GEN_106; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_117 = _T_385 ? 64'h0 : _GEN_107; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_118 = _T_385 ? 5'h0 : _GEN_108; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_119 = _T_385 ? 48'h0 : _GEN_109; // @[Conditional.scala 39:67:@1358.20]
  assign _GEN_120 = _T_342 ? _GEN_76 : _GEN_110; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_121 = _T_342 ? _T_348 : _T_348; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_122 = _T_342 ? _T_343 : 1'h0; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_124 = _T_342 ? _GEN_80 : {{16'd0}, _GEN_119}; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_125 = _T_342 ? _GEN_81 : _GEN_118; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_126 = _T_342 ? 1'h0 : _GEN_112; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_127 = _T_399; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_128 = _T_400; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_129 = _T_342 ? 1'h0 : _GEN_116; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_130 = _T_342 ? 64'h0 : _GEN_117; // @[Conditional.scala 39:67:@1281.18]
  assign _GEN_131 = _T_334 ? current_instr_rd : _GEN_125; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_132 = _T_334 ? _T_341 : _GEN_124; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_133 = _T_334 ? {{16'd0}, lsAddr} : _GEN_120; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_134 = _GEN_121; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_135 = _T_334 ? 1'h0 : _GEN_122; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_137 = _T_334 ? 1'h0 : _GEN_126; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_138 = _T_399; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_139 = _T_400; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_140 = _T_334 ? 1'h0 : _GEN_129; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_141 = _T_334 ? 64'h0 : _GEN_130; // @[Conditional.scala 39:67:@1268.16]
  assign _GEN_142 = _T_330 ? current_instr_rd : _GEN_131; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_143 = _T_330 ? _T_196 : _GEN_132; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_144 = _T_330 ? {{16'd0}, lsAddr} : _GEN_133; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_145 = _GEN_121; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_146 = _T_330 ? 1'h0 : _GEN_135; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_148 = _T_330 ? 1'h0 : _GEN_137; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_149 = _T_399; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_150 = _T_400; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_151 = _T_330 ? 1'h0 : _GEN_140; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_152 = _T_330 ? 64'h0 : _GEN_141; // @[Conditional.scala 39:67:@1259.14]
  assign _GEN_153 = _T_297 ? _GEN_25 : _GEN_142; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_154 = _T_297 ? _T_329 : _GEN_143; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_155 = _T_297 ? {{16'd0}, lsAddr} : _GEN_144; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_156 = _GEN_121; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_157 = _T_297 ? 1'h0 : _GEN_146; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_159 = _T_297 ? 1'h0 : _GEN_148; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_160 = _T_399; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_161 = _T_400; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_162 = _T_297 ? 1'h0 : _GEN_151; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_163 = _T_297 ? 64'h0 : _GEN_152; // @[Conditional.scala 39:67:@1203.12]
  assign _GEN_164 = _T_252 ? _GEN_25 : _GEN_153; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_165 = _T_252 ? _GEN_54 : {{63'd0}, _GEN_154}; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_166 = _T_252 ? {{16'd0}, lsAddr} : _GEN_155; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_167 = _GEN_121; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_168 = _T_252 ? 1'h0 : _GEN_157; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_170 = _T_252 ? 1'h0 : _GEN_159; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_171 = _T_399; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_172 = _T_400; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_173 = _T_252 ? 1'h0 : _GEN_162; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_174 = _T_252 ? 64'h0 : _GEN_163; // @[Conditional.scala 39:67:@1114.10]
  assign _GEN_175 = _T_221 ? _GEN_25 : _GEN_164; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_176 = _T_221 ? {{63'd0}, _T_251} : _GEN_165; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_177 = _T_221 ? {{16'd0}, lsAddr} : _GEN_166; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_178 = _GEN_121; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_179 = _T_221 ? 1'h0 : _GEN_168; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_181 = _T_221 ? 1'h0 : _GEN_170; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_182 = _T_399; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_183 = _T_400; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_184 = _T_221 ? 1'h0 : _GEN_173; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_185 = _T_221 ? 64'h0 : _GEN_174; // @[Conditional.scala 39:67:@1065.8]
  assign _GEN_186 = _T_172 ? _GEN_25 : _GEN_175; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_187 = _T_172 ? {{32'd0}, _GEN_36} : _GEN_176; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_188 = _T_172 ? {{16'd0}, lsAddr} : _GEN_177; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_189 = _GEN_121; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_190 = _T_172 ? 1'h0 : _GEN_179; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_192 = _T_172 ? 1'h0 : _GEN_181; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_193 = _T_399; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_194 = _T_400; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_195 = _T_172 ? 1'h0 : _GEN_184; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_196 = _T_172 ? 64'h0 : _GEN_185; // @[Conditional.scala 40:58:@977.6]
  assign _GEN_197 = _T_171 ? _GEN_186 : 5'h0; // @[Exec.scala 87:25:@975.4]
  assign _GEN_198 = _T_171 ? _GEN_187 : 127'h0; // @[Exec.scala 87:25:@975.4]
  assign _GEN_199 = _T_171 ? _GEN_188 : {{16'd0}, lsAddr}; // @[Exec.scala 87:25:@975.4]
  assign _GEN_200 = _GEN_121; // @[Exec.scala 87:25:@975.4]
  assign _GEN_201 = _T_171 ? _GEN_190 : 1'h0; // @[Exec.scala 87:25:@975.4]
  assign _GEN_203 = _T_171 ? _GEN_192 : 1'h0; // @[Exec.scala 87:25:@975.4]
  assign _GEN_204 = _T_399; // @[Exec.scala 87:25:@975.4]
  assign _GEN_205 = _T_400; // @[Exec.scala 87:25:@975.4]
  assign _GEN_206 = _T_171 ? _GEN_195 : 1'h0; // @[Exec.scala 87:25:@975.4]
  assign _GEN_207 = _T_171 ? _GEN_196 : 64'h0; // @[Exec.scala 87:25:@975.4]
  assign io_regReaders_0_addr = io_instr_instr_rs1; // @[Exec.scala 59:25:@926.4]
  assign io_regReaders_1_addr = io_instr_instr_rs2; // @[Exec.scala 60:25:@927.4]
  assign io_regWriter_addr = _T_171 ? _GEN_186 : 5'h0; // @[Exec.scala 31:21:@801.4 Exec.scala 94:29:@980.10 Exec.scala 149:29:@1068.12 Exec.scala 187:29:@1117.14 Exec.scala 249:29:@1206.16 Exec.scala 290:27:@1260.16 Exec.scala 297:27:@1269.18 Exec.scala 364:33:@1351.26 Exec.scala 418:27:@1419.24 Exec.scala 429:27:@1436.26]
  assign io_regWriter_data = _GEN_198[63:0]; // @[Exec.scala 32:21:@802.4 Exec.scala 101:31:@991.10 Exec.scala 104:31:@998.12 Exec.scala 109:33:@1006.16 Exec.scala 111:33:@1009.16 Exec.scala 117:33:@1018.18 Exec.scala 119:33:@1021.18 Exec.scala 124:31:@1029.18 Exec.scala 130:33:@1040.22 Exec.scala 133:33:@1045.22 Exec.scala 138:31:@1053.22 Exec.scala 142:31:@1060.24 Exec.scala 182:27:@1110.10 Exec.scala 195:33:@1126.16 Exec.scala 198:33:@1131.16 Exec.scala 203:31:@1139.16 Exec.scala 208:33:@1148.20 Exec.scala 210:33:@1151.20 Exec.scala 216:33:@1159.22 Exec.scala 218:33:@1162.22 Exec.scala 223:31:@1169.22 Exec.scala 231:33:@1180.26 Exec.scala 233:33:@1185.26 Exec.scala 238:31:@1192.26 Exec.scala 242:31:@1198.28 Exec.scala 284:27:@1255.14 Exec.scala 293:27:@1264.16 Exec.scala 301:27:@1277.18 Exec.scala 325:31:@1305.24 Exec.scala 419:27:@1420.24 Exec.scala 430:27:@1437.26]
  assign io_axi_AWID = 4'h0; // @[Exec.scala 36:17:@888.4]
  assign io_axi_AWADDR = dcache_io_axi_AWADDR; // @[Exec.scala 36:17:@887.4]
  assign io_axi_AWLEN = 8'h1; // @[Exec.scala 36:17:@886.4]
  assign io_axi_AWSIZE = 3'h6; // @[Exec.scala 36:17:@885.4]
  assign io_axi_AWBURST = 2'h1; // @[Exec.scala 36:17:@884.4]
  assign io_axi_AWCACHE = 4'h0; // @[Exec.scala 36:17:@883.4]
  assign io_axi_AWPROT = 3'h0; // @[Exec.scala 36:17:@882.4]
  assign io_axi_AWQOS = 3'h0; // @[Exec.scala 36:17:@881.4]
  assign io_axi_AWREGION = 4'h0; // @[Exec.scala 36:17:@880.4]
  assign io_axi_AWVALID = dcache_io_axi_AWVALID; // @[Exec.scala 36:17:@879.4]
  assign io_axi_WDATA = dcache_io_axi_WDATA; // @[Exec.scala 36:17:@877.4]
  assign io_axi_WSTRB = dcache_io_axi_WSTRB; // @[Exec.scala 36:17:@876.4]
  assign io_axi_WLAST = dcache_io_axi_WLAST; // @[Exec.scala 36:17:@875.4]
  assign io_axi_WVALID = dcache_io_axi_WVALID; // @[Exec.scala 36:17:@874.4]
  assign io_axi_BREADY = dcache_io_axi_BREADY; // @[Exec.scala 36:17:@869.4]
  assign io_axi_ARID = 4'h0; // @[Exec.scala 36:17:@868.4]
  assign io_axi_ARADDR = dcache_io_axi_ARADDR; // @[Exec.scala 36:17:@867.4]
  assign io_axi_ARLEN = 8'h1; // @[Exec.scala 36:17:@866.4]
  assign io_axi_ARSIZE = 3'h6; // @[Exec.scala 36:17:@865.4]
  assign io_axi_ARBURST = 2'h1; // @[Exec.scala 36:17:@864.4]
  assign io_axi_ARCACHE = 4'h0; // @[Exec.scala 36:17:@863.4]
  assign io_axi_ARPROT = 3'h0; // @[Exec.scala 36:17:@862.4]
  assign io_axi_ARQOS = 3'h0; // @[Exec.scala 36:17:@861.4]
  assign io_axi_ARREGION = 4'h0; // @[Exec.scala 36:17:@860.4]
  assign io_axi_ARVALID = dcache_io_axi_ARVALID; // @[Exec.scala 36:17:@859.4]
  assign io_axi_RREADY = dcache_io_axi_RREADY; // @[Exec.scala 36:17:@852.4]
  assign io_ctrl_stall = _T_171 & lsNextState; // @[Exec.scala 85:17:@973.4]
  assign io_branch_branch = _T_171 ? _GEN_195 : 1'h0; // @[Exec.scala 30:13:@800.4 Exec.scala 415:26:@1416.24 Exec.scala 426:26:@1433.26 Exec.scala 465:26:@1481.28]
  assign io_branch_target = _GEN_207[47:0]; // @[Exec.scala 30:13:@799.4 Exec.scala 416:26:@1418.24 Exec.scala 427:26:@1435.26 Exec.scala 466:26:@1487.28]
  assign dcache_clock = clock; // @[:@804.4]
  assign dcache_reset = reset; // @[:@805.4]
  assign dcache_io_addr = _GEN_121[47:0]; // @[Exec.scala 311:28:@1290.22 Exec.scala 377:28:@1368.24]
  assign dcache_io_read = _T_171 ? _GEN_190 : 1'h0; // @[Exec.scala 39:18:@890.4 Exec.scala 312:28:@1291.22]
  assign dcache_io_write = _T_171 ? _GEN_192 : 1'h0; // @[Exec.scala 40:19:@891.4 Exec.scala 378:29:@1369.24]
  assign dcache_io_wdata = _T_399[63:0]; // @[Exec.scala 389:29:@1374.24]
  assign dcache_io_be = _T_400[7:0]; // @[Exec.scala 390:26:@1376.24]
  assign dcache_io_axi_AWREADY = io_axi_AWREADY; // @[Exec.scala 36:17:@878.4]
  assign dcache_io_axi_WREADY = io_axi_WREADY; // @[Exec.scala 36:17:@873.4]
  assign dcache_io_axi_BID = io_axi_BID; // @[Exec.scala 36:17:@872.4]
  assign dcache_io_axi_BRESP = io_axi_BRESP; // @[Exec.scala 36:17:@871.4]
  assign dcache_io_axi_BVALID = io_axi_BVALID; // @[Exec.scala 36:17:@870.4]
  assign dcache_io_axi_ARREADY = io_axi_ARREADY; // @[Exec.scala 36:17:@858.4]
  assign dcache_io_axi_RID = io_axi_RID; // @[Exec.scala 36:17:@857.4]
  assign dcache_io_axi_RDATA = io_axi_RDATA; // @[Exec.scala 36:17:@856.4]
  assign dcache_io_axi_RRESP = io_axi_RRESP; // @[Exec.scala 36:17:@855.4]
  assign dcache_io_axi_RLAST = io_axi_RLAST; // @[Exec.scala 36:17:@854.4]
  assign dcache_io_axi_RVALID = io_axi_RVALID; // @[Exec.scala 36:17:@853.4]
  assign dcache_io_pause = 1'h0; // @[Exec.scala 37:19:@889.4]
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
  _RAND_0 = {2{`RANDOM}};
  current_addr = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  current_instr_op = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  current_instr_base = _RAND_2[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  current_instr_imm = _RAND_3[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  current_instr_rs1 = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  current_instr_rs2 = _RAND_5[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  current_instr_rd = _RAND_6[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  current_instr_funct7 = _RAND_7[6:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  current_instr_funct3 = _RAND_8[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  current_vacant = _RAND_9[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  readRs1 = _RAND_10[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  readRs2 = _RAND_11[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  lsState = _RAND_12[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  lsAddr = _RAND_13[47:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      current_addr <= 48'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_addr <= io_instr_addr;
        end else begin
          current_addr <= 48'h0;
        end
      end
    end
    if (reset) begin
      current_instr_op <= 5'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_op <= io_instr_instr_op;
        end else begin
          current_instr_op <= 5'h0;
        end
      end
    end
    if (reset) begin
      current_instr_base <= 3'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_base <= io_instr_instr_base;
        end else begin
          current_instr_base <= 3'h0;
        end
      end
    end
    if (reset) begin
      current_instr_imm <= 32'sh0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_imm <= io_instr_instr_imm;
        end else begin
          current_instr_imm <= 32'sh0;
        end
      end
    end
    if (reset) begin
      current_instr_rs1 <= 5'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_rs1 <= io_instr_instr_rs1;
        end else begin
          current_instr_rs1 <= 5'h0;
        end
      end
    end
    if (reset) begin
      current_instr_rs2 <= 5'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_rs2 <= io_instr_instr_rs2;
        end else begin
          current_instr_rs2 <= 5'h0;
        end
      end
    end
    if (reset) begin
      current_instr_rd <= 5'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_rd <= io_instr_instr_rd;
        end else begin
          current_instr_rd <= 5'h0;
        end
      end
    end
    if (reset) begin
      current_instr_funct7 <= 7'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_funct7 <= io_instr_instr_funct7;
        end else begin
          current_instr_funct7 <= 7'h0;
        end
      end
    end
    if (reset) begin
      current_instr_funct3 <= 3'h0;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_instr_funct3 <= io_instr_instr_funct3;
        end else begin
          current_instr_funct3 <= 3'h0;
        end
      end
    end
    if (reset) begin
      current_vacant <= 1'h1;
    end else begin
      if (_T_156) begin
        if (_T_158) begin
          current_vacant <= io_instr_vacant;
        end else begin
          current_vacant <= 1'h1;
        end
      end
    end
    if (_T_156) begin
      if (_T_158) begin
        readRs1 <= io_regReaders_0_data;
      end
    end
    if (_T_156) begin
      if (_T_158) begin
        readRs2 <= io_regReaders_1_data;
      end
    end
    if (reset) begin
      lsState <= 1'h0;
    end else begin
      if (_T_165) begin
        if (_T_171) begin
          if (!(_T_172)) begin
            if (!(_T_221)) begin
              if (!(_T_252)) begin
                if (!(_T_297)) begin
                  if (!(_T_330)) begin
                    if (!(_T_334)) begin
                      if (_T_342) begin
                        if (_T_343) begin
                          lsState <= 1'h1;
                        end else begin
                          if (lsState) begin
                            if (_T_384) begin
                              lsState <= 1'h0;
                            end
                          end
                        end
                      end else begin
                        if (_T_385) begin
                          if (_T_343) begin
                            lsState <= 1'h1;
                          end else begin
                            if (lsState) begin
                              if (_T_384) begin
                                lsState <= 1'h0;
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
          end
        end
      end
    end
    lsAddr <= _GEN_199[47:0];
  end
endmodule
module RegFile( // @[:@1493.2]
  input         clock, // @[:@1494.4]
  input         reset, // @[:@1495.4]
  input  [4:0]  io_reads_0_addr, // @[:@1496.4]
  output [63:0] io_reads_0_data, // @[:@1496.4]
  input  [4:0]  io_reads_1_addr, // @[:@1496.4]
  output [63:0] io_reads_1_data, // @[:@1496.4]
  input  [4:0]  io_write_addr, // @[:@1496.4]
  input  [63:0] io_write_data // @[:@1496.4]
);
  reg [63:0] regs_0; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_0;
  reg [63:0] regs_1; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_1;
  reg [63:0] regs_2; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_2;
  reg [63:0] regs_3; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_3;
  reg [63:0] regs_4; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_4;
  reg [63:0] regs_5; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_5;
  reg [63:0] regs_6; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_6;
  reg [63:0] regs_7; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_7;
  reg [63:0] regs_8; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_8;
  reg [63:0] regs_9; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_9;
  reg [63:0] regs_10; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_10;
  reg [63:0] regs_11; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_11;
  reg [63:0] regs_12; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_12;
  reg [63:0] regs_13; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_13;
  reg [63:0] regs_14; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_14;
  reg [63:0] regs_15; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_15;
  reg [63:0] regs_16; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_16;
  reg [63:0] regs_17; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_17;
  reg [63:0] regs_18; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_18;
  reg [63:0] regs_19; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_19;
  reg [63:0] regs_20; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_20;
  reg [63:0] regs_21; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_21;
  reg [63:0] regs_22; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_22;
  reg [63:0] regs_23; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_23;
  reg [63:0] regs_24; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_24;
  reg [63:0] regs_25; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_25;
  reg [63:0] regs_26; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_26;
  reg [63:0] regs_27; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_27;
  reg [63:0] regs_28; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_28;
  reg [63:0] regs_29; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_29;
  reg [63:0] regs_30; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_30;
  reg [63:0] regs_31; // @[RegFile.scala 24:21:@1531.4]
  reg [63:0] _RAND_31;
  wire  _T_280; // @[RegFile.scala 27:27:@1532.4]
  wire  _T_282; // @[RegFile.scala 29:33:@1537.6]
  wire [63:0] _GEN_0; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_1; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_2; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_3; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_4; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_5; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_6; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_7; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_8; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_9; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_10; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_11; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_12; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_13; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_14; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_15; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_16; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_17; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_18; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_19; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_20; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_21; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_22; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_23; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_24; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_25; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_26; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_27; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_28; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_29; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_30; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_31; // @[RegFile.scala 32:24:@1542.8]
  wire [63:0] _regs_io_reads_0_addr; // @[RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8]
  wire [63:0] _GEN_32; // @[RegFile.scala 29:52:@1538.6]
  wire [63:0] _GEN_33; // @[RegFile.scala 27:36:@1533.4]
  wire  _T_287; // @[RegFile.scala 27:27:@1544.4]
  wire  _T_289; // @[RegFile.scala 29:33:@1549.6]
  wire [63:0] _GEN_34; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_35; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_36; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_37; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_38; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_39; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_40; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_41; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_42; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_43; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_44; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_45; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_46; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_47; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_48; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_49; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_50; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_51; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_52; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_53; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_54; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_55; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_56; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_57; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_58; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_59; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_60; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_61; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_62; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_63; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_64; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_65; // @[RegFile.scala 32:24:@1554.8]
  wire [63:0] _regs_io_reads_1_addr; // @[RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8]
  wire [63:0] _GEN_66; // @[RegFile.scala 29:52:@1550.6]
  wire [63:0] _GEN_67; // @[RegFile.scala 27:36:@1545.4]
  wire  _T_294; // @[RegFile.scala 36:22:@1556.4]
  wire [63:0] _regs_io_write_addr; // @[RegFile.scala 37:25:@1558.6 RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_68; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_69; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_70; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_71; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_72; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_73; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_74; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_75; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_76; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_77; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_78; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_79; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_80; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_81; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_82; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_83; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_84; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_85; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_86; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_87; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_88; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_89; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_90; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_91; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_92; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_93; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_94; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_95; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_96; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_97; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_98; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_99; // @[RegFile.scala 37:25:@1558.6]
  wire [63:0] _GEN_100; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_101; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_102; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_103; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_104; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_105; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_106; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_107; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_108; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_109; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_110; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_111; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_112; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_113; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_114; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_115; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_116; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_117; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_118; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_119; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_120; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_121; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_122; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_123; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_124; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_125; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_126; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_127; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_128; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_129; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_130; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _GEN_131; // @[RegFile.scala 36:31:@1557.4]
  wire [63:0] _T_76_0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1499.4]
  wire [63:0] _T_76_1; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1500.4]
  wire [63:0] _T_76_2; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1501.4]
  wire [63:0] _T_76_3; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1502.4]
  wire [63:0] _T_76_4; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1503.4]
  wire [63:0] _T_76_5; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1504.4]
  wire [63:0] _T_76_6; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1505.4]
  wire [63:0] _T_76_7; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1506.4]
  wire [63:0] _T_76_8; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1507.4]
  wire [63:0] _T_76_9; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1508.4]
  wire [63:0] _T_76_10; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1509.4]
  wire [63:0] _T_76_11; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1510.4]
  wire [63:0] _T_76_12; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1511.4]
  wire [63:0] _T_76_13; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1512.4]
  wire [63:0] _T_76_14; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1513.4]
  wire [63:0] _T_76_15; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1514.4]
  wire [63:0] _T_76_16; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1515.4]
  wire [63:0] _T_76_17; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1516.4]
  wire [63:0] _T_76_18; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1517.4]
  wire [63:0] _T_76_19; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1518.4]
  wire [63:0] _T_76_20; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1519.4]
  wire [63:0] _T_76_21; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1520.4]
  wire [63:0] _T_76_22; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1521.4]
  wire [63:0] _T_76_23; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1522.4]
  wire [63:0] _T_76_24; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1523.4]
  wire [63:0] _T_76_25; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1524.4]
  wire [63:0] _T_76_26; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1525.4]
  wire [63:0] _T_76_27; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1526.4]
  wire [63:0] _T_76_28; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1527.4]
  wire [63:0] _T_76_29; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1528.4]
  wire [63:0] _T_76_30; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1529.4]
  wire [63:0] _T_76_31; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1530.4]
  assign _T_280 = io_reads_0_addr == 5'h0; // @[RegFile.scala 27:27:@1532.4]
  assign _T_282 = io_reads_0_addr == io_write_addr; // @[RegFile.scala 29:33:@1537.6]
  assign _GEN_0 = regs_0; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_1 = 5'h1 == io_reads_0_addr ? regs_1 : regs_0; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_2 = 5'h2 == io_reads_0_addr ? regs_2 : _GEN_1; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_3 = 5'h3 == io_reads_0_addr ? regs_3 : _GEN_2; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_4 = 5'h4 == io_reads_0_addr ? regs_4 : _GEN_3; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_5 = 5'h5 == io_reads_0_addr ? regs_5 : _GEN_4; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_6 = 5'h6 == io_reads_0_addr ? regs_6 : _GEN_5; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_7 = 5'h7 == io_reads_0_addr ? regs_7 : _GEN_6; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_8 = 5'h8 == io_reads_0_addr ? regs_8 : _GEN_7; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_9 = 5'h9 == io_reads_0_addr ? regs_9 : _GEN_8; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_10 = 5'ha == io_reads_0_addr ? regs_10 : _GEN_9; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_11 = 5'hb == io_reads_0_addr ? regs_11 : _GEN_10; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_12 = 5'hc == io_reads_0_addr ? regs_12 : _GEN_11; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_13 = 5'hd == io_reads_0_addr ? regs_13 : _GEN_12; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_14 = 5'he == io_reads_0_addr ? regs_14 : _GEN_13; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_15 = 5'hf == io_reads_0_addr ? regs_15 : _GEN_14; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_16 = 5'h10 == io_reads_0_addr ? regs_16 : _GEN_15; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_17 = 5'h11 == io_reads_0_addr ? regs_17 : _GEN_16; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_18 = 5'h12 == io_reads_0_addr ? regs_18 : _GEN_17; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_19 = 5'h13 == io_reads_0_addr ? regs_19 : _GEN_18; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_20 = 5'h14 == io_reads_0_addr ? regs_20 : _GEN_19; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_21 = 5'h15 == io_reads_0_addr ? regs_21 : _GEN_20; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_22 = 5'h16 == io_reads_0_addr ? regs_22 : _GEN_21; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_23 = 5'h17 == io_reads_0_addr ? regs_23 : _GEN_22; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_24 = 5'h18 == io_reads_0_addr ? regs_24 : _GEN_23; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_25 = 5'h19 == io_reads_0_addr ? regs_25 : _GEN_24; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_26 = 5'h1a == io_reads_0_addr ? regs_26 : _GEN_25; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_27 = 5'h1b == io_reads_0_addr ? regs_27 : _GEN_26; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_28 = 5'h1c == io_reads_0_addr ? regs_28 : _GEN_27; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_29 = 5'h1d == io_reads_0_addr ? regs_29 : _GEN_28; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_30 = 5'h1e == io_reads_0_addr ? regs_30 : _GEN_29; // @[RegFile.scala 32:24:@1542.8]
  assign _GEN_31 = 5'h1f == io_reads_0_addr ? regs_31 : _GEN_30; // @[RegFile.scala 32:24:@1542.8]
  assign _regs_io_reads_0_addr = _GEN_31; // @[RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8 RegFile.scala 32:24:@1542.8]
  assign _GEN_32 = _T_282 ? io_write_data : _GEN_31; // @[RegFile.scala 29:52:@1538.6]
  assign _GEN_33 = _T_280 ? 64'h0 : _GEN_32; // @[RegFile.scala 27:36:@1533.4]
  assign _T_287 = io_reads_1_addr == 5'h0; // @[RegFile.scala 27:27:@1544.4]
  assign _T_289 = io_reads_1_addr == io_write_addr; // @[RegFile.scala 29:33:@1549.6]
  assign _GEN_34 = regs_0; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_35 = 5'h1 == io_reads_1_addr ? regs_1 : regs_0; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_36 = 5'h2 == io_reads_1_addr ? regs_2 : _GEN_35; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_37 = 5'h3 == io_reads_1_addr ? regs_3 : _GEN_36; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_38 = 5'h4 == io_reads_1_addr ? regs_4 : _GEN_37; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_39 = 5'h5 == io_reads_1_addr ? regs_5 : _GEN_38; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_40 = 5'h6 == io_reads_1_addr ? regs_6 : _GEN_39; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_41 = 5'h7 == io_reads_1_addr ? regs_7 : _GEN_40; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_42 = 5'h8 == io_reads_1_addr ? regs_8 : _GEN_41; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_43 = 5'h9 == io_reads_1_addr ? regs_9 : _GEN_42; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_44 = 5'ha == io_reads_1_addr ? regs_10 : _GEN_43; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_45 = 5'hb == io_reads_1_addr ? regs_11 : _GEN_44; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_46 = 5'hc == io_reads_1_addr ? regs_12 : _GEN_45; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_47 = 5'hd == io_reads_1_addr ? regs_13 : _GEN_46; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_48 = 5'he == io_reads_1_addr ? regs_14 : _GEN_47; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_49 = 5'hf == io_reads_1_addr ? regs_15 : _GEN_48; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_50 = 5'h10 == io_reads_1_addr ? regs_16 : _GEN_49; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_51 = 5'h11 == io_reads_1_addr ? regs_17 : _GEN_50; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_52 = 5'h12 == io_reads_1_addr ? regs_18 : _GEN_51; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_53 = 5'h13 == io_reads_1_addr ? regs_19 : _GEN_52; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_54 = 5'h14 == io_reads_1_addr ? regs_20 : _GEN_53; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_55 = 5'h15 == io_reads_1_addr ? regs_21 : _GEN_54; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_56 = 5'h16 == io_reads_1_addr ? regs_22 : _GEN_55; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_57 = 5'h17 == io_reads_1_addr ? regs_23 : _GEN_56; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_58 = 5'h18 == io_reads_1_addr ? regs_24 : _GEN_57; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_59 = 5'h19 == io_reads_1_addr ? regs_25 : _GEN_58; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_60 = 5'h1a == io_reads_1_addr ? regs_26 : _GEN_59; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_61 = 5'h1b == io_reads_1_addr ? regs_27 : _GEN_60; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_62 = 5'h1c == io_reads_1_addr ? regs_28 : _GEN_61; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_63 = 5'h1d == io_reads_1_addr ? regs_29 : _GEN_62; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_64 = 5'h1e == io_reads_1_addr ? regs_30 : _GEN_63; // @[RegFile.scala 32:24:@1554.8]
  assign _GEN_65 = 5'h1f == io_reads_1_addr ? regs_31 : _GEN_64; // @[RegFile.scala 32:24:@1554.8]
  assign _regs_io_reads_1_addr = _GEN_65; // @[RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8 RegFile.scala 32:24:@1554.8]
  assign _GEN_66 = _T_289 ? io_write_data : _GEN_65; // @[RegFile.scala 29:52:@1550.6]
  assign _GEN_67 = _T_287 ? 64'h0 : _GEN_66; // @[RegFile.scala 27:36:@1545.4]
  assign _T_294 = io_write_addr != 5'h0; // @[RegFile.scala 36:22:@1556.4]
  assign _regs_io_write_addr = io_write_data; // @[RegFile.scala 37:25:@1558.6 RegFile.scala 37:25:@1558.6]
  assign _GEN_68 = 5'h0 == io_write_addr ? io_write_data : regs_0; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_69 = 5'h1 == io_write_addr ? io_write_data : regs_1; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_70 = 5'h2 == io_write_addr ? io_write_data : regs_2; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_71 = 5'h3 == io_write_addr ? io_write_data : regs_3; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_72 = 5'h4 == io_write_addr ? io_write_data : regs_4; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_73 = 5'h5 == io_write_addr ? io_write_data : regs_5; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_74 = 5'h6 == io_write_addr ? io_write_data : regs_6; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_75 = 5'h7 == io_write_addr ? io_write_data : regs_7; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_76 = 5'h8 == io_write_addr ? io_write_data : regs_8; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_77 = 5'h9 == io_write_addr ? io_write_data : regs_9; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_78 = 5'ha == io_write_addr ? io_write_data : regs_10; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_79 = 5'hb == io_write_addr ? io_write_data : regs_11; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_80 = 5'hc == io_write_addr ? io_write_data : regs_12; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_81 = 5'hd == io_write_addr ? io_write_data : regs_13; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_82 = 5'he == io_write_addr ? io_write_data : regs_14; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_83 = 5'hf == io_write_addr ? io_write_data : regs_15; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_84 = 5'h10 == io_write_addr ? io_write_data : regs_16; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_85 = 5'h11 == io_write_addr ? io_write_data : regs_17; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_86 = 5'h12 == io_write_addr ? io_write_data : regs_18; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_87 = 5'h13 == io_write_addr ? io_write_data : regs_19; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_88 = 5'h14 == io_write_addr ? io_write_data : regs_20; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_89 = 5'h15 == io_write_addr ? io_write_data : regs_21; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_90 = 5'h16 == io_write_addr ? io_write_data : regs_22; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_91 = 5'h17 == io_write_addr ? io_write_data : regs_23; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_92 = 5'h18 == io_write_addr ? io_write_data : regs_24; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_93 = 5'h19 == io_write_addr ? io_write_data : regs_25; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_94 = 5'h1a == io_write_addr ? io_write_data : regs_26; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_95 = 5'h1b == io_write_addr ? io_write_data : regs_27; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_96 = 5'h1c == io_write_addr ? io_write_data : regs_28; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_97 = 5'h1d == io_write_addr ? io_write_data : regs_29; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_98 = 5'h1e == io_write_addr ? io_write_data : regs_30; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_99 = 5'h1f == io_write_addr ? io_write_data : regs_31; // @[RegFile.scala 37:25:@1558.6]
  assign _GEN_100 = _T_294 ? _GEN_68 : regs_0; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_101 = _T_294 ? _GEN_69 : regs_1; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_102 = _T_294 ? _GEN_70 : regs_2; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_103 = _T_294 ? _GEN_71 : regs_3; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_104 = _T_294 ? _GEN_72 : regs_4; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_105 = _T_294 ? _GEN_73 : regs_5; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_106 = _T_294 ? _GEN_74 : regs_6; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_107 = _T_294 ? _GEN_75 : regs_7; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_108 = _T_294 ? _GEN_76 : regs_8; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_109 = _T_294 ? _GEN_77 : regs_9; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_110 = _T_294 ? _GEN_78 : regs_10; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_111 = _T_294 ? _GEN_79 : regs_11; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_112 = _T_294 ? _GEN_80 : regs_12; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_113 = _T_294 ? _GEN_81 : regs_13; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_114 = _T_294 ? _GEN_82 : regs_14; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_115 = _T_294 ? _GEN_83 : regs_15; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_116 = _T_294 ? _GEN_84 : regs_16; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_117 = _T_294 ? _GEN_85 : regs_17; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_118 = _T_294 ? _GEN_86 : regs_18; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_119 = _T_294 ? _GEN_87 : regs_19; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_120 = _T_294 ? _GEN_88 : regs_20; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_121 = _T_294 ? _GEN_89 : regs_21; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_122 = _T_294 ? _GEN_90 : regs_22; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_123 = _T_294 ? _GEN_91 : regs_23; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_124 = _T_294 ? _GEN_92 : regs_24; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_125 = _T_294 ? _GEN_93 : regs_25; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_126 = _T_294 ? _GEN_94 : regs_26; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_127 = _T_294 ? _GEN_95 : regs_27; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_128 = _T_294 ? _GEN_96 : regs_28; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_129 = _T_294 ? _GEN_97 : regs_29; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_130 = _T_294 ? _GEN_98 : regs_30; // @[RegFile.scala 36:31:@1557.4]
  assign _GEN_131 = _T_294 ? _GEN_99 : regs_31; // @[RegFile.scala 36:31:@1557.4]
  assign _T_76_0 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1499.4]
  assign _T_76_1 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1500.4]
  assign _T_76_2 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1501.4]
  assign _T_76_3 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1502.4]
  assign _T_76_4 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1503.4]
  assign _T_76_5 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1504.4]
  assign _T_76_6 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1505.4]
  assign _T_76_7 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1506.4]
  assign _T_76_8 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1507.4]
  assign _T_76_9 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1508.4]
  assign _T_76_10 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1509.4]
  assign _T_76_11 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1510.4]
  assign _T_76_12 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1511.4]
  assign _T_76_13 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1512.4]
  assign _T_76_14 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1513.4]
  assign _T_76_15 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1514.4]
  assign _T_76_16 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1515.4]
  assign _T_76_17 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1516.4]
  assign _T_76_18 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1517.4]
  assign _T_76_19 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1518.4]
  assign _T_76_20 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1519.4]
  assign _T_76_21 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1520.4]
  assign _T_76_22 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1521.4]
  assign _T_76_23 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1522.4]
  assign _T_76_24 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1523.4]
  assign _T_76_25 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1524.4]
  assign _T_76_26 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1525.4]
  assign _T_76_27 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1526.4]
  assign _T_76_28 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1527.4]
  assign _T_76_29 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1528.4]
  assign _T_76_30 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1529.4]
  assign _T_76_31 = 64'h0; // @[RegFile.scala 24:29:@1498.4 RegFile.scala 24:29:@1530.4]
  assign io_reads_0_data = _T_280 ? 64'h0 : _GEN_32; // @[RegFile.scala 28:24:@1534.6 RegFile.scala 30:24:@1539.8 RegFile.scala 32:24:@1542.8]
  assign io_reads_1_data = _T_287 ? 64'h0 : _GEN_66; // @[RegFile.scala 28:24:@1546.6 RegFile.scala 30:24:@1551.8 RegFile.scala 32:24:@1554.8]
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
  _RAND_0 = {2{`RANDOM}};
  regs_0 = _RAND_0[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  regs_1 = _RAND_1[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  regs_2 = _RAND_2[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  regs_3 = _RAND_3[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  regs_4 = _RAND_4[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  regs_5 = _RAND_5[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  regs_6 = _RAND_6[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  regs_7 = _RAND_7[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  regs_8 = _RAND_8[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{`RANDOM}};
  regs_9 = _RAND_9[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {2{`RANDOM}};
  regs_10 = _RAND_10[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {2{`RANDOM}};
  regs_11 = _RAND_11[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {2{`RANDOM}};
  regs_12 = _RAND_12[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {2{`RANDOM}};
  regs_13 = _RAND_13[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {2{`RANDOM}};
  regs_14 = _RAND_14[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {2{`RANDOM}};
  regs_15 = _RAND_15[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {2{`RANDOM}};
  regs_16 = _RAND_16[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {2{`RANDOM}};
  regs_17 = _RAND_17[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {2{`RANDOM}};
  regs_18 = _RAND_18[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {2{`RANDOM}};
  regs_19 = _RAND_19[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {2{`RANDOM}};
  regs_20 = _RAND_20[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {2{`RANDOM}};
  regs_21 = _RAND_21[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {2{`RANDOM}};
  regs_22 = _RAND_22[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {2{`RANDOM}};
  regs_23 = _RAND_23[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {2{`RANDOM}};
  regs_24 = _RAND_24[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {2{`RANDOM}};
  regs_25 = _RAND_25[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {2{`RANDOM}};
  regs_26 = _RAND_26[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {2{`RANDOM}};
  regs_27 = _RAND_27[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {2{`RANDOM}};
  regs_28 = _RAND_28[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {2{`RANDOM}};
  regs_29 = _RAND_29[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {2{`RANDOM}};
  regs_30 = _RAND_30[63:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {2{`RANDOM}};
  regs_31 = _RAND_31[63:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      regs_0 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h0 == io_write_addr) begin
          regs_0 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_1 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1 == io_write_addr) begin
          regs_1 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_2 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h2 == io_write_addr) begin
          regs_2 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_3 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h3 == io_write_addr) begin
          regs_3 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_4 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h4 == io_write_addr) begin
          regs_4 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_5 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h5 == io_write_addr) begin
          regs_5 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_6 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h6 == io_write_addr) begin
          regs_6 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_7 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h7 == io_write_addr) begin
          regs_7 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_8 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h8 == io_write_addr) begin
          regs_8 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_9 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h9 == io_write_addr) begin
          regs_9 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_10 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'ha == io_write_addr) begin
          regs_10 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_11 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'hb == io_write_addr) begin
          regs_11 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_12 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'hc == io_write_addr) begin
          regs_12 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_13 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'hd == io_write_addr) begin
          regs_13 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_14 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'he == io_write_addr) begin
          regs_14 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_15 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'hf == io_write_addr) begin
          regs_15 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_16 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h10 == io_write_addr) begin
          regs_16 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_17 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h11 == io_write_addr) begin
          regs_17 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_18 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h12 == io_write_addr) begin
          regs_18 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_19 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h13 == io_write_addr) begin
          regs_19 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_20 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h14 == io_write_addr) begin
          regs_20 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_21 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h15 == io_write_addr) begin
          regs_21 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_22 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h16 == io_write_addr) begin
          regs_22 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_23 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h17 == io_write_addr) begin
          regs_23 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_24 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h18 == io_write_addr) begin
          regs_24 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_25 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h19 == io_write_addr) begin
          regs_25 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_26 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1a == io_write_addr) begin
          regs_26 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_27 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1b == io_write_addr) begin
          regs_27 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_28 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1c == io_write_addr) begin
          regs_28 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_29 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1d == io_write_addr) begin
          regs_29 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_30 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1e == io_write_addr) begin
          regs_30 <= io_write_data;
        end
      end
    end
    if (reset) begin
      regs_31 <= 64'h0;
    end else begin
      if (_T_294) begin
        if (5'h1f == io_write_addr) begin
          regs_31 <= io_write_data;
        end
      end
    end
  end
endmodule
module Core( // @[:@1561.2]
  input         clock, // @[:@1562.4]
  input         reset, // @[:@1563.4]
  output [3:0]  io_iaxi_AWID, // @[:@1564.4]
  output [47:0] io_iaxi_AWADDR, // @[:@1564.4]
  output [7:0]  io_iaxi_AWLEN, // @[:@1564.4]
  output [2:0]  io_iaxi_AWSIZE, // @[:@1564.4]
  output [1:0]  io_iaxi_AWBURST, // @[:@1564.4]
  output [3:0]  io_iaxi_AWCACHE, // @[:@1564.4]
  output [2:0]  io_iaxi_AWPROT, // @[:@1564.4]
  output [2:0]  io_iaxi_AWQOS, // @[:@1564.4]
  output [3:0]  io_iaxi_AWREGION, // @[:@1564.4]
  output        io_iaxi_AWVALID, // @[:@1564.4]
  input         io_iaxi_AWREADY, // @[:@1564.4]
  output [63:0] io_iaxi_WDATA, // @[:@1564.4]
  output [7:0]  io_iaxi_WSTRB, // @[:@1564.4]
  output        io_iaxi_WLAST, // @[:@1564.4]
  output        io_iaxi_WVALID, // @[:@1564.4]
  input         io_iaxi_WREADY, // @[:@1564.4]
  input  [3:0]  io_iaxi_BID, // @[:@1564.4]
  input  [1:0]  io_iaxi_BRESP, // @[:@1564.4]
  input         io_iaxi_BVALID, // @[:@1564.4]
  output        io_iaxi_BREADY, // @[:@1564.4]
  output [3:0]  io_iaxi_ARID, // @[:@1564.4]
  output [47:0] io_iaxi_ARADDR, // @[:@1564.4]
  output [7:0]  io_iaxi_ARLEN, // @[:@1564.4]
  output [2:0]  io_iaxi_ARSIZE, // @[:@1564.4]
  output [1:0]  io_iaxi_ARBURST, // @[:@1564.4]
  output [3:0]  io_iaxi_ARCACHE, // @[:@1564.4]
  output [2:0]  io_iaxi_ARPROT, // @[:@1564.4]
  output [2:0]  io_iaxi_ARQOS, // @[:@1564.4]
  output [3:0]  io_iaxi_ARREGION, // @[:@1564.4]
  output        io_iaxi_ARVALID, // @[:@1564.4]
  input         io_iaxi_ARREADY, // @[:@1564.4]
  input  [3:0]  io_iaxi_RID, // @[:@1564.4]
  input  [63:0] io_iaxi_RDATA, // @[:@1564.4]
  input  [1:0]  io_iaxi_RRESP, // @[:@1564.4]
  input         io_iaxi_RLAST, // @[:@1564.4]
  input         io_iaxi_RVALID, // @[:@1564.4]
  output        io_iaxi_RREADY, // @[:@1564.4]
  output [3:0]  io_daxi_AWID, // @[:@1564.4]
  output [47:0] io_daxi_AWADDR, // @[:@1564.4]
  output [7:0]  io_daxi_AWLEN, // @[:@1564.4]
  output [2:0]  io_daxi_AWSIZE, // @[:@1564.4]
  output [1:0]  io_daxi_AWBURST, // @[:@1564.4]
  output [3:0]  io_daxi_AWCACHE, // @[:@1564.4]
  output [2:0]  io_daxi_AWPROT, // @[:@1564.4]
  output [2:0]  io_daxi_AWQOS, // @[:@1564.4]
  output [3:0]  io_daxi_AWREGION, // @[:@1564.4]
  output        io_daxi_AWVALID, // @[:@1564.4]
  input         io_daxi_AWREADY, // @[:@1564.4]
  output [63:0] io_daxi_WDATA, // @[:@1564.4]
  output [7:0]  io_daxi_WSTRB, // @[:@1564.4]
  output        io_daxi_WLAST, // @[:@1564.4]
  output        io_daxi_WVALID, // @[:@1564.4]
  input         io_daxi_WREADY, // @[:@1564.4]
  input  [3:0]  io_daxi_BID, // @[:@1564.4]
  input  [1:0]  io_daxi_BRESP, // @[:@1564.4]
  input         io_daxi_BVALID, // @[:@1564.4]
  output        io_daxi_BREADY, // @[:@1564.4]
  output [3:0]  io_daxi_ARID, // @[:@1564.4]
  output [47:0] io_daxi_ARADDR, // @[:@1564.4]
  output [7:0]  io_daxi_ARLEN, // @[:@1564.4]
  output [2:0]  io_daxi_ARSIZE, // @[:@1564.4]
  output [1:0]  io_daxi_ARBURST, // @[:@1564.4]
  output [3:0]  io_daxi_ARCACHE, // @[:@1564.4]
  output [2:0]  io_daxi_ARPROT, // @[:@1564.4]
  output [2:0]  io_daxi_ARQOS, // @[:@1564.4]
  output [3:0]  io_daxi_ARREGION, // @[:@1564.4]
  output        io_daxi_ARVALID, // @[:@1564.4]
  input         io_daxi_ARREADY, // @[:@1564.4]
  input  [3:0]  io_daxi_RID, // @[:@1564.4]
  input  [63:0] io_daxi_RDATA, // @[:@1564.4]
  input  [1:0]  io_daxi_RRESP, // @[:@1564.4]
  input         io_daxi_RLAST, // @[:@1564.4]
  input         io_daxi_RVALID, // @[:@1564.4]
  output        io_daxi_RREADY, // @[:@1564.4]
  output [47:0] io_pc // @[:@1564.4]
);
  wire  ctrl_clock; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_reset; // @[Core.scala 19:20:@1566.4]
  wire [47:0] ctrl_io_pc; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_branch; // @[Core.scala 19:20:@1566.4]
  wire [47:0] ctrl_io_baddr; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_fetch_stall; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_fetch_pause; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_fetch_flush; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_exec_stall; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_exec_pause; // @[Core.scala 19:20:@1566.4]
  wire  ctrl_io_exec_flush; // @[Core.scala 19:20:@1566.4]
  wire  ic_clock; // @[Core.scala 21:18:@1569.4]
  wire  ic_reset; // @[Core.scala 21:18:@1569.4]
  wire [47:0] ic_io_addr; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_read; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_AWID; // @[Core.scala 21:18:@1569.4]
  wire [47:0] ic_io_axi_AWADDR; // @[Core.scala 21:18:@1569.4]
  wire [7:0] ic_io_axi_AWLEN; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_AWSIZE; // @[Core.scala 21:18:@1569.4]
  wire [1:0] ic_io_axi_AWBURST; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_AWCACHE; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_AWPROT; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_AWQOS; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_AWREGION; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_AWVALID; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_AWREADY; // @[Core.scala 21:18:@1569.4]
  wire [63:0] ic_io_axi_WDATA; // @[Core.scala 21:18:@1569.4]
  wire [7:0] ic_io_axi_WSTRB; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_WLAST; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_WVALID; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_WREADY; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_BID; // @[Core.scala 21:18:@1569.4]
  wire [1:0] ic_io_axi_BRESP; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_BVALID; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_BREADY; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_ARID; // @[Core.scala 21:18:@1569.4]
  wire [47:0] ic_io_axi_ARADDR; // @[Core.scala 21:18:@1569.4]
  wire [7:0] ic_io_axi_ARLEN; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_ARSIZE; // @[Core.scala 21:18:@1569.4]
  wire [1:0] ic_io_axi_ARBURST; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_ARCACHE; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_ARPROT; // @[Core.scala 21:18:@1569.4]
  wire [2:0] ic_io_axi_ARQOS; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_ARREGION; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_ARVALID; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_ARREADY; // @[Core.scala 21:18:@1569.4]
  wire [3:0] ic_io_axi_RID; // @[Core.scala 21:18:@1569.4]
  wire [63:0] ic_io_axi_RDATA; // @[Core.scala 21:18:@1569.4]
  wire [1:0] ic_io_axi_RRESP; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_RLAST; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_RVALID; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_axi_RREADY; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_stall; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_pause; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_flush; // @[Core.scala 21:18:@1569.4]
  wire [31:0] ic_io_data; // @[Core.scala 21:18:@1569.4]
  wire  ic_io_vacant; // @[Core.scala 21:18:@1569.4]
  wire  fetch_clock; // @[Core.scala 26:21:@1572.4]
  wire  fetch_reset; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_pc; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_icache_addr; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_read; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_AWID; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_icache_axi_AWADDR; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_icache_axi_AWLEN; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_AWSIZE; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_icache_axi_AWBURST; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_AWCACHE; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_AWPROT; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_AWQOS; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_AWREGION; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_AWVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_AWREADY; // @[Core.scala 26:21:@1572.4]
  wire [63:0] fetch_io_icache_axi_WDATA; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_icache_axi_WSTRB; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_WLAST; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_WVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_WREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_BID; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_icache_axi_BRESP; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_BVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_BREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_ARID; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_icache_axi_ARADDR; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_icache_axi_ARLEN; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_ARSIZE; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_icache_axi_ARBURST; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_ARCACHE; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_ARPROT; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_icache_axi_ARQOS; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_ARREGION; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_ARVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_ARREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_icache_axi_RID; // @[Core.scala 26:21:@1572.4]
  wire [63:0] fetch_io_icache_axi_RDATA; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_icache_axi_RRESP; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_RLAST; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_RVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_axi_RREADY; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_stall; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_pause; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_flush; // @[Core.scala 26:21:@1572.4]
  wire [31:0] fetch_io_icache_data; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_icache_vacant; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_fetch; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_output_0_addr; // @[Core.scala 26:21:@1572.4]
  wire [4:0] fetch_io_output_0_instr_op; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_output_0_instr_base; // @[Core.scala 26:21:@1572.4]
  wire [31:0] fetch_io_output_0_instr_imm; // @[Core.scala 26:21:@1572.4]
  wire [4:0] fetch_io_output_0_instr_rs1; // @[Core.scala 26:21:@1572.4]
  wire [4:0] fetch_io_output_0_instr_rs2; // @[Core.scala 26:21:@1572.4]
  wire [4:0] fetch_io_output_0_instr_rd; // @[Core.scala 26:21:@1572.4]
  wire [6:0] fetch_io_output_0_instr_funct7; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_output_0_instr_funct3; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_output_0_vacant; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_AWID; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_axi_AWADDR; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_axi_AWLEN; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_AWSIZE; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_axi_AWBURST; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_AWCACHE; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_AWPROT; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_AWQOS; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_AWREGION; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_AWVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_AWREADY; // @[Core.scala 26:21:@1572.4]
  wire [63:0] fetch_io_axi_WDATA; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_axi_WSTRB; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_WLAST; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_WVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_WREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_BID; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_axi_BRESP; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_BVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_BREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_ARID; // @[Core.scala 26:21:@1572.4]
  wire [47:0] fetch_io_axi_ARADDR; // @[Core.scala 26:21:@1572.4]
  wire [7:0] fetch_io_axi_ARLEN; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_ARSIZE; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_axi_ARBURST; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_ARCACHE; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_ARPROT; // @[Core.scala 26:21:@1572.4]
  wire [2:0] fetch_io_axi_ARQOS; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_ARREGION; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_ARVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_ARREADY; // @[Core.scala 26:21:@1572.4]
  wire [3:0] fetch_io_axi_RID; // @[Core.scala 26:21:@1572.4]
  wire [63:0] fetch_io_axi_RDATA; // @[Core.scala 26:21:@1572.4]
  wire [1:0] fetch_io_axi_RRESP; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_RLAST; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_RVALID; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_axi_RREADY; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_ctrl_stall; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_ctrl_pause; // @[Core.scala 26:21:@1572.4]
  wire  fetch_io_ctrl_flush; // @[Core.scala 26:21:@1572.4]
  wire  exec_clock; // @[Core.scala 27:20:@1575.4]
  wire  exec_reset; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_regReaders_0_addr; // @[Core.scala 27:20:@1575.4]
  wire [63:0] exec_io_regReaders_0_data; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_regReaders_1_addr; // @[Core.scala 27:20:@1575.4]
  wire [63:0] exec_io_regReaders_1_data; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_regWriter_addr; // @[Core.scala 27:20:@1575.4]
  wire [63:0] exec_io_regWriter_data; // @[Core.scala 27:20:@1575.4]
  wire [47:0] exec_io_instr_addr; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_instr_instr_op; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_instr_instr_base; // @[Core.scala 27:20:@1575.4]
  wire [31:0] exec_io_instr_instr_imm; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_instr_instr_rs1; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_instr_instr_rs2; // @[Core.scala 27:20:@1575.4]
  wire [4:0] exec_io_instr_instr_rd; // @[Core.scala 27:20:@1575.4]
  wire [6:0] exec_io_instr_instr_funct7; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_instr_instr_funct3; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_instr_vacant; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_AWID; // @[Core.scala 27:20:@1575.4]
  wire [47:0] exec_io_axi_AWADDR; // @[Core.scala 27:20:@1575.4]
  wire [7:0] exec_io_axi_AWLEN; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_AWSIZE; // @[Core.scala 27:20:@1575.4]
  wire [1:0] exec_io_axi_AWBURST; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_AWCACHE; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_AWPROT; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_AWQOS; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_AWREGION; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_AWVALID; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_AWREADY; // @[Core.scala 27:20:@1575.4]
  wire [63:0] exec_io_axi_WDATA; // @[Core.scala 27:20:@1575.4]
  wire [7:0] exec_io_axi_WSTRB; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_WLAST; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_WVALID; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_WREADY; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_BID; // @[Core.scala 27:20:@1575.4]
  wire [1:0] exec_io_axi_BRESP; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_BVALID; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_BREADY; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_ARID; // @[Core.scala 27:20:@1575.4]
  wire [47:0] exec_io_axi_ARADDR; // @[Core.scala 27:20:@1575.4]
  wire [7:0] exec_io_axi_ARLEN; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_ARSIZE; // @[Core.scala 27:20:@1575.4]
  wire [1:0] exec_io_axi_ARBURST; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_ARCACHE; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_ARPROT; // @[Core.scala 27:20:@1575.4]
  wire [2:0] exec_io_axi_ARQOS; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_ARREGION; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_ARVALID; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_ARREADY; // @[Core.scala 27:20:@1575.4]
  wire [3:0] exec_io_axi_RID; // @[Core.scala 27:20:@1575.4]
  wire [63:0] exec_io_axi_RDATA; // @[Core.scala 27:20:@1575.4]
  wire [1:0] exec_io_axi_RRESP; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_RLAST; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_RVALID; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_axi_RREADY; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_ctrl_stall; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_ctrl_pause; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_ctrl_flush; // @[Core.scala 27:20:@1575.4]
  wire  exec_io_branch_branch; // @[Core.scala 27:20:@1575.4]
  wire [47:0] exec_io_branch_target; // @[Core.scala 27:20:@1575.4]
  wire  reg$_clock; // @[Core.scala 28:19:@1578.4]
  wire  reg$_reset; // @[Core.scala 28:19:@1578.4]
  wire [4:0] reg$_io_reads_0_addr; // @[Core.scala 28:19:@1578.4]
  wire [63:0] reg$_io_reads_0_data; // @[Core.scala 28:19:@1578.4]
  wire [4:0] reg$_io_reads_1_addr; // @[Core.scala 28:19:@1578.4]
  wire [63:0] reg$_io_reads_1_data; // @[Core.scala 28:19:@1578.4]
  wire [4:0] reg$_io_write_addr; // @[Core.scala 28:19:@1578.4]
  wire [63:0] reg$_io_write_data; // @[Core.scala 28:19:@1578.4]
  wire  _T_156; // @[Core.scala 32:21:@1626.4]
  wire [31:0] _T_159; // @[Core.scala 37:44:@1669.4]
  wire [3:0] _T_160; // @[Core.scala 37:44:@1670.4]
  wire [9:0] _T_161; // @[Core.scala 37:44:@1671.4]
  wire [16:0] _T_162; // @[Core.scala 37:44:@1672.4]
  wire [20:0] _T_163; // @[Core.scala 37:44:@1673.4]
  wire [36:0] _T_164; // @[Core.scala 37:44:@1674.4]
  wire [52:0] _T_165; // @[Core.scala 37:44:@1675.4]
  wire [55:0] _T_166; // @[Core.scala 37:44:@1676.4]
  wire [92:0] _T_167; // @[Core.scala 37:44:@1677.4]
  wire [113:0] _T_168; // @[Core.scala 37:44:@1678.4]
  wire [113:0] _T_170; // @[:@1679.4 :@1680.4]
  wire  _T_171; // @[Core.scala 37:44:@1681.4]
  wire [2:0] _T_172; // @[Core.scala 37:44:@1683.4]
  wire [6:0] _T_173; // @[Core.scala 37:44:@1685.4]
  wire [4:0] _T_174; // @[Core.scala 37:44:@1687.4]
  wire [4:0] _T_175; // @[Core.scala 37:44:@1689.4]
  wire [4:0] _T_176; // @[Core.scala 37:44:@1691.4]
  wire [31:0] _T_177; // @[Core.scala 37:44:@1693.4]
  wire [31:0] _T_178; // @[Core.scala 37:44:@1694.4]
  wire [2:0] _T_179; // @[Core.scala 37:44:@1696.4]
  wire [4:0] _T_180; // @[Core.scala 37:44:@1698.4]
  wire [47:0] _T_181; // @[Core.scala 37:44:@1700.4]
  wire [47:0] _T_158_addr; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1701.4]
  wire [4:0] _T_158_instr_op; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1699.4]
  wire [2:0] _T_158_instr_base; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1697.4]
  wire [31:0] _T_158_instr_imm; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1695.4]
  wire [4:0] _T_158_instr_rs1; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1692.4]
  wire [4:0] _T_158_instr_rs2; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1690.4]
  wire [4:0] _T_158_instr_rd; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1688.4]
  wire [6:0] _T_158_instr_funct7; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1686.4]
  wire [2:0] _T_158_instr_funct3; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1684.4]
  wire  _T_158_vacant; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1682.4]
  Ctrl ctrl ( // @[Core.scala 19:20:@1566.4]
    .clock(ctrl_clock),
    .reset(ctrl_reset),
    .io_pc(ctrl_io_pc),
    .io_branch(ctrl_io_branch),
    .io_baddr(ctrl_io_baddr),
    .io_fetch_stall(ctrl_io_fetch_stall),
    .io_fetch_pause(ctrl_io_fetch_pause),
    .io_fetch_flush(ctrl_io_fetch_flush),
    .io_exec_stall(ctrl_io_exec_stall),
    .io_exec_pause(ctrl_io_exec_pause),
    .io_exec_flush(ctrl_io_exec_flush)
  );
  ICache ic ( // @[Core.scala 21:18:@1569.4]
    .clock(ic_clock),
    .reset(ic_reset),
    .io_addr(ic_io_addr),
    .io_read(ic_io_read),
    .io_axi_AWID(ic_io_axi_AWID),
    .io_axi_AWADDR(ic_io_axi_AWADDR),
    .io_axi_AWLEN(ic_io_axi_AWLEN),
    .io_axi_AWSIZE(ic_io_axi_AWSIZE),
    .io_axi_AWBURST(ic_io_axi_AWBURST),
    .io_axi_AWCACHE(ic_io_axi_AWCACHE),
    .io_axi_AWPROT(ic_io_axi_AWPROT),
    .io_axi_AWQOS(ic_io_axi_AWQOS),
    .io_axi_AWREGION(ic_io_axi_AWREGION),
    .io_axi_AWVALID(ic_io_axi_AWVALID),
    .io_axi_AWREADY(ic_io_axi_AWREADY),
    .io_axi_WDATA(ic_io_axi_WDATA),
    .io_axi_WSTRB(ic_io_axi_WSTRB),
    .io_axi_WLAST(ic_io_axi_WLAST),
    .io_axi_WVALID(ic_io_axi_WVALID),
    .io_axi_WREADY(ic_io_axi_WREADY),
    .io_axi_BID(ic_io_axi_BID),
    .io_axi_BRESP(ic_io_axi_BRESP),
    .io_axi_BVALID(ic_io_axi_BVALID),
    .io_axi_BREADY(ic_io_axi_BREADY),
    .io_axi_ARID(ic_io_axi_ARID),
    .io_axi_ARADDR(ic_io_axi_ARADDR),
    .io_axi_ARLEN(ic_io_axi_ARLEN),
    .io_axi_ARSIZE(ic_io_axi_ARSIZE),
    .io_axi_ARBURST(ic_io_axi_ARBURST),
    .io_axi_ARCACHE(ic_io_axi_ARCACHE),
    .io_axi_ARPROT(ic_io_axi_ARPROT),
    .io_axi_ARQOS(ic_io_axi_ARQOS),
    .io_axi_ARREGION(ic_io_axi_ARREGION),
    .io_axi_ARVALID(ic_io_axi_ARVALID),
    .io_axi_ARREADY(ic_io_axi_ARREADY),
    .io_axi_RID(ic_io_axi_RID),
    .io_axi_RDATA(ic_io_axi_RDATA),
    .io_axi_RRESP(ic_io_axi_RRESP),
    .io_axi_RLAST(ic_io_axi_RLAST),
    .io_axi_RVALID(ic_io_axi_RVALID),
    .io_axi_RREADY(ic_io_axi_RREADY),
    .io_stall(ic_io_stall),
    .io_pause(ic_io_pause),
    .io_flush(ic_io_flush),
    .io_data(ic_io_data),
    .io_vacant(ic_io_vacant)
  );
  InstrFetch fetch ( // @[Core.scala 26:21:@1572.4]
    .clock(fetch_clock),
    .reset(fetch_reset),
    .io_pc(fetch_io_pc),
    .io_icache_addr(fetch_io_icache_addr),
    .io_icache_read(fetch_io_icache_read),
    .io_icache_axi_AWID(fetch_io_icache_axi_AWID),
    .io_icache_axi_AWADDR(fetch_io_icache_axi_AWADDR),
    .io_icache_axi_AWLEN(fetch_io_icache_axi_AWLEN),
    .io_icache_axi_AWSIZE(fetch_io_icache_axi_AWSIZE),
    .io_icache_axi_AWBURST(fetch_io_icache_axi_AWBURST),
    .io_icache_axi_AWCACHE(fetch_io_icache_axi_AWCACHE),
    .io_icache_axi_AWPROT(fetch_io_icache_axi_AWPROT),
    .io_icache_axi_AWQOS(fetch_io_icache_axi_AWQOS),
    .io_icache_axi_AWREGION(fetch_io_icache_axi_AWREGION),
    .io_icache_axi_AWVALID(fetch_io_icache_axi_AWVALID),
    .io_icache_axi_AWREADY(fetch_io_icache_axi_AWREADY),
    .io_icache_axi_WDATA(fetch_io_icache_axi_WDATA),
    .io_icache_axi_WSTRB(fetch_io_icache_axi_WSTRB),
    .io_icache_axi_WLAST(fetch_io_icache_axi_WLAST),
    .io_icache_axi_WVALID(fetch_io_icache_axi_WVALID),
    .io_icache_axi_WREADY(fetch_io_icache_axi_WREADY),
    .io_icache_axi_BID(fetch_io_icache_axi_BID),
    .io_icache_axi_BRESP(fetch_io_icache_axi_BRESP),
    .io_icache_axi_BVALID(fetch_io_icache_axi_BVALID),
    .io_icache_axi_BREADY(fetch_io_icache_axi_BREADY),
    .io_icache_axi_ARID(fetch_io_icache_axi_ARID),
    .io_icache_axi_ARADDR(fetch_io_icache_axi_ARADDR),
    .io_icache_axi_ARLEN(fetch_io_icache_axi_ARLEN),
    .io_icache_axi_ARSIZE(fetch_io_icache_axi_ARSIZE),
    .io_icache_axi_ARBURST(fetch_io_icache_axi_ARBURST),
    .io_icache_axi_ARCACHE(fetch_io_icache_axi_ARCACHE),
    .io_icache_axi_ARPROT(fetch_io_icache_axi_ARPROT),
    .io_icache_axi_ARQOS(fetch_io_icache_axi_ARQOS),
    .io_icache_axi_ARREGION(fetch_io_icache_axi_ARREGION),
    .io_icache_axi_ARVALID(fetch_io_icache_axi_ARVALID),
    .io_icache_axi_ARREADY(fetch_io_icache_axi_ARREADY),
    .io_icache_axi_RID(fetch_io_icache_axi_RID),
    .io_icache_axi_RDATA(fetch_io_icache_axi_RDATA),
    .io_icache_axi_RRESP(fetch_io_icache_axi_RRESP),
    .io_icache_axi_RLAST(fetch_io_icache_axi_RLAST),
    .io_icache_axi_RVALID(fetch_io_icache_axi_RVALID),
    .io_icache_axi_RREADY(fetch_io_icache_axi_RREADY),
    .io_icache_stall(fetch_io_icache_stall),
    .io_icache_pause(fetch_io_icache_pause),
    .io_icache_flush(fetch_io_icache_flush),
    .io_icache_data(fetch_io_icache_data),
    .io_icache_vacant(fetch_io_icache_vacant),
    .io_fetch(fetch_io_fetch),
    .io_output_0_addr(fetch_io_output_0_addr),
    .io_output_0_instr_op(fetch_io_output_0_instr_op),
    .io_output_0_instr_base(fetch_io_output_0_instr_base),
    .io_output_0_instr_imm(fetch_io_output_0_instr_imm),
    .io_output_0_instr_rs1(fetch_io_output_0_instr_rs1),
    .io_output_0_instr_rs2(fetch_io_output_0_instr_rs2),
    .io_output_0_instr_rd(fetch_io_output_0_instr_rd),
    .io_output_0_instr_funct7(fetch_io_output_0_instr_funct7),
    .io_output_0_instr_funct3(fetch_io_output_0_instr_funct3),
    .io_output_0_vacant(fetch_io_output_0_vacant),
    .io_axi_AWID(fetch_io_axi_AWID),
    .io_axi_AWADDR(fetch_io_axi_AWADDR),
    .io_axi_AWLEN(fetch_io_axi_AWLEN),
    .io_axi_AWSIZE(fetch_io_axi_AWSIZE),
    .io_axi_AWBURST(fetch_io_axi_AWBURST),
    .io_axi_AWCACHE(fetch_io_axi_AWCACHE),
    .io_axi_AWPROT(fetch_io_axi_AWPROT),
    .io_axi_AWQOS(fetch_io_axi_AWQOS),
    .io_axi_AWREGION(fetch_io_axi_AWREGION),
    .io_axi_AWVALID(fetch_io_axi_AWVALID),
    .io_axi_AWREADY(fetch_io_axi_AWREADY),
    .io_axi_WDATA(fetch_io_axi_WDATA),
    .io_axi_WSTRB(fetch_io_axi_WSTRB),
    .io_axi_WLAST(fetch_io_axi_WLAST),
    .io_axi_WVALID(fetch_io_axi_WVALID),
    .io_axi_WREADY(fetch_io_axi_WREADY),
    .io_axi_BID(fetch_io_axi_BID),
    .io_axi_BRESP(fetch_io_axi_BRESP),
    .io_axi_BVALID(fetch_io_axi_BVALID),
    .io_axi_BREADY(fetch_io_axi_BREADY),
    .io_axi_ARID(fetch_io_axi_ARID),
    .io_axi_ARADDR(fetch_io_axi_ARADDR),
    .io_axi_ARLEN(fetch_io_axi_ARLEN),
    .io_axi_ARSIZE(fetch_io_axi_ARSIZE),
    .io_axi_ARBURST(fetch_io_axi_ARBURST),
    .io_axi_ARCACHE(fetch_io_axi_ARCACHE),
    .io_axi_ARPROT(fetch_io_axi_ARPROT),
    .io_axi_ARQOS(fetch_io_axi_ARQOS),
    .io_axi_ARREGION(fetch_io_axi_ARREGION),
    .io_axi_ARVALID(fetch_io_axi_ARVALID),
    .io_axi_ARREADY(fetch_io_axi_ARREADY),
    .io_axi_RID(fetch_io_axi_RID),
    .io_axi_RDATA(fetch_io_axi_RDATA),
    .io_axi_RRESP(fetch_io_axi_RRESP),
    .io_axi_RLAST(fetch_io_axi_RLAST),
    .io_axi_RVALID(fetch_io_axi_RVALID),
    .io_axi_RREADY(fetch_io_axi_RREADY),
    .io_ctrl_stall(fetch_io_ctrl_stall),
    .io_ctrl_pause(fetch_io_ctrl_pause),
    .io_ctrl_flush(fetch_io_ctrl_flush)
  );
  Exec exec ( // @[Core.scala 27:20:@1575.4]
    .clock(exec_clock),
    .reset(exec_reset),
    .io_regReaders_0_addr(exec_io_regReaders_0_addr),
    .io_regReaders_0_data(exec_io_regReaders_0_data),
    .io_regReaders_1_addr(exec_io_regReaders_1_addr),
    .io_regReaders_1_data(exec_io_regReaders_1_data),
    .io_regWriter_addr(exec_io_regWriter_addr),
    .io_regWriter_data(exec_io_regWriter_data),
    .io_instr_addr(exec_io_instr_addr),
    .io_instr_instr_op(exec_io_instr_instr_op),
    .io_instr_instr_base(exec_io_instr_instr_base),
    .io_instr_instr_imm(exec_io_instr_instr_imm),
    .io_instr_instr_rs1(exec_io_instr_instr_rs1),
    .io_instr_instr_rs2(exec_io_instr_instr_rs2),
    .io_instr_instr_rd(exec_io_instr_instr_rd),
    .io_instr_instr_funct7(exec_io_instr_instr_funct7),
    .io_instr_instr_funct3(exec_io_instr_instr_funct3),
    .io_instr_vacant(exec_io_instr_vacant),
    .io_axi_AWID(exec_io_axi_AWID),
    .io_axi_AWADDR(exec_io_axi_AWADDR),
    .io_axi_AWLEN(exec_io_axi_AWLEN),
    .io_axi_AWSIZE(exec_io_axi_AWSIZE),
    .io_axi_AWBURST(exec_io_axi_AWBURST),
    .io_axi_AWCACHE(exec_io_axi_AWCACHE),
    .io_axi_AWPROT(exec_io_axi_AWPROT),
    .io_axi_AWQOS(exec_io_axi_AWQOS),
    .io_axi_AWREGION(exec_io_axi_AWREGION),
    .io_axi_AWVALID(exec_io_axi_AWVALID),
    .io_axi_AWREADY(exec_io_axi_AWREADY),
    .io_axi_WDATA(exec_io_axi_WDATA),
    .io_axi_WSTRB(exec_io_axi_WSTRB),
    .io_axi_WLAST(exec_io_axi_WLAST),
    .io_axi_WVALID(exec_io_axi_WVALID),
    .io_axi_WREADY(exec_io_axi_WREADY),
    .io_axi_BID(exec_io_axi_BID),
    .io_axi_BRESP(exec_io_axi_BRESP),
    .io_axi_BVALID(exec_io_axi_BVALID),
    .io_axi_BREADY(exec_io_axi_BREADY),
    .io_axi_ARID(exec_io_axi_ARID),
    .io_axi_ARADDR(exec_io_axi_ARADDR),
    .io_axi_ARLEN(exec_io_axi_ARLEN),
    .io_axi_ARSIZE(exec_io_axi_ARSIZE),
    .io_axi_ARBURST(exec_io_axi_ARBURST),
    .io_axi_ARCACHE(exec_io_axi_ARCACHE),
    .io_axi_ARPROT(exec_io_axi_ARPROT),
    .io_axi_ARQOS(exec_io_axi_ARQOS),
    .io_axi_ARREGION(exec_io_axi_ARREGION),
    .io_axi_ARVALID(exec_io_axi_ARVALID),
    .io_axi_ARREADY(exec_io_axi_ARREADY),
    .io_axi_RID(exec_io_axi_RID),
    .io_axi_RDATA(exec_io_axi_RDATA),
    .io_axi_RRESP(exec_io_axi_RRESP),
    .io_axi_RLAST(exec_io_axi_RLAST),
    .io_axi_RVALID(exec_io_axi_RVALID),
    .io_axi_RREADY(exec_io_axi_RREADY),
    .io_ctrl_stall(exec_io_ctrl_stall),
    .io_ctrl_pause(exec_io_ctrl_pause),
    .io_ctrl_flush(exec_io_ctrl_flush),
    .io_branch_branch(exec_io_branch_branch),
    .io_branch_target(exec_io_branch_target)
  );
  RegFile reg$ ( // @[Core.scala 28:19:@1578.4]
    .clock(reg$_clock),
    .reset(reg$_reset),
    .io_reads_0_addr(reg$_io_reads_0_addr),
    .io_reads_0_data(reg$_io_reads_0_data),
    .io_reads_1_addr(reg$_io_reads_1_addr),
    .io_reads_1_data(reg$_io_reads_1_data),
    .io_write_addr(reg$_io_write_addr),
    .io_write_data(reg$_io_write_data)
  );
  assign _T_156 = ctrl_io_fetch_pause == 1'h0; // @[Core.scala 32:21:@1626.4]
  assign _T_159 = $unsigned(fetch_io_output_0_instr_imm); // @[Core.scala 37:44:@1669.4]
  assign _T_160 = {fetch_io_output_0_instr_funct3,fetch_io_output_0_vacant}; // @[Core.scala 37:44:@1670.4]
  assign _T_161 = {fetch_io_output_0_instr_rs2,fetch_io_output_0_instr_rd}; // @[Core.scala 37:44:@1671.4]
  assign _T_162 = {fetch_io_output_0_instr_rs2,fetch_io_output_0_instr_rd,fetch_io_output_0_instr_funct7}; // @[Core.scala 37:44:@1672.4]
  assign _T_163 = {fetch_io_output_0_instr_rs2,fetch_io_output_0_instr_rd,fetch_io_output_0_instr_funct7,fetch_io_output_0_instr_funct3,fetch_io_output_0_vacant}; // @[Core.scala 37:44:@1673.4]
  assign _T_164 = {_T_159,fetch_io_output_0_instr_rs1}; // @[Core.scala 37:44:@1674.4]
  assign _T_165 = {fetch_io_output_0_addr,fetch_io_output_0_instr_op}; // @[Core.scala 37:44:@1675.4]
  assign _T_166 = {fetch_io_output_0_addr,fetch_io_output_0_instr_op,fetch_io_output_0_instr_base}; // @[Core.scala 37:44:@1676.4]
  assign _T_167 = {fetch_io_output_0_addr,fetch_io_output_0_instr_op,fetch_io_output_0_instr_base,_T_159,fetch_io_output_0_instr_rs1}; // @[Core.scala 37:44:@1677.4]
  assign _T_168 = {fetch_io_output_0_addr,fetch_io_output_0_instr_op,fetch_io_output_0_instr_base,_T_159,fetch_io_output_0_instr_rs1,fetch_io_output_0_instr_rs2,fetch_io_output_0_instr_rd,fetch_io_output_0_instr_funct7,fetch_io_output_0_instr_funct3,fetch_io_output_0_vacant}; // @[Core.scala 37:44:@1678.4]
  assign _T_170 = _T_168; // @[:@1679.4 :@1680.4]
  assign _T_171 = _T_168[0]; // @[Core.scala 37:44:@1681.4]
  assign _T_172 = _T_168[3:1]; // @[Core.scala 37:44:@1683.4]
  assign _T_173 = _T_168[10:4]; // @[Core.scala 37:44:@1685.4]
  assign _T_174 = _T_168[15:11]; // @[Core.scala 37:44:@1687.4]
  assign _T_175 = _T_168[20:16]; // @[Core.scala 37:44:@1689.4]
  assign _T_176 = _T_168[25:21]; // @[Core.scala 37:44:@1691.4]
  assign _T_177 = _T_168[57:26]; // @[Core.scala 37:44:@1693.4]
  assign _T_178 = $signed(_T_177); // @[Core.scala 37:44:@1694.4]
  assign _T_179 = _T_168[60:58]; // @[Core.scala 37:44:@1696.4]
  assign _T_180 = _T_168[65:61]; // @[Core.scala 37:44:@1698.4]
  assign _T_181 = _T_168[113:66]; // @[Core.scala 37:44:@1700.4]
  assign _T_158_addr = _T_181; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1701.4]
  assign _T_158_instr_op = _T_180; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1699.4]
  assign _T_158_instr_base = _T_179; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1697.4]
  assign _T_158_instr_imm = _T_178; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1695.4]
  assign _T_158_instr_rs1 = _T_176; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1692.4]
  assign _T_158_instr_rs2 = _T_175; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1690.4]
  assign _T_158_instr_rd = _T_174; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1688.4]
  assign _T_158_instr_funct7 = _T_173; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1686.4]
  assign _T_158_instr_funct3 = _T_172; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1684.4]
  assign _T_158_vacant = _T_171; // @[Core.scala 37:44:@1668.4 Core.scala 37:44:@1682.4]
  assign io_iaxi_AWID = 4'h0; // @[Core.scala 34:16:@1667.4]
  assign io_iaxi_AWADDR = fetch_io_axi_AWADDR; // @[Core.scala 34:16:@1666.4]
  assign io_iaxi_AWLEN = 8'h1; // @[Core.scala 34:16:@1665.4]
  assign io_iaxi_AWSIZE = 3'h6; // @[Core.scala 34:16:@1664.4]
  assign io_iaxi_AWBURST = 2'h1; // @[Core.scala 34:16:@1663.4]
  assign io_iaxi_AWCACHE = 4'h0; // @[Core.scala 34:16:@1662.4]
  assign io_iaxi_AWPROT = 3'h0; // @[Core.scala 34:16:@1661.4]
  assign io_iaxi_AWQOS = 3'h0; // @[Core.scala 34:16:@1660.4]
  assign io_iaxi_AWREGION = 4'h0; // @[Core.scala 34:16:@1659.4]
  assign io_iaxi_AWVALID = fetch_io_axi_AWVALID; // @[Core.scala 34:16:@1658.4]
  assign io_iaxi_WDATA = fetch_io_axi_WDATA; // @[Core.scala 34:16:@1656.4]
  assign io_iaxi_WSTRB = fetch_io_axi_WSTRB; // @[Core.scala 34:16:@1655.4]
  assign io_iaxi_WLAST = fetch_io_axi_WLAST; // @[Core.scala 34:16:@1654.4]
  assign io_iaxi_WVALID = fetch_io_axi_WVALID; // @[Core.scala 34:16:@1653.4]
  assign io_iaxi_BREADY = fetch_io_axi_BREADY; // @[Core.scala 34:16:@1648.4]
  assign io_iaxi_ARID = 4'h0; // @[Core.scala 34:16:@1647.4]
  assign io_iaxi_ARADDR = fetch_io_axi_ARADDR; // @[Core.scala 34:16:@1646.4]
  assign io_iaxi_ARLEN = 8'h1; // @[Core.scala 34:16:@1645.4]
  assign io_iaxi_ARSIZE = 3'h6; // @[Core.scala 34:16:@1644.4]
  assign io_iaxi_ARBURST = 2'h1; // @[Core.scala 34:16:@1643.4]
  assign io_iaxi_ARCACHE = 4'h0; // @[Core.scala 34:16:@1642.4]
  assign io_iaxi_ARPROT = 3'h0; // @[Core.scala 34:16:@1641.4]
  assign io_iaxi_ARQOS = 3'h0; // @[Core.scala 34:16:@1640.4]
  assign io_iaxi_ARREGION = 4'h0; // @[Core.scala 34:16:@1639.4]
  assign io_iaxi_ARVALID = fetch_io_axi_ARVALID; // @[Core.scala 34:16:@1638.4]
  assign io_iaxi_RREADY = fetch_io_axi_RREADY; // @[Core.scala 34:16:@1631.4]
  assign io_daxi_AWID = 4'h0; // @[Core.scala 42:15:@1759.4]
  assign io_daxi_AWADDR = exec_io_axi_AWADDR; // @[Core.scala 42:15:@1758.4]
  assign io_daxi_AWLEN = 8'h1; // @[Core.scala 42:15:@1757.4]
  assign io_daxi_AWSIZE = 3'h6; // @[Core.scala 42:15:@1756.4]
  assign io_daxi_AWBURST = 2'h1; // @[Core.scala 42:15:@1755.4]
  assign io_daxi_AWCACHE = 4'h0; // @[Core.scala 42:15:@1754.4]
  assign io_daxi_AWPROT = 3'h0; // @[Core.scala 42:15:@1753.4]
  assign io_daxi_AWQOS = 3'h0; // @[Core.scala 42:15:@1752.4]
  assign io_daxi_AWREGION = 4'h0; // @[Core.scala 42:15:@1751.4]
  assign io_daxi_AWVALID = exec_io_axi_AWVALID; // @[Core.scala 42:15:@1750.4]
  assign io_daxi_WDATA = exec_io_axi_WDATA; // @[Core.scala 42:15:@1748.4]
  assign io_daxi_WSTRB = exec_io_axi_WSTRB; // @[Core.scala 42:15:@1747.4]
  assign io_daxi_WLAST = exec_io_axi_WLAST; // @[Core.scala 42:15:@1746.4]
  assign io_daxi_WVALID = exec_io_axi_WVALID; // @[Core.scala 42:15:@1745.4]
  assign io_daxi_BREADY = exec_io_axi_BREADY; // @[Core.scala 42:15:@1740.4]
  assign io_daxi_ARID = 4'h0; // @[Core.scala 42:15:@1739.4]
  assign io_daxi_ARADDR = exec_io_axi_ARADDR; // @[Core.scala 42:15:@1738.4]
  assign io_daxi_ARLEN = 8'h1; // @[Core.scala 42:15:@1737.4]
  assign io_daxi_ARSIZE = 3'h6; // @[Core.scala 42:15:@1736.4]
  assign io_daxi_ARBURST = 2'h1; // @[Core.scala 42:15:@1735.4]
  assign io_daxi_ARCACHE = 4'h0; // @[Core.scala 42:15:@1734.4]
  assign io_daxi_ARPROT = 3'h0; // @[Core.scala 42:15:@1733.4]
  assign io_daxi_ARQOS = 3'h0; // @[Core.scala 42:15:@1732.4]
  assign io_daxi_ARREGION = 4'h0; // @[Core.scala 42:15:@1731.4]
  assign io_daxi_ARVALID = exec_io_axi_ARVALID; // @[Core.scala 42:15:@1730.4]
  assign io_daxi_RREADY = exec_io_axi_RREADY; // @[Core.scala 42:15:@1723.4]
  assign io_pc = ctrl_io_pc; // @[Core.scala 47:9:@1762.4]
  assign ctrl_clock = clock; // @[:@1567.4]
  assign ctrl_reset = reset; // @[:@1568.4]
  assign ctrl_io_branch = exec_io_branch_branch; // @[Core.scala 44:18:@1760.4]
  assign ctrl_io_baddr = exec_io_branch_target; // @[Core.scala 45:17:@1761.4]
  assign ctrl_io_fetch_stall = fetch_io_ctrl_stall; // @[Core.scala 33:17:@1630.4]
  assign ctrl_io_exec_stall = exec_io_ctrl_stall; // @[Core.scala 40:16:@1720.4]
  assign ic_clock = clock; // @[:@1570.4]
  assign ic_reset = reset; // @[:@1571.4]
  assign ic_io_addr = fetch_io_icache_addr; // @[Core.scala 30:19:@1624.4]
  assign ic_io_read = fetch_io_icache_read; // @[Core.scala 30:19:@1623.4]
  assign ic_io_axi_AWREADY = fetch_io_icache_axi_AWREADY; // @[Core.scala 30:19:@1612.4]
  assign ic_io_axi_WREADY = fetch_io_icache_axi_WREADY; // @[Core.scala 30:19:@1607.4]
  assign ic_io_axi_BID = fetch_io_icache_axi_BID; // @[Core.scala 30:19:@1606.4]
  assign ic_io_axi_BRESP = fetch_io_icache_axi_BRESP; // @[Core.scala 30:19:@1605.4]
  assign ic_io_axi_BVALID = fetch_io_icache_axi_BVALID; // @[Core.scala 30:19:@1604.4]
  assign ic_io_axi_ARREADY = fetch_io_icache_axi_ARREADY; // @[Core.scala 30:19:@1592.4]
  assign ic_io_axi_RID = fetch_io_icache_axi_RID; // @[Core.scala 30:19:@1591.4]
  assign ic_io_axi_RDATA = fetch_io_icache_axi_RDATA; // @[Core.scala 30:19:@1590.4]
  assign ic_io_axi_RRESP = fetch_io_icache_axi_RRESP; // @[Core.scala 30:19:@1589.4]
  assign ic_io_axi_RLAST = fetch_io_icache_axi_RLAST; // @[Core.scala 30:19:@1588.4]
  assign ic_io_axi_RVALID = fetch_io_icache_axi_RVALID; // @[Core.scala 30:19:@1587.4]
  assign ic_io_pause = fetch_io_icache_pause; // @[Core.scala 30:19:@1584.4]
  assign ic_io_flush = fetch_io_icache_flush; // @[Core.scala 30:19:@1583.4]
  assign fetch_clock = clock; // @[:@1573.4]
  assign fetch_reset = reset; // @[:@1574.4]
  assign fetch_io_pc = ctrl_io_pc; // @[Core.scala 31:15:@1625.4]
  assign fetch_io_icache_axi_AWID = 4'h0; // @[Core.scala 30:19:@1622.4]
  assign fetch_io_icache_axi_AWADDR = ic_io_axi_AWADDR; // @[Core.scala 30:19:@1621.4]
  assign fetch_io_icache_axi_AWLEN = 8'h1; // @[Core.scala 30:19:@1620.4]
  assign fetch_io_icache_axi_AWSIZE = 3'h6; // @[Core.scala 30:19:@1619.4]
  assign fetch_io_icache_axi_AWBURST = 2'h1; // @[Core.scala 30:19:@1618.4]
  assign fetch_io_icache_axi_AWCACHE = 4'h0; // @[Core.scala 30:19:@1617.4]
  assign fetch_io_icache_axi_AWPROT = 3'h0; // @[Core.scala 30:19:@1616.4]
  assign fetch_io_icache_axi_AWQOS = 3'h0; // @[Core.scala 30:19:@1615.4]
  assign fetch_io_icache_axi_AWREGION = 4'h0; // @[Core.scala 30:19:@1614.4]
  assign fetch_io_icache_axi_AWVALID = ic_io_axi_AWVALID; // @[Core.scala 30:19:@1613.4]
  assign fetch_io_icache_axi_WDATA = ic_io_axi_WDATA; // @[Core.scala 30:19:@1611.4]
  assign fetch_io_icache_axi_WSTRB = ic_io_axi_WSTRB; // @[Core.scala 30:19:@1610.4]
  assign fetch_io_icache_axi_WLAST = ic_io_axi_WLAST; // @[Core.scala 30:19:@1609.4]
  assign fetch_io_icache_axi_WVALID = ic_io_axi_WVALID; // @[Core.scala 30:19:@1608.4]
  assign fetch_io_icache_axi_BREADY = ic_io_axi_BREADY; // @[Core.scala 30:19:@1603.4]
  assign fetch_io_icache_axi_ARID = 4'h0; // @[Core.scala 30:19:@1602.4]
  assign fetch_io_icache_axi_ARADDR = ic_io_axi_ARADDR; // @[Core.scala 30:19:@1601.4]
  assign fetch_io_icache_axi_ARLEN = 8'h1; // @[Core.scala 30:19:@1600.4]
  assign fetch_io_icache_axi_ARSIZE = 3'h6; // @[Core.scala 30:19:@1599.4]
  assign fetch_io_icache_axi_ARBURST = 2'h1; // @[Core.scala 30:19:@1598.4]
  assign fetch_io_icache_axi_ARCACHE = 4'h0; // @[Core.scala 30:19:@1597.4]
  assign fetch_io_icache_axi_ARPROT = 3'h0; // @[Core.scala 30:19:@1596.4]
  assign fetch_io_icache_axi_ARQOS = 3'h0; // @[Core.scala 30:19:@1595.4]
  assign fetch_io_icache_axi_ARREGION = 4'h0; // @[Core.scala 30:19:@1594.4]
  assign fetch_io_icache_axi_ARVALID = ic_io_axi_ARVALID; // @[Core.scala 30:19:@1593.4]
  assign fetch_io_icache_axi_RREADY = ic_io_axi_RREADY; // @[Core.scala 30:19:@1586.4]
  assign fetch_io_icache_stall = ic_io_stall; // @[Core.scala 30:19:@1585.4]
  assign fetch_io_icache_data = ic_io_data; // @[Core.scala 30:19:@1582.4]
  assign fetch_io_icache_vacant = ic_io_vacant; // @[Core.scala 30:19:@1581.4]
  assign fetch_io_fetch = ctrl_io_fetch_pause == 1'h0; // @[Core.scala 32:18:@1627.4]
  assign fetch_io_axi_AWREADY = io_iaxi_AWREADY; // @[Core.scala 34:16:@1657.4]
  assign fetch_io_axi_WREADY = io_iaxi_WREADY; // @[Core.scala 34:16:@1652.4]
  assign fetch_io_axi_BID = io_iaxi_BID; // @[Core.scala 34:16:@1651.4]
  assign fetch_io_axi_BRESP = io_iaxi_BRESP; // @[Core.scala 34:16:@1650.4]
  assign fetch_io_axi_BVALID = io_iaxi_BVALID; // @[Core.scala 34:16:@1649.4]
  assign fetch_io_axi_ARREADY = io_iaxi_ARREADY; // @[Core.scala 34:16:@1637.4]
  assign fetch_io_axi_RID = io_iaxi_RID; // @[Core.scala 34:16:@1636.4]
  assign fetch_io_axi_RDATA = io_iaxi_RDATA; // @[Core.scala 34:16:@1635.4]
  assign fetch_io_axi_RRESP = io_iaxi_RRESP; // @[Core.scala 34:16:@1634.4]
  assign fetch_io_axi_RLAST = io_iaxi_RLAST; // @[Core.scala 34:16:@1633.4]
  assign fetch_io_axi_RVALID = io_iaxi_RVALID; // @[Core.scala 34:16:@1632.4]
  assign fetch_io_ctrl_pause = ctrl_io_fetch_pause; // @[Core.scala 33:17:@1629.4]
  assign fetch_io_ctrl_flush = ctrl_io_fetch_flush; // @[Core.scala 33:17:@1628.4]
  assign exec_clock = clock; // @[:@1576.4]
  assign exec_reset = reset; // @[:@1577.4]
  assign exec_io_regReaders_0_data = reg$_io_reads_0_data; // @[Core.scala 38:22:@1712.4]
  assign exec_io_regReaders_1_data = reg$_io_reads_1_data; // @[Core.scala 38:22:@1714.4]
  assign exec_io_instr_addr = _T_168[113:66]; // @[Core.scala 37:17:@1711.4]
  assign exec_io_instr_instr_op = _T_168[65:61]; // @[Core.scala 37:17:@1710.4]
  assign exec_io_instr_instr_base = _T_168[60:58]; // @[Core.scala 37:17:@1709.4]
  assign exec_io_instr_instr_imm = $signed(_T_177); // @[Core.scala 37:17:@1708.4]
  assign exec_io_instr_instr_rs1 = _T_168[25:21]; // @[Core.scala 37:17:@1707.4]
  assign exec_io_instr_instr_rs2 = _T_168[20:16]; // @[Core.scala 37:17:@1706.4]
  assign exec_io_instr_instr_rd = _T_168[15:11]; // @[Core.scala 37:17:@1705.4]
  assign exec_io_instr_instr_funct7 = _T_168[10:4]; // @[Core.scala 37:17:@1704.4]
  assign exec_io_instr_instr_funct3 = _T_168[3:1]; // @[Core.scala 37:17:@1703.4]
  assign exec_io_instr_vacant = _T_168[0]; // @[Core.scala 37:17:@1702.4]
  assign exec_io_axi_AWREADY = io_daxi_AWREADY; // @[Core.scala 42:15:@1749.4]
  assign exec_io_axi_WREADY = io_daxi_WREADY; // @[Core.scala 42:15:@1744.4]
  assign exec_io_axi_BID = io_daxi_BID; // @[Core.scala 42:15:@1743.4]
  assign exec_io_axi_BRESP = io_daxi_BRESP; // @[Core.scala 42:15:@1742.4]
  assign exec_io_axi_BVALID = io_daxi_BVALID; // @[Core.scala 42:15:@1741.4]
  assign exec_io_axi_ARREADY = io_daxi_ARREADY; // @[Core.scala 42:15:@1729.4]
  assign exec_io_axi_RID = io_daxi_RID; // @[Core.scala 42:15:@1728.4]
  assign exec_io_axi_RDATA = io_daxi_RDATA; // @[Core.scala 42:15:@1727.4]
  assign exec_io_axi_RRESP = io_daxi_RRESP; // @[Core.scala 42:15:@1726.4]
  assign exec_io_axi_RLAST = io_daxi_RLAST; // @[Core.scala 42:15:@1725.4]
  assign exec_io_axi_RVALID = io_daxi_RVALID; // @[Core.scala 42:15:@1724.4]
  assign exec_io_ctrl_pause = ctrl_io_exec_pause; // @[Core.scala 40:16:@1719.4]
  assign exec_io_ctrl_flush = ctrl_io_exec_flush; // @[Core.scala 40:16:@1718.4]
  assign reg$_clock = clock; // @[:@1579.4]
  assign reg$_reset = reset; // @[:@1580.4]
  assign reg$_io_reads_0_addr = exec_io_regReaders_0_addr; // @[Core.scala 38:22:@1713.4]
  assign reg$_io_reads_1_addr = exec_io_regReaders_1_addr; // @[Core.scala 38:22:@1715.4]
  assign reg$_io_write_addr = exec_io_regWriter_addr; // @[Core.scala 39:21:@1717.4]
  assign reg$_io_write_data = exec_io_regWriter_data; // @[Core.scala 39:21:@1716.4]
endmodule
