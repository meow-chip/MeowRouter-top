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
  output        io_write_full,
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
  output        io_read_empty
);
  wire  xpm_fifo_async_rst; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_wr_en; // @[asyncBridge.scala 69:23]
  wire [260:0] xpm_fifo_async_din; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_full; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_clk; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_rd_en; // @[asyncBridge.scala 69:23]
  wire [260:0] xpm_fifo_async_dout; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_empty; // @[asyncBridge.scala 69:23]
  wire  xpm_fifo_async_prog_full; // @[asyncBridge.scala 69:23]
  wire [1:0] _T; // @[asyncBridge.scala 75:35]
  wire [127:0] _T_7; // @[asyncBridge.scala 75:35]
  wire [132:0] _T_15; // @[asyncBridge.scala 75:35]
  wire [260:0] _T_18;
  xpm_fifo_async #(.READ_DATA_WIDTH(261), .WRITE_DATA_WIDTH(261), .FIFO_WRITE_DEPTH(16), .READ_MODE("fwft"), .FIFO_MEMORY_TYPE("distributed"), .PROG_FULL_THRESH(7), .FIFO_READ_LATENCY(0)) xpm_fifo_async ( // @[asyncBridge.scala 69:23]
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
  assign _T_7 = {io_write_data_ip_id,io_write_data_ip_flags,io_write_data_ip_foff,io_write_data_ip_ttl,io_write_data_ip_proto,io_write_data_ip_chksum,io_write_data_ip_src,io_write_data_ip_dest}; // @[asyncBridge.scala 75:35]
  assign _T_15 = {io_write_data_eth_dest,io_write_data_eth_sender,_T,io_write_data_eth_vlan,io_write_data_ip_version,io_write_data_ip_ihl,io_write_data_ip_dscp,io_write_data_ip_ecn,io_write_data_ip_len}; // @[asyncBridge.scala 75:35]
  assign _T_18 = xpm_fifo_async_dout;
  assign io_write_full = xpm_fifo_async_full; // @[asyncBridge.scala 76:19]
  assign io_read_data_eth_dest = _T_18[260:213]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_sender = _T_18[212:165]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_pactype = _T_18[164:163]; // @[asyncBridge.scala 81:18]
  assign io_read_data_eth_vlan = _T_18[162:160]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_version = _T_18[159:156]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ihl = _T_18[155:152]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_dscp = _T_18[151:146]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ecn = _T_18[145:144]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_len = _T_18[143:128]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_id = _T_18[127:112]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_flags = _T_18[111:109]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_foff = _T_18[108:96]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_ttl = _T_18[95:88]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_proto = _T_18[87:80]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_chksum = _T_18[79:64]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_src = _T_18[63:32]; // @[asyncBridge.scala 81:18]
  assign io_read_data_ip_dest = _T_18[31:0]; // @[asyncBridge.scala 81:18]
  assign io_read_empty = xpm_fifo_async_empty; // @[asyncBridge.scala 82:19]
  assign xpm_fifo_async_rst = reset; // @[asyncBridge.scala 71:18]
  assign xpm_fifo_async_wr_clk = io_write_clk; // @[asyncBridge.scala 73:21]
  assign xpm_fifo_async_wr_en = io_write_en; // @[asyncBridge.scala 74:20]
  assign xpm_fifo_async_din = {_T_15,_T_7}; // @[asyncBridge.scala 75:18]
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
module Ctrl(
  input         clock,
  input         reset,
  output        io_inputWait,
  input         io_forward_stall,
  output        io_forward_pause,
  output        io_arp_pause,
  input         io_encoder_stall,
  output        io_encoder_pause,
  output [47:0] macs_0,
  output [47:0] macs_1,
  output [47:0] macs_2,
  output [47:0] macs_3,
  output [47:0] macs_4,
  output [31:0] ips_0,
  output [31:0] ips_1,
  output [31:0] ips_2,
  output [31:0] ips_3,
  output [31:0] ips_4,
  input  [47:0] cmd_data,
  input  [7:0]  cmd_idx,
  input  [7:0]  cmd_op
);
  reg [47:0] macStore_0; // @[ctrl.scala 69:25]
  reg [63:0] _RAND_0;
  reg [47:0] macStore_1; // @[ctrl.scala 69:25]
  reg [63:0] _RAND_1;
  reg [47:0] macStore_2; // @[ctrl.scala 69:25]
  reg [63:0] _RAND_2;
  reg [47:0] macStore_3; // @[ctrl.scala 69:25]
  reg [63:0] _RAND_3;
  reg [47:0] macStore_4; // @[ctrl.scala 69:25]
  reg [63:0] _RAND_4;
  reg [31:0] ipStore_0; // @[ctrl.scala 77:24]
  reg [31:0] _RAND_5;
  reg [31:0] ipStore_1; // @[ctrl.scala 77:24]
  reg [31:0] _RAND_6;
  reg [31:0] ipStore_2; // @[ctrl.scala 77:24]
  reg [31:0] _RAND_7;
  reg [31:0] ipStore_3; // @[ctrl.scala 77:24]
  reg [31:0] _RAND_8;
  reg [31:0] ipStore_4; // @[ctrl.scala 77:24]
  reg [31:0] _RAND_9;
  reg [7:0] _T_3; // @[ctrl.scala 34:24]
  reg [31:0] _RAND_10;
  wire  _T_4; // @[ctrl.scala 34:29]
  wire  _T_5; // @[ctrl.scala 34:46]
  wire  _T_6; // @[ctrl.scala 34:40]
  wire [7:0] _T_8; // @[Conditional.scala 37:39]
  wire  _T_9; // @[Conditional.scala 37:30]
  wire [2:0] _T_10;
  wire [31:0] _ipStore_T_10; // @[ctrl.scala 99:26 ctrl.scala 99:26]
  wire  _T_13; // @[Conditional.scala 37:30]
  assign _T_4 = _T_3 == 8'h0; // @[ctrl.scala 34:29]
  assign _T_5 = cmd_op != 8'h0; // @[ctrl.scala 34:46]
  assign _T_6 = _T_4 & _T_5; // @[ctrl.scala 34:40]
  assign _T_8 = $unsigned(cmd_op); // @[Conditional.scala 37:39]
  assign _T_9 = 8'h1 == _T_8; // @[Conditional.scala 37:30]
  assign _T_10 = cmd_idx[2:0];
  assign _ipStore_T_10 = cmd_data[31:0]; // @[ctrl.scala 99:26 ctrl.scala 99:26]
  assign _T_13 = 8'h2 == _T_8; // @[Conditional.scala 37:30]
  assign io_inputWait = io_forward_stall | io_encoder_stall; // @[ctrl.scala 64:16]
  assign io_forward_pause = io_forward_stall | io_encoder_stall; // @[ctrl.scala 65:20]
  assign io_arp_pause = io_forward_stall | io_encoder_stall; // @[ctrl.scala 66:16]
  assign io_encoder_pause = io_forward_stall | io_encoder_stall; // @[ctrl.scala 67:20]
  assign macs_0 = macStore_0; // @[ctrl.scala 86:8]
  assign macs_1 = macStore_1; // @[ctrl.scala 86:8]
  assign macs_2 = macStore_2; // @[ctrl.scala 86:8]
  assign macs_3 = macStore_3; // @[ctrl.scala 86:8]
  assign macs_4 = macStore_4; // @[ctrl.scala 86:8]
  assign ips_0 = ipStore_0; // @[ctrl.scala 89:7]
  assign ips_1 = ipStore_1; // @[ctrl.scala 89:7]
  assign ips_2 = ipStore_2; // @[ctrl.scala 89:7]
  assign ips_3 = ipStore_3; // @[ctrl.scala 89:7]
  assign ips_4 = ipStore_4; // @[ctrl.scala 89:7]
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
  macStore_0 = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  macStore_1 = _RAND_1[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  macStore_2 = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  macStore_3 = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  macStore_4 = _RAND_4[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  ipStore_0 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  ipStore_1 = _RAND_6[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  ipStore_2 = _RAND_7[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  ipStore_3 = _RAND_8[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  ipStore_4 = _RAND_9[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  _T_3 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      macStore_0 <= 48'h0;
    end else if (_T_6) begin
      if (!(_T_9)) begin
        if (_T_13) begin
          if (3'h0 == _T_10) begin
            macStore_0 <= cmd_data;
          end
        end
      end
    end
    if (reset) begin
      macStore_1 <= 48'h1;
    end else if (_T_6) begin
      if (!(_T_9)) begin
        if (_T_13) begin
          if (3'h1 == _T_10) begin
            macStore_1 <= cmd_data;
          end
        end
      end
    end
    if (reset) begin
      macStore_2 <= 48'h2;
    end else if (_T_6) begin
      if (!(_T_9)) begin
        if (_T_13) begin
          if (3'h2 == _T_10) begin
            macStore_2 <= cmd_data;
          end
        end
      end
    end
    if (reset) begin
      macStore_3 <= 48'h3;
    end else if (_T_6) begin
      if (!(_T_9)) begin
        if (_T_13) begin
          if (3'h3 == _T_10) begin
            macStore_3 <= cmd_data;
          end
        end
      end
    end
    if (reset) begin
      macStore_4 <= 48'h4;
    end else if (_T_6) begin
      if (!(_T_9)) begin
        if (_T_13) begin
          if (3'h4 == _T_10) begin
            macStore_4 <= cmd_data;
          end
        end
      end
    end
    if (reset) begin
      ipStore_0 <= 32'ha010001;
    end else if (_T_6) begin
      if (_T_9) begin
        if (3'h0 == _T_10) begin
          ipStore_0 <= _ipStore_T_10;
        end
      end
    end
    if (reset) begin
      ipStore_1 <= 32'ha000101;
    end else if (_T_6) begin
      if (_T_9) begin
        if (3'h1 == _T_10) begin
          ipStore_1 <= _ipStore_T_10;
        end
      end
    end
    if (reset) begin
      ipStore_2 <= 32'ha000201;
    end else if (_T_6) begin
      if (_T_9) begin
        if (3'h2 == _T_10) begin
          ipStore_2 <= _ipStore_T_10;
        end
      end
    end
    if (reset) begin
      ipStore_3 <= 32'ha000301;
    end else if (_T_6) begin
      if (_T_9) begin
        if (3'h3 == _T_10) begin
          ipStore_3 <= _ipStore_T_10;
        end
      end
    end
    if (reset) begin
      ipStore_4 <= 32'ha000401;
    end else if (_T_6) begin
      if (_T_9) begin
        if (3'h4 == _T_10) begin
          ipStore_4 <= _ipStore_T_10;
        end
      end
    end
    _T_3 <= cmd_op;
  end
endmodule
module Acceptor(
  input         clock,
  input         reset,
  input  [47:0] macs_0,
  input  [47:0] macs_1,
  input  [47:0] macs_2,
  input  [47:0] macs_3,
  input  [47:0] macs_4,
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
  input         io_writer_full,
  output        io_payloadWriter_clk,
  output        io_payloadWriter_en,
  output [7:0]  io_payloadWriter_data_data,
  output        io_payloadWriter_data_last,
  input         io_payloadWriter_progfull
);
  reg [11:0] cnt; // @[acceptor.scala 23:20]
  reg [31:0] _RAND_0;
  reg [1:0] state; // @[acceptor.scala 29:22]
  reg [31:0] _RAND_1;
  reg [7:0] header_0; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_2;
  reg [7:0] header_1; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_3;
  reg [7:0] header_2; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_4;
  reg [7:0] header_3; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_5;
  reg [7:0] header_4; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_6;
  reg [7:0] header_5; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_7;
  reg [7:0] header_6; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_8;
  reg [7:0] header_7; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_9;
  reg [7:0] header_8; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_10;
  reg [7:0] header_9; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_11;
  reg [7:0] header_10; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_12;
  reg [7:0] header_11; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_13;
  reg [7:0] header_12; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_14;
  reg [7:0] header_13; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_15;
  reg [7:0] header_14; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_16;
  reg [7:0] header_15; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_17;
  reg [7:0] header_16; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_18;
  reg [7:0] header_17; // @[acceptor.scala 31:19]
  reg [31:0] _RAND_19;
  reg [7:0] ip_0; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_20;
  reg [7:0] ip_1; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_21;
  reg [7:0] ip_2; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_22;
  reg [7:0] ip_3; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_23;
  reg [7:0] ip_4; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_24;
  reg [7:0] ip_5; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_25;
  reg [7:0] ip_6; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_26;
  reg [7:0] ip_7; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_27;
  reg [7:0] ip_8; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_28;
  reg [7:0] ip_9; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_29;
  reg [7:0] ip_10; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_30;
  reg [7:0] ip_11; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_31;
  reg [7:0] ip_12; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_32;
  reg [7:0] ip_13; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_33;
  reg [7:0] ip_14; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_34;
  reg [7:0] ip_15; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_35;
  reg [7:0] ip_16; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_36;
  reg [7:0] ip_17; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_37;
  reg [7:0] ip_18; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_38;
  reg [7:0] ip_19; // @[acceptor.scala 32:15]
  reg [31:0] _RAND_39;
  wire [11:0] _T_1; // @[acceptor.scala 35:20]
  wire [4:0] _T_2;
  wire [7:0] fusedHeader_0; // @[acceptor.scala 35:27]
  wire [7:0] fusedHeader_1; // @[acceptor.scala 35:27]
  wire  _T_3; // @[pactype.scala 13:16]
  wire  _T_4; // @[pactype.scala 13:34]
  wire  _T_5; // @[pactype.scala 13:25]
  wire  _T_7; // @[pactype.scala 15:40]
  wire  _T_8; // @[pactype.scala 15:31]
  wire [1:0] _GEN_18; // @[pactype.scala 15:50]
  wire  _T_9; // @[pactype.scala 13:16]
  wire  _T_10; // @[pactype.scala 13:34]
  wire  _T_11; // @[pactype.scala 13:25]
  wire  _T_13; // @[pactype.scala 15:40]
  wire  _T_14; // @[pactype.scala 15:31]
  wire [1:0] _GEN_20; // @[pactype.scala 15:50]
  wire [1:0] fusedPactype; // @[pactype.scala 13:44]
  reg  dropped; // @[acceptor.scala 42:24]
  reg [31:0] _RAND_40;
  reg  emitted; // @[acceptor.scala 46:24]
  reg [31:0] _RAND_41;
  wire [71:0] _T_22; // @[acceptor.scala 50:32]
  wire [143:0] _T_31; // @[acceptor.scala 50:32]
  wire [95:0] _T_32; // @[acceptor.scala 50:39]
  wire [47:0] output_eth_dest; // @[acceptor.scala 51:37]
  wire [79:0] _T_60; // @[acceptor.scala 54:27]
  wire [79:0] _T_69; // @[acceptor.scala 54:27]
  wire [159:0] _T_70; // @[acceptor.scala 54:27]
  wire  _T_85; // @[acceptor.scala 55:35]
  wire [2:0] output_eth_vlan; // @[acceptor.scala 40:20 acceptor.scala 52:19]
  wire [47:0] _GEN_23; // @[acceptor.scala 55:76]
  wire [47:0] _GEN_24; // @[acceptor.scala 55:76]
  wire [47:0] _GEN_25; // @[acceptor.scala 55:76]
  wire [47:0] _GEN_26; // @[acceptor.scala 55:76]
  wire  _T_86; // @[acceptor.scala 55:76]
  wire  destMatch; // @[acceptor.scala 55:57]
  wire [1:0] _T_88; // @[Conditional.scala 37:39]
  wire  _T_89; // @[Conditional.scala 37:30]
  wire  _T_93; // @[acceptor.scala 66:18]
  wire [11:0] _T_95; // @[acceptor.scala 67:22]
  wire  _T_96; // @[acceptor.scala 69:29]
  wire  _T_97; // @[acceptor.scala 74:39]
  wire  _T_98; // @[acceptor.scala 74:71]
  wire  _T_99; // @[acceptor.scala 74:68]
  wire  _GEN_47; // @[acceptor.scala 69:47]
  wire  _GEN_51; // @[acceptor.scala 66:38]
  wire  _GEN_55; // @[acceptor.scala 65:26]
  wire  _T_102; // @[Conditional.scala 37:30]
  wire [11:0] _T_104; // @[acceptor.scala 82:36]
  wire [4:0] _T_105;
  wire  _T_106; // @[acceptor.scala 85:18]
  wire  _GEN_78; // @[acceptor.scala 85:45]
  wire  _GEN_82; // @[acceptor.scala 84:26]
  wire  _T_114; // @[Conditional.scala 37:30]
  wire  _T_115; // @[acceptor.scala 96:46]
  wire  _T_116; // @[acceptor.scala 96:43]
  wire  _T_117; // @[acceptor.scala 100:25]
  wire  _GEN_88; // @[Conditional.scala 39:67]
  wire  _GEN_115; // @[Conditional.scala 39:67]
  wire  _GEN_118; // @[Conditional.scala 39:67]
  assign _T_1 = 12'h11 - cnt; // @[acceptor.scala 35:20]
  assign _T_2 = _T_1[4:0];
  assign fusedHeader_0 = 5'h0 == _T_2 ? io_rx_tdata : header_0; // @[acceptor.scala 35:27]
  assign fusedHeader_1 = 5'h1 == _T_2 ? io_rx_tdata : header_1; // @[acceptor.scala 35:27]
  assign _T_3 = header_1 == 8'h8; // @[pactype.scala 13:16]
  assign _T_4 = header_0 == 8'h0; // @[pactype.scala 13:34]
  assign _T_5 = _T_3 & _T_4; // @[pactype.scala 13:25]
  assign _T_7 = header_0 == 8'h6; // @[pactype.scala 15:40]
  assign _T_8 = _T_3 & _T_7; // @[pactype.scala 15:31]
  assign _GEN_18 = _T_8 ? 2'h2 : 2'h0; // @[pactype.scala 15:50]
  assign _T_9 = fusedHeader_1 == 8'h8; // @[pactype.scala 13:16]
  assign _T_10 = fusedHeader_0 == 8'h0; // @[pactype.scala 13:34]
  assign _T_11 = _T_9 & _T_10; // @[pactype.scala 13:25]
  assign _T_13 = fusedHeader_0 == 8'h6; // @[pactype.scala 15:40]
  assign _T_14 = _T_9 & _T_13; // @[pactype.scala 15:31]
  assign _GEN_20 = _T_14 ? 2'h2 : 2'h0; // @[pactype.scala 15:50]
  assign fusedPactype = _T_11 ? 2'h1 : _GEN_20; // @[pactype.scala 13:44]
  assign _T_22 = {header_8,header_7,header_6,header_5,header_4,header_3,header_2,header_1,header_0}; // @[acceptor.scala 50:32]
  assign _T_31 = {header_17,header_16,header_15,header_14,header_13,header_12,header_11,header_10,header_9,_T_22}; // @[acceptor.scala 50:32]
  assign _T_32 = _T_31[143:48]; // @[acceptor.scala 50:39]
  assign output_eth_dest = _T_31[143:96]; // @[acceptor.scala 51:37]
  assign _T_60 = {ip_9,ip_8,ip_7,ip_6,ip_5,ip_4,ip_3,ip_2,ip_1,ip_0}; // @[acceptor.scala 54:27]
  assign _T_69 = {ip_19,ip_18,ip_17,ip_16,ip_15,ip_14,ip_13,ip_12,ip_11,ip_10}; // @[acceptor.scala 54:27]
  assign _T_70 = {_T_69,_T_60}; // @[acceptor.scala 54:27]
  assign _T_85 = output_eth_dest == 48'hffffffffffff; // @[acceptor.scala 55:35]
  assign output_eth_vlan = header_2[2:0]; // @[acceptor.scala 40:20 acceptor.scala 52:19]
  assign _GEN_23 = 3'h1 == output_eth_vlan ? macs_1 : macs_0; // @[acceptor.scala 55:76]
  assign _GEN_24 = 3'h2 == output_eth_vlan ? macs_2 : _GEN_23; // @[acceptor.scala 55:76]
  assign _GEN_25 = 3'h3 == output_eth_vlan ? macs_3 : _GEN_24; // @[acceptor.scala 55:76]
  assign _GEN_26 = 3'h4 == output_eth_vlan ? macs_4 : _GEN_25; // @[acceptor.scala 55:76]
  assign _T_86 = output_eth_dest == _GEN_26; // @[acceptor.scala 55:76]
  assign destMatch = _T_85 | _T_86; // @[acceptor.scala 55:57]
  assign _T_88 = $unsigned(state); // @[Conditional.scala 37:39]
  assign _T_89 = 2'h0 == _T_88; // @[Conditional.scala 37:30]
  assign _T_93 = cnt < 12'h11; // @[acceptor.scala 66:18]
  assign _T_95 = cnt + 12'h1; // @[acceptor.scala 67:22]
  assign _T_96 = fusedPactype == 2'h1; // @[acceptor.scala 69:29]
  assign _T_97 = io_writer_full | io_payloadWriter_progfull; // @[acceptor.scala 74:39]
  assign _T_98 = destMatch == 1'h0; // @[acceptor.scala 74:71]
  assign _T_99 = _T_97 | _T_98; // @[acceptor.scala 74:68]
  assign _GEN_47 = _T_96 ? 1'h0 : 1'h1; // @[acceptor.scala 69:47]
  assign _GEN_51 = _T_93 ? 1'h0 : _GEN_47; // @[acceptor.scala 66:38]
  assign _GEN_55 = io_rx_tvalid & _GEN_51; // @[acceptor.scala 65:26]
  assign _T_102 = 2'h1 == _T_88; // @[Conditional.scala 37:30]
  assign _T_104 = 12'h13 - cnt; // @[acceptor.scala 82:36]
  assign _T_105 = _T_104[4:0];
  assign _T_106 = cnt < 12'h13; // @[acceptor.scala 85:18]
  assign _GEN_78 = _T_106 ? 1'h0 : 1'h1; // @[acceptor.scala 85:45]
  assign _GEN_82 = io_rx_tvalid & _GEN_78; // @[acceptor.scala 84:26]
  assign _T_114 = 2'h2 == _T_88; // @[Conditional.scala 37:30]
  assign _T_115 = dropped == 1'h0; // @[acceptor.scala 96:46]
  assign _T_116 = io_rx_tvalid & _T_115; // @[acceptor.scala 96:43]
  assign _T_117 = io_rx_tvalid & io_rx_tlast; // @[acceptor.scala 100:25]
  assign _GEN_88 = _T_114 & _T_116; // @[Conditional.scala 39:67]
  assign _GEN_115 = _T_102 & _GEN_82; // @[Conditional.scala 39:67]
  assign _GEN_118 = _T_102 ? 1'h0 : _GEN_88; // @[Conditional.scala 39:67]
  assign io_writer_clk = clock; // @[acceptor.scala 111:17]
  assign io_writer_en = emitted & _T_115; // @[acceptor.scala 108:16]
  assign io_writer_data_eth_dest = _T_31[143:96]; // @[acceptor.scala 109:18]
  assign io_writer_data_eth_sender = _T_32[47:0]; // @[acceptor.scala 109:18]
  assign io_writer_data_eth_pactype = _T_5 ? 2'h1 : _GEN_18; // @[acceptor.scala 109:18]
  assign io_writer_data_eth_vlan = header_2[2:0]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_version = _T_70[159:156]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_ihl = _T_70[155:152]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_dscp = _T_70[151:146]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_ecn = _T_70[145:144]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_len = _T_70[143:128]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_id = _T_70[127:112]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_flags = _T_70[111:109]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_foff = _T_70[108:96]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_ttl = _T_70[95:88]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_proto = _T_70[87:80]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_chksum = _T_70[79:64]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_src = _T_70[63:32]; // @[acceptor.scala 109:18]
  assign io_writer_data_ip_dest = _T_70[31:0]; // @[acceptor.scala 109:18]
  assign io_payloadWriter_clk = clock; // @[acceptor.scala 57:24]
  assign io_payloadWriter_en = _T_89 ? 1'h0 : _GEN_118; // @[acceptor.scala 59:23 acceptor.scala 96:27]
  assign io_payloadWriter_data_data = io_rx_tdata; // @[acceptor.scala 97:34]
  assign io_payloadWriter_data_last = io_rx_tlast; // @[acceptor.scala 98:34]
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
  state = _RAND_1[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  header_0 = _RAND_2[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  header_1 = _RAND_3[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  header_2 = _RAND_4[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  header_3 = _RAND_5[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  header_4 = _RAND_6[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  header_5 = _RAND_7[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  header_6 = _RAND_8[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  header_7 = _RAND_9[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  header_8 = _RAND_10[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  header_9 = _RAND_11[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  header_10 = _RAND_12[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  header_11 = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  header_12 = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  header_13 = _RAND_15[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  header_14 = _RAND_16[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  header_15 = _RAND_17[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  header_16 = _RAND_18[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_19 = {1{`RANDOM}};
  header_17 = _RAND_19[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  ip_0 = _RAND_20[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  ip_1 = _RAND_21[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  ip_2 = _RAND_22[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_23 = {1{`RANDOM}};
  ip_3 = _RAND_23[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_24 = {1{`RANDOM}};
  ip_4 = _RAND_24[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_25 = {1{`RANDOM}};
  ip_5 = _RAND_25[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_26 = {1{`RANDOM}};
  ip_6 = _RAND_26[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_27 = {1{`RANDOM}};
  ip_7 = _RAND_27[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_28 = {1{`RANDOM}};
  ip_8 = _RAND_28[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_29 = {1{`RANDOM}};
  ip_9 = _RAND_29[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_30 = {1{`RANDOM}};
  ip_10 = _RAND_30[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_31 = {1{`RANDOM}};
  ip_11 = _RAND_31[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_32 = {1{`RANDOM}};
  ip_12 = _RAND_32[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_33 = {1{`RANDOM}};
  ip_13 = _RAND_33[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_34 = {1{`RANDOM}};
  ip_14 = _RAND_34[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_35 = {1{`RANDOM}};
  ip_15 = _RAND_35[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_36 = {1{`RANDOM}};
  ip_16 = _RAND_36[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_37 = {1{`RANDOM}};
  ip_17 = _RAND_37[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_38 = {1{`RANDOM}};
  ip_18 = _RAND_38[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_39 = {1{`RANDOM}};
  ip_19 = _RAND_39[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_40 = {1{`RANDOM}};
  dropped = _RAND_40[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_41 = {1{`RANDOM}};
  emitted = _RAND_41[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 12'h0;
    end else if (_T_89) begin
      if (io_rx_tvalid) begin
        if (_T_93) begin
          cnt <= _T_95;
        end else if (_T_96) begin
          cnt <= 12'h0;
        end
      end
    end else if (_T_102) begin
      if (io_rx_tvalid) begin
        if (_T_106) begin
          cnt <= _T_95;
        end
      end
    end else if (_T_114) begin
      if (_T_117) begin
        cnt <= 12'h0;
      end
    end
    if (reset) begin
      state <= 2'h0;
    end else if (_T_89) begin
      if (io_rx_tvalid) begin
        if (!(_T_93)) begin
          if (_T_96) begin
            state <= 2'h1;
          end else begin
            state <= 2'h2;
          end
        end
      end
    end else if (_T_102) begin
      if (io_rx_tvalid) begin
        if (!(_T_106)) begin
          state <= 2'h2;
        end
      end
    end else if (_T_114) begin
      if (_T_117) begin
        state <= 2'h0;
      end
    end
    if (_T_89) begin
      if (5'h0 == _T_2) begin
        header_0 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h1 == _T_2) begin
        header_1 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h2 == _T_2) begin
        header_2 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h3 == _T_2) begin
        header_3 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h4 == _T_2) begin
        header_4 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h5 == _T_2) begin
        header_5 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h6 == _T_2) begin
        header_6 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h7 == _T_2) begin
        header_7 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h8 == _T_2) begin
        header_8 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h9 == _T_2) begin
        header_9 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'ha == _T_2) begin
        header_10 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'hb == _T_2) begin
        header_11 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'hc == _T_2) begin
        header_12 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'hd == _T_2) begin
        header_13 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'he == _T_2) begin
        header_14 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'hf == _T_2) begin
        header_15 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h10 == _T_2) begin
        header_16 <= io_rx_tdata;
      end
    end
    if (_T_89) begin
      if (5'h11 == _T_2) begin
        header_17 <= io_rx_tdata;
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h0 == _T_105) begin
          ip_0 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h1 == _T_105) begin
          ip_1 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h2 == _T_105) begin
          ip_2 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h3 == _T_105) begin
          ip_3 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h4 == _T_105) begin
          ip_4 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h5 == _T_105) begin
          ip_5 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h6 == _T_105) begin
          ip_6 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h7 == _T_105) begin
          ip_7 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h8 == _T_105) begin
          ip_8 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h9 == _T_105) begin
          ip_9 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'ha == _T_105) begin
          ip_10 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'hb == _T_105) begin
          ip_11 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'hc == _T_105) begin
          ip_12 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'hd == _T_105) begin
          ip_13 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'he == _T_105) begin
          ip_14 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'hf == _T_105) begin
          ip_15 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h10 == _T_105) begin
          ip_16 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h11 == _T_105) begin
          ip_17 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h12 == _T_105) begin
          ip_18 <= io_rx_tdata;
        end
      end
    end
    if (!(_T_89)) begin
      if (_T_102) begin
        if (5'h13 == _T_105) begin
          ip_19 <= io_rx_tdata;
        end
      end
    end
    if (reset) begin
      dropped <= 1'h0;
    end else if (_T_89) begin
      if (io_rx_tvalid) begin
        if (!(_T_93)) begin
          if (!(_T_96)) begin
            dropped <= _T_99;
          end
        end
      end
    end else if (_T_102) begin
      if (io_rx_tvalid) begin
        if (!(_T_106)) begin
          dropped <= _T_99;
        end
      end
    end else if (_T_114) begin
      if (_T_117) begin
        dropped <= 1'h0;
      end
    end
    if (_T_89) begin
      emitted <= _GEN_55;
    end else begin
      emitted <= _GEN_115;
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
  output [2:0]  io_output_lookup_status,
  output [1:0]  io_outputStatus,
  input  [31:0] ips_0,
  input  [31:0] ips_1,
  input  [31:0] ips_2,
  input  [31:0] ips_3,
  input  [31:0] ips_4
);
  reg [2:0] cnt; // @[linear.scala 56:16]
  reg [31:0] _RAND_0;
  reg [5:0] shiftCnt; // @[linear.scala 57:21]
  reg [31:0] _RAND_1;
  reg [47:0] working_eth_dest; // @[linear.scala 59:20]
  reg [63:0] _RAND_2;
  reg [47:0] working_eth_sender; // @[linear.scala 59:20]
  reg [63:0] _RAND_3;
  reg [1:0] working_eth_pactype; // @[linear.scala 59:20]
  reg [31:0] _RAND_4;
  reg [2:0] working_eth_vlan; // @[linear.scala 59:20]
  reg [31:0] _RAND_5;
  reg [3:0] working_ip_version; // @[linear.scala 59:20]
  reg [31:0] _RAND_6;
  reg [3:0] working_ip_ihl; // @[linear.scala 59:20]
  reg [31:0] _RAND_7;
  reg [5:0] working_ip_dscp; // @[linear.scala 59:20]
  reg [31:0] _RAND_8;
  reg [1:0] working_ip_ecn; // @[linear.scala 59:20]
  reg [31:0] _RAND_9;
  reg [15:0] working_ip_len; // @[linear.scala 59:20]
  reg [31:0] _RAND_10;
  reg [15:0] working_ip_id; // @[linear.scala 59:20]
  reg [31:0] _RAND_11;
  reg [2:0] working_ip_flags; // @[linear.scala 59:20]
  reg [31:0] _RAND_12;
  reg [12:0] working_ip_foff; // @[linear.scala 59:20]
  reg [31:0] _RAND_13;
  reg [7:0] working_ip_ttl; // @[linear.scala 59:20]
  reg [31:0] _RAND_14;
  reg [7:0] working_ip_proto; // @[linear.scala 59:20]
  reg [31:0] _RAND_15;
  reg [15:0] working_ip_chksum; // @[linear.scala 59:20]
  reg [31:0] _RAND_16;
  reg [31:0] working_ip_src; // @[linear.scala 59:20]
  reg [31:0] _RAND_17;
  reg [31:0] working_ip_dest; // @[linear.scala 59:20]
  reg [31:0] _RAND_18;
  reg [2:0] lookup_status; // @[linear.scala 60:19]
  reg [31:0] _RAND_19;
  reg [31:0] addr; // @[linear.scala 61:17]
  reg [31:0] _RAND_20;
  reg [1:0] status; // @[linear.scala 62:23]
  reg [31:0] _RAND_21;
  reg  state; // @[linear.scala 69:22]
  reg [31:0] _RAND_22;
  wire  _T_33; // @[Conditional.scala 37:30]
  wire  _T_34; // @[linear.scala 75:12]
  wire  _T_35; // @[linear.scala 78:24]
  wire  _T_36; // @[linear.scala 79:37]
  wire [31:0] _GEN_1; // @[linear.scala 80:35]
  wire [31:0] _GEN_2; // @[linear.scala 80:35]
  wire [31:0] _GEN_3; // @[linear.scala 80:35]
  wire [31:0] _GEN_4; // @[linear.scala 80:35]
  wire  _T_37; // @[linear.scala 80:35]
  wire  _T_38; // @[linear.scala 80:86]
  wire  _T_39; // @[linear.scala 80:62]
  wire  _T_41; // @[linear.scala 99:16]
  wire [1:0] _T_42;
  wire [31:0] _GEN_49; // @[linear.scala 102:28]
  wire [31:0] _GEN_52; // @[linear.scala 102:28]
  wire [31:0] _GEN_55; // @[linear.scala 102:28]
  wire  _T_43; // @[linear.scala 102:28]
  wire [5:0] _T_45; // @[linear.scala 103:30]
  wire [30:0] _T_46; // @[linear.scala 104:22]
  wire  _T_48; // @[linear.scala 106:32]
  wire [2:0] _T_51; // @[linear.scala 111:22]
  assign _T_33 = 1'h0 == state; // @[Conditional.scala 37:30]
  assign _T_34 = io_pause == 1'h0; // @[linear.scala 75:12]
  assign _T_35 = io_status != 2'h0; // @[linear.scala 78:24]
  assign _T_36 = io_input_eth_pactype == 2'h1; // @[linear.scala 79:37]
  assign _GEN_1 = 3'h1 == io_input_eth_vlan ? ips_1 : ips_0; // @[linear.scala 80:35]
  assign _GEN_2 = 3'h2 == io_input_eth_vlan ? ips_2 : _GEN_1; // @[linear.scala 80:35]
  assign _GEN_3 = 3'h3 == io_input_eth_vlan ? ips_3 : _GEN_2; // @[linear.scala 80:35]
  assign _GEN_4 = 3'h4 == io_input_eth_vlan ? ips_4 : _GEN_3; // @[linear.scala 80:35]
  assign _T_37 = io_input_ip_dest == _GEN_4; // @[linear.scala 80:35]
  assign _T_38 = io_input_ip_dest == 32'hffffffff; // @[linear.scala 80:86]
  assign _T_39 = _T_37 | _T_38; // @[linear.scala 80:62]
  assign _T_41 = cnt == 3'h4; // @[linear.scala 99:16]
  assign _T_42 = cnt[1:0];
  assign _GEN_49 = 2'h1 == _T_42 ? 32'ha0002 : 32'ha0001; // @[linear.scala 102:28]
  assign _GEN_52 = 2'h2 == _T_42 ? 32'ha0003 : _GEN_49; // @[linear.scala 102:28]
  assign _GEN_55 = 2'h3 == _T_42 ? 32'ha0004 : _GEN_52; // @[linear.scala 102:28]
  assign _T_43 = shiftCnt != 6'h18; // @[linear.scala 102:28]
  assign _T_45 = shiftCnt - 6'h1; // @[linear.scala 103:30]
  assign _T_46 = addr[31:1]; // @[linear.scala 104:22]
  assign _T_48 = _GEN_55 == addr; // @[linear.scala 106:32]
  assign _T_51 = cnt + 3'h1; // @[linear.scala 111:22]
  assign io_stall = state; // @[linear.scala 71:12]
  assign io_output_packet_eth_dest = working_eth_dest; // @[linear.scala 64:20]
  assign io_output_packet_eth_sender = working_eth_sender; // @[linear.scala 64:20]
  assign io_output_packet_eth_pactype = working_eth_pactype; // @[linear.scala 64:20]
  assign io_output_packet_eth_vlan = working_eth_vlan; // @[linear.scala 64:20]
  assign io_output_packet_ip_version = working_ip_version; // @[linear.scala 64:20]
  assign io_output_packet_ip_ihl = working_ip_ihl; // @[linear.scala 64:20]
  assign io_output_packet_ip_dscp = working_ip_dscp; // @[linear.scala 64:20]
  assign io_output_packet_ip_ecn = working_ip_ecn; // @[linear.scala 64:20]
  assign io_output_packet_ip_len = working_ip_len; // @[linear.scala 64:20]
  assign io_output_packet_ip_id = working_ip_id; // @[linear.scala 64:20]
  assign io_output_packet_ip_flags = working_ip_flags; // @[linear.scala 64:20]
  assign io_output_packet_ip_foff = working_ip_foff; // @[linear.scala 64:20]
  assign io_output_packet_ip_ttl = working_ip_ttl; // @[linear.scala 64:20]
  assign io_output_packet_ip_proto = working_ip_proto; // @[linear.scala 64:20]
  assign io_output_packet_ip_chksum = working_ip_chksum; // @[linear.scala 64:20]
  assign io_output_packet_ip_src = working_ip_src; // @[linear.scala 64:20]
  assign io_output_packet_ip_dest = working_ip_dest; // @[linear.scala 64:20]
  assign io_output_lookup_status = lookup_status; // @[linear.scala 65:20]
  assign io_outputStatus = status; // @[linear.scala 66:19]
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
  lookup_status = _RAND_19[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_20 = {1{`RANDOM}};
  addr = _RAND_20[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_21 = {1{`RANDOM}};
  status = _RAND_21[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_22 = {1{`RANDOM}};
  state = _RAND_22[0:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_39)) begin
              cnt <= 3'h0;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_41)) begin
        if (!(_T_43)) begin
          if (!(_T_48)) begin
            cnt <= _T_51;
          end
        end
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_39)) begin
              shiftCnt <= 6'h20;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_41)) begin
        if (_T_43) begin
          shiftCnt <= _T_45;
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
        if (_T_35) begin
          if (_T_36) begin
            if (_T_39) begin
              lookup_status <= 3'h0;
            end
          end else begin
            lookup_status <= 3'h0;
          end
        end
      end
    end else if (state) begin
      if (_T_41) begin
        lookup_status <= 3'h1;
      end else if (!(_T_43)) begin
        if (_T_48) begin
          lookup_status <= 3'h2;
        end
      end
    end
    if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (!(_T_39)) begin
              addr <= io_input_ip_dest;
            end
          end
        end
      end
    end else if (state) begin
      if (!(_T_41)) begin
        if (_T_43) begin
          addr <= {{1'd0}, _T_46};
        end
      end
    end
    if (reset) begin
      status <= 2'h0;
    end else if (_T_33) begin
      if (_T_34) begin
        if (_T_35) begin
          if (_T_36) begin
            if (_T_39) begin
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
            if (!(_T_39)) begin
              state <= 1'h1;
            end
          end
        end
      end
    end else if (state) begin
      if (_T_41) begin
        state <= 1'h0;
      end else if (!(_T_43)) begin
        if (_T_48) begin
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
  input  [2:0]  io_input_lookup_status,
  input  [1:0]  io_status,
  input         io_pause,
  output [2:0]  io_output_forward_status,
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
  output [1:0]  io_outputStatus,
  input  [47:0] macs_0
);
  reg [2:0] pipe_forward_status; // @[arp.scala 53:17]
  reg [31:0] _RAND_0;
  reg [47:0] pipe_packet_eth_dest; // @[arp.scala 53:17]
  reg [63:0] _RAND_1;
  reg [47:0] pipe_packet_eth_sender; // @[arp.scala 53:17]
  reg [63:0] _RAND_2;
  reg [1:0] pipe_packet_eth_pactype; // @[arp.scala 53:17]
  reg [31:0] _RAND_3;
  reg [2:0] pipe_packet_eth_vlan; // @[arp.scala 53:17]
  reg [31:0] _RAND_4;
  reg [3:0] pipe_packet_ip_version; // @[arp.scala 53:17]
  reg [31:0] _RAND_5;
  reg [3:0] pipe_packet_ip_ihl; // @[arp.scala 53:17]
  reg [31:0] _RAND_6;
  reg [5:0] pipe_packet_ip_dscp; // @[arp.scala 53:17]
  reg [31:0] _RAND_7;
  reg [1:0] pipe_packet_ip_ecn; // @[arp.scala 53:17]
  reg [31:0] _RAND_8;
  reg [15:0] pipe_packet_ip_len; // @[arp.scala 53:17]
  reg [31:0] _RAND_9;
  reg [15:0] pipe_packet_ip_id; // @[arp.scala 53:17]
  reg [31:0] _RAND_10;
  reg [2:0] pipe_packet_ip_flags; // @[arp.scala 53:17]
  reg [31:0] _RAND_11;
  reg [12:0] pipe_packet_ip_foff; // @[arp.scala 53:17]
  reg [31:0] _RAND_12;
  reg [7:0] pipe_packet_ip_ttl; // @[arp.scala 53:17]
  reg [31:0] _RAND_13;
  reg [7:0] pipe_packet_ip_proto; // @[arp.scala 53:17]
  reg [31:0] _RAND_14;
  reg [15:0] pipe_packet_ip_chksum; // @[arp.scala 53:17]
  reg [31:0] _RAND_15;
  reg [31:0] pipe_packet_ip_src; // @[arp.scala 53:17]
  reg [31:0] _RAND_16;
  reg [31:0] pipe_packet_ip_dest; // @[arp.scala 53:17]
  reg [31:0] _RAND_17;
  reg [1:0] pipeStatus; // @[arp.scala 54:27]
  reg [31:0] _RAND_18;
  wire  _T_144; // @[arp.scala 56:8]
  wire  _T_145; // @[arp.scala 62:20]
  assign _T_144 = io_pause == 1'h0; // @[arp.scala 56:8]
  assign _T_145 = io_status == 2'h1; // @[arp.scala 62:20]
  assign io_output_forward_status = pipe_forward_status; // @[arp.scala 73:13]
  assign io_output_packet_eth_dest = pipe_packet_eth_dest; // @[arp.scala 73:13]
  assign io_output_packet_eth_sender = pipe_packet_eth_sender; // @[arp.scala 73:13]
  assign io_output_packet_eth_pactype = pipe_packet_eth_pactype; // @[arp.scala 73:13]
  assign io_output_packet_eth_vlan = pipe_packet_eth_vlan; // @[arp.scala 73:13]
  assign io_output_packet_ip_version = pipe_packet_ip_version; // @[arp.scala 73:13]
  assign io_output_packet_ip_ihl = pipe_packet_ip_ihl; // @[arp.scala 73:13]
  assign io_output_packet_ip_dscp = pipe_packet_ip_dscp; // @[arp.scala 73:13]
  assign io_output_packet_ip_ecn = pipe_packet_ip_ecn; // @[arp.scala 73:13]
  assign io_output_packet_ip_len = pipe_packet_ip_len; // @[arp.scala 73:13]
  assign io_output_packet_ip_id = pipe_packet_ip_id; // @[arp.scala 73:13]
  assign io_output_packet_ip_flags = pipe_packet_ip_flags; // @[arp.scala 73:13]
  assign io_output_packet_ip_foff = pipe_packet_ip_foff; // @[arp.scala 73:13]
  assign io_output_packet_ip_ttl = pipe_packet_ip_ttl; // @[arp.scala 73:13]
  assign io_output_packet_ip_proto = pipe_packet_ip_proto; // @[arp.scala 73:13]
  assign io_output_packet_ip_chksum = pipe_packet_ip_chksum; // @[arp.scala 73:13]
  assign io_output_packet_ip_src = pipe_packet_ip_src; // @[arp.scala 73:13]
  assign io_output_packet_ip_dest = pipe_packet_ip_dest; // @[arp.scala 73:13]
  assign io_outputStatus = pipeStatus; // @[arp.scala 72:19]
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
  pipe_forward_status = _RAND_0[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  pipe_packet_eth_dest = _RAND_1[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  pipe_packet_eth_sender = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  pipe_packet_eth_pactype = _RAND_3[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  pipe_packet_eth_vlan = _RAND_4[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  pipe_packet_ip_version = _RAND_5[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  pipe_packet_ip_ihl = _RAND_6[3:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  pipe_packet_ip_dscp = _RAND_7[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {1{`RANDOM}};
  pipe_packet_ip_ecn = _RAND_8[1:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {1{`RANDOM}};
  pipe_packet_ip_len = _RAND_9[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_10 = {1{`RANDOM}};
  pipe_packet_ip_id = _RAND_10[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_11 = {1{`RANDOM}};
  pipe_packet_ip_flags = _RAND_11[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_12 = {1{`RANDOM}};
  pipe_packet_ip_foff = _RAND_12[12:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_13 = {1{`RANDOM}};
  pipe_packet_ip_ttl = _RAND_13[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_14 = {1{`RANDOM}};
  pipe_packet_ip_proto = _RAND_14[7:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_15 = {1{`RANDOM}};
  pipe_packet_ip_chksum = _RAND_15[15:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_16 = {1{`RANDOM}};
  pipe_packet_ip_src = _RAND_16[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_17 = {1{`RANDOM}};
  pipe_packet_ip_dest = _RAND_17[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_18 = {1{`RANDOM}};
  pipeStatus = _RAND_18[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (_T_144) begin
      pipe_forward_status <= io_input_lookup_status;
    end
    if (_T_144) begin
      if (_T_145) begin
        pipe_packet_eth_dest <= 48'h0;
      end else begin
        pipe_packet_eth_dest <= io_input_packet_eth_dest;
      end
    end
    if (_T_144) begin
      if (_T_145) begin
        pipe_packet_eth_sender <= macs_0;
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
  input  [2:0]  io_input_forward_status,
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
  output [1:0]  toAdapter_req,
  input         toAdapter_stall,
  input         fromAdapter_writer_en,
  input  [7:0]  fromAdapter_writer_data_data,
  input         fromAdapter_writer_data_last,
  output        fromAdapter_writer_full
);
  reg [4:0] cnt; // @[encoder.scala 46:20]
  reg [31:0] _RAND_0;
  reg [3:0] state; // @[encoder.scala 52:22]
  reg [31:0] _RAND_1;
  reg [47:0] sending_packet_eth_dest; // @[encoder.scala 54:20]
  reg [63:0] _RAND_2;
  reg [47:0] sending_packet_eth_sender; // @[encoder.scala 54:20]
  reg [63:0] _RAND_3;
  reg [1:0] sending_packet_eth_pactype; // @[encoder.scala 54:20]
  reg [31:0] _RAND_4;
  reg [2:0] sending_packet_eth_vlan; // @[encoder.scala 54:20]
  reg [31:0] _RAND_5;
  reg [3:0] sending_packet_ip_version; // @[encoder.scala 54:20]
  reg [31:0] _RAND_6;
  reg [3:0] sending_packet_ip_ihl; // @[encoder.scala 54:20]
  reg [31:0] _RAND_7;
  reg [5:0] sending_packet_ip_dscp; // @[encoder.scala 54:20]
  reg [31:0] _RAND_8;
  reg [1:0] sending_packet_ip_ecn; // @[encoder.scala 54:20]
  reg [31:0] _RAND_9;
  reg [15:0] sending_packet_ip_len; // @[encoder.scala 54:20]
  reg [31:0] _RAND_10;
  reg [15:0] sending_packet_ip_id; // @[encoder.scala 54:20]
  reg [31:0] _RAND_11;
  reg [2:0] sending_packet_ip_flags; // @[encoder.scala 54:20]
  reg [31:0] _RAND_12;
  reg [12:0] sending_packet_ip_foff; // @[encoder.scala 54:20]
  reg [31:0] _RAND_13;
  reg [7:0] sending_packet_ip_ttl; // @[encoder.scala 54:20]
  reg [31:0] _RAND_14;
  reg [7:0] sending_packet_ip_proto; // @[encoder.scala 54:20]
  reg [31:0] _RAND_15;
  reg [15:0] sending_packet_ip_chksum; // @[encoder.scala 54:20]
  reg [31:0] _RAND_16;
  reg [31:0] sending_packet_ip_src; // @[encoder.scala 54:20]
  reg [31:0] _RAND_17;
  reg [31:0] sending_packet_ip_dest; // @[encoder.scala 54:20]
  reg [31:0] _RAND_18;
  wire [108:0] _T_4; // @[encoder.scala 55:34]
  wire [159:0] _T_11; // @[encoder.scala 55:34]
  wire [7:0] ipView_0; // @[encoder.scala 55:49]
  wire [7:0] ipView_1; // @[encoder.scala 55:49]
  wire [7:0] ipView_2; // @[encoder.scala 55:49]
  wire [7:0] ipView_3; // @[encoder.scala 55:49]
  wire [7:0] ipView_4; // @[encoder.scala 55:49]
  wire [7:0] ipView_5; // @[encoder.scala 55:49]
  wire [7:0] ipView_6; // @[encoder.scala 55:49]
  wire [7:0] ipView_7; // @[encoder.scala 55:49]
  wire [7:0] ipView_8; // @[encoder.scala 55:49]
  wire [7:0] ipView_9; // @[encoder.scala 55:49]
  wire [7:0] ipView_10; // @[encoder.scala 55:49]
  wire [7:0] ipView_11; // @[encoder.scala 55:49]
  wire [7:0] ipView_12; // @[encoder.scala 55:49]
  wire [7:0] ipView_13; // @[encoder.scala 55:49]
  wire [7:0] ipView_14; // @[encoder.scala 55:49]
  wire [7:0] ipView_15; // @[encoder.scala 55:49]
  wire [7:0] ipView_16; // @[encoder.scala 55:49]
  wire [7:0] ipView_17; // @[encoder.scala 55:49]
  wire [7:0] ipView_18; // @[encoder.scala 55:49]
  wire [7:0] ipView_19; // @[encoder.scala 55:49]
  wire  _T_35; // @[pactype.scala 26:12]
  wire  _T_36; // @[pactype.scala 28:19]
  wire [15:0] _GEN_0; // @[pactype.scala 28:36]
  wire [15:0] _GEN_1; // @[pactype.scala 26:30]
  wire [7:0] _T_33; // @[eth.scala 17:18 eth.scala 17:18]
  wire [143:0] _T_40; // @[Cat.scala 29:58]
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
  reg [1:0] localReq; // @[encoder.scala 70:21]
  reg [31:0] _RAND_19;
  wire [3:0] _T_62; // @[Conditional.scala 37:39]
  wire  _T_63; // @[Conditional.scala 37:30]
  wire  _T_64; // @[encoder.scala 81:9]
  wire  _T_71; // @[encoder.scala 89:42]
  wire  _T_72; // @[encoder.scala 89:74]
  wire  _T_73; // @[encoder.scala 89:61]
  wire  _T_74; // @[encoder.scala 89:28]
  wire  _T_75; // @[encoder.scala 94:24]
  wire  _T_76; // @[encoder.scala 96:44]
  wire  _T_80; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_81; // @[encoder.scala 108:27]
  wire [7:0] _GEN_82; // @[encoder.scala 108:27]
  wire [7:0] _GEN_83; // @[encoder.scala 108:27]
  wire [7:0] _GEN_84; // @[encoder.scala 108:27]
  wire [7:0] _GEN_85; // @[encoder.scala 108:27]
  wire [7:0] _GEN_86; // @[encoder.scala 108:27]
  wire [7:0] _GEN_87; // @[encoder.scala 108:27]
  wire [7:0] _GEN_88; // @[encoder.scala 108:27]
  wire [7:0] _GEN_89; // @[encoder.scala 108:27]
  wire [7:0] _GEN_90; // @[encoder.scala 108:27]
  wire [7:0] _GEN_91; // @[encoder.scala 108:27]
  wire [7:0] _GEN_92; // @[encoder.scala 108:27]
  wire [7:0] _GEN_93; // @[encoder.scala 108:27]
  wire [7:0] _GEN_94; // @[encoder.scala 108:27]
  wire [7:0] _GEN_95; // @[encoder.scala 108:27]
  wire [7:0] _GEN_96; // @[encoder.scala 108:27]
  wire [7:0] _GEN_97; // @[encoder.scala 108:27]
  wire  _T_83; // @[encoder.scala 111:12]
  wire  _T_84; // @[encoder.scala 112:18]
  wire [4:0] _T_86; // @[encoder.scala 113:22]
  wire  _T_88; // @[encoder.scala 116:17]
  wire  _T_89; // @[encoder.scala 116:17]
  wire  _T_90; // @[encoder.scala 116:17]
  wire  _T_93; // @[Conditional.scala 37:30]
  wire  _T_96; // @[encoder.scala 129:12]
  wire [2:0] _GEN_120; // @[encoder.scala 132:65]
  wire  _T_103; // @[Conditional.scala 37:30]
  wire [7:0] _GEN_127; // @[encoder.scala 142:27]
  wire [7:0] _GEN_128; // @[encoder.scala 142:27]
  wire [7:0] _GEN_129; // @[encoder.scala 142:27]
  wire [7:0] _GEN_130; // @[encoder.scala 142:27]
  wire [7:0] _GEN_131; // @[encoder.scala 142:27]
  wire [7:0] _GEN_132; // @[encoder.scala 142:27]
  wire [7:0] _GEN_133; // @[encoder.scala 142:27]
  wire [7:0] _GEN_134; // @[encoder.scala 142:27]
  wire [7:0] _GEN_135; // @[encoder.scala 142:27]
  wire [7:0] _GEN_136; // @[encoder.scala 142:27]
  wire [7:0] _GEN_137; // @[encoder.scala 142:27]
  wire [7:0] _GEN_138; // @[encoder.scala 142:27]
  wire [7:0] _GEN_139; // @[encoder.scala 142:27]
  wire [7:0] _GEN_140; // @[encoder.scala 142:27]
  wire [7:0] _GEN_141; // @[encoder.scala 142:27]
  wire [7:0] _GEN_142; // @[encoder.scala 142:27]
  wire [7:0] _GEN_143; // @[encoder.scala 142:27]
  wire [7:0] _GEN_144; // @[encoder.scala 142:27]
  wire [7:0] _GEN_145; // @[encoder.scala 142:27]
  wire  _T_112; // @[Conditional.scala 37:30]
  wire  _T_121; // @[Conditional.scala 37:30]
  wire  _T_122; // @[encoder.scala 171:23]
  wire  _T_124; // @[encoder.scala 171:48]
  wire  _T_125; // @[encoder.scala 175:39]
  wire  _T_128; // @[Conditional.scala 37:30]
  wire  _T_132; // @[encoder.scala 184:54]
  wire  _T_133; // @[encoder.scala 186:39]
  wire  _T_136; // @[Conditional.scala 37:30]
  wire  _T_139; // @[Conditional.scala 37:30]
  wire  _T_140; // @[encoder.scala 201:25]
  wire  _T_142; // @[encoder.scala 201:48]
  wire  _GEN_179; // @[Conditional.scala 39:67]
  wire  _GEN_180; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_181; // @[Conditional.scala 39:67]
  wire  _GEN_182; // @[Conditional.scala 39:67]
  wire  _GEN_188; // @[Conditional.scala 39:67]
  wire  _GEN_189; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_190; // @[Conditional.scala 39:67]
  wire  _GEN_191; // @[Conditional.scala 39:67]
  wire  _GEN_194; // @[Conditional.scala 39:67]
  wire  _GEN_196; // @[Conditional.scala 39:67]
  wire  _GEN_199; // @[Conditional.scala 39:67]
  wire  _GEN_200; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_201; // @[Conditional.scala 39:67]
  wire  _GEN_202; // @[Conditional.scala 39:67]
  wire  _GEN_204; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_205; // @[Conditional.scala 39:67]
  wire  _GEN_206; // @[Conditional.scala 39:67]
  wire  _GEN_207; // @[Conditional.scala 39:67]
  wire  _GEN_210; // @[Conditional.scala 39:67]
  wire  _GEN_213; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_215; // @[Conditional.scala 39:67]
  wire  _GEN_216; // @[Conditional.scala 39:67]
  wire  _GEN_217; // @[Conditional.scala 39:67]
  wire  _GEN_220; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_221; // @[Conditional.scala 39:67]
  wire  _GEN_222; // @[Conditional.scala 39:67]
  wire  _GEN_223; // @[Conditional.scala 39:67]
  wire  _GEN_225; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_227; // @[Conditional.scala 39:67]
  wire  _GEN_228; // @[Conditional.scala 39:67]
  wire  _GEN_229; // @[Conditional.scala 39:67]
  wire  _GEN_233; // @[Conditional.scala 39:67]
  wire  _GEN_235; // @[Conditional.scala 39:67]
  wire  _GEN_237; // @[Conditional.scala 39:67]
  wire  _GEN_240; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_244; // @[Conditional.scala 39:67]
  wire  _GEN_245; // @[Conditional.scala 39:67]
  wire  _GEN_246; // @[Conditional.scala 39:67]
  wire  _GEN_247; // @[Conditional.scala 39:67]
  wire  _GEN_249; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_251; // @[Conditional.scala 39:67]
  wire  _GEN_252; // @[Conditional.scala 39:67]
  wire  _GEN_256; // @[Conditional.scala 39:67]
  wire  _GEN_258; // @[Conditional.scala 39:67]
  wire  _GEN_259; // @[Conditional.scala 39:67]
  wire  _GEN_261; // @[Conditional.scala 39:67]
  wire  _GEN_298; // @[encoder.scala 116:17]
  wire  _GEN_299; // @[encoder.scala 116:17]
  wire  _GEN_300; // @[encoder.scala 116:17]
  wire  _GEN_301; // @[encoder.scala 116:17]
  wire  _GEN_302; // @[encoder.scala 116:17]
  assign _T_4 = {sending_packet_ip_foff,sending_packet_ip_ttl,sending_packet_ip_proto,sending_packet_ip_chksum,sending_packet_ip_src,sending_packet_ip_dest}; // @[encoder.scala 55:34]
  assign _T_11 = {sending_packet_ip_version,sending_packet_ip_ihl,sending_packet_ip_dscp,sending_packet_ip_ecn,sending_packet_ip_len,sending_packet_ip_id,sending_packet_ip_flags,_T_4}; // @[encoder.scala 55:34]
  assign ipView_0 = _T_11[7:0]; // @[encoder.scala 55:49]
  assign ipView_1 = _T_11[15:8]; // @[encoder.scala 55:49]
  assign ipView_2 = _T_11[23:16]; // @[encoder.scala 55:49]
  assign ipView_3 = _T_11[31:24]; // @[encoder.scala 55:49]
  assign ipView_4 = _T_11[39:32]; // @[encoder.scala 55:49]
  assign ipView_5 = _T_11[47:40]; // @[encoder.scala 55:49]
  assign ipView_6 = _T_11[55:48]; // @[encoder.scala 55:49]
  assign ipView_7 = _T_11[63:56]; // @[encoder.scala 55:49]
  assign ipView_8 = _T_11[71:64]; // @[encoder.scala 55:49]
  assign ipView_9 = _T_11[79:72]; // @[encoder.scala 55:49]
  assign ipView_10 = _T_11[87:80]; // @[encoder.scala 55:49]
  assign ipView_11 = _T_11[95:88]; // @[encoder.scala 55:49]
  assign ipView_12 = _T_11[103:96]; // @[encoder.scala 55:49]
  assign ipView_13 = _T_11[111:104]; // @[encoder.scala 55:49]
  assign ipView_14 = _T_11[119:112]; // @[encoder.scala 55:49]
  assign ipView_15 = _T_11[127:120]; // @[encoder.scala 55:49]
  assign ipView_16 = _T_11[135:128]; // @[encoder.scala 55:49]
  assign ipView_17 = _T_11[143:136]; // @[encoder.scala 55:49]
  assign ipView_18 = _T_11[151:144]; // @[encoder.scala 55:49]
  assign ipView_19 = _T_11[159:152]; // @[encoder.scala 55:49]
  assign _T_35 = sending_packet_eth_pactype == 2'h1; // @[pactype.scala 26:12]
  assign _T_36 = sending_packet_eth_pactype == 2'h2; // @[pactype.scala 28:19]
  assign _GEN_0 = _T_36 ? 16'h806 : 16'h0; // @[pactype.scala 28:36]
  assign _GEN_1 = _T_35 ? 16'h800 : _GEN_0; // @[pactype.scala 26:30]
  assign _T_33 = {{5'd0}, sending_packet_eth_vlan}; // @[eth.scala 17:18 eth.scala 17:18]
  assign _T_40 = {sending_packet_eth_dest,sending_packet_eth_sender,24'h810000,_T_33,_GEN_1}; // @[Cat.scala 29:58]
  assign headerView_0 = _T_40[7:0]; // @[eth.scala 21:44]
  assign headerView_1 = _T_40[15:8]; // @[eth.scala 21:44]
  assign headerView_2 = _T_40[23:16]; // @[eth.scala 21:44]
  assign headerView_3 = _T_40[31:24]; // @[eth.scala 21:44]
  assign headerView_4 = _T_40[39:32]; // @[eth.scala 21:44]
  assign headerView_5 = _T_40[47:40]; // @[eth.scala 21:44]
  assign headerView_6 = _T_40[55:48]; // @[eth.scala 21:44]
  assign headerView_7 = _T_40[63:56]; // @[eth.scala 21:44]
  assign headerView_8 = _T_40[71:64]; // @[eth.scala 21:44]
  assign headerView_9 = _T_40[79:72]; // @[eth.scala 21:44]
  assign headerView_10 = _T_40[87:80]; // @[eth.scala 21:44]
  assign headerView_11 = _T_40[95:88]; // @[eth.scala 21:44]
  assign headerView_12 = _T_40[103:96]; // @[eth.scala 21:44]
  assign headerView_13 = _T_40[111:104]; // @[eth.scala 21:44]
  assign headerView_14 = _T_40[119:112]; // @[eth.scala 21:44]
  assign headerView_15 = _T_40[127:120]; // @[eth.scala 21:44]
  assign headerView_16 = _T_40[135:128]; // @[eth.scala 21:44]
  assign headerView_17 = _T_40[143:136]; // @[eth.scala 21:44]
  assign _T_62 = $unsigned(state); // @[Conditional.scala 37:39]
  assign _T_63 = 4'h0 == _T_62; // @[Conditional.scala 37:30]
  assign _T_64 = io_pause == 1'h0; // @[encoder.scala 81:9]
  assign _T_71 = io_status != 2'h3; // @[encoder.scala 89:42]
  assign _T_72 = io_status != 2'h0; // @[encoder.scala 89:74]
  assign _T_73 = _T_71 & _T_72; // @[encoder.scala 89:61]
  assign _T_74 = _T_64 & _T_73; // @[encoder.scala 89:28]
  assign _T_75 = io_status == 2'h2; // @[encoder.scala 94:24]
  assign _T_76 = io_input_forward_status == 3'h1; // @[encoder.scala 96:44]
  assign _T_80 = 4'h1 == _T_62; // @[Conditional.scala 37:30]
  assign _GEN_81 = 5'h1 == cnt ? headerView_1 : headerView_0; // @[encoder.scala 108:27]
  assign _GEN_82 = 5'h2 == cnt ? headerView_2 : _GEN_81; // @[encoder.scala 108:27]
  assign _GEN_83 = 5'h3 == cnt ? headerView_3 : _GEN_82; // @[encoder.scala 108:27]
  assign _GEN_84 = 5'h4 == cnt ? headerView_4 : _GEN_83; // @[encoder.scala 108:27]
  assign _GEN_85 = 5'h5 == cnt ? headerView_5 : _GEN_84; // @[encoder.scala 108:27]
  assign _GEN_86 = 5'h6 == cnt ? headerView_6 : _GEN_85; // @[encoder.scala 108:27]
  assign _GEN_87 = 5'h7 == cnt ? headerView_7 : _GEN_86; // @[encoder.scala 108:27]
  assign _GEN_88 = 5'h8 == cnt ? headerView_8 : _GEN_87; // @[encoder.scala 108:27]
  assign _GEN_89 = 5'h9 == cnt ? headerView_9 : _GEN_88; // @[encoder.scala 108:27]
  assign _GEN_90 = 5'ha == cnt ? headerView_10 : _GEN_89; // @[encoder.scala 108:27]
  assign _GEN_91 = 5'hb == cnt ? headerView_11 : _GEN_90; // @[encoder.scala 108:27]
  assign _GEN_92 = 5'hc == cnt ? headerView_12 : _GEN_91; // @[encoder.scala 108:27]
  assign _GEN_93 = 5'hd == cnt ? headerView_13 : _GEN_92; // @[encoder.scala 108:27]
  assign _GEN_94 = 5'he == cnt ? headerView_14 : _GEN_93; // @[encoder.scala 108:27]
  assign _GEN_95 = 5'hf == cnt ? headerView_15 : _GEN_94; // @[encoder.scala 108:27]
  assign _GEN_96 = 5'h10 == cnt ? headerView_16 : _GEN_95; // @[encoder.scala 108:27]
  assign _GEN_97 = 5'h11 == cnt ? headerView_17 : _GEN_96; // @[encoder.scala 108:27]
  assign _T_83 = io_writer_full == 1'h0; // @[encoder.scala 111:12]
  assign _T_84 = cnt > 5'h0; // @[encoder.scala 112:18]
  assign _T_86 = cnt - 5'h1; // @[encoder.scala 113:22]
  assign _T_88 = $unsigned(reset); // @[encoder.scala 116:17]
  assign _T_89 = _T_35 | _T_88; // @[encoder.scala 116:17]
  assign _T_90 = _T_89 == 1'h0; // @[encoder.scala 116:17]
  assign _T_93 = 4'h5 == _T_62; // @[Conditional.scala 37:30]
  assign _T_96 = toAdapter_stall == 1'h0; // @[encoder.scala 129:12]
  assign _GEN_120 = _T_35 ? 3'h6 : 3'h7; // @[encoder.scala 132:65]
  assign _T_103 = 4'h2 == _T_62; // @[Conditional.scala 37:30]
  assign _GEN_127 = 5'h1 == cnt ? ipView_1 : ipView_0; // @[encoder.scala 142:27]
  assign _GEN_128 = 5'h2 == cnt ? ipView_2 : _GEN_127; // @[encoder.scala 142:27]
  assign _GEN_129 = 5'h3 == cnt ? ipView_3 : _GEN_128; // @[encoder.scala 142:27]
  assign _GEN_130 = 5'h4 == cnt ? ipView_4 : _GEN_129; // @[encoder.scala 142:27]
  assign _GEN_131 = 5'h5 == cnt ? ipView_5 : _GEN_130; // @[encoder.scala 142:27]
  assign _GEN_132 = 5'h6 == cnt ? ipView_6 : _GEN_131; // @[encoder.scala 142:27]
  assign _GEN_133 = 5'h7 == cnt ? ipView_7 : _GEN_132; // @[encoder.scala 142:27]
  assign _GEN_134 = 5'h8 == cnt ? ipView_8 : _GEN_133; // @[encoder.scala 142:27]
  assign _GEN_135 = 5'h9 == cnt ? ipView_9 : _GEN_134; // @[encoder.scala 142:27]
  assign _GEN_136 = 5'ha == cnt ? ipView_10 : _GEN_135; // @[encoder.scala 142:27]
  assign _GEN_137 = 5'hb == cnt ? ipView_11 : _GEN_136; // @[encoder.scala 142:27]
  assign _GEN_138 = 5'hc == cnt ? ipView_12 : _GEN_137; // @[encoder.scala 142:27]
  assign _GEN_139 = 5'hd == cnt ? ipView_13 : _GEN_138; // @[encoder.scala 142:27]
  assign _GEN_140 = 5'he == cnt ? ipView_14 : _GEN_139; // @[encoder.scala 142:27]
  assign _GEN_141 = 5'hf == cnt ? ipView_15 : _GEN_140; // @[encoder.scala 142:27]
  assign _GEN_142 = 5'h10 == cnt ? ipView_16 : _GEN_141; // @[encoder.scala 142:27]
  assign _GEN_143 = 5'h11 == cnt ? ipView_17 : _GEN_142; // @[encoder.scala 142:27]
  assign _GEN_144 = 5'h12 == cnt ? ipView_18 : _GEN_143; // @[encoder.scala 142:27]
  assign _GEN_145 = 5'h13 == cnt ? ipView_19 : _GEN_144; // @[encoder.scala 142:27]
  assign _T_112 = 4'h6 == _T_62; // @[Conditional.scala 37:30]
  assign _T_121 = 4'h3 == _T_62; // @[Conditional.scala 37:30]
  assign _T_122 = io_payloadReader_empty == 1'h0; // @[encoder.scala 171:23]
  assign _T_124 = _T_122 & _T_83; // @[encoder.scala 171:48]
  assign _T_125 = io_payloadReader_data_last & _T_124; // @[encoder.scala 175:39]
  assign _T_128 = 4'h7 == _T_62; // @[Conditional.scala 37:30]
  assign _T_132 = _T_122 & _T_96; // @[encoder.scala 184:54]
  assign _T_133 = io_payloadReader_data_last & io_payloadReader_en; // @[encoder.scala 186:39]
  assign _T_136 = 4'h4 == _T_62; // @[Conditional.scala 37:30]
  assign _T_139 = 4'h8 == _T_62; // @[Conditional.scala 37:30]
  assign _T_140 = io_writer_en & io_writer_data_last; // @[encoder.scala 201:25]
  assign _T_142 = _T_140 & _T_83; // @[encoder.scala 201:48]
  assign _GEN_179 = _T_139 ? io_writer_full : 1'h1; // @[Conditional.scala 39:67]
  assign _GEN_180 = _T_139 & fromAdapter_writer_data_last; // @[Conditional.scala 39:67]
  assign _GEN_181 = _T_139 ? fromAdapter_writer_data_data : 8'h0; // @[Conditional.scala 39:67]
  assign _GEN_182 = _T_139 & fromAdapter_writer_en; // @[Conditional.scala 39:67]
  assign _GEN_188 = _T_136 | _GEN_179; // @[Conditional.scala 39:67]
  assign _GEN_189 = _T_136 ? 1'h0 : _GEN_180; // @[Conditional.scala 39:67]
  assign _GEN_190 = _T_136 ? 8'h0 : _GEN_181; // @[Conditional.scala 39:67]
  assign _GEN_191 = _T_136 ? 1'h0 : _GEN_182; // @[Conditional.scala 39:67]
  assign _GEN_194 = _T_128 & _T_122; // @[Conditional.scala 39:67]
  assign _GEN_196 = _T_128 ? _T_132 : _T_136; // @[Conditional.scala 39:67]
  assign _GEN_199 = _T_128 | _GEN_188; // @[Conditional.scala 39:67]
  assign _GEN_200 = _T_128 ? 1'h0 : _GEN_189; // @[Conditional.scala 39:67]
  assign _GEN_201 = _T_128 ? 8'h0 : _GEN_190; // @[Conditional.scala 39:67]
  assign _GEN_202 = _T_128 ? 1'h0 : _GEN_191; // @[Conditional.scala 39:67]
  assign _GEN_204 = _T_121 ? io_payloadReader_data_last : _GEN_200; // @[Conditional.scala 39:67]
  assign _GEN_205 = _T_121 ? io_payloadReader_data_data : _GEN_201; // @[Conditional.scala 39:67]
  assign _GEN_206 = _T_121 ? _T_124 : _GEN_202; // @[Conditional.scala 39:67]
  assign _GEN_207 = _T_121 ? _T_124 : _GEN_196; // @[Conditional.scala 39:67]
  assign _GEN_210 = _T_121 ? 1'h0 : _GEN_194; // @[Conditional.scala 39:67]
  assign _GEN_213 = _T_121 | _GEN_199; // @[Conditional.scala 39:67]
  assign _GEN_215 = _T_112 ? _GEN_145 : io_payloadReader_data_data; // @[Conditional.scala 39:67]
  assign _GEN_216 = _T_112 | _GEN_210; // @[Conditional.scala 39:67]
  assign _GEN_217 = _T_112 ? 1'h0 : io_payloadReader_data_last; // @[Conditional.scala 39:67]
  assign _GEN_220 = _T_112 ? 1'h0 : _GEN_204; // @[Conditional.scala 39:67]
  assign _GEN_221 = _T_112 ? 8'h0 : _GEN_205; // @[Conditional.scala 39:67]
  assign _GEN_222 = _T_112 ? 1'h0 : _GEN_206; // @[Conditional.scala 39:67]
  assign _GEN_223 = _T_112 ? 1'h0 : _GEN_207; // @[Conditional.scala 39:67]
  assign _GEN_225 = _T_112 | _GEN_213; // @[Conditional.scala 39:67]
  assign _GEN_227 = _T_103 ? _GEN_145 : _GEN_221; // @[Conditional.scala 39:67]
  assign _GEN_228 = _T_103 ? 1'h0 : _GEN_220; // @[Conditional.scala 39:67]
  assign _GEN_229 = _T_103 | _GEN_222; // @[Conditional.scala 39:67]
  assign _GEN_233 = _T_103 ? 1'h0 : _GEN_216; // @[Conditional.scala 39:67]
  assign _GEN_235 = _T_103 ? 1'h0 : _GEN_223; // @[Conditional.scala 39:67]
  assign _GEN_237 = _T_103 | _GEN_225; // @[Conditional.scala 39:67]
  assign _GEN_240 = _T_93 | _GEN_233; // @[Conditional.scala 39:67]
  assign _GEN_244 = _T_93 ? 8'h0 : _GEN_227; // @[Conditional.scala 39:67]
  assign _GEN_245 = _T_93 ? 1'h0 : _GEN_228; // @[Conditional.scala 39:67]
  assign _GEN_246 = _T_93 ? 1'h0 : _GEN_229; // @[Conditional.scala 39:67]
  assign _GEN_247 = _T_93 ? 1'h0 : _GEN_235; // @[Conditional.scala 39:67]
  assign _GEN_249 = _T_93 | _GEN_237; // @[Conditional.scala 39:67]
  assign _GEN_251 = _T_80 ? _GEN_97 : _GEN_244; // @[Conditional.scala 39:67]
  assign _GEN_252 = _T_80 | _GEN_246; // @[Conditional.scala 39:67]
  assign _GEN_256 = _T_80 ? 1'h0 : _GEN_240; // @[Conditional.scala 39:67]
  assign _GEN_258 = _T_80 ? 1'h0 : _GEN_245; // @[Conditional.scala 39:67]
  assign _GEN_259 = _T_80 ? 1'h0 : _GEN_247; // @[Conditional.scala 39:67]
  assign _GEN_261 = _T_80 | _GEN_249; // @[Conditional.scala 39:67]
  assign io_stall = state != 4'h0; // @[encoder.scala 207:12]
  assign io_writer_clk = clock; // @[encoder.scala 64:17 encoder.scala 199:17 encoder.scala 200:21]
  assign io_writer_en = _T_63 ? 1'h0 : _GEN_252; // @[encoder.scala 63:16 encoder.scala 109:20 encoder.scala 144:20 encoder.scala 172:20 encoder.scala 199:17]
  assign io_writer_data_data = _T_63 ? 8'h0 : _GEN_251; // @[encoder.scala 62:23 encoder.scala 108:27 encoder.scala 142:27 encoder.scala 170:22 encoder.scala 199:17]
  assign io_writer_data_last = _T_63 ? 1'h0 : _GEN_258; // @[encoder.scala 61:23 encoder.scala 143:27 encoder.scala 170:22 encoder.scala 199:17]
  assign io_payloadReader_clk = clock; // @[encoder.scala 58:24]
  assign io_payloadReader_en = _T_63 ? 1'h0 : _GEN_259; // @[encoder.scala 59:23 encoder.scala 173:27 encoder.scala 184:27 encoder.scala 192:27]
  assign toAdapter_input = _T_93 ? _GEN_97 : _GEN_215; // @[encoder.scala 125:23 encoder.scala 156:23 encoder.scala 181:23]
  assign toAdapter_valid = _T_63 ? 1'h0 : _GEN_256; // @[encoder.scala 68:19 encoder.scala 126:23 encoder.scala 157:23 encoder.scala 182:23]
  assign toAdapter_last = _T_93 ? 1'h0 : _GEN_217; // @[encoder.scala 127:22 encoder.scala 158:22 encoder.scala 183:22]
  assign toAdapter_req = localReq; // @[encoder.scala 71:17]
  assign fromAdapter_writer_full = _T_63 | _GEN_261; // @[encoder.scala 73:27 encoder.scala 199:17]
  assign _GEN_298 = _T_63 == 1'h0; // @[encoder.scala 116:17]
  assign _GEN_299 = _GEN_298 & _T_80; // @[encoder.scala 116:17]
  assign _GEN_300 = _GEN_299 & _T_83; // @[encoder.scala 116:17]
  assign _GEN_301 = _T_84 == 1'h0; // @[encoder.scala 116:17]
  assign _GEN_302 = _GEN_300 & _GEN_301; // @[encoder.scala 116:17]
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
  state = _RAND_1[3:0];
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
  localReq = _RAND_19[1:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge clock) begin
    if (reset) begin
      cnt <= 5'h0;
    end else if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          cnt <= 5'h11;
        end
      end
    end else if (_T_80) begin
      if (_T_83) begin
        if (_T_84) begin
          cnt <= _T_86;
        end else begin
          cnt <= 5'h13;
        end
      end
    end else if (_T_93) begin
      if (_T_96) begin
        if (_T_84) begin
          cnt <= _T_86;
        end else if (_T_35) begin
          cnt <= 5'h13;
        end
      end
    end else if (_T_103) begin
      if (_T_83) begin
        if (_T_84) begin
          cnt <= _T_86;
        end
      end
    end else if (_T_112) begin
      if (_T_96) begin
        if (_T_84) begin
          cnt <= _T_86;
        end
      end
    end
    if (reset) begin
      state <= 4'h0;
    end else if (_T_63) begin
      if (fromAdapter_writer_en) begin
        state <= 4'h8;
      end else if (_T_74) begin
        state <= 4'h5;
      end
    end else if (_T_80) begin
      if (_T_83) begin
        if (!(_T_84)) begin
          state <= 4'h2;
        end
      end
    end else if (_T_93) begin
      if (_T_96) begin
        if (!(_T_84)) begin
          state <= {{1'd0}, _GEN_120};
        end
      end
    end else if (_T_103) begin
      if (_T_83) begin
        if (!(_T_84)) begin
          state <= 4'h3;
        end
      end
    end else if (_T_112) begin
      if (_T_96) begin
        if (!(_T_84)) begin
          state <= 4'h7;
        end
      end
    end else if (_T_121) begin
      if (_T_125) begin
        state <= 4'h0;
      end
    end else if (_T_128) begin
      if (_T_133) begin
        state <= 4'h0;
      end
    end else if (_T_136) begin
      if (io_payloadReader_data_last) begin
        state <= 4'h0;
      end
    end else if (_T_139) begin
      if (_T_142) begin
        state <= 4'h0;
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_eth_dest <= io_input_packet_eth_dest;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_eth_sender <= io_input_packet_eth_sender;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_eth_pactype <= io_input_packet_eth_pactype;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_eth_vlan <= io_input_packet_eth_vlan;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_version <= io_input_packet_ip_version;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_ihl <= io_input_packet_ip_ihl;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_dscp <= io_input_packet_ip_dscp;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_ecn <= io_input_packet_ip_ecn;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_len <= io_input_packet_ip_len;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_id <= io_input_packet_ip_id;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_flags <= io_input_packet_ip_flags;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_foff <= io_input_packet_ip_foff;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_ttl <= io_input_packet_ip_ttl;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_proto <= io_input_packet_ip_proto;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_chksum <= io_input_packet_ip_chksum;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_src <= io_input_packet_ip_src;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          sending_packet_ip_dest <= io_input_packet_ip_dest;
        end
      end
    end
    if (_T_63) begin
      if (!(fromAdapter_writer_en)) begin
        if (_T_74) begin
          if (_T_75) begin
            localReq <= 2'h0;
          end else if (_T_76) begin
            localReq <= 2'h2;
          end else begin
            localReq <= 2'h1;
          end
        end
      end
    end
    `ifndef SYNTHESIS
    `ifdef PRINTF_COND
      if (`PRINTF_COND) begin
    `endif
        if (_GEN_302 & _T_90) begin
          $fwrite(32'h80000002,"Assertion failed\n    at encoder.scala:116 assert(sending.packet.eth.pactype === PacType.ipv4)\n"); // @[encoder.scala 116:17]
        end
    `ifdef PRINTF_COND
      end
    `endif
    `endif // SYNTHESIS
    `ifndef SYNTHESIS
    `ifdef STOP_COND
      if (`STOP_COND) begin
    `endif
        if (_GEN_302 & _T_90) begin
          $fatal; // @[encoder.scala 116:17]
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
  input  [7:0]  fromEnc_input,
  input         fromEnc_valid,
  input         fromEnc_last,
  input  [1:0]  fromEnc_req,
  output        fromEnc_stall,
  output        toEnc_writer_en,
  output [7:0]  toEnc_writer_data_data,
  output        toEnc_writer_data_last,
  input         toEnc_writer_full
);
  reg [2:0] state; // @[adapter.scala 63:22]
  reg [31:0] _RAND_0;
  reg [2:0] head; // @[adapter.scala 68:21]
  reg [31:0] _RAND_1;
  reg [2:0] tail; // @[adapter.scala 69:21]
  reg [31:0] _RAND_2;
  reg [2:0] sendingSlot; // @[adapter.scala 79:24]
  reg [31:0] _RAND_3;
  reg  dropping; // @[adapter.scala 80:25]
  reg [31:0] _RAND_4;
  reg [10:0] cnt; // @[adapter.scala 82:20]
  reg [31:0] _RAND_5;
  reg [10:0] totCnt; // @[adapter.scala 83:23]
  reg [31:0] _RAND_6;
  reg [2:0] transferState; // @[adapter.scala 89:30]
  reg [31:0] _RAND_7;
  wire [2:0] _T_1; // @[Conditional.scala 37:39]
  wire  _T_2; // @[Conditional.scala 37:30]
  wire  _T_5; // @[Conditional.scala 37:30]
  wire  _T_7; // @[adapter.scala 102:23]
  wire [13:0] _T_8; // @[adapter.scala 110:23]
  wire [13:0] _GEN_2; // @[adapter.scala 102:53]
  wire  _T_11; // @[Conditional.scala 37:30]
  wire [13:0] _T_14; // @[adapter.scala 119:23]
  wire  _T_15; // @[adapter.scala 121:35]
  wire  _T_16; // @[adapter.scala 121:32]
  wire  _T_17; // @[adapter.scala 72:13]
  wire [2:0] _T_19; // @[adapter.scala 72:53]
  wire [2:0] _T_20; // @[adapter.scala 72:8]
  wire  _T_21; // @[adapter.scala 122:25]
  wire [1:0] _GEN_5; // @[adapter.scala 122:35]
  wire [1:0] _GEN_10; // @[adapter.scala 121:46]
  wire [13:0] _GEN_18; // @[adapter.scala 115:53]
  wire  _T_23; // @[adapter.scala 137:23]
  wire  _T_24; // @[adapter.scala 138:19]
  wire  _T_25; // @[adapter.scala 72:13]
  wire [2:0] _T_27; // @[adapter.scala 72:53]
  wire  _T_31; // @[Conditional.scala 37:30]
  wire [2:0] _T_33; // @[Conditional.scala 37:39]
  wire  _T_34; // @[Conditional.scala 37:30]
  wire [13:0] _T_35; // @[adapter.scala 147:25]
  wire [10:0] _T_37; // @[adapter.scala 153:24]
  wire  _T_40; // @[Conditional.scala 37:30]
  wire [13:0] _T_41; // @[adapter.scala 162:25]
  wire [7:0] _T_42; // @[adapter.scala 164:27]
  wire  _T_45; // @[Conditional.scala 37:30]
  wire [13:0] _T_48; // @[adapter.scala 169:38]
  wire [2:0] _T_49; // @[adapter.scala 171:28]
  wire  _T_52; // @[Conditional.scala 37:30]
  wire [13:0] _T_53; // @[adapter.scala 176:25]
  wire  _T_55; // @[adapter.scala 180:28]
  wire  _T_57; // @[adapter.scala 182:34]
  wire [1:0] _GEN_27; // @[adapter.scala 182:62]
  wire [2:0] _GEN_28; // @[adapter.scala 180:52]
  wire  _T_61; // @[Conditional.scala 37:30]
  wire [13:0] _GEN_32; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_38; // @[Conditional.scala 39:67]
  wire  _GEN_39; // @[Conditional.scala 39:67]
  wire [2:0] _GEN_40; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_44; // @[Conditional.scala 39:67]
  wire  _GEN_45; // @[Conditional.scala 39:67]
  wire [7:0] _GEN_46; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_50; // @[Conditional.scala 40:58]
  wire [7:0] _GEN_51; // @[Conditional.scala 40:58]
  wire  _GEN_52; // @[Conditional.scala 40:58]
  wire  _GEN_53; // @[Conditional.scala 40:58]
  wire  _T_68; // @[Conditional.scala 37:30]
  wire [13:0] _T_72; // @[adapter.scala 200:32]
  wire [13:0] _T_74; // @[adapter.scala 200:45]
  wire [13:0] _T_78; // @[adapter.scala 206:32]
  wire [7:0] _T_79; // @[adapter.scala 208:41]
  wire [15:0] _T_80; // @[adapter.scala 208:32]
  wire  _T_86; // @[adapter.scala 212:37]
  wire  _T_88; // @[adapter.scala 219:35]
  wire  _T_89; // @[adapter.scala 219:32]
  wire [13:0] _T_94; // @[adapter.scala 221:34]
  wire [13:0] _GEN_60; // @[adapter.scala 219:55]
  wire [13:0] _T_98; // @[adapter.scala 230:32]
  wire [13:0] _GEN_65; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_74; // @[Conditional.scala 39:67]
  wire  _GEN_77; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_81; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_83; // @[Conditional.scala 39:67]
  wire  _GEN_86; // @[Conditional.scala 39:67]
  wire  _GEN_88; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_92; // @[Conditional.scala 40:58]
  wire [15:0] _GEN_94; // @[Conditional.scala 40:58]
  wire  _GEN_97; // @[Conditional.scala 40:58]
  wire  _GEN_99; // @[Conditional.scala 40:58]
  wire [15:0] _GEN_105; // @[Conditional.scala 39:67]
  wire  _GEN_108; // @[Conditional.scala 39:67]
  wire  _GEN_110; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_114; // @[Conditional.scala 39:67]
  wire  _GEN_116; // @[Conditional.scala 39:67]
  wire  _GEN_117; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_122; // @[Conditional.scala 39:67]
  wire  _GEN_125; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_130; // @[Conditional.scala 39:67]
  wire  _GEN_135; // @[Conditional.scala 39:67]
  wire  _GEN_136; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_138; // @[Conditional.scala 39:67]
  wire  _GEN_141; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_144; // @[Conditional.scala 39:67]
  wire  _GEN_150; // @[Conditional.scala 39:67]
  wire  _GEN_151; // @[Conditional.scala 39:67]
  wire [15:0] _GEN_153; // @[Conditional.scala 39:67]
  wire  _GEN_156; // @[Conditional.scala 39:67]
  wire [13:0] _GEN_158; // @[Conditional.scala 40:58]
  wire  _GEN_165; // @[Conditional.scala 40:58]
  wire [15:0] _GEN_168; // @[Conditional.scala 40:58]
  wire  _T_107; // @[adapter.scala 248:24]
  assign _T_1 = $unsigned(state); // @[Conditional.scala 37:39]
  assign _T_2 = 3'h0 == _T_1; // @[Conditional.scala 37:30]
  assign _T_5 = 3'h2 == _T_1; // @[Conditional.scala 37:30]
  assign _T_7 = toBuf_dout == 8'h2; // @[adapter.scala 102:23]
  assign _T_8 = {head,11'h7ff}; // @[adapter.scala 110:23]
  assign _GEN_2 = _T_7 ? 14'h7fc : _T_8; // @[adapter.scala 102:53]
  assign _T_11 = 3'h1 == _T_1; // @[Conditional.scala 37:30]
  assign _T_14 = {head,11'h7fc}; // @[adapter.scala 119:23]
  assign _T_15 = dropping == 1'h0; // @[adapter.scala 121:35]
  assign _T_16 = fromEnc_valid & _T_15; // @[adapter.scala 121:32]
  assign _T_17 = tail == 3'h7; // @[adapter.scala 72:13]
  assign _T_19 = tail + 3'h1; // @[adapter.scala 72:53]
  assign _T_20 = _T_17 ? 3'h1 : _T_19; // @[adapter.scala 72:8]
  assign _T_21 = _T_20 != head; // @[adapter.scala 122:25]
  assign _GEN_5 = _T_21 ? 2'h3 : 2'h2; // @[adapter.scala 122:35]
  assign _GEN_10 = _T_16 ? _GEN_5 : 2'h2; // @[adapter.scala 121:46]
  assign _GEN_18 = _T_7 ? _T_14 : 14'h7ff; // @[adapter.scala 115:53]
  assign _T_23 = toBuf_dout == 8'h0; // @[adapter.scala 137:23]
  assign _T_24 = head != tail; // @[adapter.scala 138:19]
  assign _T_25 = head == 3'h7; // @[adapter.scala 72:13]
  assign _T_27 = head + 3'h1; // @[adapter.scala 72:53]
  assign _T_31 = 3'h3 == _T_1; // @[Conditional.scala 37:30]
  assign _T_33 = $unsigned(transferState); // @[Conditional.scala 37:39]
  assign _T_34 = 3'h0 == _T_33; // @[Conditional.scala 37:30]
  assign _T_35 = {tail,cnt}; // @[adapter.scala 147:25]
  assign _T_37 = cnt + 11'h1; // @[adapter.scala 153:24]
  assign _T_40 = 3'h2 == _T_33; // @[Conditional.scala 37:30]
  assign _T_41 = {tail,11'h7fc}; // @[adapter.scala 162:25]
  assign _T_42 = cnt[7:0]; // @[adapter.scala 164:27]
  assign _T_45 = 3'h3 == _T_33; // @[Conditional.scala 37:30]
  assign _T_48 = _T_41 + 14'h1; // @[adapter.scala 169:38]
  assign _T_49 = cnt[10:8]; // @[adapter.scala 171:28]
  assign _T_52 = 3'h1 == _T_33; // @[Conditional.scala 37:30]
  assign _T_53 = {tail,11'h7ff}; // @[adapter.scala 176:25]
  assign _T_55 = fromEnc_req == 2'h1; // @[adapter.scala 180:28]
  assign _T_57 = fromEnc_req == 2'h2; // @[adapter.scala 182:34]
  assign _GEN_27 = _T_57 ? 2'h3 : 2'h1; // @[adapter.scala 182:62]
  assign _GEN_28 = _T_55 ? 3'h4 : {{1'd0}, _GEN_27}; // @[adapter.scala 180:52]
  assign _T_61 = 3'h4 == _T_33; // @[Conditional.scala 37:30]
  assign _GEN_32 = _T_52 ? _T_53 : 14'h7ff; // @[Conditional.scala 39:67]
  assign _GEN_38 = _T_45 ? _T_48 : _GEN_32; // @[Conditional.scala 39:67]
  assign _GEN_39 = _T_45 | _T_52; // @[Conditional.scala 39:67]
  assign _GEN_40 = _T_45 ? _T_49 : _GEN_28; // @[Conditional.scala 39:67]
  assign _GEN_44 = _T_40 ? _T_41 : _GEN_38; // @[Conditional.scala 39:67]
  assign _GEN_45 = _T_40 | _GEN_39; // @[Conditional.scala 39:67]
  assign _GEN_46 = _T_40 ? _T_42 : {{5'd0}, _GEN_40}; // @[Conditional.scala 39:67]
  assign _GEN_50 = _T_34 ? _T_35 : _GEN_44; // @[Conditional.scala 40:58]
  assign _GEN_51 = _T_34 ? fromEnc_input : _GEN_46; // @[Conditional.scala 40:58]
  assign _GEN_52 = _T_34 ? 1'h0 : 1'h1; // @[Conditional.scala 40:58]
  assign _GEN_53 = _T_34 ? fromEnc_valid : _GEN_45; // @[Conditional.scala 40:58]
  assign _T_68 = 3'h4 == _T_1; // @[Conditional.scala 37:30]
  assign _T_72 = {sendingSlot,11'h7fc}; // @[adapter.scala 200:32]
  assign _T_74 = _T_72 + 14'h1; // @[adapter.scala 200:45]
  assign _T_78 = {sendingSlot,cnt}; // @[adapter.scala 206:32]
  assign _T_79 = totCnt[7:0]; // @[adapter.scala 208:41]
  assign _T_80 = {toBuf_dout,_T_79}; // @[adapter.scala 208:32]
  assign _T_86 = _T_37 == totCnt; // @[adapter.scala 212:37]
  assign _T_88 = toEnc_writer_full == 1'h0; // @[adapter.scala 219:35]
  assign _T_89 = toEnc_writer_en & _T_88; // @[adapter.scala 219:32]
  assign _T_94 = {sendingSlot,_T_37}; // @[adapter.scala 221:34]
  assign _GEN_60 = _T_89 ? _T_94 : _T_78; // @[adapter.scala 219:55]
  assign _T_98 = {sendingSlot,11'h7ff}; // @[adapter.scala 230:32]
  assign _GEN_65 = _T_52 ? _T_98 : 14'h7ff; // @[Conditional.scala 39:67]
  assign _GEN_74 = _T_34 ? _GEN_60 : _GEN_65; // @[Conditional.scala 39:67]
  assign _GEN_77 = _T_34 ? 1'h0 : _T_52; // @[Conditional.scala 39:67]
  assign _GEN_81 = _T_45 ? _T_78 : _GEN_74; // @[Conditional.scala 39:67]
  assign _GEN_83 = _T_45 ? _T_80 : {{5'd0}, totCnt}; // @[Conditional.scala 39:67]
  assign _GEN_86 = _T_45 ? 1'h0 : _T_34; // @[Conditional.scala 39:67]
  assign _GEN_88 = _T_45 ? 1'h0 : _GEN_77; // @[Conditional.scala 39:67]
  assign _GEN_92 = _T_40 ? _T_74 : _GEN_81; // @[Conditional.scala 40:58]
  assign _GEN_94 = _T_40 ? {{8'd0}, toBuf_dout} : _GEN_83; // @[Conditional.scala 40:58]
  assign _GEN_97 = _T_40 ? 1'h0 : _GEN_86; // @[Conditional.scala 40:58]
  assign _GEN_99 = _T_40 ? 1'h0 : _GEN_88; // @[Conditional.scala 40:58]
  assign _GEN_105 = _T_68 ? _GEN_94 : {{5'd0}, totCnt}; // @[Conditional.scala 39:67]
  assign _GEN_108 = _T_68 & _GEN_97; // @[Conditional.scala 39:67]
  assign _GEN_110 = _T_68 & _GEN_99; // @[Conditional.scala 39:67]
  assign _GEN_114 = _T_31 ? _GEN_50 : _GEN_92; // @[Conditional.scala 39:67]
  assign _GEN_116 = _T_31 ? _GEN_52 : 1'h1; // @[Conditional.scala 39:67]
  assign _GEN_117 = _T_31 ? _GEN_53 : _GEN_110; // @[Conditional.scala 39:67]
  assign _GEN_122 = _T_31 ? {{5'd0}, totCnt} : _GEN_105; // @[Conditional.scala 39:67]
  assign _GEN_125 = _T_31 ? 1'h0 : _GEN_108; // @[Conditional.scala 39:67]
  assign _GEN_130 = _T_11 ? _GEN_18 : _GEN_114; // @[Conditional.scala 39:67]
  assign _GEN_135 = _T_11 | _GEN_116; // @[Conditional.scala 39:67]
  assign _GEN_136 = _T_11 ? 1'h0 : _GEN_117; // @[Conditional.scala 39:67]
  assign _GEN_138 = _T_11 ? {{5'd0}, totCnt} : _GEN_122; // @[Conditional.scala 39:67]
  assign _GEN_141 = _T_11 ? 1'h0 : _GEN_125; // @[Conditional.scala 39:67]
  assign _GEN_144 = _T_5 ? _GEN_2 : _GEN_130; // @[Conditional.scala 39:67]
  assign _GEN_150 = _T_5 | _GEN_135; // @[Conditional.scala 39:67]
  assign _GEN_151 = _T_5 ? 1'h0 : _GEN_136; // @[Conditional.scala 39:67]
  assign _GEN_153 = _T_5 ? {{5'd0}, totCnt} : _GEN_138; // @[Conditional.scala 39:67]
  assign _GEN_156 = _T_5 ? 1'h0 : _GEN_141; // @[Conditional.scala 39:67]
  assign _GEN_158 = _T_2 ? 14'h7ff : _GEN_144; // @[Conditional.scala 40:58]
  assign _GEN_165 = _T_2 | _GEN_150; // @[Conditional.scala 40:58]
  assign _GEN_168 = _T_2 ? {{5'd0}, totCnt} : _GEN_153; // @[Conditional.scala 40:58]
  assign _T_107 = fromEnc_valid & fromEnc_last; // @[adapter.scala 248:24]
  assign toBuf_clk = clock; // @[adapter.scala 53:13]
  assign toBuf_addr = {{18'd0}, _GEN_158}; // @[adapter.scala 93:14]
  assign toBuf_din = _T_31 ? _GEN_51 : 8'h0; // @[adapter.scala 148:21 adapter.scala 164:21 adapter.scala 171:21 adapter.scala 178:21 adapter.scala 181:23 adapter.scala 183:23 adapter.scala 232:21]
  assign toBuf_we = _T_2 ? 1'h0 : _GEN_151; // @[adapter.scala 55:12 adapter.scala 152:22 adapter.scala 163:20 adapter.scala 170:20 adapter.scala 177:20 adapter.scala 231:20]
  assign fromEnc_stall = dropping ? 1'h0 : _GEN_165; // @[adapter.scala 58:17 adapter.scala 149:25 adapter.scala 247:19]
  assign toEnc_writer_en = _T_2 ? 1'h0 : _GEN_156; // @[adapter.scala 60:19 adapter.scala 215:27]
  assign toEnc_writer_data_data = toBuf_dout; // @[adapter.scala 213:34]
  assign toEnc_writer_data_last = _T_37 == totCnt; // @[adapter.scala 214:34]
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
  sendingSlot = _RAND_3[2:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  dropping = _RAND_4[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  cnt = _RAND_5[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  totCnt = _RAND_6[10:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  transferState = _RAND_7[2:0];
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
        state <= {{1'd0}, _GEN_10};
      end
    end else if (_T_31) begin
      if (!(_T_34)) begin
        if (!(_T_40)) begin
          if (!(_T_45)) begin
            if (!(_T_52)) begin
              if (_T_61) begin
                state <= 3'h2;
              end
            end
          end
        end
      end
    end else if (_T_68) begin
      if (!(_T_40)) begin
        if (!(_T_45)) begin
          if (!(_T_34)) begin
            if (!(_T_52)) begin
              if (_T_61) begin
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
        end else if (!(_T_31)) begin
          if (_T_68) begin
            if (!(_T_40)) begin
              if (!(_T_45)) begin
                if (!(_T_34)) begin
                  if (!(_T_52)) begin
                    if (_T_61) begin
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
                    if (_T_61) begin
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
    if (!(_T_2)) begin
      if (_T_5) begin
        if (_T_7) begin
          sendingSlot <= 3'h0;
        end
      end else if (_T_11) begin
        if (_T_7) begin
          sendingSlot <= head;
        end
      end
    end
    if (reset) begin
      dropping <= 1'h0;
    end else if (dropping) begin
      if (_T_107) begin
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
          if (fromEnc_valid) begin
            cnt <= _T_37;
          end
        end
      end else if (_T_68) begin
        if (!(_T_40)) begin
          if (!(_T_45)) begin
            if (_T_34) begin
              if (_T_89) begin
                cnt <= _T_37;
              end
            end
          end
        end
      end
    end
    if (reset) begin
      totCnt <= 11'h0;
    end else begin
      totCnt <= _GEN_168[10:0];
    end
    if (reset) begin
      transferState <= 3'h0;
    end else if (!(_T_2)) begin
      if (_T_5) begin
        if (_T_7) begin
          transferState <= 3'h2;
        end
      end else if (_T_11) begin
        if (_T_7) begin
          transferState <= 3'h2;
        end else if (_T_16) begin
          if (_T_21) begin
            transferState <= 3'h0;
          end
        end
      end else if (_T_31) begin
        if (_T_34) begin
          if (fromEnc_valid) begin
            if (fromEnc_last) begin
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
      end else if (_T_68) begin
        if (_T_40) begin
          transferState <= 3'h3;
        end else if (_T_45) begin
          transferState <= 3'h0;
        end else if (_T_34) begin
          if (_T_89) begin
            if (_T_86) begin
              transferState <= 3'h1;
            end
          end
        end else if (_T_52) begin
          transferState <= 3'h4;
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
  output        io_buf_we,
  input  [47:0] io_cmd_data,
  input  [7:0]  io_cmd_idx,
  input  [7:0]  io_cmd_op
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
  wire  acceptorBridge_io_write_full; // @[router.scala 39:30]
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
  wire  ctrl_clock; // @[router.scala 48:20]
  wire  ctrl_reset; // @[router.scala 48:20]
  wire  ctrl_io_inputWait; // @[router.scala 48:20]
  wire  ctrl_io_forward_stall; // @[router.scala 48:20]
  wire  ctrl_io_forward_pause; // @[router.scala 48:20]
  wire  ctrl_io_arp_pause; // @[router.scala 48:20]
  wire  ctrl_io_encoder_stall; // @[router.scala 48:20]
  wire  ctrl_io_encoder_pause; // @[router.scala 48:20]
  wire [47:0] ctrl_macs_0; // @[router.scala 48:20]
  wire [47:0] ctrl_macs_1; // @[router.scala 48:20]
  wire [47:0] ctrl_macs_2; // @[router.scala 48:20]
  wire [47:0] ctrl_macs_3; // @[router.scala 48:20]
  wire [47:0] ctrl_macs_4; // @[router.scala 48:20]
  wire [31:0] ctrl_ips_0; // @[router.scala 48:20]
  wire [31:0] ctrl_ips_1; // @[router.scala 48:20]
  wire [31:0] ctrl_ips_2; // @[router.scala 48:20]
  wire [31:0] ctrl_ips_3; // @[router.scala 48:20]
  wire [31:0] ctrl_ips_4; // @[router.scala 48:20]
  wire [47:0] ctrl_cmd_data; // @[router.scala 48:20]
  wire [7:0] ctrl_cmd_idx; // @[router.scala 48:20]
  wire [7:0] ctrl_cmd_op; // @[router.scala 48:20]
  wire  Acceptor_clock; // @[router.scala 53:26]
  wire  Acceptor_reset; // @[router.scala 53:26]
  wire [47:0] Acceptor_macs_0; // @[router.scala 53:26]
  wire [47:0] Acceptor_macs_1; // @[router.scala 53:26]
  wire [47:0] Acceptor_macs_2; // @[router.scala 53:26]
  wire [47:0] Acceptor_macs_3; // @[router.scala 53:26]
  wire [47:0] Acceptor_macs_4; // @[router.scala 53:26]
  wire [7:0] Acceptor_io_rx_tdata; // @[router.scala 53:26]
  wire  Acceptor_io_rx_tvalid; // @[router.scala 53:26]
  wire  Acceptor_io_rx_tlast; // @[router.scala 53:26]
  wire  Acceptor_io_writer_clk; // @[router.scala 53:26]
  wire  Acceptor_io_writer_en; // @[router.scala 53:26]
  wire [47:0] Acceptor_io_writer_data_eth_dest; // @[router.scala 53:26]
  wire [47:0] Acceptor_io_writer_data_eth_sender; // @[router.scala 53:26]
  wire [1:0] Acceptor_io_writer_data_eth_pactype; // @[router.scala 53:26]
  wire [2:0] Acceptor_io_writer_data_eth_vlan; // @[router.scala 53:26]
  wire [3:0] Acceptor_io_writer_data_ip_version; // @[router.scala 53:26]
  wire [3:0] Acceptor_io_writer_data_ip_ihl; // @[router.scala 53:26]
  wire [5:0] Acceptor_io_writer_data_ip_dscp; // @[router.scala 53:26]
  wire [1:0] Acceptor_io_writer_data_ip_ecn; // @[router.scala 53:26]
  wire [15:0] Acceptor_io_writer_data_ip_len; // @[router.scala 53:26]
  wire [15:0] Acceptor_io_writer_data_ip_id; // @[router.scala 53:26]
  wire [2:0] Acceptor_io_writer_data_ip_flags; // @[router.scala 53:26]
  wire [12:0] Acceptor_io_writer_data_ip_foff; // @[router.scala 53:26]
  wire [7:0] Acceptor_io_writer_data_ip_ttl; // @[router.scala 53:26]
  wire [7:0] Acceptor_io_writer_data_ip_proto; // @[router.scala 53:26]
  wire [15:0] Acceptor_io_writer_data_ip_chksum; // @[router.scala 53:26]
  wire [31:0] Acceptor_io_writer_data_ip_src; // @[router.scala 53:26]
  wire [31:0] Acceptor_io_writer_data_ip_dest; // @[router.scala 53:26]
  wire  Acceptor_io_writer_full; // @[router.scala 53:26]
  wire  Acceptor_io_payloadWriter_clk; // @[router.scala 53:26]
  wire  Acceptor_io_payloadWriter_en; // @[router.scala 53:26]
  wire [7:0] Acceptor_io_payloadWriter_data_data; // @[router.scala 53:26]
  wire  Acceptor_io_payloadWriter_data_last; // @[router.scala 53:26]
  wire  Acceptor_io_payloadWriter_progfull; // @[router.scala 53:26]
  wire  forward_clock; // @[router.scala 61:23]
  wire  forward_reset; // @[router.scala 61:23]
  wire [47:0] forward_io_input_eth_dest; // @[router.scala 61:23]
  wire [47:0] forward_io_input_eth_sender; // @[router.scala 61:23]
  wire [1:0] forward_io_input_eth_pactype; // @[router.scala 61:23]
  wire [2:0] forward_io_input_eth_vlan; // @[router.scala 61:23]
  wire [3:0] forward_io_input_ip_version; // @[router.scala 61:23]
  wire [3:0] forward_io_input_ip_ihl; // @[router.scala 61:23]
  wire [5:0] forward_io_input_ip_dscp; // @[router.scala 61:23]
  wire [1:0] forward_io_input_ip_ecn; // @[router.scala 61:23]
  wire [15:0] forward_io_input_ip_len; // @[router.scala 61:23]
  wire [15:0] forward_io_input_ip_id; // @[router.scala 61:23]
  wire [2:0] forward_io_input_ip_flags; // @[router.scala 61:23]
  wire [12:0] forward_io_input_ip_foff; // @[router.scala 61:23]
  wire [7:0] forward_io_input_ip_ttl; // @[router.scala 61:23]
  wire [7:0] forward_io_input_ip_proto; // @[router.scala 61:23]
  wire [15:0] forward_io_input_ip_chksum; // @[router.scala 61:23]
  wire [31:0] forward_io_input_ip_src; // @[router.scala 61:23]
  wire [31:0] forward_io_input_ip_dest; // @[router.scala 61:23]
  wire [1:0] forward_io_status; // @[router.scala 61:23]
  wire  forward_io_stall; // @[router.scala 61:23]
  wire  forward_io_pause; // @[router.scala 61:23]
  wire [47:0] forward_io_output_packet_eth_dest; // @[router.scala 61:23]
  wire [47:0] forward_io_output_packet_eth_sender; // @[router.scala 61:23]
  wire [1:0] forward_io_output_packet_eth_pactype; // @[router.scala 61:23]
  wire [2:0] forward_io_output_packet_eth_vlan; // @[router.scala 61:23]
  wire [3:0] forward_io_output_packet_ip_version; // @[router.scala 61:23]
  wire [3:0] forward_io_output_packet_ip_ihl; // @[router.scala 61:23]
  wire [5:0] forward_io_output_packet_ip_dscp; // @[router.scala 61:23]
  wire [1:0] forward_io_output_packet_ip_ecn; // @[router.scala 61:23]
  wire [15:0] forward_io_output_packet_ip_len; // @[router.scala 61:23]
  wire [15:0] forward_io_output_packet_ip_id; // @[router.scala 61:23]
  wire [2:0] forward_io_output_packet_ip_flags; // @[router.scala 61:23]
  wire [12:0] forward_io_output_packet_ip_foff; // @[router.scala 61:23]
  wire [7:0] forward_io_output_packet_ip_ttl; // @[router.scala 61:23]
  wire [7:0] forward_io_output_packet_ip_proto; // @[router.scala 61:23]
  wire [15:0] forward_io_output_packet_ip_chksum; // @[router.scala 61:23]
  wire [31:0] forward_io_output_packet_ip_src; // @[router.scala 61:23]
  wire [31:0] forward_io_output_packet_ip_dest; // @[router.scala 61:23]
  wire [2:0] forward_io_output_lookup_status; // @[router.scala 61:23]
  wire [1:0] forward_io_outputStatus; // @[router.scala 61:23]
  wire [31:0] forward_ips_0; // @[router.scala 61:23]
  wire [31:0] forward_ips_1; // @[router.scala 61:23]
  wire [31:0] forward_ips_2; // @[router.scala 61:23]
  wire [31:0] forward_ips_3; // @[router.scala 61:23]
  wire [31:0] forward_ips_4; // @[router.scala 61:23]
  wire  arp_clock; // @[router.scala 68:19]
  wire  arp_reset; // @[router.scala 68:19]
  wire [47:0] arp_io_input_packet_eth_dest; // @[router.scala 68:19]
  wire [47:0] arp_io_input_packet_eth_sender; // @[router.scala 68:19]
  wire [1:0] arp_io_input_packet_eth_pactype; // @[router.scala 68:19]
  wire [2:0] arp_io_input_packet_eth_vlan; // @[router.scala 68:19]
  wire [3:0] arp_io_input_packet_ip_version; // @[router.scala 68:19]
  wire [3:0] arp_io_input_packet_ip_ihl; // @[router.scala 68:19]
  wire [5:0] arp_io_input_packet_ip_dscp; // @[router.scala 68:19]
  wire [1:0] arp_io_input_packet_ip_ecn; // @[router.scala 68:19]
  wire [15:0] arp_io_input_packet_ip_len; // @[router.scala 68:19]
  wire [15:0] arp_io_input_packet_ip_id; // @[router.scala 68:19]
  wire [2:0] arp_io_input_packet_ip_flags; // @[router.scala 68:19]
  wire [12:0] arp_io_input_packet_ip_foff; // @[router.scala 68:19]
  wire [7:0] arp_io_input_packet_ip_ttl; // @[router.scala 68:19]
  wire [7:0] arp_io_input_packet_ip_proto; // @[router.scala 68:19]
  wire [15:0] arp_io_input_packet_ip_chksum; // @[router.scala 68:19]
  wire [31:0] arp_io_input_packet_ip_src; // @[router.scala 68:19]
  wire [31:0] arp_io_input_packet_ip_dest; // @[router.scala 68:19]
  wire [2:0] arp_io_input_lookup_status; // @[router.scala 68:19]
  wire [1:0] arp_io_status; // @[router.scala 68:19]
  wire  arp_io_pause; // @[router.scala 68:19]
  wire [2:0] arp_io_output_forward_status; // @[router.scala 68:19]
  wire [47:0] arp_io_output_packet_eth_dest; // @[router.scala 68:19]
  wire [47:0] arp_io_output_packet_eth_sender; // @[router.scala 68:19]
  wire [1:0] arp_io_output_packet_eth_pactype; // @[router.scala 68:19]
  wire [2:0] arp_io_output_packet_eth_vlan; // @[router.scala 68:19]
  wire [3:0] arp_io_output_packet_ip_version; // @[router.scala 68:19]
  wire [3:0] arp_io_output_packet_ip_ihl; // @[router.scala 68:19]
  wire [5:0] arp_io_output_packet_ip_dscp; // @[router.scala 68:19]
  wire [1:0] arp_io_output_packet_ip_ecn; // @[router.scala 68:19]
  wire [15:0] arp_io_output_packet_ip_len; // @[router.scala 68:19]
  wire [15:0] arp_io_output_packet_ip_id; // @[router.scala 68:19]
  wire [2:0] arp_io_output_packet_ip_flags; // @[router.scala 68:19]
  wire [12:0] arp_io_output_packet_ip_foff; // @[router.scala 68:19]
  wire [7:0] arp_io_output_packet_ip_ttl; // @[router.scala 68:19]
  wire [7:0] arp_io_output_packet_ip_proto; // @[router.scala 68:19]
  wire [15:0] arp_io_output_packet_ip_chksum; // @[router.scala 68:19]
  wire [31:0] arp_io_output_packet_ip_src; // @[router.scala 68:19]
  wire [31:0] arp_io_output_packet_ip_dest; // @[router.scala 68:19]
  wire [1:0] arp_io_outputStatus; // @[router.scala 68:19]
  wire [47:0] arp_macs_0; // @[router.scala 68:19]
  wire  encoder_clock; // @[router.scala 77:23]
  wire  encoder_reset; // @[router.scala 77:23]
  wire [2:0] encoder_io_input_forward_status; // @[router.scala 77:23]
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
  wire [1:0] encoder_toAdapter_req; // @[router.scala 77:23]
  wire  encoder_toAdapter_stall; // @[router.scala 77:23]
  wire  encoder_fromAdapter_writer_en; // @[router.scala 77:23]
  wire [7:0] encoder_fromAdapter_writer_data_data; // @[router.scala 77:23]
  wire  encoder_fromAdapter_writer_data_last; // @[router.scala 77:23]
  wire  encoder_fromAdapter_writer_full; // @[router.scala 77:23]
  wire  adapter_clock; // @[router.scala 88:23]
  wire  adapter_reset; // @[router.scala 88:23]
  wire  adapter_toBuf_clk; // @[router.scala 88:23]
  wire [31:0] adapter_toBuf_addr; // @[router.scala 88:23]
  wire [7:0] adapter_toBuf_din; // @[router.scala 88:23]
  wire [7:0] adapter_toBuf_dout; // @[router.scala 88:23]
  wire  adapter_toBuf_we; // @[router.scala 88:23]
  wire [7:0] adapter_fromEnc_input; // @[router.scala 88:23]
  wire  adapter_fromEnc_valid; // @[router.scala 88:23]
  wire  adapter_fromEnc_last; // @[router.scala 88:23]
  wire [1:0] adapter_fromEnc_req; // @[router.scala 88:23]
  wire  adapter_fromEnc_stall; // @[router.scala 88:23]
  wire  adapter_toEnc_writer_en; // @[router.scala 88:23]
  wire [7:0] adapter_toEnc_writer_data_data; // @[router.scala 88:23]
  wire  adapter_toEnc_writer_data_last; // @[router.scala 88:23]
  wire  adapter_toEnc_writer_full; // @[router.scala 88:23]
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
  reg [47:0] _T_1_0; // @[router.scala 57:37]
  reg [63:0] _RAND_0;
  reg [47:0] _T_1_1; // @[router.scala 57:37]
  reg [63:0] _RAND_1;
  reg [47:0] _T_1_2; // @[router.scala 57:37]
  reg [63:0] _RAND_2;
  reg [47:0] _T_1_3; // @[router.scala 57:37]
  reg [63:0] _RAND_3;
  reg [47:0] _T_1_4; // @[router.scala 57:37]
  reg [63:0] _RAND_4;
  reg [47:0] _T_2_0; // @[router.scala 57:29]
  reg [63:0] _RAND_5;
  reg [47:0] _T_2_1; // @[router.scala 57:29]
  reg [63:0] _RAND_6;
  reg [47:0] _T_2_2; // @[router.scala 57:29]
  reg [63:0] _RAND_7;
  reg [47:0] _T_2_3; // @[router.scala 57:29]
  reg [63:0] _RAND_8;
  reg [47:0] _T_2_4; // @[router.scala 57:29]
  reg [63:0] _RAND_9;
  wire  _T_3; // @[router.scala 66:27]
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
    .io_write_full(acceptorBridge_io_write_full),
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
  Ctrl ctrl ( // @[router.scala 48:20]
    .clock(ctrl_clock),
    .reset(ctrl_reset),
    .io_inputWait(ctrl_io_inputWait),
    .io_forward_stall(ctrl_io_forward_stall),
    .io_forward_pause(ctrl_io_forward_pause),
    .io_arp_pause(ctrl_io_arp_pause),
    .io_encoder_stall(ctrl_io_encoder_stall),
    .io_encoder_pause(ctrl_io_encoder_pause),
    .macs_0(ctrl_macs_0),
    .macs_1(ctrl_macs_1),
    .macs_2(ctrl_macs_2),
    .macs_3(ctrl_macs_3),
    .macs_4(ctrl_macs_4),
    .ips_0(ctrl_ips_0),
    .ips_1(ctrl_ips_1),
    .ips_2(ctrl_ips_2),
    .ips_3(ctrl_ips_3),
    .ips_4(ctrl_ips_4),
    .cmd_data(ctrl_cmd_data),
    .cmd_idx(ctrl_cmd_idx),
    .cmd_op(ctrl_cmd_op)
  );
  Acceptor Acceptor ( // @[router.scala 53:26]
    .clock(Acceptor_clock),
    .reset(Acceptor_reset),
    .macs_0(Acceptor_macs_0),
    .macs_1(Acceptor_macs_1),
    .macs_2(Acceptor_macs_2),
    .macs_3(Acceptor_macs_3),
    .macs_4(Acceptor_macs_4),
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
    .io_writer_full(Acceptor_io_writer_full),
    .io_payloadWriter_clk(Acceptor_io_payloadWriter_clk),
    .io_payloadWriter_en(Acceptor_io_payloadWriter_en),
    .io_payloadWriter_data_data(Acceptor_io_payloadWriter_data_data),
    .io_payloadWriter_data_last(Acceptor_io_payloadWriter_data_last),
    .io_payloadWriter_progfull(Acceptor_io_payloadWriter_progfull)
  );
  LLFT forward ( // @[router.scala 61:23]
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
    .io_output_lookup_status(forward_io_output_lookup_status),
    .io_outputStatus(forward_io_outputStatus),
    .ips_0(forward_ips_0),
    .ips_1(forward_ips_1),
    .ips_2(forward_ips_2),
    .ips_3(forward_ips_3),
    .ips_4(forward_ips_4)
  );
  ARPTable arp ( // @[router.scala 68:19]
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
    .io_input_lookup_status(arp_io_input_lookup_status),
    .io_status(arp_io_status),
    .io_pause(arp_io_pause),
    .io_output_forward_status(arp_io_output_forward_status),
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
    .io_outputStatus(arp_io_outputStatus),
    .macs_0(arp_macs_0)
  );
  Encoder encoder ( // @[router.scala 77:23]
    .clock(encoder_clock),
    .reset(encoder_reset),
    .io_input_forward_status(encoder_io_input_forward_status),
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
    .toAdapter_req(encoder_toAdapter_req),
    .toAdapter_stall(encoder_toAdapter_stall),
    .fromAdapter_writer_en(encoder_fromAdapter_writer_en),
    .fromAdapter_writer_data_data(encoder_fromAdapter_writer_data_data),
    .fromAdapter_writer_data_last(encoder_fromAdapter_writer_data_last),
    .fromAdapter_writer_full(encoder_fromAdapter_writer_full)
  );
  Adapter adapter ( // @[router.scala 88:23]
    .clock(adapter_clock),
    .reset(adapter_reset),
    .toBuf_clk(adapter_toBuf_clk),
    .toBuf_addr(adapter_toBuf_addr),
    .toBuf_din(adapter_toBuf_din),
    .toBuf_dout(adapter_toBuf_dout),
    .toBuf_we(adapter_toBuf_we),
    .fromEnc_input(adapter_fromEnc_input),
    .fromEnc_valid(adapter_fromEnc_valid),
    .fromEnc_last(adapter_fromEnc_last),
    .fromEnc_req(adapter_fromEnc_req),
    .fromEnc_stall(adapter_fromEnc_stall),
    .toEnc_writer_en(adapter_toEnc_writer_en),
    .toEnc_writer_data_data(adapter_toEnc_writer_data_data),
    .toEnc_writer_data_last(adapter_toEnc_writer_data_last),
    .toEnc_writer_full(adapter_toEnc_writer_full)
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
  assign _T_3 = acceptorBridge_io_read_empty ? 1'h0 : 1'h1; // @[router.scala 66:27]
  assign io_tx_tdata = Transmitter_io_tx_tdata; // @[router.scala 96:23]
  assign io_tx_tvalid = Transmitter_io_tx_tvalid; // @[router.scala 96:23]
  assign io_tx_tlast = Transmitter_io_tx_tlast; // @[router.scala 96:23]
  assign io_buf_clk = adapter_toBuf_clk; // @[router.scala 89:17]
  assign io_buf_addr = adapter_toBuf_addr; // @[router.scala 89:17]
  assign io_buf_din = adapter_toBuf_din; // @[router.scala 89:17]
  assign io_buf_we = adapter_toBuf_we; // @[router.scala 89:17]
  assign acceptorBridge_reset = reset;
  assign acceptorBridge_io_write_clk = Acceptor_io_writer_clk; // @[router.scala 56:29]
  assign acceptorBridge_io_write_en = Acceptor_io_writer_en; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_eth_dest = Acceptor_io_writer_data_eth_dest; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_eth_sender = Acceptor_io_writer_data_eth_sender; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_eth_pactype = Acceptor_io_writer_data_eth_pactype; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_eth_vlan = Acceptor_io_writer_data_eth_vlan; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_version = Acceptor_io_writer_data_ip_version; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_ihl = Acceptor_io_writer_data_ip_ihl; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_dscp = Acceptor_io_writer_data_ip_dscp; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_ecn = Acceptor_io_writer_data_ip_ecn; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_len = Acceptor_io_writer_data_ip_len; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_id = Acceptor_io_writer_data_ip_id; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_flags = Acceptor_io_writer_data_ip_flags; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_foff = Acceptor_io_writer_data_ip_foff; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_ttl = Acceptor_io_writer_data_ip_ttl; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_proto = Acceptor_io_writer_data_ip_proto; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_chksum = Acceptor_io_writer_data_ip_chksum; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_src = Acceptor_io_writer_data_ip_src; // @[router.scala 56:29]
  assign acceptorBridge_io_write_data_ip_dest = Acceptor_io_writer_data_ip_dest; // @[router.scala 56:29]
  assign acceptorBridge_io_read_clk = clock; // @[router.scala 40:30]
  assign acceptorBridge_io_read_en = ctrl_io_inputWait == 1'h0; // @[router.scala 49:29]
  assign transmitterBridge_reset = reset;
  assign transmitterBridge_io_write_clk = encoder_io_writer_clk; // @[router.scala 43:34 router.scala 85:21]
  assign transmitterBridge_io_write_en = encoder_io_writer_en; // @[router.scala 85:21]
  assign transmitterBridge_io_write_data_data = encoder_io_writer_data_data; // @[router.scala 85:21]
  assign transmitterBridge_io_write_data_last = encoder_io_writer_data_last; // @[router.scala 85:21]
  assign transmitterBridge_io_read_clk = Transmitter_io_reader_clk; // @[router.scala 95:27]
  assign transmitterBridge_io_read_en = Transmitter_io_reader_en; // @[router.scala 95:27]
  assign payloadBridge_reset = reset;
  assign payloadBridge_io_write_clk = Acceptor_io_payloadWriter_clk; // @[router.scala 58:28]
  assign payloadBridge_io_write_en = Acceptor_io_payloadWriter_en; // @[router.scala 58:28]
  assign payloadBridge_io_write_data_data = Acceptor_io_payloadWriter_data_data; // @[router.scala 58:28]
  assign payloadBridge_io_write_data_last = Acceptor_io_payloadWriter_data_last; // @[router.scala 58:28]
  assign payloadBridge_io_read_clk = encoder_io_payloadReader_clk; // @[router.scala 86:28]
  assign payloadBridge_io_read_en = encoder_io_payloadReader_en; // @[router.scala 86:28]
  assign ctrl_clock = clock;
  assign ctrl_reset = reset;
  assign ctrl_io_forward_stall = forward_io_stall; // @[router.scala 63:25]
  assign ctrl_io_encoder_stall = encoder_io_stall; // @[router.scala 78:25]
  assign ctrl_cmd_data = io_cmd_data; // @[router.scala 50:12]
  assign ctrl_cmd_idx = io_cmd_idx; // @[router.scala 50:12]
  assign ctrl_cmd_op = io_cmd_op; // @[router.scala 50:12]
  assign Acceptor_clock = io_rx_clk;
  assign Acceptor_reset = reset;
  assign Acceptor_macs_0 = _T_2_0; // @[router.scala 57:19]
  assign Acceptor_macs_1 = _T_2_1; // @[router.scala 57:19]
  assign Acceptor_macs_2 = _T_2_2; // @[router.scala 57:19]
  assign Acceptor_macs_3 = _T_2_3; // @[router.scala 57:19]
  assign Acceptor_macs_4 = _T_2_4; // @[router.scala 57:19]
  assign Acceptor_io_rx_tdata = io_rx_tdata; // @[router.scala 55:20]
  assign Acceptor_io_rx_tvalid = io_rx_tvalid; // @[router.scala 55:20]
  assign Acceptor_io_rx_tlast = io_rx_tlast; // @[router.scala 55:20]
  assign Acceptor_io_writer_full = acceptorBridge_io_write_full; // @[router.scala 56:29]
  assign Acceptor_io_payloadWriter_progfull = payloadBridge_io_write_progfull; // @[router.scala 58:28]
  assign forward_clock = clock;
  assign forward_reset = reset;
  assign forward_io_input_eth_dest = acceptorBridge_io_read_data_eth_dest; // @[router.scala 65:20]
  assign forward_io_input_eth_sender = acceptorBridge_io_read_data_eth_sender; // @[router.scala 65:20]
  assign forward_io_input_eth_pactype = acceptorBridge_io_read_data_eth_pactype; // @[router.scala 65:20]
  assign forward_io_input_eth_vlan = acceptorBridge_io_read_data_eth_vlan; // @[router.scala 65:20]
  assign forward_io_input_ip_version = acceptorBridge_io_read_data_ip_version; // @[router.scala 65:20]
  assign forward_io_input_ip_ihl = acceptorBridge_io_read_data_ip_ihl; // @[router.scala 65:20]
  assign forward_io_input_ip_dscp = acceptorBridge_io_read_data_ip_dscp; // @[router.scala 65:20]
  assign forward_io_input_ip_ecn = acceptorBridge_io_read_data_ip_ecn; // @[router.scala 65:20]
  assign forward_io_input_ip_len = acceptorBridge_io_read_data_ip_len; // @[router.scala 65:20]
  assign forward_io_input_ip_id = acceptorBridge_io_read_data_ip_id; // @[router.scala 65:20]
  assign forward_io_input_ip_flags = acceptorBridge_io_read_data_ip_flags; // @[router.scala 65:20]
  assign forward_io_input_ip_foff = acceptorBridge_io_read_data_ip_foff; // @[router.scala 65:20]
  assign forward_io_input_ip_ttl = acceptorBridge_io_read_data_ip_ttl; // @[router.scala 65:20]
  assign forward_io_input_ip_proto = acceptorBridge_io_read_data_ip_proto; // @[router.scala 65:20]
  assign forward_io_input_ip_chksum = acceptorBridge_io_read_data_ip_chksum; // @[router.scala 65:20]
  assign forward_io_input_ip_src = acceptorBridge_io_read_data_ip_src; // @[router.scala 65:20]
  assign forward_io_input_ip_dest = acceptorBridge_io_read_data_ip_dest; // @[router.scala 65:20]
  assign forward_io_status = {{1'd0}, _T_3}; // @[router.scala 66:21]
  assign forward_io_pause = ctrl_io_forward_pause; // @[router.scala 64:25]
  assign forward_ips_0 = ctrl_ips_0; // @[router.scala 62:15]
  assign forward_ips_1 = ctrl_ips_1; // @[router.scala 62:15]
  assign forward_ips_2 = ctrl_ips_2; // @[router.scala 62:15]
  assign forward_ips_3 = ctrl_ips_3; // @[router.scala 62:15]
  assign forward_ips_4 = ctrl_ips_4; // @[router.scala 62:15]
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
  assign arp_io_input_lookup_status = forward_io_output_lookup_status; // @[router.scala 74:21]
  assign arp_io_status = forward_io_outputStatus; // @[router.scala 75:27]
  assign arp_io_pause = ctrl_io_arp_pause; // @[router.scala 73:21]
  assign arp_macs_0 = ctrl_macs_0; // @[router.scala 70:12]
  assign encoder_clock = clock;
  assign encoder_reset = reset;
  assign encoder_io_input_forward_status = arp_io_output_forward_status; // @[router.scala 83:20]
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
  assign encoder_io_status = arp_io_outputStatus; // @[router.scala 84:21]
  assign encoder_io_pause = ctrl_io_encoder_pause; // @[router.scala 79:25]
  assign encoder_io_writer_full = transmitterBridge_io_write_full; // @[router.scala 85:21]
  assign encoder_io_payloadReader_data_data = payloadBridge_io_read_data_data; // @[router.scala 86:28]
  assign encoder_io_payloadReader_data_last = payloadBridge_io_read_data_last; // @[router.scala 86:28]
  assign encoder_io_payloadReader_empty = payloadBridge_io_read_empty; // @[router.scala 86:28]
  assign encoder_toAdapter_stall = adapter_fromEnc_stall; // @[router.scala 90:21]
  assign encoder_fromAdapter_writer_en = adapter_toEnc_writer_en; // @[router.scala 91:17]
  assign encoder_fromAdapter_writer_data_data = adapter_toEnc_writer_data_data; // @[router.scala 91:17]
  assign encoder_fromAdapter_writer_data_last = adapter_toEnc_writer_data_last; // @[router.scala 91:17]
  assign adapter_clock = clock;
  assign adapter_reset = reset;
  assign adapter_toBuf_dout = io_buf_dout; // @[router.scala 89:17]
  assign adapter_fromEnc_input = encoder_toAdapter_input; // @[router.scala 90:21]
  assign adapter_fromEnc_valid = encoder_toAdapter_valid; // @[router.scala 90:21]
  assign adapter_fromEnc_last = encoder_toAdapter_last; // @[router.scala 90:21]
  assign adapter_fromEnc_req = encoder_toAdapter_req; // @[router.scala 90:21]
  assign adapter_toEnc_writer_full = encoder_fromAdapter_writer_full; // @[router.scala 91:17]
  assign Transmitter_clock = io_tx_clk;
  assign Transmitter_io_reader_data_data = transmitterBridge_io_read_data_data; // @[router.scala 95:27]
  assign Transmitter_io_reader_data_last = transmitterBridge_io_read_data_last; // @[router.scala 95:27]
  assign Transmitter_io_reader_empty = transmitterBridge_io_read_empty; // @[router.scala 95:27]
  assign Transmitter_io_tx_tready = io_tx_tready; // @[router.scala 96:23]
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
  _T_1_0 = _RAND_0[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {2{`RANDOM}};
  _T_1_1 = _RAND_1[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {2{`RANDOM}};
  _T_1_2 = _RAND_2[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {2{`RANDOM}};
  _T_1_3 = _RAND_3[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {2{`RANDOM}};
  _T_1_4 = _RAND_4[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {2{`RANDOM}};
  _T_2_0 = _RAND_5[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {2{`RANDOM}};
  _T_2_1 = _RAND_6[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {2{`RANDOM}};
  _T_2_2 = _RAND_7[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_8 = {2{`RANDOM}};
  _T_2_3 = _RAND_8[47:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_9 = {2{`RANDOM}};
  _T_2_4 = _RAND_9[47:0];
  `endif // RANDOMIZE_REG_INIT
  `endif // RANDOMIZE
end // initial
`endif // SYNTHESIS
  always @(posedge io_rx_clk) begin
    _T_1_0 <= ctrl_macs_0;
    _T_1_1 <= ctrl_macs_1;
    _T_1_2 <= ctrl_macs_2;
    _T_1_3 <= ctrl_macs_3;
    _T_1_4 <= ctrl_macs_4;
    _T_2_0 <= _T_1_0;
    _T_2_1 <= _T_1_1;
    _T_2_2 <= _T_1_2;
    _T_2_3 <= _T_1_3;
    _T_2_4 <= _T_1_4;
  end
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
  output        io_buf_we,
  input  [63:0] io_cmd
);
  wire  router_clock; // @[top.scala 32:22]
  wire  router_reset; // @[top.scala 32:22]
  wire  router_io_rx_clk; // @[top.scala 32:22]
  wire  router_io_tx_clk; // @[top.scala 32:22]
  wire [7:0] router_io_rx_tdata; // @[top.scala 32:22]
  wire  router_io_rx_tvalid; // @[top.scala 32:22]
  wire  router_io_rx_tlast; // @[top.scala 32:22]
  wire [7:0] router_io_tx_tdata; // @[top.scala 32:22]
  wire  router_io_tx_tvalid; // @[top.scala 32:22]
  wire  router_io_tx_tlast; // @[top.scala 32:22]
  wire  router_io_tx_tready; // @[top.scala 32:22]
  wire  router_io_buf_clk; // @[top.scala 32:22]
  wire [31:0] router_io_buf_addr; // @[top.scala 32:22]
  wire [7:0] router_io_buf_din; // @[top.scala 32:22]
  wire [7:0] router_io_buf_dout; // @[top.scala 32:22]
  wire  router_io_buf_we; // @[top.scala 32:22]
  wire [47:0] router_io_cmd_data; // @[top.scala 32:22]
  wire [7:0] router_io_cmd_idx; // @[top.scala 32:22]
  wire [7:0] router_io_cmd_op; // @[top.scala 32:22]
  Router router ( // @[top.scala 32:22]
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
    .io_buf_we(router_io_buf_we),
    .io_cmd_data(router_io_cmd_data),
    .io_cmd_idx(router_io_cmd_idx),
    .io_cmd_op(router_io_cmd_op)
  );
  assign io_tx_tdata = router_io_tx_tdata; // @[top.scala 42:15]
  assign io_tx_tvalid = router_io_tx_tvalid; // @[top.scala 44:16]
  assign io_tx_tlast = router_io_tx_tlast; // @[top.scala 43:15]
  assign io_tx_tuser = 1'h0; // @[top.scala 53:15]
  assign io_buf_clk = router_io_buf_clk; // @[top.scala 48:14]
  assign io_buf_addr = router_io_buf_addr; // @[top.scala 47:15]
  assign io_buf_din = router_io_buf_din; // @[top.scala 49:14]
  assign io_buf_we = router_io_buf_we; // @[top.scala 51:13]
  assign router_clock = clock;
  assign router_reset = reset;
  assign router_io_rx_clk = io_rx_clk; // @[top.scala 34:20]
  assign router_io_tx_clk = io_tx_clk; // @[top.scala 35:20]
  assign router_io_rx_tdata = io_rx_tdata; // @[top.scala 37:22]
  assign router_io_rx_tvalid = io_rx_tvalid; // @[top.scala 38:23]
  assign router_io_rx_tlast = io_rx_tlast; // @[top.scala 39:22]
  assign router_io_tx_tready = io_tx_tready; // @[top.scala 45:23]
  assign router_io_buf_dout = io_buf_dout; // @[top.scala 50:22]
  assign router_io_cmd_data = io_cmd[63:16]; // @[top.scala 55:17]
  assign router_io_cmd_idx = io_cmd[15:8]; // @[top.scala 55:17]
  assign router_io_cmd_op = io_cmd[7:0]; // @[top.scala 55:17]
endmodule
