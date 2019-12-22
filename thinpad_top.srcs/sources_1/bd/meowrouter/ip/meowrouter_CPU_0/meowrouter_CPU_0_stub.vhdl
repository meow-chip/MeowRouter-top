-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Sun Dec 22 17:09:45 2019
-- Host        : imac running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub
--               /home/thu-skyworks/meow/Desktop/workspace/cod19grp3/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_CPU_0/meowrouter_CPU_0_stub.vhdl
-- Design      : meowrouter_CPU_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meowrouter_CPU_0 is
  Port ( 
    clock : in STD_LOGIC;
    reset : in STD_LOGIC;
    io_iaxi_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_AWADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_iaxi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_iaxi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_iaxi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_AWQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_AWVALID : out STD_LOGIC;
    io_iaxi_AWREADY : in STD_LOGIC;
    io_iaxi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_iaxi_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_iaxi_WLAST : out STD_LOGIC;
    io_iaxi_WVALID : out STD_LOGIC;
    io_iaxi_WREADY : in STD_LOGIC;
    io_iaxi_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_iaxi_BVALID : in STD_LOGIC;
    io_iaxi_BREADY : out STD_LOGIC;
    io_iaxi_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_ARADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_iaxi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_iaxi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_iaxi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_ARQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_iaxi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_ARVALID : out STD_LOGIC;
    io_iaxi_ARREADY : in STD_LOGIC;
    io_iaxi_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_iaxi_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_iaxi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_iaxi_RLAST : in STD_LOGIC;
    io_iaxi_RVALID : in STD_LOGIC;
    io_iaxi_RREADY : out STD_LOGIC;
    io_daxi_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_AWADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_daxi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_daxi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_daxi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_AWQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_AWVALID : out STD_LOGIC;
    io_daxi_AWREADY : in STD_LOGIC;
    io_daxi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_daxi_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_daxi_WLAST : out STD_LOGIC;
    io_daxi_WVALID : out STD_LOGIC;
    io_daxi_WREADY : in STD_LOGIC;
    io_daxi_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_daxi_BVALID : in STD_LOGIC;
    io_daxi_BREADY : out STD_LOGIC;
    io_daxi_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_ARADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_daxi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_daxi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_daxi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_ARQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_daxi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_ARVALID : out STD_LOGIC;
    io_daxi_ARREADY : in STD_LOGIC;
    io_daxi_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_daxi_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_daxi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_daxi_RLAST : in STD_LOGIC;
    io_daxi_RVALID : in STD_LOGIC;
    io_daxi_RREADY : out STD_LOGIC;
    io_uaxi_AWID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_AWADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_uaxi_AWLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_uaxi_AWSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_AWBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_uaxi_AWCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_AWPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_AWQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_AWREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_AWVALID : out STD_LOGIC;
    io_uaxi_AWREADY : in STD_LOGIC;
    io_uaxi_WDATA : out STD_LOGIC_VECTOR ( 63 downto 0 );
    io_uaxi_WSTRB : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_uaxi_WLAST : out STD_LOGIC;
    io_uaxi_WVALID : out STD_LOGIC;
    io_uaxi_WREADY : in STD_LOGIC;
    io_uaxi_BID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_BRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_uaxi_BVALID : in STD_LOGIC;
    io_uaxi_BREADY : out STD_LOGIC;
    io_uaxi_ARID : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_ARADDR : out STD_LOGIC_VECTOR ( 47 downto 0 );
    io_uaxi_ARLEN : out STD_LOGIC_VECTOR ( 7 downto 0 );
    io_uaxi_ARSIZE : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_ARBURST : out STD_LOGIC_VECTOR ( 1 downto 0 );
    io_uaxi_ARCACHE : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_ARPROT : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_ARQOS : out STD_LOGIC_VECTOR ( 2 downto 0 );
    io_uaxi_ARREGION : out STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_ARVALID : out STD_LOGIC;
    io_uaxi_ARREADY : in STD_LOGIC;
    io_uaxi_RID : in STD_LOGIC_VECTOR ( 3 downto 0 );
    io_uaxi_RDATA : in STD_LOGIC_VECTOR ( 63 downto 0 );
    io_uaxi_RRESP : in STD_LOGIC_VECTOR ( 1 downto 0 );
    io_uaxi_RLAST : in STD_LOGIC;
    io_uaxi_RVALID : in STD_LOGIC;
    io_uaxi_RREADY : out STD_LOGIC;
    io_eint : in STD_LOGIC;
    io_pc : out STD_LOGIC_VECTOR ( 47 downto 0 )
  );

end meowrouter_CPU_0;

architecture stub of meowrouter_CPU_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,io_iaxi_AWID[3:0],io_iaxi_AWADDR[47:0],io_iaxi_AWLEN[7:0],io_iaxi_AWSIZE[2:0],io_iaxi_AWBURST[1:0],io_iaxi_AWCACHE[3:0],io_iaxi_AWPROT[2:0],io_iaxi_AWQOS[2:0],io_iaxi_AWREGION[3:0],io_iaxi_AWVALID,io_iaxi_AWREADY,io_iaxi_WDATA[63:0],io_iaxi_WSTRB[7:0],io_iaxi_WLAST,io_iaxi_WVALID,io_iaxi_WREADY,io_iaxi_BID[3:0],io_iaxi_BRESP[1:0],io_iaxi_BVALID,io_iaxi_BREADY,io_iaxi_ARID[3:0],io_iaxi_ARADDR[47:0],io_iaxi_ARLEN[7:0],io_iaxi_ARSIZE[2:0],io_iaxi_ARBURST[1:0],io_iaxi_ARCACHE[3:0],io_iaxi_ARPROT[2:0],io_iaxi_ARQOS[2:0],io_iaxi_ARREGION[3:0],io_iaxi_ARVALID,io_iaxi_ARREADY,io_iaxi_RID[3:0],io_iaxi_RDATA[63:0],io_iaxi_RRESP[1:0],io_iaxi_RLAST,io_iaxi_RVALID,io_iaxi_RREADY,io_daxi_AWID[3:0],io_daxi_AWADDR[47:0],io_daxi_AWLEN[7:0],io_daxi_AWSIZE[2:0],io_daxi_AWBURST[1:0],io_daxi_AWCACHE[3:0],io_daxi_AWPROT[2:0],io_daxi_AWQOS[2:0],io_daxi_AWREGION[3:0],io_daxi_AWVALID,io_daxi_AWREADY,io_daxi_WDATA[63:0],io_daxi_WSTRB[7:0],io_daxi_WLAST,io_daxi_WVALID,io_daxi_WREADY,io_daxi_BID[3:0],io_daxi_BRESP[1:0],io_daxi_BVALID,io_daxi_BREADY,io_daxi_ARID[3:0],io_daxi_ARADDR[47:0],io_daxi_ARLEN[7:0],io_daxi_ARSIZE[2:0],io_daxi_ARBURST[1:0],io_daxi_ARCACHE[3:0],io_daxi_ARPROT[2:0],io_daxi_ARQOS[2:0],io_daxi_ARREGION[3:0],io_daxi_ARVALID,io_daxi_ARREADY,io_daxi_RID[3:0],io_daxi_RDATA[63:0],io_daxi_RRESP[1:0],io_daxi_RLAST,io_daxi_RVALID,io_daxi_RREADY,io_uaxi_AWID[3:0],io_uaxi_AWADDR[47:0],io_uaxi_AWLEN[7:0],io_uaxi_AWSIZE[2:0],io_uaxi_AWBURST[1:0],io_uaxi_AWCACHE[3:0],io_uaxi_AWPROT[2:0],io_uaxi_AWQOS[2:0],io_uaxi_AWREGION[3:0],io_uaxi_AWVALID,io_uaxi_AWREADY,io_uaxi_WDATA[63:0],io_uaxi_WSTRB[7:0],io_uaxi_WLAST,io_uaxi_WVALID,io_uaxi_WREADY,io_uaxi_BID[3:0],io_uaxi_BRESP[1:0],io_uaxi_BVALID,io_uaxi_BREADY,io_uaxi_ARID[3:0],io_uaxi_ARADDR[47:0],io_uaxi_ARLEN[7:0],io_uaxi_ARSIZE[2:0],io_uaxi_ARBURST[1:0],io_uaxi_ARCACHE[3:0],io_uaxi_ARPROT[2:0],io_uaxi_ARQOS[2:0],io_uaxi_ARREGION[3:0],io_uaxi_ARVALID,io_uaxi_ARREADY,io_uaxi_RID[3:0],io_uaxi_RDATA[63:0],io_uaxi_RRESP[1:0],io_uaxi_RLAST,io_uaxi_RVALID,io_uaxi_RREADY,io_eint,io_pc[47:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Core,Vivado 2018.3";
begin
end;
