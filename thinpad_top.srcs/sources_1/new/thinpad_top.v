`default_nettype reg

module thinpad_top(
    input wire clk_50M,           //50MHz 时钟输入
    input wire clk_11M0592,       //11.0592MHz 时钟输入（备用，可不用）

    input wire clock_btn,         //BTN5手动时钟按钮�?关，带消抖电路，按下时为1
    input wire reset_btn,         //BTN6手动复位按钮�?关，带消抖电路，按下时为1

    input  wire[3:0]  touch_btn,  //BTN1~BTN4，按钮开关，按下时为1
    input  wire[31:0] dip_sw,     //32位拨码开关，拨到“ON”时�?1
    output wire[15:0] leds,       //16位LED，输出时1点亮
    output wire[7:0]  dpy0,       //数码管低位信号，包括小数点，输出1点亮
    output wire[7:0]  dpy1,       //数码管高位信号，包括小数点，输出1点亮

    //CPLD串口控制器信�?
    output wire uart_rdn,         //读串口信号，低有�?
    output wire uart_wrn,         //写串口信号，低有�?
    input wire uart_dataready,    //串口数据准备�?
    input wire uart_tbre,         //发�?�数据标�?
    input wire uart_tsre,         //数据发�?�完毕标�?

    //BaseRAM信号
    inout wire[31:0] base_ram_data,  //BaseRAM数据，低8位与CPLD串口控制器共�?
    output wire[19:0] base_ram_addr, //BaseRAM地址
    output wire[3:0] base_ram_be_n,  //BaseRAM字节使能，低有效。如果不使用字节使能，请保持�?0
    output wire base_ram_ce_n,       //BaseRAM片�?�，低有�?
    output wire base_ram_oe_n,       //BaseRAM读使能，低有�?
    output wire base_ram_we_n,       //BaseRAM写使能，低有�?

    //ExtRAM信号
    inout wire[31:0] ext_ram_data,  //ExtRAM数据
    output wire[19:0] ext_ram_addr, //ExtRAM地址
    output wire[3:0] ext_ram_be_n,  //ExtRAM字节使能，低有效。如果不使用字节使能，请保持�?0
    output wire ext_ram_ce_n,       //ExtRAM片�?�，低有�?
    output wire ext_ram_oe_n,       //ExtRAM读使能，低有�?
    output wire ext_ram_we_n,       //ExtRAM写使能，低有�?

    //直连串口信号
    output wire txd,  //直连串口发�?�端
    input  wire rxd,  //直连串口接收�?

    //Flash存储器信号，参�?? JS28F640 芯片手册
    output wire [22:0]flash_a,      //Flash地址，a0仅在8bit模式有效�?16bit模式无意�?
    inout  wire [15:0]flash_d,      //Flash数据
    output wire flash_rp_n,         //Flash复位信号，低有效
    output wire flash_vpen,         //Flash写保护信号，低电平时不能擦除、烧�?
    output wire flash_ce_n,         //Flash片�?�信号，低有�?
    output wire flash_oe_n,         //Flash读使能信号，低有�?
    output wire flash_we_n,         //Flash写使能信号，低有�?
    output wire flash_byte_n,       //Flash 8bit模式选择，低有效。在使用flash�?16位模式时请设�?1

    //USB+SD 控制器信号，参�?? CH376T 芯片手册
    output wire ch376t_sdi,
    output wire ch376t_sck,
    output wire ch376t_cs_n,
    output wire ch376t_rst,
    input  wire ch376t_int_n,
    input  wire ch376t_sdo,

    //网络交换机信号，参�?? KSZ8795 芯片手册�? RGMII 规范
    input  wire [3:0] eth_rgmii_rd,
    input  wire eth_rgmii_rx_ctl,
    input  wire eth_rgmii_rxc,
    output wire [3:0] eth_rgmii_td,
    output wire eth_rgmii_tx_ctl,
    output wire eth_rgmii_txc,
    output wire eth_rst_n,
    input  wire eth_int_n,

    input  wire eth_spi_miso,
    output wire eth_spi_mosi,
    output wire eth_spi_sck,
    output wire eth_spi_ss_n,

    //图像输出信号
    output wire[2:0] video_red,    //红色像素�?3�?
    output wire[2:0] video_green,  //绿色像素�?3�?
    output wire[1:0] video_blue,   //蓝色像素�?2�?
    output wire video_hsync,       //行同步（水平同步）信�?
    output wire video_vsync,       //场同步（垂直同步）信�?
    output wire video_clk,         //像素时钟输出
    output wire video_de           //行数据有效信号，用于区分消隐�?
);

wire rst;
wire vio_rst;

assign rst = reset_btn;

/* =========== Demo code begin =========== */

// PLL分频示例
wire locked, clk_10M, clk_CPU, clk_125M, clk_200M;
wire subsystem_rst;
assign subsystem_rst  = (~locked) | vio_rst;

pll_example clock_gen 
 (
  // Clock in ports
  .clk_in1(clk_50M),  // 外部时钟输入
  // Clock out ports
  .clk_out1(clk_10M), // 时钟输出1，频率在IP配置界面中设�?
  .clk_CPU(clk_CPU), // 时钟输出2，频率在IP配置界面中设�?
  .clk_out3(clk_125M), // 时钟输出3，频率在IP配置界面中设�?
  .clk_out4(clk_200M), // 时钟输出4，频率在IP配置界面中设�?
  // Status and control signals
  .reset(reset_btn), // PLL复位输入
  .locked(locked)    // PLL锁定指示输出，"1"表示时钟稳定，
 );

assign eth_rst_n = ~rst;
// 以太网交换机寄存器配�?
eth_conf conf(
    .clk(clk_50M),
    .rst_in_n(~subsystem_rst),

    .eth_spi_miso(eth_spi_miso),
    .eth_spi_mosi(eth_spi_mosi),
    .eth_spi_sck(eth_spi_sck),
    .eth_spi_ss_n(eth_spi_ss_n),

    .done()
);

reg reset_of_clk10M;
// 异步复位，同步释�?
always@(posedge clk_10M or posedge subsystem_rst) begin
    if(subsystem_rst) reset_of_clk10M <= 1'b1;
    else        reset_of_clk10M <= 1'b0;
end

always@(posedge clk_10M or posedge reset_of_clk10M) begin
    if(reset_of_clk10M)begin
        // Your Code
    end
    else begin
        // Your Code
    end
end

// 不使用内存�?�串口时，禁用其使能信号
assign uart_rdn = 1'b1;
assign uart_wrn = 1'b1;

// 数码管连接关系示意图，dpy1同理
// p=dpy0[0] // ---a---
// c=dpy0[1] // |     |
// d=dpy0[2] // f     b
// e=dpy0[3] // |     |
// b=dpy0[4] // ---g---
// a=dpy0[5] // |     |
// f=dpy0[6] // e     c
// g=dpy0[7] // |     |
//           // ---d---  p

// 7段数码管译码器演示，将number�?16进制显示在数码管上面
wire[7:0] number;
SEG7_LUT segL(.oSEG1(dpy0), .iDIG(number[3:0])); //dpy0是低位数码管
SEG7_LUT segH(.oSEG1(dpy1), .iDIG(number[7:4])); //dpy1是高位数码管

//图像输出演示，分辨率800x600@75Hz，像素时钟为50MHz
wire [11:0] hdata;
assign video_red = hdata < 266 ? 3'b111 : 0; //红色竖条
assign video_green = hdata < 532 && hdata >= 266 ? 3'b111 : 0; //绿色竖条
assign video_blue = hdata >= 532 ? 2'b11 : 0; //蓝色竖条
assign video_clk = clk_50M;
vga #(12, 800, 856, 976, 1040, 600, 637, 643, 666, 1, 1) vga800x600at75 (
    .clk(clk_50M), 
    .hdata(hdata), //横坐�?
    .vdata(),      //纵坐�?
    .hsync(video_hsync),
    .vsync(video_vsync),
    .data_enable(video_de)
);

// 以太�? MAC 配置演示
wire [7:0] eth_rx_axis_mac_tdata;
wire eth_rx_axis_mac_tvalid;
wire eth_rx_axis_mac_tlast;
wire eth_rx_axis_mac_tuser;
wire [7:0] eth_tx_axis_mac_tdata;
wire eth_tx_axis_mac_tvalid;
wire eth_tx_axis_mac_tlast;
wire eth_tx_axis_mac_tuser;
wire eth_tx_axis_mac_tready;

wire eth_rx_mac_aclk;
wire eth_tx_mac_aclk;

eth_mac eth_mac_inst (
    .gtx_clk(clk_125M),
    .refclk(clk_200M),

    .glbl_rstn(eth_rst_n),
    .rx_axi_rstn(eth_rst_n),
    .tx_axi_rstn(eth_rst_n),

    .rx_mac_aclk(eth_rx_mac_aclk),
    .rx_axis_mac_tdata(eth_rx_axis_mac_tdata),
    .rx_axis_mac_tvalid(eth_rx_axis_mac_tvalid),
    .rx_axis_mac_tlast(eth_rx_axis_mac_tlast),
    .rx_axis_mac_tuser(eth_rx_axis_mac_tuser),

    .tx_ifg_delay(8'b0),
    .tx_mac_aclk(eth_tx_mac_aclk),
    .tx_axis_mac_tdata(eth_tx_axis_mac_tdata),
    .tx_axis_mac_tvalid(eth_tx_axis_mac_tvalid),
    .tx_axis_mac_tlast(eth_tx_axis_mac_tlast),
    .tx_axis_mac_tuser(eth_tx_axis_mac_tuser),
    .tx_axis_mac_tready(eth_tx_axis_mac_tready),

    .pause_req(1'b0),
    .pause_val(16'b0),

    .rgmii_txd(eth_rgmii_td),
    .rgmii_tx_ctl(eth_rgmii_tx_ctl),
    .rgmii_txc(eth_rgmii_txc),
    .rgmii_rxd(eth_rgmii_rd),
    .rgmii_rx_ctl(eth_rgmii_rx_ctl),
    .rgmii_rxc(eth_rgmii_rxc),

    // receive 1Gb/s | promiscuous | flow control  | vlan | enable
    // Meow: disabled FCSs
    .rx_configuration_vector(80'b10100000100110),
    // transmit 1Gb/s | vlan | enable
    .tx_configuration_vector(80'b10000000000110)
);
/* =========== Demo code end =========== */

wire[63:0] ram_dq_i;
wire[63:0] ram_dq_o;
wire[63:0] ram_dq_t;
wire[31:0] ram_addr;
wire[7:0] ram_be_n;
wire ram_oe_n;
wire ram_we_n;
wire ram_ce_n;
generate
for(genvar i = 0; i < 32; i=i+1) begin: RAM_IOBUF_GEN
  IOBUF baseram_iobuf(
    .I(ram_dq_o[i]),
    .O(ram_dq_i[i]),
    .T(ram_dq_t[i]),
    .IO(base_ram_data[i])
  );
  
  IOBUF extram_iobuf(
    .I(ram_dq_o[i+32]),
    .O(ram_dq_i[i+32]),
    .T(ram_dq_t[i+32]),
    .IO(ext_ram_data[i])
  );
end
endgenerate

assign base_ram_addr = ram_addr[22:3];
assign ext_ram_addr = ram_addr[22:3];
assign base_ram_oe_n = ram_oe_n;
assign ext_ram_oe_n = ram_oe_n;
assign base_ram_ce_n = ram_ce_n;
assign ext_ram_ce_n = ram_ce_n;
assign base_ram_we_n = ram_we_n;
assign ext_ram_we_n = ram_we_n;

assign flash_byte_n = 1;
assign flash_vpen = 1;

wire[16:0] flash_dq_i;
wire[16:0] flash_dq_o;
wire[16:0] flash_dq_t;
generate
for(genvar i = 0; i < 16; i=i+1) begin: FLASH_IOBUF_GEN
  IOBUF flash_iobuf(
    .I(flash_dq_o[i]),
    .O(flash_dq_i[i]),
    .T(flash_dq_t[i]),
    .IO(flash_d[i])
  );
end
endgenerate

meowrouter mr(
  .cpu_clk(clk_CPU),
  .rst(subsystem_rst),
  
  .UART_rxd(rxd),
  .UART_txd(txd),
  
  .data_clk(clk_125M),
  .data_rx_clk(eth_rx_mac_aclk),
  .data_tx_clk(eth_tx_mac_aclk),
  
  .data_rx_tdata(eth_rx_axis_mac_tdata),
  .data_rx_tvalid(eth_rx_axis_mac_tvalid),
  .data_rx_tlast(eth_rx_axis_mac_tlast),
  
  .data_tx_tdata(eth_tx_axis_mac_tdata),
  .data_tx_tvalid(eth_tx_axis_mac_tvalid),
  .data_tx_tready(eth_tx_axis_mac_tready),
  .data_tx_tlast(eth_tx_axis_mac_tlast),
  .data_tx_tuser(eth_tx_axis_mac_tuser),
  
  .DISP_tri_o({ number, leds }),
  .SWITCH_tri_i(touch_btn),
 
  .RAMEMC_dq_i(ram_dq_i),
  .RAMEMC_dq_o(ram_dq_o),
  .RAMEMC_dq_t(ram_dq_t),
  .RAMEMC_addr(ram_addr),
  .RAMEMC_ben({ ext_ram_be_n, base_ram_be_n }),
  .RAMEMC_ce_n(ram_ce_n),
  .RAMEMC_oen(ram_oe_n),
  .RAMEMC_wen(ram_we_n),
  
  .FlashEMC_addr(flash_a),
  .FlashEMC_dq_i(flash_dq_i),
  .FlashEMC_dq_o(flash_dq_o),
  .FlashEMC_dq_t(flash_dq_t),
  .FlashEMC_rpn(flash_rp_n),
  .FlashEMC_ce_n(flash_ce_n),
  .FlashEMC_oen(flash_oe_n),
  .FlashEMC_wen(flash_we_n),
  
  .vio_rst(vio_rst)
);

endmodule
