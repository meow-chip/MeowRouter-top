-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3 (lin64) Build 2405991 Thu Dec  6 23:36:41 MST 2018
-- Date        : Fri Dec 20 15:13:11 2019
-- Host        : imac running 64-bit Arch Linux
-- Command     : write_vhdl -force -mode funcsim -rename_top meowrouter_NRST_0 -prefix
--               meowrouter_NRST_0_ meowrouter_NRST_0_sim_netlist.vhdl
-- Design      : meowrouter_NRST_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_NRST_0 is
  port (
    Op1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    Res : out STD_LOGIC_VECTOR ( 0 to 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of meowrouter_NRST_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of meowrouter_NRST_0 : entity is "meowrouter_NRST_0,util_vector_logic_v2_0_1_util_vector_logic,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of meowrouter_NRST_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of meowrouter_NRST_0 : entity is "util_vector_logic_v2_0_1_util_vector_logic,Vivado 2018.3_AR71898";
end meowrouter_NRST_0;

architecture STRUCTURE of meowrouter_NRST_0 is
begin
\Res[0]_INST_0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => Op1(0),
      O => Res(0)
    );
end STRUCTURE;
