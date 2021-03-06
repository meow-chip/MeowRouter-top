-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Dec 20 15:13:11 2019
-- Host        : imac running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode synth_stub -rename_top meowrouter_NRST_0 -prefix
--               meowrouter_NRST_0_ meowrouter_NRST_0_stub.vhdl
-- Design      : meowrouter_NRST_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity meowrouter_NRST_0 is
  Port ( 
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );

end meowrouter_NRST_0;

architecture stub of meowrouter_NRST_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "Op1[0:0],Res[0:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3_AR71898";
begin
end;
