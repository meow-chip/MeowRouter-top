-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Thu Dec 19 18:20:37 2019
-- Host        : imac running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top meowrouter_vio_0_0 -prefix
--               meowrouter_vio_0_0_ meowrouter_vio_0_0_stub.vhdl
-- Design      : meowrouter_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meowrouter_vio_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_out0 : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end meowrouter_vio_0_0;

architecture stub of meowrouter_vio_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_out0[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2018.3_AR71898";
begin
end;
