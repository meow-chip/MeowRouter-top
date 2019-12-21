-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sun Dec 22 03:04:16 2019
-- Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/workspace/Networking/thinpad_top/thinpad_top.srcs/sources_1/bd/meowrouter/ip/meowrouter_Router_0/meowrouter_Router_0_stub.vhdl
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
    io_cmd : in STD_LOGIC_VECTOR ( 63 downto 0 )
  );

end meowrouter_Router_0;

architecture stub of meowrouter_Router_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clock,reset,io_rx_clk,io_tx_clk,io_rx_tdata[7:0],io_rx_tvalid,io_rx_tlast,io_tx_tdata[7:0],io_tx_tvalid,io_tx_tlast,io_tx_tready,io_tx_tuser,io_buf_clk,io_buf_addr[31:0],io_buf_din[7:0],io_buf_dout[7:0],io_buf_we,io_cmd[63:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "Top,Vivado 2018.3_AR71898";
begin
end;
