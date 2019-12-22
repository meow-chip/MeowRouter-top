-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Dec 22 20:37:05 2019
-- Host        : imac running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/thu-skyworks/meow/Desktop/workspace/cod19grp3/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_Router_0/meowrouter_Router_0_stub.vhdl
-- Design      : meowrouter_Router_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meowrouter_Router_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_rx_clk : in STD_LOGIC;
    io_tx_clk : in STD_LOGIC;
    io_rx_tdata : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_rx_tvalid : in STD_LOGIC;
    io_rx_tlast : in STD_LOGIC;
    io_tx_tdata : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_tx_tvalid : out STD_LOGIC;
    io_tx_tlast : out STD_LOGIC;
    io_tx_tready : in STD_LOGIC;
    io_tx_tuser : out STD_LOGIC;
    io_buf_clk : out STD_LOGIC;
    io_buf_addr : out STD_LOGIC_VECTOR ( 31 downto 0 );
    io_buf_din : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_buf_dout : in STD_LOGIC_VECTOR ( 7 downto 0 );
    io_buf_we : out STD_LOGIC;
    io_cmd : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_axi_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_AWADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_axi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_AWQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_AWVALID : out STD_LOGIC;
    io_axi_AWREADY : in STD_LOGIC;
    io_axi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_axi_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_WLAST : out STD_LOGIC;
    io_axi_WVALID : out STD_LOGIC;
    io_axi_WREADY : in STD_LOGIC;
    io_axi_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_BVALID : in STD_LOGIC;
    io_axi_BREADY : out STD_LOGIC;
    io_axi_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ARADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_axi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_axi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ARQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_axi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_ARVALID : out STD_LOGIC;
    io_axi_ARREADY : in STD_LOGIC;
    io_axi_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_axi_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_axi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_axi_RLAST : in STD_LOGIC;
    io_axi_RVALID : in STD_LOGIC;
    io_axi_RREADY : out STD_LOGIC
  );

end meowrouter_Router_0;

architecture stub of meowrouter_Router_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,io_rx_clk,io_tx_clk,io_rx_tdata[7:0],io_rx_tvalid,io_rx_tlast,io_tx_tdata[7:0],io_tx_tvalid,io_tx_tlast,io_tx_tready,io_tx_tuser,io_buf_clk,io_buf_addr[31:0],io_buf_din[7:0],io_buf_dout[7:0],io_buf_we,io_cmd[63:0],io_axi_AWID[3:0],io_axi_AWADDR[47:0],io_axi_AWLEN[7:0],io_axi_AWSIZE[2:0],io_axi_AWBURST[1:0],io_axi_AWCACHE[3:0],io_axi_AWPROT[2:0],io_axi_AWQOS[2:0],io_axi_AWREGION[3:0],io_axi_AWVALID,io_axi_AWREADY,io_axi_WDATA[63:0],io_axi_WSTRB[7:0],io_axi_WLAST,io_axi_WVALID,io_axi_WREADY,io_axi_BID[3:0],io_axi_BRESP[1:0],io_axi_BVALID,io_axi_BREADY,io_axi_ARID[3:0],io_axi_ARADDR[47:0],io_axi_ARLEN[7:0],io_axi_ARSIZE[2:0],io_axi_ARBURST[1:0],io_axi_ARCACHE[3:0],io_axi_ARPROT[2:0],io_axi_ARQOS[2:0],io_axi_ARREGION[3:0],io_axi_ARVALID,io_axi_ARREADY,io_axi_RID[3:0],io_axi_RDATA[63:0],io_axi_RRESP[1:0],io_axi_RLAST,io_axi_RVALID,io_axi_RREADY";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Top,Vivado 2018.3";
begin
end;
