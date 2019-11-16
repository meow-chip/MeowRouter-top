-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
-- Date        : Sat Nov 16 20:35:23 2019
-- Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top meowrouter_s01_mmu_0 -prefix
--               meowrouter_s01_mmu_0_ meowrouter_s01_mmu_0_sim_netlist.vhdl
-- Design      : meowrouter_s01_mmu_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tfgg676-2L
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave is
  port (
    err_awready : out STD_LOGIC;
    err_bvalid : out STD_LOGIC;
    err_rvalid : out STD_LOGIC;
    \FSM_onehot_gen_read.r_state_reg[2]\ : out STD_LOGIC;
    \gen_axi.gen_read.s_axi_rlast_i_reg_0\ : out STD_LOGIC;
    m_axi_awready_0 : out STD_LOGIC;
    s_axi_arvalid_0 : out STD_LOGIC;
    m_axi_arready_0 : out STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    aclk : in STD_LOGIC;
    \FSM_onehot_gen_read.r_state_reg[1]\ : in STD_LOGIC;
    r_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_axi.gen_read.s_axi_arready_i_reg_0\ : in STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    mr_axi_arvalid : in STD_LOGIC;
    Q : in STD_LOGIC_VECTOR ( 12 downto 0 );
    \FSM_onehot_gen_read.r_state_reg[1]_0\ : in STD_LOGIC;
    \FSM_onehot_gen_read.r_state_reg[1]_1\ : in STD_LOGIC;
    mr_axi_awvalid : in STD_LOGIC;
    \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\ : in STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_axi.gen_write.s_axi_wready_i_reg_0\ : in STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_valid_i_reg : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    sr_axi_arready : in STD_LOGIC;
    m_valid_i_reg_0 : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arready : in STD_LOGIC;
    s_axi_wready_0 : in STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    \gen_axi.gen_write.s_axi_awready_i_reg_0\ : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \gen_axi.gen_read.s_axi_rlast_i_reg_1\ : in STD_LOGIC
  );
end meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave;

architecture STRUCTURE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave is
  signal \FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_read.r_state[2]_i_4_n_0\ : STD_LOGIC;
  signal err_arready : STD_LOGIC;
  signal \^err_awready\ : STD_LOGIC;
  signal err_bid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^err_bvalid\ : STD_LOGIC;
  signal err_rid : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal err_rlast : STD_LOGIC;
  signal \^err_rvalid\ : STD_LOGIC;
  signal err_wready : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt[7]_i_4_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.read_cnt_reg__0\ : STD_LOGIC_VECTOR ( 7 downto 1 );
  signal \gen_axi.gen_read.read_cnt_reg__1\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \gen_axi.gen_read.read_cs[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_3_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_read.s_axi_rlast_i_i_5_n_0\ : STD_LOGIC;
  signal \^gen_axi.gen_read.s_axi_rlast_i_reg_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\ : STD_LOGIC;
  signal \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\ : STD_LOGIC;
  signal \^m_axi_arready_0\ : STD_LOGIC;
  signal p_0_in : STD_LOGIC_VECTOR ( 7 downto 0 );
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.gen_write.write_cs_reg[0]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.gen_write.write_cs_reg[1]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_axi.gen_write.write_cs_reg[2]\ : label is "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100,";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_read.r_state[1]_i_1\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_read.r_state[2]_i_4\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[0]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[1]_i_1\ : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[4]_i_2\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cnt[7]_i_4\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of \gen_axi.gen_read.read_cs[0]_i_1\ : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of \s_axi_bid[1]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \s_axi_bid[2]_INST_0\ : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_bid[3]_INST_0\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of s_axi_bvalid_INST_0 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of \s_axi_rid[0]_INST_0\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \s_axi_rid[1]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rid[2]_INST_0\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \s_axi_rid[3]_INST_0\ : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of s_axi_rlast_INST_0 : label is "soft_lutpair7";
begin
  err_awready <= \^err_awready\;
  err_bvalid <= \^err_bvalid\;
  err_rvalid <= \^err_rvalid\;
  \gen_axi.gen_read.s_axi_rlast_i_reg_0\ <= \^gen_axi.gen_read.s_axi_rlast_i_reg_0\;
  m_axi_arready_0 <= \^m_axi_arready_0\;
\FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"CCCFCCC8"
    )
        port map (
      I0 => s_axi_bready,
      I1 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      I2 => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\,
      I3 => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      I4 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\,
      O => \FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0\
    );
\FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAABFAAAAAA80"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\,
      I1 => s_axi_bready,
      I2 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\,
      I4 => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      I5 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      O => \FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0\
    );
\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAAAB0"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      I1 => s_axi_bready,
      I2 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      I3 => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\,
      I4 => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      O => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0\
    );
\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => s_axi_wlast,
      I1 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      I2 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I3 => s_axi_wvalid,
      O => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\
    );
\FSM_onehot_gen_axi.gen_write.write_cs_reg[0]\: unisim.vcomponents.FDSE
    generic map(
      INIT => '1'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\,
      S => SR(0)
    );
\FSM_onehot_gen_axi.gen_write.write_cs_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0\,
      Q => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      R => SR(0)
    );
\FSM_onehot_gen_axi.gen_write.write_cs_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0\,
      Q => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      R => SR(0)
    );
\FSM_onehot_gen_read.r_state[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"34"
    )
        port map (
      I0 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I1 => \^gen_axi.gen_read.s_axi_rlast_i_reg_0\,
      I2 => r_state(0),
      O => \FSM_onehot_gen_read.r_state_reg[2]\
    );
\FSM_onehot_gen_read.r_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"D5C055FFD5C05500"
    )
        port map (
      I0 => \FSM_onehot_gen_read.r_state_reg[1]_0\,
      I1 => err_rlast,
      I2 => \FSM_onehot_gen_read.r_state[2]_i_4_n_0\,
      I3 => r_state(0),
      I4 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I5 => \FSM_onehot_gen_read.r_state_reg[1]_1\,
      O => \^gen_axi.gen_read.s_axi_rlast_i_reg_0\
    );
\FSM_onehot_gen_read.r_state[2]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^err_rvalid\,
      O => \FSM_onehot_gen_read.r_state[2]_i_4_n_0\
    );
\gen_axi.gen_read.read_cnt[0]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"74"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I1 => \^err_rvalid\,
      I2 => Q(1),
      O => p_0_in(0)
    );
\gen_axi.gen_read.read_cnt[1]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"E22E"
    )
        port map (
      I0 => Q(2),
      I1 => \^err_rvalid\,
      I2 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      O => p_0_in(1)
    );
\gen_axi.gen_read.read_cnt[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FCAA03AA"
    )
        port map (
      I0 => Q(3),
      I1 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \^err_rvalid\,
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      O => p_0_in(2)
    );
\gen_axi.gen_read.read_cnt[3]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFCAAAA0003AAAA"
    )
        port map (
      I0 => Q(4),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I2 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I4 => \^err_rvalid\,
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      O => p_0_in(3)
    );
\gen_axi.gen_read.read_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA0300AAAA"
    )
        port map (
      I0 => Q(5),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I3 => \gen_axi.gen_read.read_cnt[4]_i_2_n_0\,
      I4 => \^err_rvalid\,
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      O => p_0_in(4)
    );
\gen_axi.gen_read.read_cnt[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      O => \gen_axi.gen_read.read_cnt[4]_i_2_n_0\
    );
\gen_axi.gen_read.read_cnt[5]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"3ACA"
    )
        port map (
      I0 => Q(6),
      I1 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I2 => \^err_rvalid\,
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      O => p_0_in(5)
    );
\gen_axi.gen_read.read_cnt[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F3AA0CAA"
    )
        port map (
      I0 => Q(7),
      I1 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I3 => \^err_rvalid\,
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      O => p_0_in(6)
    );
\gen_axi.gen_read.read_cnt[7]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF80"
    )
        port map (
      I0 => s_axi_rready,
      I1 => \^err_rvalid\,
      I2 => \gen_axi.gen_read.read_cnt[7]_i_3_n_0\,
      I3 => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      O => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FCFFAAAA0300AAAA"
    )
        port map (
      I0 => Q(8),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I3 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I4 => \^err_rvalid\,
      I5 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      O => p_0_in(7)
    );
\gen_axi.gen_read.read_cnt[7]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFB"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I1 => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\,
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      O => \gen_axi.gen_read.read_cnt[7]_i_3_n_0\
    );
\gen_axi.gen_read.read_cnt[7]_i_4\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I1 => \gen_axi.gen_read.read_cnt_reg__1\(0),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I4 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      O => \gen_axi.gen_read.read_cnt[7]_i_4_n_0\
    );
\gen_axi.gen_read.read_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(0),
      Q => \gen_axi.gen_read.read_cnt_reg__1\(0),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(1),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(1),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(2),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(2),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(3),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(3),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(4),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(4),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(5),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(5),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(6),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(6),
      R => SR(0)
    );
\gen_axi.gen_read.read_cnt_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.read_cnt[7]_i_1_n_0\,
      D => p_0_in(7),
      Q => \gen_axi.gen_read.read_cnt_reg__0\(7),
      R => SR(0)
    );
\gen_axi.gen_read.read_cs[0]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFB0"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt[7]_i_3_n_0\,
      I1 => s_axi_rready,
      I2 => \^err_rvalid\,
      I3 => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      O => \gen_axi.gen_read.read_cs[0]_i_1_n_0\
    );
\gen_axi.gen_read.read_cs_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.read_cs[0]_i_1_n_0\,
      Q => \^err_rvalid\,
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_arready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000AAAA08AA"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_arready_i_reg_0\,
      I1 => s_axi_rready,
      I2 => \gen_axi.gen_read.read_cnt[7]_i_3_n_0\,
      I3 => \^err_rvalid\,
      I4 => err_arready,
      I5 => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      O => \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_arready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.s_axi_arready_i_i_1_n_0\,
      Q => err_arready,
      R => '0'
    );
\gen_axi.gen_read.s_axi_rid_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00004000"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => err_arready,
      I2 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I3 => mr_axi_arvalid,
      I4 => Q(0),
      O => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_rid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      D => Q(9),
      Q => err_rid(0),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      D => Q(10),
      Q => err_rid(1),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      D => Q(11),
      Q => err_rid(2),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      D => Q(12),
      Q => err_rid(3),
      R => SR(0)
    );
\gen_axi.gen_read.s_axi_rlast_i_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F8FFF800"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \gen_axi.gen_read.read_cnt[7]_i_3_n_0\,
      I2 => \gen_axi.gen_read.s_axi_rlast_i_reg_1\,
      I3 => \gen_axi.gen_read.s_axi_rlast_i_i_3_n_0\,
      I4 => err_rlast,
      O => \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFF0100"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(3),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(2),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(1),
      I3 => \gen_axi.gen_read.s_axi_rlast_i_i_5_n_0\,
      I4 => \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0\,
      O => \gen_axi.gen_read.s_axi_rlast_i_i_3_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => \gen_axi.gen_read.read_cnt_reg__0\(4),
      I1 => \gen_axi.gen_read.read_cnt_reg__0\(5),
      I2 => \gen_axi.gen_read.read_cnt_reg__0\(6),
      I3 => \gen_axi.gen_read.read_cnt_reg__0\(7),
      I4 => \^err_rvalid\,
      I5 => s_axi_rready,
      O => \gen_axi.gen_read.s_axi_rlast_i_i_5_n_0\
    );
\gen_axi.gen_read.s_axi_rlast_i_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0\,
      Q => err_rlast,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_awready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBFBFBFFFB0B0B0"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      I1 => \gen_axi.gen_write.s_axi_awready_i_reg_0\,
      I2 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\,
      I3 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      I4 => s_axi_bready,
      I5 => \^err_awready\,
      O => \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_awready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_awready_i_i_1_n_0\,
      Q => \^err_awready\,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"08000000"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0]\,
      I1 => mr_axi_awvalid,
      I2 => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(0),
      I3 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I4 => \^err_awready\,
      O => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_bid_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(1),
      Q => err_bid(0),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(2),
      Q => err_bid(1),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(3),
      Q => err_bid(2),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bid_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      D => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(4),
      Q => err_bid(3),
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_bvalid_i_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"BFAA"
    )
        port map (
      I0 => \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0\,
      I1 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2]\,
      I2 => s_axi_bready,
      I3 => \^err_bvalid\,
      O => \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_bvalid_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0\,
      Q => \^err_bvalid\,
      R => SR(0)
    );
\gen_axi.gen_write.s_axi_wready_i_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF7FFFFFFF0000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1]\,
      I3 => s_axi_wlast,
      I4 => \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0\,
      I5 => err_wready,
      O => \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\
    );
\gen_axi.gen_write.s_axi_wready_i_reg\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \gen_axi.gen_write.s_axi_wready_i_i_1_n_0\,
      Q => err_wready,
      R => SR(0)
    );
\m_valid_i_i_1__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"05C5"
    )
        port map (
      I0 => \^m_axi_arready_0\,
      I1 => s_axi_arvalid,
      I2 => sr_axi_arready,
      I3 => m_valid_i_reg_0(0),
      O => s_axi_arvalid_0
    );
m_valid_i_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"000022C0"
    )
        port map (
      I0 => m_axi_awready,
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => \^err_awready\,
      I3 => \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(0),
      I4 => m_valid_i_reg,
      O => m_axi_awready_0
    );
\m_valid_i_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000CA0"
    )
        port map (
      I0 => m_axi_arready,
      I1 => err_arready,
      I2 => Q(0),
      I3 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I4 => r_state(0),
      O => \^m_axi_arready_0\
    );
\s_axi_bid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_bid(0),
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => m_axi_bid(0),
      O => s_axi_bid(0)
    );
\s_axi_bid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_bid(1),
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => m_axi_bid(1),
      O => s_axi_bid(1)
    );
\s_axi_bid[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_bid(2),
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => m_axi_bid(2),
      O => s_axi_bid(2)
    );
\s_axi_bid[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_bid(3),
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => m_axi_bid(3),
      O => s_axi_bid(3)
    );
s_axi_bvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^err_bvalid\,
      I1 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      I2 => m_axi_bvalid,
      O => s_axi_bvalid
    );
\s_axi_rid[0]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_rid(0),
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rid(0),
      O => s_axi_rid(0)
    );
\s_axi_rid[1]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_rid(1),
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rid(1),
      O => s_axi_rid(1)
    );
\s_axi_rid[2]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_rid(2),
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rid(2),
      O => s_axi_rid(2)
    );
\s_axi_rid[3]_INST_0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_rid(3),
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rid(3),
      O => s_axi_rid(3)
    );
s_axi_rlast_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => err_rlast,
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rlast,
      O => s_axi_rlast
    );
s_axi_rvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => \^err_rvalid\,
      I1 => \FSM_onehot_gen_read.r_state_reg[1]\,
      I2 => m_axi_rvalid,
      O => s_axi_rvalid
    );
s_axi_wready_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AA30"
    )
        port map (
      I0 => err_wready,
      I1 => s_axi_wready_0,
      I2 => m_axi_wready,
      I3 => \gen_axi.gen_write.s_axi_wready_i_reg_0\,
      O => s_axi_wready
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    \FSM_onehot_gen_read.r_state_reg[1]\ : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 77 downto 0 );
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_read.ar_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_ready_i_reg_0 : out STD_LOGIC;
    \s_axi_araddr[39]\ : out STD_LOGIC;
    \s_axi_araddr[21]\ : out STD_LOGIC;
    \s_axi_araddr[17]\ : out STD_LOGIC;
    \s_axi_araddr[22]\ : out STD_LOGIC;
    \s_axi_araddr[23]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    \gen_axi.gen_read.read_cs_reg[0]\ : out STD_LOGIC;
    SR : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_valid_i_reg_2 : in STD_LOGIC;
    aclk : in STD_LOGIC;
    r_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_gen_read.r_state_reg[2]\ : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_read.ar_cnt_reg[2]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[5]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    \m_payload_i_reg[77]_0\ : in STD_LOGIC_VECTOR ( 76 downto 0 );
    err_rvalid : in STD_LOGIC;
    s_ready_i_reg_1 : in STD_LOGIC;
    s_ready_i_reg_2 : in STD_LOGIC;
    s_ready_i_reg_3 : in STD_LOGIC
  );
end meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice;

architecture STRUCTURE of meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice is
  signal \^q\ : STD_LOGIC_VECTOR ( 77 downto 0 );
  signal \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[2]_i_4_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_10__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_15__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_16__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_17__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_18__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_19__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_20__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_21__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_22__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_23__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_2__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_3__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_4__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_6__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_7__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_8__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_9__0_n_0\ : STD_LOGIC;
  signal \m_payload_i[73]_i_1__0_n_0\ : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal r_match : STD_LOGIC;
  signal \^s_axi_araddr[17]\ : STD_LOGIC;
  signal \^s_axi_araddr[21]\ : STD_LOGIC;
  signal \^s_axi_araddr[22]\ : STD_LOGIC;
  signal \^s_axi_araddr[23]\ : STD_LOGIC;
  signal \^s_axi_araddr[39]\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal \^s_ready_i_reg_0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_read.r_state[2]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[2]_i_4\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[4]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_2\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \gen_read.ar_cnt[5]_i_4\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of m_axi_arvalid_INST_0 : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_11__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_12__0\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_14__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_21__0\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_8__0\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_9__0\ : label is "soft_lutpair14";
begin
  Q(77 downto 0) <= \^q\(77 downto 0);
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  \s_axi_araddr[17]\ <= \^s_axi_araddr[17]\;
  \s_axi_araddr[21]\ <= \^s_axi_araddr[21]\;
  \s_axi_araddr[22]\ <= \^s_axi_araddr[22]\;
  \s_axi_araddr[23]\ <= \^s_axi_araddr[23]\;
  \s_axi_araddr[39]\ <= \^s_axi_araddr[39]\;
  s_ready_i_reg_0 <= \^s_ready_i_reg_0\;
\FSM_onehot_gen_read.r_state[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AEFFAA00"
    )
        port map (
      I0 => r_state(0),
      I1 => \^m_valid_i_reg_0\,
      I2 => \^q\(48),
      I3 => \FSM_onehot_gen_read.r_state_reg[2]\,
      I4 => m_axi_arvalid_0,
      O => \FSM_onehot_gen_read.r_state_reg[1]\
    );
\FSM_onehot_gen_read.r_state[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(48),
      O => m_valid_i_reg_1
    );
\gen_axi.gen_read.s_axi_rlast_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\,
      I1 => err_rvalid,
      I2 => \^q\(61),
      I3 => \^q\(62),
      O => \gen_axi.gen_read.read_cs_reg[0]\
    );
\gen_axi.gen_read.s_axi_rlast_i_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \^q\(63),
      I1 => \^q\(64),
      I2 => \^q\(65),
      I3 => \^q\(66),
      I4 => \^q\(68),
      I5 => \^q\(67),
      O => \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0\
    );
\gen_read.ar_cnt[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[2]_i_2_n_0\,
      I1 => s_axi_arready_0(1),
      I2 => s_axi_arready_0(0),
      O => \gen_read.ar_cnt_reg[5]\(0)
    );
\gen_read.ar_cnt[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"6AA9"
    )
        port map (
      I0 => s_axi_arready_0(2),
      I1 => s_axi_arready_0(1),
      I2 => s_axi_arready_0(0),
      I3 => \gen_read.ar_cnt[2]_i_2_n_0\,
      O => \gen_read.ar_cnt_reg[5]\(1)
    );
\gen_read.ar_cnt[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000002FF0000"
    )
        port map (
      I0 => \m_payload_i[48]_i_3__0_n_0\,
      I1 => \gen_read.ar_cnt_reg[2]\,
      I2 => \m_payload_i[48]_i_6__0_n_0\,
      I3 => \m_payload_i[48]_i_7__0_n_0\,
      I4 => \gen_read.ar_cnt[2]_i_4_n_0\,
      I5 => \gen_read.ar_cnt_reg[5]_1\,
      O => \gen_read.ar_cnt[2]_i_2_n_0\
    );
\gen_read.ar_cnt[2]_i_4\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_arready_0(5),
      I1 => \^s_ready_i_reg_0\,
      I2 => s_axi_arvalid,
      O => \gen_read.ar_cnt[2]_i_4_n_0\
    );
\gen_read.ar_cnt[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"69"
    )
        port map (
      I0 => \gen_read.ar_cnt[5]_i_4_n_0\,
      I1 => s_axi_arready_0(2),
      I2 => s_axi_arready_0(3),
      O => \gen_read.ar_cnt_reg[5]\(2)
    );
\gen_read.ar_cnt[4]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7E81"
    )
        port map (
      I0 => s_axi_arready_0(3),
      I1 => s_axi_arready_0(2),
      I2 => \gen_read.ar_cnt[5]_i_4_n_0\,
      I3 => s_axi_arready_0(4),
      O => \gen_read.ar_cnt_reg[5]\(3)
    );
\gen_read.ar_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"EFFF1000"
    )
        port map (
      I0 => \m_payload_i[48]_i_2__0_n_0\,
      I1 => s_axi_arready_0(5),
      I2 => \^s_ready_i_reg_0\,
      I3 => s_axi_arvalid,
      I4 => \gen_read.ar_cnt_reg[5]_1\,
      O => \gen_read.ar_cnt_reg[5]_0\(0)
    );
\gen_read.ar_cnt[5]_i_2\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"6AAAAAA9"
    )
        port map (
      I0 => s_axi_arready_0(5),
      I1 => \gen_read.ar_cnt[5]_i_4_n_0\,
      I2 => s_axi_arready_0(2),
      I3 => s_axi_arready_0(3),
      I4 => s_axi_arready_0(4),
      O => \gen_read.ar_cnt_reg[5]\(4)
    );
\gen_read.ar_cnt[5]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"D554"
    )
        port map (
      I0 => s_axi_arready_0(2),
      I1 => \gen_read.ar_cnt[2]_i_2_n_0\,
      I2 => s_axi_arready_0(0),
      I3 => s_axi_arready_0(1),
      O => \gen_read.ar_cnt[5]_i_4_n_0\
    );
m_axi_arvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^m_valid_i_reg_0\,
      I2 => m_axi_arvalid_0,
      I3 => r_state(0),
      O => m_axi_arvalid
    );
\m_payload_i[48]_i_10__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(13),
      I1 => \m_payload_i_reg[77]_0\(12),
      I2 => \m_payload_i_reg[77]_0\(15),
      I3 => \m_payload_i_reg[77]_0\(14),
      O => \m_payload_i[48]_i_10__0_n_0\
    );
\m_payload_i[48]_i_11__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(21),
      I1 => \m_payload_i_reg[77]_0\(20),
      I2 => \m_payload_i_reg[77]_0\(19),
      I3 => \m_payload_i_reg[77]_0\(18),
      O => \^s_axi_araddr[21]\
    );
\m_payload_i[48]_i_12__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(17),
      I1 => \m_payload_i_reg[77]_0\(16),
      I2 => \m_payload_i_reg[77]_0\(15),
      O => \^s_axi_araddr[17]\
    );
\m_payload_i[48]_i_13__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000000000000"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(22),
      I1 => \m_payload_i_reg[77]_0\(23),
      I2 => \m_payload_i_reg[77]_0\(24),
      I3 => \m_payload_i_reg[77]_0\(25),
      I4 => \m_payload_i_reg[77]_0\(27),
      I5 => \m_payload_i_reg[77]_0\(26),
      O => \^s_axi_araddr[22]\
    );
\m_payload_i[48]_i_14__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(23),
      I1 => \m_payload_i_reg[77]_0\(26),
      I2 => \m_payload_i_reg[77]_0\(27),
      O => \^s_axi_araddr[23]\
    );
\m_payload_i[48]_i_15__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(42),
      I1 => \m_payload_i_reg[77]_0\(40),
      I2 => \m_payload_i_reg[77]_0\(33),
      I3 => \m_payload_i_reg[77]_0\(47),
      O => \m_payload_i[48]_i_15__0_n_0\
    );
\m_payload_i[48]_i_16__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(29),
      I1 => \m_payload_i_reg[77]_0\(46),
      I2 => \m_payload_i_reg[77]_0\(31),
      I3 => \m_payload_i_reg[77]_0\(41),
      O => \m_payload_i[48]_i_16__0_n_0\
    );
\m_payload_i[48]_i_17__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(28),
      I1 => \m_payload_i_reg[77]_0\(45),
      I2 => \m_payload_i_reg[77]_0\(32),
      I3 => \m_payload_i_reg[77]_0\(34),
      O => \m_payload_i[48]_i_17__0_n_0\
    );
\m_payload_i[48]_i_18__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(34),
      I1 => \m_payload_i_reg[77]_0\(42),
      I2 => \m_payload_i_reg[77]_0\(31),
      I3 => \m_payload_i_reg[77]_0\(47),
      O => \m_payload_i[48]_i_18__0_n_0\
    );
\m_payload_i[48]_i_19__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(22),
      I1 => \m_payload_i_reg[77]_0\(30),
      I2 => \m_payload_i_reg[77]_0\(35),
      I3 => \m_payload_i_reg[77]_0\(39),
      I4 => \m_payload_i_reg[77]_0\(38),
      I5 => \m_payload_i_reg[77]_0\(37),
      O => \m_payload_i[48]_i_19__0_n_0\
    );
\m_payload_i[48]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_payload_i[48]_i_2__0_n_0\,
      O => r_match
    );
\m_payload_i[48]_i_20__0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(36),
      I1 => \m_payload_i_reg[77]_0\(44),
      O => \m_payload_i[48]_i_20__0_n_0\
    );
\m_payload_i[48]_i_21__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(32),
      I1 => \m_payload_i_reg[77]_0\(41),
      I2 => \m_payload_i_reg[77]_0\(27),
      I3 => \m_payload_i_reg[77]_0\(26),
      I4 => \m_payload_i_reg[77]_0\(23),
      O => \m_payload_i[48]_i_21__0_n_0\
    );
\m_payload_i[48]_i_22__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(24),
      I1 => \m_payload_i_reg[77]_0\(25),
      I2 => \m_payload_i_reg[77]_0\(29),
      I3 => \m_payload_i_reg[77]_0\(40),
      I4 => \m_payload_i_reg[77]_0\(33),
      O => \m_payload_i[48]_i_22__0_n_0\
    );
\m_payload_i[48]_i_23__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(28),
      I1 => \m_payload_i_reg[77]_0\(45),
      I2 => \m_payload_i_reg[77]_0\(43),
      I3 => \m_payload_i_reg[77]_0\(46),
      O => \m_payload_i[48]_i_23__0_n_0\
    );
\m_payload_i[48]_i_2__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFD0000"
    )
        port map (
      I0 => \m_payload_i[48]_i_3__0_n_0\,
      I1 => \m_payload_i[48]_i_4__0_n_0\,
      I2 => \^s_axi_araddr[39]\,
      I3 => \m_payload_i[48]_i_6__0_n_0\,
      I4 => \m_payload_i[48]_i_7__0_n_0\,
      O => \m_payload_i[48]_i_2__0_n_0\
    );
\m_payload_i[48]_i_3__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"F888D888"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(24),
      I1 => \m_payload_i_reg[77]_0\(25),
      I2 => \m_payload_i[48]_i_8__0_n_0\,
      I3 => \m_payload_i[48]_i_9__0_n_0\,
      I4 => \m_payload_i[48]_i_10__0_n_0\,
      O => \m_payload_i[48]_i_3__0_n_0\
    );
\m_payload_i[48]_i_4__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFF77777777"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(43),
      I1 => \m_payload_i_reg[77]_0\(44),
      I2 => \^s_axi_araddr[21]\,
      I3 => \^s_axi_araddr[17]\,
      I4 => \^s_axi_araddr[22]\,
      I5 => \^s_axi_araddr[23]\,
      O => \m_payload_i[48]_i_4__0_n_0\
    );
\m_payload_i[48]_i_5__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(39),
      I1 => \m_payload_i_reg[77]_0\(35),
      I2 => \m_payload_i_reg[77]_0\(30),
      I3 => \m_payload_i_reg[77]_0\(37),
      O => \^s_axi_araddr[39]\
    );
\m_payload_i[48]_i_6__0\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FEFFFFFF"
    )
        port map (
      I0 => \m_payload_i[48]_i_15__0_n_0\,
      I1 => \m_payload_i[48]_i_16__0_n_0\,
      I2 => \m_payload_i[48]_i_17__0_n_0\,
      I3 => \m_payload_i_reg[77]_0\(36),
      I4 => \m_payload_i_reg[77]_0\(38),
      O => \m_payload_i[48]_i_6__0_n_0\
    );
\m_payload_i[48]_i_7__0\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_payload_i[48]_i_18__0_n_0\,
      I1 => \m_payload_i[48]_i_19__0_n_0\,
      I2 => \m_payload_i[48]_i_20__0_n_0\,
      I3 => \m_payload_i[48]_i_21__0_n_0\,
      I4 => \m_payload_i[48]_i_22__0_n_0\,
      I5 => \m_payload_i[48]_i_23__0_n_0\,
      O => \m_payload_i[48]_i_7__0_n_0\
    );
\m_payload_i[48]_i_8__0\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(22),
      I1 => \m_payload_i_reg[77]_0\(21),
      I2 => \m_payload_i_reg[77]_0\(20),
      I3 => \m_payload_i_reg[77]_0\(19),
      O => \m_payload_i[48]_i_8__0_n_0\
    );
\m_payload_i[48]_i_9__0\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(18),
      I1 => \m_payload_i_reg[77]_0\(17),
      I2 => \m_payload_i_reg[77]_0\(16),
      O => \m_payload_i[48]_i_9__0_n_0\
    );
\m_payload_i[73]_i_1__0\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \m_payload_i[73]_i_1__0_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(32),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(33),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(34),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(35),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(36),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(37),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(38),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(39),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(40),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(41),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(42),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(43),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(44),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(45),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(46),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(47),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => r_match,
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(48),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(49),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(50),
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(51),
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(52),
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(53),
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(54),
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(55),
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(56),
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(57),
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(58),
      Q => \^q\(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(59),
      Q => \^q\(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(60),
      Q => \^q\(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(61),
      Q => \^q\(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(62),
      Q => \^q\(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(63),
      Q => \^q\(64),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(64),
      Q => \^q\(65),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(65),
      Q => \^q\(66),
      R => '0'
    );
\m_payload_i_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(66),
      Q => \^q\(67),
      R => '0'
    );
\m_payload_i_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(67),
      Q => \^q\(68),
      R => '0'
    );
\m_payload_i_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(68),
      Q => \^q\(69),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(69),
      Q => \^q\(70),
      R => '0'
    );
\m_payload_i_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(70),
      Q => \^q\(71),
      R => '0'
    );
\m_payload_i_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(71),
      Q => \^q\(72),
      R => '0'
    );
\m_payload_i_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(72),
      Q => \^q\(73),
      R => '0'
    );
\m_payload_i_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(73),
      Q => \^q\(74),
      R => '0'
    );
\m_payload_i_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(74),
      Q => \^q\(75),
      R => '0'
    );
\m_payload_i_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(75),
      Q => \^q\(76),
      R => '0'
    );
\m_payload_i_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(76),
      Q => \^q\(77),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1__0_n_0\,
      D => \m_payload_i_reg[77]_0\(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_reg_2,
      Q => \^m_valid_i_reg_0\,
      R => SR(0)
    );
s_axi_arready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^s_ready_i_reg_0\,
      I1 => s_axi_arready_0(5),
      O => s_axi_arready
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5DFDF00000000"
    )
        port map (
      I0 => s_ready_i_reg_1,
      I1 => s_ready_i_reg_2,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_arready_0(5),
      I4 => s_axi_arvalid,
      I5 => s_ready_i_reg_3,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => \^s_ready_i_reg_0\,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0 is
  port (
    m_valid_i_reg_0 : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    \aresetn_d_reg[0]_0\ : out STD_LOGIC;
    \aresetn_d_reg[1]_0\ : out STD_LOGIC;
    \FSM_onehot_gen_write.w_state_reg[1]\ : out STD_LOGIC;
    m_valid_i_reg_1 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 77 downto 0 );
    \gen_axi.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \s_axi_awaddr[25]\ : out STD_LOGIC;
    \s_axi_awaddr[25]_0\ : out STD_LOGIC;
    \s_axi_awaddr[32]\ : out STD_LOGIC;
    \s_axi_awaddr[26]\ : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \s_axi_awaddr[16]\ : out STD_LOGIC;
    \s_axi_awaddr[26]_0\ : out STD_LOGIC;
    \s_axi_awaddr[23]\ : out STD_LOGIC;
    \s_axi_awaddr[24]\ : out STD_LOGIC;
    \s_axi_awaddr[26]_1\ : out STD_LOGIC;
    \s_axi_awaddr[22]\ : out STD_LOGIC;
    \s_axi_awaddr[44]\ : out STD_LOGIC;
    \s_axi_awaddr[23]_0\ : out STD_LOGIC;
    \s_axi_awaddr[30]\ : out STD_LOGIC;
    \s_axi_awaddr[29]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    m_axi_awvalid_1 : in STD_LOGIC;
    err_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_2 : in STD_LOGIC;
    \gen_write.w_mask_reg_0\ : in STD_LOGIC;
    err_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \gen_write.aw_cnt_reg[2]\ : in STD_LOGIC;
    w_mask0 : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[4]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_2\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    \m_payload_i_reg[77]_0\ : in STD_LOGIC_VECTOR ( 76 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0 : entity is "axi_register_slice_v2_1_18_axic_register_slice";
end meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0;

architecture STRUCTURE of meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0 is
  signal \FSM_onehot_gen_write.w_state[2]_i_2_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_write.w_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \^q\ : STD_LOGIC_VECTOR ( 77 downto 0 );
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \aresetn_d[1]_i_1_n_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[0]_0\ : STD_LOGIC;
  signal \^aresetn_d_reg[1]_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_10_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_11_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_14_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_15_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_19_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_20_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_7_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_8_n_0\ : STD_LOGIC;
  signal \m_payload_i[48]_i_9_n_0\ : STD_LOGIC;
  signal \m_payload_i[73]_i_1_n_0\ : STD_LOGIC;
  signal m_valid_i_i_1_n_0 : STD_LOGIC;
  signal \^m_valid_i_reg_0\ : STD_LOGIC;
  signal \^s_axi_awaddr[16]\ : STD_LOGIC;
  signal \^s_axi_awaddr[22]\ : STD_LOGIC;
  signal \^s_axi_awaddr[23]\ : STD_LOGIC;
  signal \^s_axi_awaddr[23]_0\ : STD_LOGIC;
  signal \^s_axi_awaddr[24]\ : STD_LOGIC;
  signal \^s_axi_awaddr[25]\ : STD_LOGIC;
  signal \^s_axi_awaddr[25]_0\ : STD_LOGIC;
  signal \^s_axi_awaddr[26]\ : STD_LOGIC;
  signal \^s_axi_awaddr[26]_0\ : STD_LOGIC;
  signal \^s_axi_awaddr[26]_1\ : STD_LOGIC;
  signal \^s_axi_awaddr[29]\ : STD_LOGIC;
  signal \^s_axi_awaddr[30]\ : STD_LOGIC;
  signal \^s_axi_awaddr[32]\ : STD_LOGIC;
  signal \^s_axi_awaddr[44]\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal s_ready_i_i_1_n_0 : STD_LOGIC;
  signal sr_axi_awready : STD_LOGIC;
  signal w_match : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \FSM_onehot_gen_write.w_state[1]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \FSM_onehot_gen_write.w_state[2]_i_3\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_axi.gen_write.s_axi_awready_i_i_2\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[2]_i_3\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of m_axi_awvalid_INST_0 : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_16\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_17\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_18\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_19\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_20\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \m_payload_i[48]_i_6\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of m_valid_i_i_1 : label is "soft_lutpair16";
begin
  Q(77 downto 0) <= \^q\(77 downto 0);
  SR(0) <= \^sr\(0);
  \aresetn_d_reg[0]_0\ <= \^aresetn_d_reg[0]_0\;
  \aresetn_d_reg[1]_0\ <= \^aresetn_d_reg[1]_0\;
  m_valid_i_reg_0 <= \^m_valid_i_reg_0\;
  \s_axi_awaddr[16]\ <= \^s_axi_awaddr[16]\;
  \s_axi_awaddr[22]\ <= \^s_axi_awaddr[22]\;
  \s_axi_awaddr[23]\ <= \^s_axi_awaddr[23]\;
  \s_axi_awaddr[23]_0\ <= \^s_axi_awaddr[23]_0\;
  \s_axi_awaddr[24]\ <= \^s_axi_awaddr[24]\;
  \s_axi_awaddr[25]\ <= \^s_axi_awaddr[25]\;
  \s_axi_awaddr[25]_0\ <= \^s_axi_awaddr[25]_0\;
  \s_axi_awaddr[26]\ <= \^s_axi_awaddr[26]\;
  \s_axi_awaddr[26]_0\ <= \^s_axi_awaddr[26]_0\;
  \s_axi_awaddr[26]_1\ <= \^s_axi_awaddr[26]_1\;
  \s_axi_awaddr[29]\ <= \^s_axi_awaddr[29]\;
  \s_axi_awaddr[30]\ <= \^s_axi_awaddr[30]\;
  \s_axi_awaddr[32]\ <= \^s_axi_awaddr[32]\;
  \s_axi_awaddr[44]\ <= \^s_axi_awaddr[44]\;
  s_axi_awready <= \^s_axi_awready\;
\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      O => \^sr\(0)
    );
\FSM_onehot_gen_write.w_state[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20FF2F00"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(48),
      I2 => m_axi_awvalid_1,
      I3 => \FSM_onehot_gen_write.w_state[2]_i_2_n_0\,
      I4 => m_axi_awvalid_0,
      O => m_valid_i_reg_1
    );
\FSM_onehot_gen_write.w_state[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"B8"
    )
        port map (
      I0 => m_axi_awvalid_0,
      I1 => \FSM_onehot_gen_write.w_state[2]_i_2_n_0\,
      I2 => m_axi_awvalid_1,
      O => \FSM_onehot_gen_write.w_state_reg[1]\
    );
\FSM_onehot_gen_write.w_state[2]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFAAAAAABABABABA"
    )
        port map (
      I0 => \gen_write.w_mask_reg_0\,
      I1 => m_axi_awvalid_0,
      I2 => \FSM_onehot_gen_write.w_state[2]_i_3_n_0\,
      I3 => err_bvalid,
      I4 => s_axi_bready,
      I5 => m_axi_awvalid_1,
      O => \FSM_onehot_gen_write.w_state[2]_i_2_n_0\
    );
\FSM_onehot_gen_write.w_state[2]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      I1 => \^q\(48),
      O => \FSM_onehot_gen_write.w_state[2]_i_3_n_0\
    );
\aresetn_d[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \^aresetn_d_reg[0]_0\,
      I1 => aresetn,
      O => \aresetn_d[1]_i_1_n_0\
    );
\aresetn_d_reg[0]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => aresetn,
      Q => \^aresetn_d_reg[0]_0\,
      R => '0'
    );
\aresetn_d_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => \aresetn_d[1]_i_1_n_0\,
      Q => \^aresetn_d_reg[1]_0\,
      R => '0'
    );
\gen_axi.gen_write.s_axi_awready_i_i_2\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => err_awready,
      I1 => m_axi_awvalid_1,
      I2 => \^q\(48),
      I3 => \^m_valid_i_reg_0\,
      O => \gen_axi.gen_write.s_axi_awready_i_reg\
    );
\gen_write.aw_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFBF00400040FFBF"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[2]\,
      I1 => sr_axi_awready,
      I2 => w_mask0,
      I3 => \^s_axi_awaddr[25]\,
      I4 => s_axi_awready_0(1),
      I5 => s_axi_awready_0(0),
      O => D(0)
    );
\gen_write.aw_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"A9A9A9A9A96AA9A9"
    )
        port map (
      I0 => s_axi_awready_0(2),
      I1 => s_axi_awready_0(1),
      I2 => s_axi_awready_0(0),
      I3 => \gen_write.aw_cnt_reg[2]\,
      I4 => \gen_write.aw_cnt[2]_i_3_n_0\,
      I5 => \^s_axi_awaddr[25]\,
      O => D(1)
    );
\gen_write.aw_cnt[2]_i_3\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => s_axi_awready_0(5),
      I1 => s_axi_awvalid,
      I2 => sr_axi_awready,
      O => \gen_write.aw_cnt[2]_i_3_n_0\
    );
\gen_write.aw_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => s_axi_awready_0(1),
      I1 => s_axi_awready_0(0),
      I2 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I3 => s_axi_awready_0(2),
      I4 => s_axi_awready_0(3),
      O => D(2)
    );
\gen_write.aw_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => s_axi_awready_0(3),
      I1 => s_axi_awready_0(1),
      I2 => s_axi_awready_0(0),
      I3 => \gen_write.aw_cnt[4]_i_2_n_0\,
      I4 => s_axi_awready_0(2),
      I5 => s_axi_awready_0(4),
      O => D(3)
    );
\gen_write.aw_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0000"
    )
        port map (
      I0 => \^s_axi_awaddr[32]\,
      I1 => \^s_axi_awaddr[26]\,
      I2 => \^s_axi_awaddr[25]_0\,
      I3 => \gen_write.aw_cnt_reg[4]\,
      I4 => \gen_write.aw_cnt[2]_i_3_n_0\,
      I5 => \gen_write.aw_cnt_reg[2]\,
      O => \gen_write.aw_cnt[4]_i_2_n_0\
    );
\gen_write.aw_cnt[5]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"807F808080808080"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_2\,
      I1 => s_axi_bready,
      I2 => m_axi_bvalid,
      I3 => \^s_axi_awaddr[25]\,
      I4 => w_mask0,
      I5 => sr_axi_awready,
      O => E(0)
    );
\gen_write.aw_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5AAAAAAAAAAAAAA6"
    )
        port map (
      I0 => s_axi_awready_0(5),
      I1 => \gen_write.aw_cnt[5]_i_5_n_0\,
      I2 => s_axi_awready_0(2),
      I3 => \gen_write.aw_cnt[5]_i_6_n_0\,
      I4 => s_axi_awready_0(3),
      I5 => s_axi_awready_0(4),
      O => D(4)
    );
\gen_write.aw_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5555555555454545"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]\,
      I1 => \gen_write.aw_cnt_reg[2]\,
      I2 => \gen_write.aw_cnt[2]_i_3_n_0\,
      I3 => \gen_write.aw_cnt_reg[4]\,
      I4 => \^s_axi_awaddr[25]_0\,
      I5 => \gen_write.aw_cnt_reg[5]_0\,
      O => \gen_write.aw_cnt[5]_i_5_n_0\
    );
\gen_write.aw_cnt[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000202020"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg[5]_1\,
      I1 => \gen_write.aw_cnt_reg[2]\,
      I2 => \gen_write.aw_cnt[2]_i_3_n_0\,
      I3 => \gen_write.aw_cnt_reg[4]\,
      I4 => \^s_axi_awaddr[25]_0\,
      I5 => \gen_write.aw_cnt_reg[5]_0\,
      O => \gen_write.aw_cnt[5]_i_6_n_0\
    );
\gen_write.w_mask_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"5400540000005400"
    )
        port map (
      I0 => \gen_write.w_mask_reg_0\,
      I1 => w_mask,
      I2 => w_mask0,
      I3 => \^aresetn_d_reg[1]_0\,
      I4 => \^s_axi_awready\,
      I5 => \^s_axi_awaddr[25]\,
      O => \gen_write.w_mask_reg\
    );
m_axi_awvalid_INST_0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \^q\(48),
      I1 => \^m_valid_i_reg_0\,
      I2 => m_axi_awvalid_0,
      I3 => m_axi_awvalid_1,
      O => m_axi_awvalid
    );
\m_payload_i[48]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^s_axi_awaddr[25]\,
      O => w_match
    );
\m_payload_i[48]_i_10\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(46),
      I1 => \m_payload_i_reg[77]_0\(41),
      I2 => \m_payload_i_reg[77]_0\(36),
      I3 => \m_payload_i_reg[77]_0\(47),
      O => \m_payload_i[48]_i_10_n_0\
    );
\m_payload_i[48]_i_11\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFFFFFFFFFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(38),
      I1 => \m_payload_i_reg[77]_0\(42),
      I2 => \m_payload_i_reg[77]_0\(40),
      I3 => \m_payload_i_reg[77]_0\(31),
      I4 => \m_payload_i_reg[77]_0\(43),
      I5 => \m_payload_i_reg[77]_0\(37),
      O => \m_payload_i[48]_i_11_n_0\
    );
\m_payload_i[48]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"8000000F00000000"
    )
        port map (
      I0 => \m_payload_i[48]_i_19_n_0\,
      I1 => \m_payload_i[48]_i_20_n_0\,
      I2 => \m_payload_i_reg[77]_0\(26),
      I3 => \m_payload_i_reg[77]_0\(27),
      I4 => \m_payload_i_reg[77]_0\(23),
      I5 => \m_payload_i_reg[77]_0\(24),
      O => \^s_axi_awaddr[26]_0\
    );
\m_payload_i[48]_i_13\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFEFFFFFFFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(23),
      I1 => \m_payload_i_reg[77]_0\(24),
      I2 => \m_payload_i_reg[77]_0\(18),
      I3 => \m_payload_i_reg[77]_0\(17),
      I4 => \m_payload_i_reg[77]_0\(16),
      I5 => \^s_axi_awaddr[22]\,
      O => \^s_axi_awaddr[23]\
    );
\m_payload_i[48]_i_14\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^s_axi_awaddr[29]\,
      I1 => \m_payload_i_reg[77]_0\(40),
      I2 => \m_payload_i_reg[77]_0\(45),
      I3 => \m_payload_i_reg[77]_0\(36),
      I4 => \m_payload_i_reg[77]_0\(28),
      O => \m_payload_i[48]_i_14_n_0\
    );
\m_payload_i[48]_i_15\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => \^s_axi_awaddr[44]\,
      I1 => \^s_axi_awaddr[23]_0\,
      I2 => \^s_axi_awaddr[30]\,
      I3 => \m_payload_i_reg[77]_0\(46),
      I4 => \m_payload_i_reg[77]_0\(34),
      O => \m_payload_i[48]_i_15_n_0\
    );
\m_payload_i[48]_i_16\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(26),
      I1 => \m_payload_i_reg[77]_0\(27),
      O => \^s_axi_awaddr[26]_1\
    );
\m_payload_i[48]_i_17\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(22),
      I1 => \m_payload_i_reg[77]_0\(21),
      I2 => \m_payload_i_reg[77]_0\(20),
      I3 => \m_payload_i_reg[77]_0\(19),
      O => \^s_axi_awaddr[22]\
    );
\m_payload_i[48]_i_18\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFD"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(24),
      I1 => \m_payload_i_reg[77]_0\(23),
      I2 => \m_payload_i_reg[77]_0\(27),
      I3 => \m_payload_i_reg[77]_0\(26),
      O => \^s_axi_awaddr[24]\
    );
\m_payload_i[48]_i_19\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(16),
      I1 => \m_payload_i_reg[77]_0\(15),
      I2 => \m_payload_i_reg[77]_0\(18),
      I3 => \m_payload_i_reg[77]_0\(17),
      O => \m_payload_i[48]_i_19_n_0\
    );
\m_payload_i[48]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"B0B0B0B0B0F0F0F0"
    )
        port map (
      I0 => \^s_axi_awaddr[32]\,
      I1 => \^s_axi_awaddr[26]\,
      I2 => \^s_axi_awaddr[25]_0\,
      I3 => \^s_axi_awaddr[16]\,
      I4 => \m_payload_i[48]_i_7_n_0\,
      I5 => \m_payload_i_reg[77]_0\(25),
      O => \^s_axi_awaddr[25]\
    );
\m_payload_i[48]_i_20\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(22),
      I1 => \m_payload_i_reg[77]_0\(21),
      I2 => \m_payload_i_reg[77]_0\(20),
      I3 => \m_payload_i_reg[77]_0\(19),
      O => \m_payload_i[48]_i_20_n_0\
    );
\m_payload_i[48]_i_21\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(29),
      I1 => \m_payload_i_reg[77]_0\(33),
      I2 => \m_payload_i_reg[77]_0\(22),
      I3 => \m_payload_i_reg[77]_0\(47),
      I4 => \m_payload_i_reg[77]_0\(39),
      I5 => \m_payload_i_reg[77]_0\(37),
      O => \^s_axi_awaddr[29]\
    );
\m_payload_i[48]_i_22\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(44),
      I1 => \m_payload_i_reg[77]_0\(41),
      I2 => \m_payload_i_reg[77]_0\(32),
      I3 => \m_payload_i_reg[77]_0\(25),
      O => \^s_axi_awaddr[44]\
    );
\m_payload_i[48]_i_23\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(23),
      I1 => \m_payload_i_reg[77]_0\(24),
      I2 => \m_payload_i_reg[77]_0\(42),
      I3 => \m_payload_i_reg[77]_0\(31),
      O => \^s_axi_awaddr[23]_0\
    );
\m_payload_i[48]_i_24\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(30),
      I1 => \m_payload_i_reg[77]_0\(43),
      I2 => \m_payload_i_reg[77]_0\(38),
      I3 => \m_payload_i_reg[77]_0\(35),
      O => \^s_axi_awaddr[30]\
    );
\m_payload_i[48]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFF7"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(32),
      I1 => \m_payload_i_reg[77]_0\(34),
      I2 => \m_payload_i[48]_i_8_n_0\,
      I3 => \m_payload_i[48]_i_9_n_0\,
      I4 => \m_payload_i[48]_i_10_n_0\,
      I5 => \m_payload_i[48]_i_11_n_0\,
      O => \^s_axi_awaddr[32]\
    );
\m_payload_i[48]_i_4\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"AAAB"
    )
        port map (
      I0 => \^s_axi_awaddr[26]_0\,
      I1 => \^s_axi_awaddr[23]\,
      I2 => \m_payload_i_reg[77]_0\(26),
      I3 => \m_payload_i_reg[77]_0\(27),
      O => \^s_axi_awaddr[26]\
    );
\m_payload_i[48]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FEFEFE00FFFFFFFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(25),
      I1 => \^s_axi_awaddr[23]\,
      I2 => \^s_axi_awaddr[32]\,
      I3 => \m_payload_i[48]_i_14_n_0\,
      I4 => \m_payload_i[48]_i_15_n_0\,
      I5 => \^s_axi_awaddr[26]_1\,
      O => \^s_axi_awaddr[25]_0\
    );
\m_payload_i[48]_i_6\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0002"
    )
        port map (
      I0 => \^s_axi_awaddr[22]\,
      I1 => \m_payload_i_reg[77]_0\(16),
      I2 => \m_payload_i_reg[77]_0\(17),
      I3 => \m_payload_i_reg[77]_0\(18),
      O => \^s_axi_awaddr[16]\
    );
\m_payload_i[48]_i_7\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000001"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(14),
      I1 => \m_payload_i_reg[77]_0\(15),
      I2 => \m_payload_i_reg[77]_0\(12),
      I3 => \m_payload_i_reg[77]_0\(13),
      I4 => \^s_axi_awaddr[24]\,
      O => \m_payload_i[48]_i_7_n_0\
    );
\m_payload_i[48]_i_8\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(30),
      I1 => \m_payload_i_reg[77]_0\(45),
      I2 => \m_payload_i_reg[77]_0\(33),
      I3 => \m_payload_i_reg[77]_0\(44),
      O => \m_payload_i[48]_i_8_n_0\
    );
\m_payload_i[48]_i_9\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"7FFF"
    )
        port map (
      I0 => \m_payload_i_reg[77]_0\(39),
      I1 => \m_payload_i_reg[77]_0\(35),
      I2 => \m_payload_i_reg[77]_0\(28),
      I3 => \m_payload_i_reg[77]_0\(29),
      O => \m_payload_i[48]_i_9_n_0\
    );
\m_payload_i[73]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \^m_valid_i_reg_0\,
      O => \m_payload_i[73]_i_1_n_0\
    );
\m_payload_i_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(0),
      Q => \^q\(0),
      R => '0'
    );
\m_payload_i_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(10),
      Q => \^q\(10),
      R => '0'
    );
\m_payload_i_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(11),
      Q => \^q\(11),
      R => '0'
    );
\m_payload_i_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(12),
      Q => \^q\(12),
      R => '0'
    );
\m_payload_i_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(13),
      Q => \^q\(13),
      R => '0'
    );
\m_payload_i_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(14),
      Q => \^q\(14),
      R => '0'
    );
\m_payload_i_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(15),
      Q => \^q\(15),
      R => '0'
    );
\m_payload_i_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(16),
      Q => \^q\(16),
      R => '0'
    );
\m_payload_i_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(17),
      Q => \^q\(17),
      R => '0'
    );
\m_payload_i_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(18),
      Q => \^q\(18),
      R => '0'
    );
\m_payload_i_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(19),
      Q => \^q\(19),
      R => '0'
    );
\m_payload_i_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(1),
      Q => \^q\(1),
      R => '0'
    );
\m_payload_i_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(20),
      Q => \^q\(20),
      R => '0'
    );
\m_payload_i_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(21),
      Q => \^q\(21),
      R => '0'
    );
\m_payload_i_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(22),
      Q => \^q\(22),
      R => '0'
    );
\m_payload_i_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(23),
      Q => \^q\(23),
      R => '0'
    );
\m_payload_i_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(24),
      Q => \^q\(24),
      R => '0'
    );
\m_payload_i_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(25),
      Q => \^q\(25),
      R => '0'
    );
\m_payload_i_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(26),
      Q => \^q\(26),
      R => '0'
    );
\m_payload_i_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(27),
      Q => \^q\(27),
      R => '0'
    );
\m_payload_i_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(28),
      Q => \^q\(28),
      R => '0'
    );
\m_payload_i_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(29),
      Q => \^q\(29),
      R => '0'
    );
\m_payload_i_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(2),
      Q => \^q\(2),
      R => '0'
    );
\m_payload_i_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(30),
      Q => \^q\(30),
      R => '0'
    );
\m_payload_i_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(31),
      Q => \^q\(31),
      R => '0'
    );
\m_payload_i_reg[32]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(32),
      Q => \^q\(32),
      R => '0'
    );
\m_payload_i_reg[33]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(33),
      Q => \^q\(33),
      R => '0'
    );
\m_payload_i_reg[34]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(34),
      Q => \^q\(34),
      R => '0'
    );
\m_payload_i_reg[35]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(35),
      Q => \^q\(35),
      R => '0'
    );
\m_payload_i_reg[36]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(36),
      Q => \^q\(36),
      R => '0'
    );
\m_payload_i_reg[37]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(37),
      Q => \^q\(37),
      R => '0'
    );
\m_payload_i_reg[38]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(38),
      Q => \^q\(38),
      R => '0'
    );
\m_payload_i_reg[39]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(39),
      Q => \^q\(39),
      R => '0'
    );
\m_payload_i_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(3),
      Q => \^q\(3),
      R => '0'
    );
\m_payload_i_reg[40]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(40),
      Q => \^q\(40),
      R => '0'
    );
\m_payload_i_reg[41]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(41),
      Q => \^q\(41),
      R => '0'
    );
\m_payload_i_reg[42]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(42),
      Q => \^q\(42),
      R => '0'
    );
\m_payload_i_reg[43]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(43),
      Q => \^q\(43),
      R => '0'
    );
\m_payload_i_reg[44]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(44),
      Q => \^q\(44),
      R => '0'
    );
\m_payload_i_reg[45]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(45),
      Q => \^q\(45),
      R => '0'
    );
\m_payload_i_reg[46]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(46),
      Q => \^q\(46),
      R => '0'
    );
\m_payload_i_reg[47]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(47),
      Q => \^q\(47),
      R => '0'
    );
\m_payload_i_reg[48]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => w_match,
      Q => \^q\(48),
      R => '0'
    );
\m_payload_i_reg[49]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(48),
      Q => \^q\(49),
      R => '0'
    );
\m_payload_i_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(4),
      Q => \^q\(4),
      R => '0'
    );
\m_payload_i_reg[50]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(49),
      Q => \^q\(50),
      R => '0'
    );
\m_payload_i_reg[51]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(50),
      Q => \^q\(51),
      R => '0'
    );
\m_payload_i_reg[52]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(51),
      Q => \^q\(52),
      R => '0'
    );
\m_payload_i_reg[53]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(52),
      Q => \^q\(53),
      R => '0'
    );
\m_payload_i_reg[54]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(53),
      Q => \^q\(54),
      R => '0'
    );
\m_payload_i_reg[55]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(54),
      Q => \^q\(55),
      R => '0'
    );
\m_payload_i_reg[56]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(55),
      Q => \^q\(56),
      R => '0'
    );
\m_payload_i_reg[57]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(56),
      Q => \^q\(57),
      R => '0'
    );
\m_payload_i_reg[58]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(57),
      Q => \^q\(58),
      R => '0'
    );
\m_payload_i_reg[59]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(58),
      Q => \^q\(59),
      R => '0'
    );
\m_payload_i_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(5),
      Q => \^q\(5),
      R => '0'
    );
\m_payload_i_reg[60]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(59),
      Q => \^q\(60),
      R => '0'
    );
\m_payload_i_reg[61]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(60),
      Q => \^q\(61),
      R => '0'
    );
\m_payload_i_reg[62]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(61),
      Q => \^q\(62),
      R => '0'
    );
\m_payload_i_reg[63]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(62),
      Q => \^q\(63),
      R => '0'
    );
\m_payload_i_reg[64]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(63),
      Q => \^q\(64),
      R => '0'
    );
\m_payload_i_reg[65]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(64),
      Q => \^q\(65),
      R => '0'
    );
\m_payload_i_reg[66]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(65),
      Q => \^q\(66),
      R => '0'
    );
\m_payload_i_reg[67]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(66),
      Q => \^q\(67),
      R => '0'
    );
\m_payload_i_reg[68]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(67),
      Q => \^q\(68),
      R => '0'
    );
\m_payload_i_reg[69]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(68),
      Q => \^q\(69),
      R => '0'
    );
\m_payload_i_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(6),
      Q => \^q\(6),
      R => '0'
    );
\m_payload_i_reg[70]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(69),
      Q => \^q\(70),
      R => '0'
    );
\m_payload_i_reg[71]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(70),
      Q => \^q\(71),
      R => '0'
    );
\m_payload_i_reg[72]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(71),
      Q => \^q\(72),
      R => '0'
    );
\m_payload_i_reg[73]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(72),
      Q => \^q\(73),
      R => '0'
    );
\m_payload_i_reg[74]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(73),
      Q => \^q\(74),
      R => '0'
    );
\m_payload_i_reg[75]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(74),
      Q => \^q\(75),
      R => '0'
    );
\m_payload_i_reg[76]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(75),
      Q => \^q\(76),
      R => '0'
    );
\m_payload_i_reg[77]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(76),
      Q => \^q\(77),
      R => '0'
    );
\m_payload_i_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(7),
      Q => \^q\(7),
      R => '0'
    );
\m_payload_i_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(8),
      Q => \^q\(8),
      R => '0'
    );
\m_payload_i_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \m_payload_i[73]_i_1_n_0\,
      D => \m_payload_i_reg[77]_0\(9),
      Q => \^q\(9),
      R => '0'
    );
m_valid_i_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"202F"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => s_axi_awready_0(5),
      I2 => sr_axi_awready,
      I3 => m_valid_i_reg_2,
      O => m_valid_i_i_1_n_0
    );
m_valid_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => m_valid_i_i_1_n_0,
      Q => \^m_valid_i_reg_0\,
      R => \^sr\(0)
    );
s_axi_awready_INST_0: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => sr_axi_awready,
      I1 => s_axi_awready_0(5),
      O => \^s_axi_awready\
    );
s_ready_i_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"DFD5DFDF00000000"
    )
        port map (
      I0 => \^aresetn_d_reg[1]_0\,
      I1 => m_valid_i_reg_2,
      I2 => \^m_valid_i_reg_0\,
      I3 => s_axi_awready_0(5),
      I4 => s_axi_awvalid,
      I5 => \^aresetn_d_reg[0]_0\,
      O => s_ready_i_i_1_n_0
    );
s_ready_i_reg: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => s_ready_i_i_1_n_0,
      Q => sr_axi_awready,
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice is
  port (
    mr_axi_awvalid : out STD_LOGIC;
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    mr_axi_arvalid : out STD_LOGIC;
    \aresetn_d_reg[1]\ : out STD_LOGIC;
    \FSM_onehot_gen_write.w_state_reg[1]\ : out STD_LOGIC;
    m_valid_i_reg : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 77 downto 0 );
    \FSM_onehot_gen_read.r_state_reg[1]\ : out STD_LOGIC;
    \m_payload_i_reg[77]\ : out STD_LOGIC_VECTOR ( 77 downto 0 );
    \gen_axi.gen_write.s_axi_awready_i_reg\ : out STD_LOGIC;
    m_axi_awvalid : out STD_LOGIC;
    D : out STD_LOGIC_VECTOR ( 4 downto 0 );
    s_axi_awaddr_25_sp_1 : out STD_LOGIC;
    \s_axi_awaddr[25]_0\ : out STD_LOGIC;
    s_axi_awaddr_32_sp_1 : out STD_LOGIC;
    s_axi_awaddr_26_sp_1 : out STD_LOGIC;
    E : out STD_LOGIC_VECTOR ( 0 to 0 );
    \gen_write.w_mask_reg\ : out STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    \gen_read.ar_cnt_reg[5]\ : out STD_LOGIC_VECTOR ( 4 downto 0 );
    \gen_read.ar_cnt_reg[5]_0\ : out STD_LOGIC_VECTOR ( 0 to 0 );
    sr_axi_arready : out STD_LOGIC;
    s_axi_awaddr_16_sp_1 : out STD_LOGIC;
    \s_axi_awaddr[26]_0\ : out STD_LOGIC;
    s_axi_awaddr_23_sp_1 : out STD_LOGIC;
    s_axi_awaddr_24_sp_1 : out STD_LOGIC;
    \s_axi_awaddr[26]_1\ : out STD_LOGIC;
    s_axi_awaddr_22_sp_1 : out STD_LOGIC;
    s_axi_awaddr_44_sp_1 : out STD_LOGIC;
    \s_axi_awaddr[23]_0\ : out STD_LOGIC;
    s_axi_awaddr_30_sp_1 : out STD_LOGIC;
    s_axi_awaddr_29_sp_1 : out STD_LOGIC;
    \s_axi_araddr[39]\ : out STD_LOGIC;
    \s_axi_araddr[21]\ : out STD_LOGIC;
    \s_axi_araddr[17]\ : out STD_LOGIC;
    \s_axi_araddr[22]\ : out STD_LOGIC;
    \s_axi_araddr[23]\ : out STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    m_axi_arvalid : out STD_LOGIC;
    m_valid_i_reg_0 : out STD_LOGIC;
    \gen_axi.gen_read.read_cs_reg[0]\ : out STD_LOGIC;
    aclk : in STD_LOGIC;
    m_valid_i_reg_1 : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    m_axi_awvalid_0 : in STD_LOGIC;
    m_axi_awvalid_1 : in STD_LOGIC;
    r_state : in STD_LOGIC_VECTOR ( 0 to 0 );
    \FSM_onehot_gen_read.r_state_reg[2]\ : in STD_LOGIC;
    m_axi_arvalid_0 : in STD_LOGIC;
    err_awready : in STD_LOGIC;
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    m_valid_i_reg_2 : in STD_LOGIC;
    \gen_write.w_mask_reg_0\ : in STD_LOGIC;
    err_bvalid : in STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    \gen_write.aw_cnt_reg[2]\ : in STD_LOGIC;
    w_mask0 : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[4]\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_0\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_1\ : in STD_LOGIC;
    \gen_write.aw_cnt_reg[5]_2\ : in STD_LOGIC;
    m_axi_bvalid : in STD_LOGIC;
    w_mask : in STD_LOGIC;
    s_axi_arready_0 : in STD_LOGIC_VECTOR ( 5 downto 0 );
    \gen_read.ar_cnt_reg[2]\ : in STD_LOGIC;
    \gen_read.ar_cnt_reg[5]_1\ : in STD_LOGIC;
    s_axi_arvalid : in STD_LOGIC;
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    \m_payload_i_reg[77]_0\ : in STD_LOGIC_VECTOR ( 76 downto 0 );
    err_rvalid : in STD_LOGIC;
    \m_payload_i_reg[77]_1\ : in STD_LOGIC_VECTOR ( 28 downto 0 );
    s_ready_i_reg : in STD_LOGIC
  );
end meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice;

architecture STRUCTURE of meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
  signal \^aresetn_d_reg[1]\ : STD_LOGIC;
  signal \aw.aw_pipe_n_2\ : STD_LOGIC;
  signal s_axi_awaddr_16_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_22_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_23_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_24_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_25_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_26_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_29_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_30_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_32_sn_1 : STD_LOGIC;
  signal s_axi_awaddr_44_sn_1 : STD_LOGIC;
begin
  SR(0) <= \^sr\(0);
  \aresetn_d_reg[1]\ <= \^aresetn_d_reg[1]\;
  s_axi_awaddr_16_sp_1 <= s_axi_awaddr_16_sn_1;
  s_axi_awaddr_22_sp_1 <= s_axi_awaddr_22_sn_1;
  s_axi_awaddr_23_sp_1 <= s_axi_awaddr_23_sn_1;
  s_axi_awaddr_24_sp_1 <= s_axi_awaddr_24_sn_1;
  s_axi_awaddr_25_sp_1 <= s_axi_awaddr_25_sn_1;
  s_axi_awaddr_26_sp_1 <= s_axi_awaddr_26_sn_1;
  s_axi_awaddr_29_sp_1 <= s_axi_awaddr_29_sn_1;
  s_axi_awaddr_30_sp_1 <= s_axi_awaddr_30_sn_1;
  s_axi_awaddr_32_sp_1 <= s_axi_awaddr_32_sn_1;
  s_axi_awaddr_44_sp_1 <= s_axi_awaddr_44_sn_1;
\ar.ar_pipe\: entity work.meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice
     port map (
      \FSM_onehot_gen_read.r_state_reg[1]\ => \FSM_onehot_gen_read.r_state_reg[1]\,
      \FSM_onehot_gen_read.r_state_reg[2]\ => \FSM_onehot_gen_read.r_state_reg[2]\,
      Q(77 downto 0) => \m_payload_i_reg[77]\(77 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.read_cs_reg[0]\ => \gen_axi.gen_read.read_cs_reg[0]\,
      \gen_read.ar_cnt_reg[2]\ => \gen_read.ar_cnt_reg[2]\,
      \gen_read.ar_cnt_reg[5]\(4 downto 0) => \gen_read.ar_cnt_reg[5]\(4 downto 0),
      \gen_read.ar_cnt_reg[5]_0\(0) => \gen_read.ar_cnt_reg[5]_0\(0),
      \gen_read.ar_cnt_reg[5]_1\ => \gen_read.ar_cnt_reg[5]_1\,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0 => m_axi_arvalid_0,
      \m_payload_i_reg[77]_0\(76 downto 0) => \m_payload_i_reg[77]_0\(76 downto 0),
      m_valid_i_reg_0 => mr_axi_arvalid,
      m_valid_i_reg_1 => m_valid_i_reg_0,
      m_valid_i_reg_2 => m_valid_i_reg_1,
      r_state(0) => r_state(0),
      \s_axi_araddr[17]\ => \s_axi_araddr[17]\,
      \s_axi_araddr[21]\ => \s_axi_araddr[21]\,
      \s_axi_araddr[22]\ => \s_axi_araddr[22]\,
      \s_axi_araddr[23]\ => \s_axi_araddr[23]\,
      \s_axi_araddr[39]\ => \s_axi_araddr[39]\,
      s_axi_arready => s_axi_arready,
      s_axi_arready_0(5 downto 0) => s_axi_arready_0(5 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_ready_i_reg_0 => sr_axi_arready,
      s_ready_i_reg_1 => \^aresetn_d_reg[1]\,
      s_ready_i_reg_2 => s_ready_i_reg,
      s_ready_i_reg_3 => \aw.aw_pipe_n_2\
    );
\aw.aw_pipe\: entity work.meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0
     port map (
      D(4 downto 0) => D(4 downto 0),
      E(0) => E(0),
      \FSM_onehot_gen_write.w_state_reg[1]\ => \FSM_onehot_gen_write.w_state_reg[1]\,
      Q(77 downto 0) => Q(77 downto 0),
      SR(0) => \^sr\(0),
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[0]_0\ => \aw.aw_pipe_n_2\,
      \aresetn_d_reg[1]_0\ => \^aresetn_d_reg[1]\,
      err_awready => err_awready,
      err_bvalid => err_bvalid,
      \gen_axi.gen_write.s_axi_awready_i_reg\ => \gen_axi.gen_write.s_axi_awready_i_reg\,
      \gen_write.aw_cnt_reg[2]\ => \gen_write.aw_cnt_reg[2]\,
      \gen_write.aw_cnt_reg[4]\ => \gen_write.aw_cnt_reg[4]\,
      \gen_write.aw_cnt_reg[5]\ => \gen_write.aw_cnt_reg[5]\,
      \gen_write.aw_cnt_reg[5]_0\ => \gen_write.aw_cnt_reg[5]_0\,
      \gen_write.aw_cnt_reg[5]_1\ => \gen_write.aw_cnt_reg[5]_1\,
      \gen_write.aw_cnt_reg[5]_2\ => \gen_write.aw_cnt_reg[5]_2\,
      \gen_write.w_mask_reg\ => \gen_write.w_mask_reg\,
      \gen_write.w_mask_reg_0\ => \gen_write.w_mask_reg_0\,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awvalid_0 => m_axi_awvalid_0,
      m_axi_awvalid_1 => m_axi_awvalid_1,
      m_axi_bvalid => m_axi_bvalid,
      \m_payload_i_reg[77]_0\(76 downto 48) => \m_payload_i_reg[77]_1\(28 downto 0),
      \m_payload_i_reg[77]_0\(47 downto 0) => s_axi_awaddr(47 downto 0),
      m_valid_i_reg_0 => mr_axi_awvalid,
      m_valid_i_reg_1 => m_valid_i_reg,
      m_valid_i_reg_2 => m_valid_i_reg_2,
      \s_axi_awaddr[16]\ => s_axi_awaddr_16_sn_1,
      \s_axi_awaddr[22]\ => s_axi_awaddr_22_sn_1,
      \s_axi_awaddr[23]\ => s_axi_awaddr_23_sn_1,
      \s_axi_awaddr[23]_0\ => \s_axi_awaddr[23]_0\,
      \s_axi_awaddr[24]\ => s_axi_awaddr_24_sn_1,
      \s_axi_awaddr[25]\ => s_axi_awaddr_25_sn_1,
      \s_axi_awaddr[25]_0\ => \s_axi_awaddr[25]_0\,
      \s_axi_awaddr[26]\ => s_axi_awaddr_26_sn_1,
      \s_axi_awaddr[26]_0\ => \s_axi_awaddr[26]_0\,
      \s_axi_awaddr[26]_1\ => \s_axi_awaddr[26]_1\,
      \s_axi_awaddr[29]\ => s_axi_awaddr_29_sn_1,
      \s_axi_awaddr[30]\ => s_axi_awaddr_30_sn_1,
      \s_axi_awaddr[32]\ => s_axi_awaddr_32_sn_1,
      \s_axi_awaddr[44]\ => s_axi_awaddr_44_sn_1,
      s_axi_awready => s_axi_awready,
      s_axi_awready_0(5 downto 0) => s_axi_awready_0(5 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => s_axi_bready,
      w_mask => w_mask,
      w_mask0 => w_mask0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_buser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_aruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_ruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wuser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_buser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_aruser : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_ruser : in STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_BASE_ADDR : string;
  attribute C_BASE_ADDR of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "384'b000000000000000011111111111111111111111111111111100000000000000000000000000000001111111111111111111100110000000000000000000000000000000000000000111111111111111111110010000000000000000000000000000000000000000011111111111111111111000100000000000000000000000000000000000000001111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_DEST : string;
  attribute C_DEST of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "6'b000000";
  attribute C_DEST_WIDTH : integer;
  attribute C_DEST_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 48;
  attribute C_M_AXI_SUPPORTS_READ : string;
  attribute C_M_AXI_SUPPORTS_READ of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "6'b111111";
  attribute C_M_AXI_SUPPORTS_WRITE : string;
  attribute C_M_AXI_SUPPORTS_WRITE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "6'b111111";
  attribute C_NUM_RANGES : integer;
  attribute C_NUM_RANGES of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 6;
  attribute C_PREFIX : string;
  attribute C_PREFIX of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "6'b000000";
  attribute C_PREFIX_WIDTH : integer;
  attribute C_PREFIX_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_RANGE_SIZE : string;
  attribute C_RANGE_SIZE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "192'b000000000000000000000000000011110000000000000000000000000001011100000000000000000000000000010000000000000000000000000000000011000000000000000000000000000001000000000000000000000000000000010110";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 48;
  attribute C_S_AXI_SUPPORTS_READ : integer;
  attribute C_S_AXI_SUPPORTS_READ of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_S_AXI_SUPPORTS_WRITE : integer;
  attribute C_S_AXI_SUPPORTS_WRITE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute C_USES_DEST : integer;
  attribute C_USES_DEST of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 0;
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b11";
  attribute P_NUM_RANGES_LOG : integer;
  attribute P_NUM_RANGES_LOG of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is 3;
  attribute R_DECERR : string;
  attribute R_DECERR of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b11";
  attribute R_IDLE : string;
  attribute R_IDLE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b00";
  attribute R_PENDING : string;
  attribute R_PENDING of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b01";
  attribute W_DECERR : string;
  attribute W_DECERR of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b11";
  attribute W_IDLE : string;
  attribute W_IDLE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b00";
  attribute W_PENDING : string;
  attribute W_PENDING of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top : entity is "2'b01";
end meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top;

architecture STRUCTURE of meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top is
  signal \<const0>\ : STD_LOGIC;
  signal \FSM_onehot_gen_read.r_state[2]_i_3_n_0\ : STD_LOGIC;
  signal \FSM_onehot_gen_read.r_state_reg_n_0_[2]\ : STD_LOGIC;
  signal \FSM_onehot_gen_write.w_state_reg_n_0_[1]\ : STD_LOGIC;
  signal \FSM_onehot_gen_write.w_state_reg_n_0_[2]\ : STD_LOGIC;
  signal decerr_slave_inst_n_3 : STD_LOGIC;
  signal decerr_slave_inst_n_4 : STD_LOGIC;
  signal decerr_slave_inst_n_5 : STD_LOGIC;
  signal decerr_slave_inst_n_6 : STD_LOGIC;
  signal decerr_slave_inst_n_7 : STD_LOGIC;
  signal err_awready : STD_LOGIC;
  signal err_bvalid : STD_LOGIC;
  signal err_rvalid : STD_LOGIC;
  signal \gen_read.ar_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[2]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[2]_i_5_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_read.ar_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.aw_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_10_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_11_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_12_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_13_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_14_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt[5]_i_9_n_0\ : STD_LOGIC;
  signal \gen_write.aw_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_cnt[0]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[1]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[2]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[2]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[3]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[4]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_1_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_2_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_3_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_4_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_5_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_6_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_7_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_8_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt[5]_i_9_n_0\ : STD_LOGIC;
  signal \gen_write.w_cnt_reg__0\ : STD_LOGIC_VECTOR ( 5 downto 0 );
  signal \gen_write.w_mask_i_2_n_0\ : STD_LOGIC;
  signal \^m_axi_arid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \^m_axi_arlen\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal \^m_axi_awid\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal mr_axi_araddr : STD_LOGIC_VECTOR ( 48 to 48 );
  signal mr_axi_arvalid : STD_LOGIC;
  signal mr_axi_awaddr : STD_LOGIC_VECTOR ( 48 to 48 );
  signal mr_axi_awvalid : STD_LOGIC;
  signal r_state : STD_LOGIC_VECTOR ( 1 to 1 );
  signal register_slice_inst_n_1 : STD_LOGIC;
  signal register_slice_inst_n_163 : STD_LOGIC;
  signal register_slice_inst_n_165 : STD_LOGIC;
  signal register_slice_inst_n_166 : STD_LOGIC;
  signal register_slice_inst_n_167 : STD_LOGIC;
  signal register_slice_inst_n_168 : STD_LOGIC;
  signal register_slice_inst_n_169 : STD_LOGIC;
  signal register_slice_inst_n_170 : STD_LOGIC;
  signal register_slice_inst_n_171 : STD_LOGIC;
  signal register_slice_inst_n_172 : STD_LOGIC;
  signal register_slice_inst_n_173 : STD_LOGIC;
  signal register_slice_inst_n_174 : STD_LOGIC;
  signal register_slice_inst_n_175 : STD_LOGIC;
  signal register_slice_inst_n_177 : STD_LOGIC;
  signal register_slice_inst_n_178 : STD_LOGIC;
  signal register_slice_inst_n_179 : STD_LOGIC;
  signal register_slice_inst_n_180 : STD_LOGIC;
  signal register_slice_inst_n_181 : STD_LOGIC;
  signal register_slice_inst_n_182 : STD_LOGIC;
  signal register_slice_inst_n_184 : STD_LOGIC;
  signal register_slice_inst_n_185 : STD_LOGIC;
  signal register_slice_inst_n_186 : STD_LOGIC;
  signal register_slice_inst_n_187 : STD_LOGIC;
  signal register_slice_inst_n_188 : STD_LOGIC;
  signal register_slice_inst_n_189 : STD_LOGIC;
  signal register_slice_inst_n_190 : STD_LOGIC;
  signal register_slice_inst_n_191 : STD_LOGIC;
  signal register_slice_inst_n_192 : STD_LOGIC;
  signal register_slice_inst_n_193 : STD_LOGIC;
  signal register_slice_inst_n_194 : STD_LOGIC;
  signal register_slice_inst_n_195 : STD_LOGIC;
  signal register_slice_inst_n_196 : STD_LOGIC;
  signal register_slice_inst_n_197 : STD_LOGIC;
  signal register_slice_inst_n_198 : STD_LOGIC;
  signal register_slice_inst_n_201 : STD_LOGIC;
  signal register_slice_inst_n_202 : STD_LOGIC;
  signal register_slice_inst_n_3 : STD_LOGIC;
  signal register_slice_inst_n_4 : STD_LOGIC;
  signal register_slice_inst_n_5 : STD_LOGIC;
  signal register_slice_inst_n_84 : STD_LOGIC;
  signal \^s_axi_bready\ : STD_LOGIC;
  signal \^s_axi_rready\ : STD_LOGIC;
  signal \^s_axi_wdata\ : STD_LOGIC_VECTOR ( 63 downto 0 );
  signal \^s_axi_wlast\ : STD_LOGIC;
  signal s_axi_wready_INST_0_i_1_n_0 : STD_LOGIC;
  signal \^s_axi_wstrb\ : STD_LOGIC_VECTOR ( 7 downto 0 );
  signal sr_axi_arready : STD_LOGIC;
  signal w_mask : STD_LOGIC;
  signal w_mask0 : STD_LOGIC;
  attribute FSM_ENCODED_STATES : string;
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_read.r_state_reg[1]\ : label is "R_PENDING:010,iSTATE:001,R_DECERR:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_read.r_state_reg[2]\ : label is "R_PENDING:010,iSTATE:001,R_DECERR:100";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_write.w_state_reg[1]\ : label is "W_DECERR:100,iSTATE:001,W_PENDING:010";
  attribute FSM_ENCODED_STATES of \FSM_onehot_gen_write.w_state_reg[2]\ : label is "W_DECERR:100,iSTATE:001,W_PENDING:010";
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[2]_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_10\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_4\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_write.aw_cnt[5]_i_7\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[0]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[2]_i_2\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[3]_i_1\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_3\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_7\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \gen_write.w_cnt[5]_i_8\ : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \gen_write.w_mask_i_2\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of m_axi_wvalid_INST_0 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of \s_axi_bresp[0]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_bresp[1]_INST_0\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \s_axi_rdata[0]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata[10]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rdata[11]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_rdata[12]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata[13]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata[14]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_rdata[15]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata[16]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_rdata[17]_INST_0\ : label is "soft_lutpair53";
  attribute SOFT_HLUTNM of \s_axi_rdata[18]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata[19]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata[1]_INST_0\ : label is "soft_lutpair60";
  attribute SOFT_HLUTNM of \s_axi_rdata[20]_INST_0\ : label is "soft_lutpair52";
  attribute SOFT_HLUTNM of \s_axi_rdata[21]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata[22]_INST_0\ : label is "soft_lutpair51";
  attribute SOFT_HLUTNM of \s_axi_rdata[23]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[24]_INST_0\ : label is "soft_lutpair50";
  attribute SOFT_HLUTNM of \s_axi_rdata[25]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata[26]_INST_0\ : label is "soft_lutpair49";
  attribute SOFT_HLUTNM of \s_axi_rdata[27]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata[28]_INST_0\ : label is "soft_lutpair48";
  attribute SOFT_HLUTNM of \s_axi_rdata[29]_INST_0\ : label is "soft_lutpair47";
  attribute SOFT_HLUTNM of \s_axi_rdata[2]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi_rdata[30]_INST_0\ : label is "soft_lutpair46";
  attribute SOFT_HLUTNM of \s_axi_rdata[31]_INST_0\ : label is "soft_lutpair45";
  attribute SOFT_HLUTNM of \s_axi_rdata[32]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata[33]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[34]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rdata[35]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata[36]_INST_0\ : label is "soft_lutpair44";
  attribute SOFT_HLUTNM of \s_axi_rdata[37]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata[38]_INST_0\ : label is "soft_lutpair43";
  attribute SOFT_HLUTNM of \s_axi_rdata[39]_INST_0\ : label is "soft_lutpair42";
  attribute SOFT_HLUTNM of \s_axi_rdata[3]_INST_0\ : label is "soft_lutpair59";
  attribute SOFT_HLUTNM of \s_axi_rdata[40]_INST_0\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \s_axi_rdata[41]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata[42]_INST_0\ : label is "soft_lutpair41";
  attribute SOFT_HLUTNM of \s_axi_rdata[43]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata[44]_INST_0\ : label is "soft_lutpair40";
  attribute SOFT_HLUTNM of \s_axi_rdata[45]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata[46]_INST_0\ : label is "soft_lutpair39";
  attribute SOFT_HLUTNM of \s_axi_rdata[47]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi_rdata[48]_INST_0\ : label is "soft_lutpair38";
  attribute SOFT_HLUTNM of \s_axi_rdata[49]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[4]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_rdata[50]_INST_0\ : label is "soft_lutpair37";
  attribute SOFT_HLUTNM of \s_axi_rdata[51]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata[52]_INST_0\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \s_axi_rdata[53]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata[54]_INST_0\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \s_axi_rdata[55]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[56]_INST_0\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \s_axi_rdata[57]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[58]_INST_0\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \s_axi_rdata[59]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[5]_INST_0\ : label is "soft_lutpair58";
  attribute SOFT_HLUTNM of \s_axi_rdata[60]_INST_0\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \s_axi_rdata[61]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[62]_INST_0\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \s_axi_rdata[63]_INST_0\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \s_axi_rdata[6]_INST_0\ : label is "soft_lutpair56";
  attribute SOFT_HLUTNM of \s_axi_rdata[7]_INST_0\ : label is "soft_lutpair55";
  attribute SOFT_HLUTNM of \s_axi_rdata[8]_INST_0\ : label is "soft_lutpair54";
  attribute SOFT_HLUTNM of \s_axi_rdata[9]_INST_0\ : label is "soft_lutpair57";
  attribute SOFT_HLUTNM of \s_axi_rresp[0]_INST_0\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \s_axi_rresp[1]_INST_0\ : label is "soft_lutpair27";
begin
  \^s_axi_bready\ <= s_axi_bready;
  \^s_axi_rready\ <= s_axi_rready;
  \^s_axi_wdata\(63 downto 0) <= s_axi_wdata(63 downto 0);
  \^s_axi_wlast\ <= s_axi_wlast;
  \^s_axi_wstrb\(7 downto 0) <= s_axi_wstrb(7 downto 0);
  m_axi_arid(3 downto 0) <= \^m_axi_arid\(3 downto 0);
  m_axi_arlen(7 downto 0) <= \^m_axi_arlen\(7 downto 0);
  m_axi_aruser(0) <= \<const0>\;
  m_axi_awid(3 downto 0) <= \^m_axi_awid\(3 downto 0);
  m_axi_awuser(0) <= \<const0>\;
  m_axi_bready <= \^s_axi_bready\;
  m_axi_rready <= \^s_axi_rready\;
  m_axi_wdata(63 downto 0) <= \^s_axi_wdata\(63 downto 0);
  m_axi_wid(3) <= \<const0>\;
  m_axi_wid(2) <= \<const0>\;
  m_axi_wid(1) <= \<const0>\;
  m_axi_wid(0) <= \<const0>\;
  m_axi_wlast <= \^s_axi_wlast\;
  m_axi_wstrb(7 downto 0) <= \^s_axi_wstrb\(7 downto 0);
  m_axi_wuser(0) <= \<const0>\;
  s_axi_buser(0) <= \<const0>\;
  s_axi_ruser(0) <= \<const0>\;
\FSM_onehot_gen_read.r_state[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(4),
      I1 => \gen_read.ar_cnt_reg__0\(2),
      I2 => \gen_read.ar_cnt_reg__0\(3),
      I3 => \gen_read.ar_cnt_reg__0\(1),
      I4 => \gen_read.ar_cnt_reg__0\(0),
      I5 => \gen_read.ar_cnt_reg__0\(5),
      O => \FSM_onehot_gen_read.r_state[2]_i_3_n_0\
    );
\FSM_onehot_gen_read.r_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => decerr_slave_inst_n_3,
      Q => r_state(1),
      R => register_slice_inst_n_1
    );
\FSM_onehot_gen_read.r_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_84,
      Q => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      R => register_slice_inst_n_1
    );
\FSM_onehot_gen_write.w_state_reg[1]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_5,
      Q => \FSM_onehot_gen_write.w_state_reg_n_0_[1]\,
      R => register_slice_inst_n_1
    );
\FSM_onehot_gen_write.w_state_reg[2]\: unisim.vcomponents.FDRE
    generic map(
      INIT => '0'
    )
        port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_4,
      Q => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      R => register_slice_inst_n_1
    );
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
decerr_slave_inst: entity work.meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave
     port map (
      \FSM_onehot_gen_read.r_state_reg[1]\ => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      \FSM_onehot_gen_read.r_state_reg[1]_0\ => \FSM_onehot_gen_read.r_state[2]_i_3_n_0\,
      \FSM_onehot_gen_read.r_state_reg[1]_1\ => register_slice_inst_n_201,
      \FSM_onehot_gen_read.r_state_reg[2]\ => decerr_slave_inst_n_3,
      Q(12 downto 9) => \^m_axi_arid\(3 downto 0),
      Q(8 downto 1) => \^m_axi_arlen\(7 downto 0),
      Q(0) => mr_axi_araddr(48),
      SR(0) => register_slice_inst_n_1,
      aclk => aclk,
      err_awready => err_awready,
      err_bvalid => err_bvalid,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.s_axi_arready_i_reg_0\ => register_slice_inst_n_3,
      \gen_axi.gen_read.s_axi_rlast_i_reg_0\ => decerr_slave_inst_n_4,
      \gen_axi.gen_read.s_axi_rlast_i_reg_1\ => register_slice_inst_n_202,
      \gen_axi.gen_write.s_axi_awready_i_reg_0\ => register_slice_inst_n_163,
      \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(4 downto 1) => \^m_axi_awid\(3 downto 0),
      \gen_axi.gen_write.s_axi_bid_i_reg[3]_0\(0) => mr_axi_awaddr(48),
      \gen_axi.gen_write.s_axi_wready_i_reg_0\ => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      m_axi_arready => m_axi_arready,
      m_axi_arready_0 => decerr_slave_inst_n_7,
      m_axi_awready => m_axi_awready,
      m_axi_awready_0 => decerr_slave_inst_n_5,
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wready => m_axi_wready,
      m_valid_i_reg => \FSM_onehot_gen_write.w_state_reg_n_0_[1]\,
      m_valid_i_reg_0(0) => \gen_read.ar_cnt_reg__0\(5),
      mr_axi_arvalid => mr_axi_arvalid,
      mr_axi_awvalid => mr_axi_awvalid,
      r_state(0) => r_state(1),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_arvalid_0 => decerr_slave_inst_n_6,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => \^s_axi_bready\,
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => \^s_axi_rready\,
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wlast => \^s_axi_wlast\,
      s_axi_wready => s_axi_wready,
      s_axi_wready_0 => s_axi_wready_INST_0_i_1_n_0,
      s_axi_wvalid => s_axi_wvalid,
      sr_axi_arready => sr_axi_arready
    );
\gen_read.ar_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_read.ar_cnt_reg__0\(0),
      O => \gen_read.ar_cnt[0]_i_1_n_0\
    );
\gen_read.ar_cnt[2]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFAEEEEEEE"
    )
        port map (
      I0 => register_slice_inst_n_194,
      I1 => register_slice_inst_n_198,
      I2 => register_slice_inst_n_197,
      I3 => register_slice_inst_n_196,
      I4 => register_slice_inst_n_195,
      I5 => \gen_read.ar_cnt[2]_i_5_n_0\,
      O => \gen_read.ar_cnt[2]_i_3_n_0\
    );
\gen_read.ar_cnt[2]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"7"
    )
        port map (
      I0 => s_axi_araddr(44),
      I1 => s_axi_araddr(43),
      O => \gen_read.ar_cnt[2]_i_5_n_0\
    );
\gen_read.ar_cnt[5]_i_3\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"8000"
    )
        port map (
      I0 => m_axi_rvalid,
      I1 => m_axi_rlast,
      I2 => \^s_axi_rready\,
      I3 => \FSM_onehot_gen_read.r_state[2]_i_3_n_0\,
      O => \gen_read.ar_cnt[5]_i_3_n_0\
    );
\gen_read.ar_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => \gen_read.ar_cnt[0]_i_1_n_0\,
      Q => \gen_read.ar_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => register_slice_inst_n_181,
      Q => \gen_read.ar_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => register_slice_inst_n_180,
      Q => \gen_read.ar_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => register_slice_inst_n_179,
      Q => \gen_read.ar_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => register_slice_inst_n_178,
      Q => \gen_read.ar_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_read.ar_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_182,
      D => register_slice_inst_n_177,
      Q => \gen_read.ar_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[0]_i_1_n_0\
    );
\gen_write.aw_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"80"
    )
        port map (
      I0 => m_axi_bvalid,
      I1 => \^s_axi_bready\,
      I2 => \gen_write.aw_cnt[5]_i_3_n_0\,
      O => \gen_write.aw_cnt[2]_i_2_n_0\
    );
\gen_write.aw_cnt[5]_i_10\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(0),
      I1 => \gen_write.aw_cnt_reg__0\(1),
      O => \gen_write.aw_cnt[5]_i_10_n_0\
    );
\gen_write.aw_cnt[5]_i_11\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0001"
    )
        port map (
      I0 => s_axi_awaddr(13),
      I1 => s_axi_awaddr(12),
      I2 => s_axi_awaddr(15),
      I3 => s_axi_awaddr(14),
      O => \gen_write.aw_cnt[5]_i_11_n_0\
    );
\gen_write.aw_cnt[5]_i_12\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_write.aw_cnt[5]_i_13_n_0\,
      I1 => register_slice_inst_n_193,
      I2 => \gen_write.aw_cnt[5]_i_14_n_0\,
      I3 => register_slice_inst_n_192,
      I4 => register_slice_inst_n_191,
      I5 => register_slice_inst_n_190,
      O => \gen_write.aw_cnt[5]_i_12_n_0\
    );
\gen_write.aw_cnt[5]_i_13\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => s_axi_awaddr(28),
      I1 => s_axi_awaddr(36),
      I2 => s_axi_awaddr(45),
      I3 => s_axi_awaddr(40),
      O => \gen_write.aw_cnt[5]_i_13_n_0\
    );
\gen_write.aw_cnt[5]_i_14\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => s_axi_awaddr(46),
      I1 => s_axi_awaddr(34),
      O => \gen_write.aw_cnt[5]_i_14_n_0\
    );
\gen_write.aw_cnt[5]_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(2),
      I1 => \gen_write.aw_cnt_reg__0\(3),
      I2 => \gen_write.aw_cnt_reg__0\(1),
      I3 => \gen_write.aw_cnt_reg__0\(0),
      I4 => \gen_write.aw_cnt_reg__0\(5),
      I5 => \gen_write.aw_cnt_reg__0\(4),
      O => \gen_write.aw_cnt[5]_i_3_n_0\
    );
\gen_write.aw_cnt[5]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s_axi_awvalid,
      I1 => \gen_write.aw_cnt_reg__0\(5),
      O => w_mask0
    );
\gen_write.aw_cnt[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(1),
      I1 => \gen_write.aw_cnt_reg__0\(0),
      O => \gen_write.aw_cnt[5]_i_7_n_0\
    );
\gen_write.aw_cnt[5]_i_8\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"00000000FF7FFFFF"
    )
        port map (
      I0 => register_slice_inst_n_184,
      I1 => \gen_write.aw_cnt[5]_i_11_n_0\,
      I2 => register_slice_inst_n_188,
      I3 => s_axi_awaddr(23),
      I4 => s_axi_awaddr(24),
      I5 => s_axi_awaddr(25),
      O => \gen_write.aw_cnt[5]_i_8_n_0\
    );
\gen_write.aw_cnt[5]_i_9\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DC00DDDD"
    )
        port map (
      I0 => register_slice_inst_n_185,
      I1 => register_slice_inst_n_172,
      I2 => register_slice_inst_n_186,
      I3 => \gen_write.aw_cnt[5]_i_12_n_0\,
      I4 => register_slice_inst_n_188,
      O => \gen_write.aw_cnt[5]_i_9_n_0\
    );
\gen_write.aw_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => \gen_write.aw_cnt[0]_i_1_n_0\,
      Q => \gen_write.aw_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => register_slice_inst_n_169,
      Q => \gen_write.aw_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => register_slice_inst_n_168,
      Q => \gen_write.aw_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => register_slice_inst_n_167,
      Q => \gen_write.aw_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => register_slice_inst_n_166,
      Q => \gen_write.aw_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_write.aw_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => register_slice_inst_n_174,
      D => register_slice_inst_n_165,
      Q => \gen_write.aw_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[0]_i_1_n_0\
    );
\gen_write.w_cnt[1]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFEF00100010FFEF"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => w_mask,
      I2 => w_mask0,
      I3 => register_slice_inst_n_170,
      I4 => \gen_write.w_cnt_reg__0\(1),
      I5 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[1]_i_1_n_0\
    );
\gen_write.w_cnt[2]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"EEEEE7EE11111811"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt[5]_i_3_n_0\,
      I3 => \gen_write.w_cnt[2]_i_2_n_0\,
      I4 => register_slice_inst_n_170,
      I5 => \gen_write.w_cnt_reg__0\(2),
      O => \gen_write.w_cnt[2]_i_1_n_0\
    );
\gen_write.w_cnt[2]_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \gen_write.aw_cnt_reg__0\(5),
      I1 => s_axi_awvalid,
      I2 => w_mask,
      O => \gen_write.w_cnt[2]_i_2_n_0\
    );
\gen_write.w_cnt[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"7FFE8001"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(2),
      I1 => \gen_write.w_cnt[4]_i_2_n_0\,
      I2 => \gen_write.w_cnt_reg__0\(1),
      I3 => \gen_write.w_cnt_reg__0\(0),
      I4 => \gen_write.w_cnt_reg__0\(3),
      O => \gen_write.w_cnt[3]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"7FFFFFFE80000001"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(0),
      I1 => \gen_write.w_cnt_reg__0\(1),
      I2 => \gen_write.w_cnt[4]_i_2_n_0\,
      I3 => \gen_write.w_cnt_reg__0\(2),
      I4 => \gen_write.w_cnt_reg__0\(3),
      I5 => \gen_write.w_cnt_reg__0\(4),
      O => \gen_write.w_cnt[4]_i_1_n_0\
    );
\gen_write.w_cnt[4]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"000000000F4F0000"
    )
        port map (
      I0 => register_slice_inst_n_172,
      I1 => register_slice_inst_n_173,
      I2 => register_slice_inst_n_171,
      I3 => \gen_write.aw_cnt[5]_i_8_n_0\,
      I4 => \gen_write.w_cnt[2]_i_2_n_0\,
      I5 => \gen_write.w_cnt[5]_i_3_n_0\,
      O => \gen_write.w_cnt[4]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"AAAAA9AA"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_3_n_0\,
      I1 => register_slice_inst_n_170,
      I2 => \gen_write.aw_cnt_reg__0\(5),
      I3 => s_axi_awvalid,
      I4 => w_mask,
      O => \gen_write.w_cnt[5]_i_1_n_0\
    );
\gen_write.w_cnt[5]_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"6AAA6AAA6AAA69A9"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(5),
      I1 => \gen_write.w_cnt_reg__0\(4),
      I2 => \gen_write.w_cnt_reg__0\(3),
      I3 => \gen_write.w_cnt[5]_i_4_n_0\,
      I4 => \gen_write.w_cnt_reg__0\(2),
      I5 => \gen_write.w_cnt[5]_i_5_n_0\,
      O => \gen_write.w_cnt[5]_i_2_n_0\
    );
\gen_write.w_cnt[5]_i_3\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00002000"
    )
        port map (
      I0 => s_axi_wvalid,
      I1 => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      I2 => m_axi_wready,
      I3 => \^s_axi_wlast\,
      I4 => s_axi_wready_INST_0_i_1_n_0,
      O => \gen_write.w_cnt[5]_i_3_n_0\
    );
\gen_write.w_cnt[5]_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000020000000000"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(2),
      I1 => \gen_write.aw_cnt[5]_i_9_n_0\,
      I2 => \gen_write.w_cnt[5]_i_6_n_0\,
      I3 => \gen_write.w_cnt[2]_i_2_n_0\,
      I4 => \gen_write.w_cnt[5]_i_3_n_0\,
      I5 => \gen_write.w_cnt[5]_i_7_n_0\,
      O => \gen_write.w_cnt[5]_i_4_n_0\
    );
\gen_write.w_cnt[5]_i_5\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"AAAAAAAAAABABABA"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_8_n_0\,
      I1 => \gen_write.w_cnt[5]_i_3_n_0\,
      I2 => \gen_write.w_cnt[2]_i_2_n_0\,
      I3 => \gen_write.aw_cnt[5]_i_8_n_0\,
      I4 => register_slice_inst_n_171,
      I5 => \gen_write.aw_cnt[5]_i_9_n_0\,
      O => \gen_write.w_cnt[5]_i_5_n_0\
    );
\gen_write.w_cnt[5]_i_6\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000051515111"
    )
        port map (
      I0 => \gen_write.w_cnt[5]_i_9_n_0\,
      I1 => register_slice_inst_n_188,
      I2 => \gen_write.aw_cnt[5]_i_12_n_0\,
      I3 => register_slice_inst_n_172,
      I4 => register_slice_inst_n_186,
      I5 => s_axi_awaddr(25),
      O => \gen_write.w_cnt[5]_i_6_n_0\
    );
\gen_write.w_cnt[5]_i_7\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_7_n_0\
    );
\gen_write.w_cnt[5]_i_8\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(1),
      I1 => \gen_write.w_cnt_reg__0\(0),
      O => \gen_write.w_cnt[5]_i_8_n_0\
    );
\gen_write.w_cnt[5]_i_9\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000400000000"
    )
        port map (
      I0 => register_slice_inst_n_187,
      I1 => \gen_write.aw_cnt[5]_i_11_n_0\,
      I2 => s_axi_awaddr(18),
      I3 => s_axi_awaddr(17),
      I4 => s_axi_awaddr(16),
      I5 => register_slice_inst_n_189,
      O => \gen_write.w_cnt[5]_i_9_n_0\
    );
\gen_write.w_cnt_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[0]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(0),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[1]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(1),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[2]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(2),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[3]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(3),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[4]_i_1_n_0\,
      Q => \gen_write.w_cnt_reg__0\(4),
      R => register_slice_inst_n_1
    );
\gen_write.w_cnt_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => \gen_write.w_cnt[5]_i_1_n_0\,
      D => \gen_write.w_cnt[5]_i_2_n_0\,
      Q => \gen_write.w_cnt_reg__0\(5),
      R => register_slice_inst_n_1
    );
\gen_write.w_mask_i_2\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \gen_write.aw_cnt[5]_i_3_n_0\,
      I1 => \FSM_onehot_gen_write.w_state_reg_n_0_[1]\,
      I2 => s_axi_wready_INST_0_i_1_n_0,
      O => \gen_write.w_mask_i_2_n_0\
    );
\gen_write.w_mask_reg\: unisim.vcomponents.FDRE
     port map (
      C => aclk,
      CE => '1',
      D => register_slice_inst_n_175,
      Q => w_mask,
      R => '0'
    );
m_axi_wvalid_INST_0: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      I1 => s_axi_wvalid,
      I2 => s_axi_wready_INST_0_i_1_n_0,
      O => m_axi_wvalid
    );
register_slice_inst: entity work.meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice
     port map (
      D(4) => register_slice_inst_n_165,
      D(3) => register_slice_inst_n_166,
      D(2) => register_slice_inst_n_167,
      D(1) => register_slice_inst_n_168,
      D(0) => register_slice_inst_n_169,
      E(0) => register_slice_inst_n_174,
      \FSM_onehot_gen_read.r_state_reg[1]\ => register_slice_inst_n_84,
      \FSM_onehot_gen_read.r_state_reg[2]\ => decerr_slave_inst_n_4,
      \FSM_onehot_gen_write.w_state_reg[1]\ => register_slice_inst_n_4,
      Q(77 downto 74) => m_axi_awqos(3 downto 0),
      Q(73 downto 70) => \^m_axi_awid\(3 downto 0),
      Q(69) => m_axi_awlock(0),
      Q(68 downto 61) => m_axi_awlen(7 downto 0),
      Q(60 downto 57) => m_axi_awcache(3 downto 0),
      Q(56 downto 55) => m_axi_awburst(1 downto 0),
      Q(54 downto 52) => m_axi_awsize(2 downto 0),
      Q(51 downto 49) => m_axi_awprot(2 downto 0),
      Q(48) => mr_axi_awaddr(48),
      Q(47 downto 0) => m_axi_awaddr(47 downto 0),
      SR(0) => register_slice_inst_n_1,
      aclk => aclk,
      aresetn => aresetn,
      \aresetn_d_reg[1]\ => register_slice_inst_n_3,
      err_awready => err_awready,
      err_bvalid => err_bvalid,
      err_rvalid => err_rvalid,
      \gen_axi.gen_read.read_cs_reg[0]\ => register_slice_inst_n_202,
      \gen_axi.gen_write.s_axi_awready_i_reg\ => register_slice_inst_n_163,
      \gen_read.ar_cnt_reg[2]\ => \gen_read.ar_cnt[2]_i_3_n_0\,
      \gen_read.ar_cnt_reg[5]\(4) => register_slice_inst_n_177,
      \gen_read.ar_cnt_reg[5]\(3) => register_slice_inst_n_178,
      \gen_read.ar_cnt_reg[5]\(2) => register_slice_inst_n_179,
      \gen_read.ar_cnt_reg[5]\(1) => register_slice_inst_n_180,
      \gen_read.ar_cnt_reg[5]\(0) => register_slice_inst_n_181,
      \gen_read.ar_cnt_reg[5]_0\(0) => register_slice_inst_n_182,
      \gen_read.ar_cnt_reg[5]_1\ => \gen_read.ar_cnt[5]_i_3_n_0\,
      \gen_write.aw_cnt_reg[2]\ => \gen_write.aw_cnt[2]_i_2_n_0\,
      \gen_write.aw_cnt_reg[4]\ => \gen_write.aw_cnt[5]_i_8_n_0\,
      \gen_write.aw_cnt_reg[5]\ => \gen_write.aw_cnt[5]_i_7_n_0\,
      \gen_write.aw_cnt_reg[5]_0\ => \gen_write.aw_cnt[5]_i_9_n_0\,
      \gen_write.aw_cnt_reg[5]_1\ => \gen_write.aw_cnt[5]_i_10_n_0\,
      \gen_write.aw_cnt_reg[5]_2\ => \gen_write.aw_cnt[5]_i_3_n_0\,
      \gen_write.w_mask_reg\ => register_slice_inst_n_175,
      \gen_write.w_mask_reg_0\ => \gen_write.w_mask_i_2_n_0\,
      m_axi_arvalid => m_axi_arvalid,
      m_axi_arvalid_0 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      m_axi_awvalid => m_axi_awvalid,
      m_axi_awvalid_0 => \FSM_onehot_gen_write.w_state_reg_n_0_[1]\,
      m_axi_awvalid_1 => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      m_axi_bvalid => m_axi_bvalid,
      \m_payload_i_reg[77]\(77 downto 74) => m_axi_arqos(3 downto 0),
      \m_payload_i_reg[77]\(73 downto 70) => \^m_axi_arid\(3 downto 0),
      \m_payload_i_reg[77]\(69) => m_axi_arlock(0),
      \m_payload_i_reg[77]\(68 downto 61) => \^m_axi_arlen\(7 downto 0),
      \m_payload_i_reg[77]\(60 downto 57) => m_axi_arcache(3 downto 0),
      \m_payload_i_reg[77]\(56 downto 55) => m_axi_arburst(1 downto 0),
      \m_payload_i_reg[77]\(54 downto 52) => m_axi_arsize(2 downto 0),
      \m_payload_i_reg[77]\(51 downto 49) => m_axi_arprot(2 downto 0),
      \m_payload_i_reg[77]\(48) => mr_axi_araddr(48),
      \m_payload_i_reg[77]\(47 downto 0) => m_axi_araddr(47 downto 0),
      \m_payload_i_reg[77]_0\(76 downto 73) => s_axi_arqos(3 downto 0),
      \m_payload_i_reg[77]_0\(72 downto 69) => s_axi_arid(3 downto 0),
      \m_payload_i_reg[77]_0\(68) => s_axi_arlock(0),
      \m_payload_i_reg[77]_0\(67 downto 60) => s_axi_arlen(7 downto 0),
      \m_payload_i_reg[77]_0\(59 downto 56) => s_axi_arcache(3 downto 0),
      \m_payload_i_reg[77]_0\(55 downto 54) => s_axi_arburst(1 downto 0),
      \m_payload_i_reg[77]_0\(53 downto 51) => s_axi_arsize(2 downto 0),
      \m_payload_i_reg[77]_0\(50 downto 48) => s_axi_arprot(2 downto 0),
      \m_payload_i_reg[77]_0\(47 downto 0) => s_axi_araddr(47 downto 0),
      \m_payload_i_reg[77]_1\(28 downto 25) => s_axi_awqos(3 downto 0),
      \m_payload_i_reg[77]_1\(24 downto 21) => s_axi_awid(3 downto 0),
      \m_payload_i_reg[77]_1\(20) => s_axi_awlock(0),
      \m_payload_i_reg[77]_1\(19 downto 12) => s_axi_awlen(7 downto 0),
      \m_payload_i_reg[77]_1\(11 downto 8) => s_axi_awcache(3 downto 0),
      \m_payload_i_reg[77]_1\(7 downto 6) => s_axi_awburst(1 downto 0),
      \m_payload_i_reg[77]_1\(5 downto 3) => s_axi_awsize(2 downto 0),
      \m_payload_i_reg[77]_1\(2 downto 0) => s_axi_awprot(2 downto 0),
      m_valid_i_reg => register_slice_inst_n_5,
      m_valid_i_reg_0 => register_slice_inst_n_201,
      m_valid_i_reg_1 => decerr_slave_inst_n_6,
      m_valid_i_reg_2 => decerr_slave_inst_n_5,
      mr_axi_arvalid => mr_axi_arvalid,
      mr_axi_awvalid => mr_axi_awvalid,
      r_state(0) => r_state(1),
      \s_axi_araddr[17]\ => register_slice_inst_n_196,
      \s_axi_araddr[21]\ => register_slice_inst_n_195,
      \s_axi_araddr[22]\ => register_slice_inst_n_197,
      \s_axi_araddr[23]\ => register_slice_inst_n_198,
      \s_axi_araddr[39]\ => register_slice_inst_n_194,
      s_axi_arready => s_axi_arready,
      s_axi_arready_0(5 downto 0) => \gen_read.ar_cnt_reg__0\(5 downto 0),
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(47 downto 0) => s_axi_awaddr(47 downto 0),
      \s_axi_awaddr[23]_0\ => register_slice_inst_n_191,
      \s_axi_awaddr[25]_0\ => register_slice_inst_n_171,
      \s_axi_awaddr[26]_0\ => register_slice_inst_n_185,
      \s_axi_awaddr[26]_1\ => register_slice_inst_n_188,
      s_axi_awaddr_16_sp_1 => register_slice_inst_n_184,
      s_axi_awaddr_22_sp_1 => register_slice_inst_n_189,
      s_axi_awaddr_23_sp_1 => register_slice_inst_n_186,
      s_axi_awaddr_24_sp_1 => register_slice_inst_n_187,
      s_axi_awaddr_25_sp_1 => register_slice_inst_n_170,
      s_axi_awaddr_26_sp_1 => register_slice_inst_n_173,
      s_axi_awaddr_29_sp_1 => register_slice_inst_n_193,
      s_axi_awaddr_30_sp_1 => register_slice_inst_n_192,
      s_axi_awaddr_32_sp_1 => register_slice_inst_n_172,
      s_axi_awaddr_44_sp_1 => register_slice_inst_n_190,
      s_axi_awready => s_axi_awready,
      s_axi_awready_0(5 downto 0) => \gen_write.aw_cnt_reg__0\(5 downto 0),
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bready => \^s_axi_bready\,
      s_ready_i_reg => decerr_slave_inst_n_7,
      sr_axi_arready => sr_axi_arready,
      w_mask => w_mask,
      w_mask0 => w_mask0
    );
\s_axi_bresp[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      I1 => m_axi_bresp(0),
      O => s_axi_bresp(0)
    );
\s_axi_bresp[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_gen_write.w_state_reg_n_0_[2]\,
      I1 => m_axi_bresp(1),
      O => s_axi_bresp(1)
    );
\s_axi_rdata[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(0),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(0)
    );
\s_axi_rdata[10]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(10),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(10)
    );
\s_axi_rdata[11]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(11),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(11)
    );
\s_axi_rdata[12]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(12),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(12)
    );
\s_axi_rdata[13]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(13),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(13)
    );
\s_axi_rdata[14]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(14),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(14)
    );
\s_axi_rdata[15]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(15),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(15)
    );
\s_axi_rdata[16]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(16),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(16)
    );
\s_axi_rdata[17]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(17),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(17)
    );
\s_axi_rdata[18]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(18),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(18)
    );
\s_axi_rdata[19]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(19),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(19)
    );
\s_axi_rdata[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(1),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(1)
    );
\s_axi_rdata[20]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(20),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(20)
    );
\s_axi_rdata[21]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(21),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(21)
    );
\s_axi_rdata[22]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(22),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(22)
    );
\s_axi_rdata[23]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(23),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(23)
    );
\s_axi_rdata[24]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(24),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(24)
    );
\s_axi_rdata[25]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(25),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(25)
    );
\s_axi_rdata[26]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(26),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(26)
    );
\s_axi_rdata[27]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(27),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(27)
    );
\s_axi_rdata[28]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(28),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(28)
    );
\s_axi_rdata[29]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(29),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(29)
    );
\s_axi_rdata[2]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(2),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(2)
    );
\s_axi_rdata[30]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(30),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(30)
    );
\s_axi_rdata[31]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(31),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(31)
    );
\s_axi_rdata[32]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(32),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(32)
    );
\s_axi_rdata[33]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(33),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(33)
    );
\s_axi_rdata[34]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(34),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(34)
    );
\s_axi_rdata[35]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(35),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(35)
    );
\s_axi_rdata[36]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(36),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(36)
    );
\s_axi_rdata[37]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(37),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(37)
    );
\s_axi_rdata[38]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(38),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(38)
    );
\s_axi_rdata[39]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(39),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(39)
    );
\s_axi_rdata[3]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(3),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(3)
    );
\s_axi_rdata[40]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(40),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(40)
    );
\s_axi_rdata[41]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(41),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(41)
    );
\s_axi_rdata[42]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(42),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(42)
    );
\s_axi_rdata[43]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(43),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(43)
    );
\s_axi_rdata[44]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(44),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(44)
    );
\s_axi_rdata[45]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(45),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(45)
    );
\s_axi_rdata[46]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(46),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(46)
    );
\s_axi_rdata[47]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(47),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(47)
    );
\s_axi_rdata[48]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(48),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(48)
    );
\s_axi_rdata[49]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(49),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(49)
    );
\s_axi_rdata[4]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(4),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(4)
    );
\s_axi_rdata[50]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(50),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(50)
    );
\s_axi_rdata[51]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(51),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(51)
    );
\s_axi_rdata[52]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(52),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(52)
    );
\s_axi_rdata[53]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(53),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(53)
    );
\s_axi_rdata[54]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(54),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(54)
    );
\s_axi_rdata[55]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(55),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(55)
    );
\s_axi_rdata[56]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(56),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(56)
    );
\s_axi_rdata[57]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(57),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(57)
    );
\s_axi_rdata[58]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(58),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(58)
    );
\s_axi_rdata[59]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(59),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(59)
    );
\s_axi_rdata[5]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(5),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(5)
    );
\s_axi_rdata[60]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(60),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(60)
    );
\s_axi_rdata[61]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(61),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(61)
    );
\s_axi_rdata[62]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(62),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(62)
    );
\s_axi_rdata[63]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(63),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(63)
    );
\s_axi_rdata[6]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(6),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(6)
    );
\s_axi_rdata[7]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(7),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(7)
    );
\s_axi_rdata[8]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(8),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(8)
    );
\s_axi_rdata[9]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => m_axi_rdata(9),
      I1 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      O => s_axi_rdata(9)
    );
\s_axi_rresp[0]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      I1 => m_axi_rresp(0),
      O => s_axi_rresp(0)
    );
\s_axi_rresp[1]_INST_0\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => \FSM_onehot_gen_read.r_state_reg_n_0_[2]\,
      I1 => m_axi_rresp(1),
      O => s_axi_rresp(1)
    );
s_axi_wready_INST_0_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000000001"
    )
        port map (
      I0 => \gen_write.w_cnt_reg__0\(4),
      I1 => \gen_write.w_cnt_reg__0\(5),
      I2 => \gen_write.w_cnt_reg__0\(2),
      I3 => \gen_write.w_cnt_reg__0\(3),
      I4 => \gen_write.w_cnt_reg__0\(0),
      I5 => \gen_write.w_cnt_reg__0\(1),
      O => s_axi_wready_INST_0_i_1_n_0
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity meowrouter_s01_mmu_0 is
  port (
    aclk : in STD_LOGIC;
    aresetn : in STD_LOGIC;
    s_axi_awid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awaddr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_awlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_awlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_awvalid : in STD_LOGIC;
    s_axi_awready : out STD_LOGIC;
    s_axi_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_wstrb : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_wlast : in STD_LOGIC;
    s_axi_wvalid : in STD_LOGIC;
    s_axi_wready : out STD_LOGIC;
    s_axi_bid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_bvalid : out STD_LOGIC;
    s_axi_bready : in STD_LOGIC;
    s_axi_arid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_araddr : in STD_LOGIC_VECTOR ( 47 downto 0 );
    s_axi_arlen : in STD_LOGIC_VECTOR ( 7 downto 0 );
    s_axi_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_arlock : in STD_LOGIC_VECTOR ( 0 to 0 );
    s_axi_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s_axi_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_arvalid : in STD_LOGIC;
    s_axi_arready : out STD_LOGIC;
    s_axi_rid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    s_axi_rdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    s_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s_axi_rlast : out STD_LOGIC;
    s_axi_rvalid : out STD_LOGIC;
    s_axi_rready : in STD_LOGIC;
    m_axi_awid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awaddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_awlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_awsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_awlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_awcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_awqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_awvalid : out STD_LOGIC;
    m_axi_awready : in STD_LOGIC;
    m_axi_wdata : out STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_wstrb : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_wlast : out STD_LOGIC;
    m_axi_wvalid : out STD_LOGIC;
    m_axi_wready : in STD_LOGIC;
    m_axi_bid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_bvalid : in STD_LOGIC;
    m_axi_bready : out STD_LOGIC;
    m_axi_arid : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_araddr : out STD_LOGIC_VECTOR ( 47 downto 0 );
    m_axi_arlen : out STD_LOGIC_VECTOR ( 7 downto 0 );
    m_axi_arsize : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arburst : out STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_arlock : out STD_LOGIC_VECTOR ( 0 to 0 );
    m_axi_arcache : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arprot : out STD_LOGIC_VECTOR ( 2 downto 0 );
    m_axi_arqos : out STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_arvalid : out STD_LOGIC;
    m_axi_arready : in STD_LOGIC;
    m_axi_rid : in STD_LOGIC_VECTOR ( 3 downto 0 );
    m_axi_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    m_axi_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    m_axi_rlast : in STD_LOGIC;
    m_axi_rvalid : in STD_LOGIC;
    m_axi_rready : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of meowrouter_s01_mmu_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of meowrouter_s01_mmu_0 : entity is "meowrouter_s01_mmu_0,axi_mmu_v2_1_16_top,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of meowrouter_s01_mmu_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of meowrouter_s01_mmu_0 : entity is "axi_mmu_v2_1_16_top,Vivado 2018.3_AR71898";
end meowrouter_s01_mmu_0;

architecture STRUCTURE of meowrouter_s01_mmu_0 is
  signal NLW_inst_m_axi_aruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_awuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_m_axi_wid_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_inst_m_axi_wuser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_buser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  signal NLW_inst_s_axi_ruser_UNCONNECTED : STD_LOGIC_VECTOR ( 0 to 0 );
  attribute C_AXI_ARUSER_WIDTH : integer;
  attribute C_AXI_ARUSER_WIDTH of inst : label is 1;
  attribute C_AXI_AWUSER_WIDTH : integer;
  attribute C_AXI_AWUSER_WIDTH of inst : label is 1;
  attribute C_AXI_BUSER_WIDTH : integer;
  attribute C_AXI_BUSER_WIDTH of inst : label is 1;
  attribute C_AXI_DATA_WIDTH : integer;
  attribute C_AXI_DATA_WIDTH of inst : label is 64;
  attribute C_AXI_ID_WIDTH : integer;
  attribute C_AXI_ID_WIDTH of inst : label is 4;
  attribute C_AXI_PROTOCOL : integer;
  attribute C_AXI_PROTOCOL of inst : label is 0;
  attribute C_AXI_RUSER_WIDTH : integer;
  attribute C_AXI_RUSER_WIDTH of inst : label is 1;
  attribute C_AXI_SUPPORTS_USER_SIGNALS : integer;
  attribute C_AXI_SUPPORTS_USER_SIGNALS of inst : label is 0;
  attribute C_AXI_WUSER_WIDTH : integer;
  attribute C_AXI_WUSER_WIDTH of inst : label is 1;
  attribute C_BASE_ADDR : string;
  attribute C_BASE_ADDR of inst : label is "384'b000000000000000011111111111111111111111111111111100000000000000000000000000000001111111111111111111100110000000000000000000000000000000000000000111111111111111111110010000000000000000000000000000000000000000011111111111111111111000100000000000000000000000000000000000000001111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000";
  attribute C_DEST : string;
  attribute C_DEST of inst : label is "6'b000000";
  attribute C_DEST_WIDTH : integer;
  attribute C_DEST_WIDTH of inst : label is 1;
  attribute C_FAMILY : string;
  attribute C_FAMILY of inst : label is "artix7";
  attribute C_M_AXI_ADDR_WIDTH : integer;
  attribute C_M_AXI_ADDR_WIDTH of inst : label is 48;
  attribute C_M_AXI_SUPPORTS_READ : string;
  attribute C_M_AXI_SUPPORTS_READ of inst : label is "6'b111111";
  attribute C_M_AXI_SUPPORTS_WRITE : string;
  attribute C_M_AXI_SUPPORTS_WRITE of inst : label is "6'b111111";
  attribute C_NUM_RANGES : integer;
  attribute C_NUM_RANGES of inst : label is 6;
  attribute C_PREFIX : string;
  attribute C_PREFIX of inst : label is "6'b000000";
  attribute C_PREFIX_WIDTH : integer;
  attribute C_PREFIX_WIDTH of inst : label is 1;
  attribute C_RANGE_SIZE : string;
  attribute C_RANGE_SIZE of inst : label is "192'b000000000000000000000000000011110000000000000000000000000001011100000000000000000000000000010000000000000000000000000000000011000000000000000000000000000001000000000000000000000000000000010110";
  attribute C_S_AXI_ADDR_WIDTH : integer;
  attribute C_S_AXI_ADDR_WIDTH of inst : label is 48;
  attribute C_S_AXI_SUPPORTS_READ : integer;
  attribute C_S_AXI_SUPPORTS_READ of inst : label is 1;
  attribute C_S_AXI_SUPPORTS_WRITE : integer;
  attribute C_S_AXI_SUPPORTS_WRITE of inst : label is 1;
  attribute C_USES_DEST : integer;
  attribute C_USES_DEST of inst : label is 0;
  attribute DowngradeIPIdentifiedWarnings of inst : label is "yes";
  attribute P_AXI3 : integer;
  attribute P_AXI3 of inst : label is 1;
  attribute P_AXI4 : integer;
  attribute P_AXI4 of inst : label is 0;
  attribute P_AXILITE : integer;
  attribute P_AXILITE of inst : label is 2;
  attribute P_DECERR : string;
  attribute P_DECERR of inst : label is "2'b11";
  attribute P_NUM_RANGES_LOG : integer;
  attribute P_NUM_RANGES_LOG of inst : label is 3;
  attribute R_DECERR : string;
  attribute R_DECERR of inst : label is "2'b11";
  attribute R_IDLE : string;
  attribute R_IDLE of inst : label is "2'b00";
  attribute R_PENDING : string;
  attribute R_PENDING of inst : label is "2'b01";
  attribute W_DECERR : string;
  attribute W_DECERR of inst : label is "2'b11";
  attribute W_IDLE : string;
  attribute W_IDLE of inst : label is "2'b00";
  attribute W_PENDING : string;
  attribute W_PENDING of inst : label is "2'b01";
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of aclk : signal is "xilinx.com:signal:clock:1.0 CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of aclk : signal is "XIL_INTERFACENAME CLK, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of aresetn : signal is "xilinx.com:signal:reset:1.0 RST RST";
  attribute X_INTERFACE_PARAMETER of aresetn : signal is "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT";
  attribute X_INTERFACE_INFO of m_axi_arready : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARREADY";
  attribute X_INTERFACE_INFO of m_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARVALID";
  attribute X_INTERFACE_INFO of m_axi_awready : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWREADY";
  attribute X_INTERFACE_INFO of m_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWVALID";
  attribute X_INTERFACE_INFO of m_axi_bready : signal is "xilinx.com:interface:aximm:1.0 M_AXI BREADY";
  attribute X_INTERFACE_INFO of m_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BVALID";
  attribute X_INTERFACE_INFO of m_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI RLAST";
  attribute X_INTERFACE_INFO of m_axi_rready : signal is "xilinx.com:interface:aximm:1.0 M_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of m_axi_rready : signal is "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of m_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RVALID";
  attribute X_INTERFACE_INFO of m_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 M_AXI WLAST";
  attribute X_INTERFACE_INFO of m_axi_wready : signal is "xilinx.com:interface:aximm:1.0 M_AXI WREADY";
  attribute X_INTERFACE_INFO of m_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 M_AXI WVALID";
  attribute X_INTERFACE_INFO of s_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARREADY";
  attribute X_INTERFACE_INFO of s_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARVALID";
  attribute X_INTERFACE_INFO of s_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWREADY";
  attribute X_INTERFACE_INFO of s_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWVALID";
  attribute X_INTERFACE_INFO of s_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S_AXI BREADY";
  attribute X_INTERFACE_INFO of s_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BVALID";
  attribute X_INTERFACE_INFO of s_axi_rlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI RLAST";
  attribute X_INTERFACE_INFO of s_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s_axi_rready : signal is "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  attribute X_INTERFACE_INFO of s_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RVALID";
  attribute X_INTERFACE_INFO of s_axi_wlast : signal is "xilinx.com:interface:aximm:1.0 S_AXI WLAST";
  attribute X_INTERFACE_INFO of s_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S_AXI WREADY";
  attribute X_INTERFACE_INFO of s_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S_AXI WVALID";
  attribute X_INTERFACE_INFO of m_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARADDR";
  attribute X_INTERFACE_INFO of m_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARBURST";
  attribute X_INTERFACE_INFO of m_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE";
  attribute X_INTERFACE_INFO of m_axi_arid : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARID";
  attribute X_INTERFACE_INFO of m_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLEN";
  attribute X_INTERFACE_INFO of m_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK";
  attribute X_INTERFACE_INFO of m_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARPROT";
  attribute X_INTERFACE_INFO of m_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARQOS";
  attribute X_INTERFACE_INFO of m_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE";
  attribute X_INTERFACE_INFO of m_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWADDR";
  attribute X_INTERFACE_INFO of m_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWBURST";
  attribute X_INTERFACE_INFO of m_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE";
  attribute X_INTERFACE_INFO of m_axi_awid : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWID";
  attribute X_INTERFACE_INFO of m_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLEN";
  attribute X_INTERFACE_INFO of m_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK";
  attribute X_INTERFACE_INFO of m_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWPROT";
  attribute X_INTERFACE_INFO of m_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWQOS";
  attribute X_INTERFACE_INFO of m_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE";
  attribute X_INTERFACE_INFO of m_axi_bid : signal is "xilinx.com:interface:aximm:1.0 M_AXI BID";
  attribute X_INTERFACE_INFO of m_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI BRESP";
  attribute X_INTERFACE_INFO of m_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI RDATA";
  attribute X_INTERFACE_INFO of m_axi_rid : signal is "xilinx.com:interface:aximm:1.0 M_AXI RID";
  attribute X_INTERFACE_INFO of m_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 M_AXI RRESP";
  attribute X_INTERFACE_INFO of m_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 M_AXI WDATA";
  attribute X_INTERFACE_INFO of m_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 M_AXI WSTRB";
  attribute X_INTERFACE_INFO of s_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARADDR";
  attribute X_INTERFACE_INFO of s_axi_arburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARBURST";
  attribute X_INTERFACE_INFO of s_axi_arcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE";
  attribute X_INTERFACE_INFO of s_axi_arid : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARID";
  attribute X_INTERFACE_INFO of s_axi_arlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLEN";
  attribute X_INTERFACE_INFO of s_axi_arlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK";
  attribute X_INTERFACE_INFO of s_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARPROT";
  attribute X_INTERFACE_INFO of s_axi_arqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARQOS";
  attribute X_INTERFACE_INFO of s_axi_arsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE";
  attribute X_INTERFACE_INFO of s_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWADDR";
  attribute X_INTERFACE_INFO of s_axi_awburst : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWBURST";
  attribute X_INTERFACE_INFO of s_axi_awcache : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE";
  attribute X_INTERFACE_INFO of s_axi_awid : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWID";
  attribute X_INTERFACE_INFO of s_axi_awlen : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLEN";
  attribute X_INTERFACE_INFO of s_axi_awlock : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK";
  attribute X_INTERFACE_INFO of s_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWPROT";
  attribute X_INTERFACE_INFO of s_axi_awqos : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWQOS";
  attribute X_INTERFACE_INFO of s_axi_awsize : signal is "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE";
  attribute X_INTERFACE_INFO of s_axi_bid : signal is "xilinx.com:interface:aximm:1.0 S_AXI BID";
  attribute X_INTERFACE_INFO of s_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI BRESP";
  attribute X_INTERFACE_INFO of s_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI RDATA";
  attribute X_INTERFACE_INFO of s_axi_rid : signal is "xilinx.com:interface:aximm:1.0 S_AXI RID";
  attribute X_INTERFACE_INFO of s_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S_AXI RRESP";
  attribute X_INTERFACE_INFO of s_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S_AXI WDATA";
  attribute X_INTERFACE_INFO of s_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S_AXI WSTRB";
begin
inst: entity work.meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top
     port map (
      aclk => aclk,
      aresetn => aresetn,
      m_axi_araddr(47 downto 0) => m_axi_araddr(47 downto 0),
      m_axi_arburst(1 downto 0) => m_axi_arburst(1 downto 0),
      m_axi_arcache(3 downto 0) => m_axi_arcache(3 downto 0),
      m_axi_arid(3 downto 0) => m_axi_arid(3 downto 0),
      m_axi_arlen(7 downto 0) => m_axi_arlen(7 downto 0),
      m_axi_arlock(0) => m_axi_arlock(0),
      m_axi_arprot(2 downto 0) => m_axi_arprot(2 downto 0),
      m_axi_arqos(3 downto 0) => m_axi_arqos(3 downto 0),
      m_axi_arready => m_axi_arready,
      m_axi_arsize(2 downto 0) => m_axi_arsize(2 downto 0),
      m_axi_aruser(0) => NLW_inst_m_axi_aruser_UNCONNECTED(0),
      m_axi_arvalid => m_axi_arvalid,
      m_axi_awaddr(47 downto 0) => m_axi_awaddr(47 downto 0),
      m_axi_awburst(1 downto 0) => m_axi_awburst(1 downto 0),
      m_axi_awcache(3 downto 0) => m_axi_awcache(3 downto 0),
      m_axi_awid(3 downto 0) => m_axi_awid(3 downto 0),
      m_axi_awlen(7 downto 0) => m_axi_awlen(7 downto 0),
      m_axi_awlock(0) => m_axi_awlock(0),
      m_axi_awprot(2 downto 0) => m_axi_awprot(2 downto 0),
      m_axi_awqos(3 downto 0) => m_axi_awqos(3 downto 0),
      m_axi_awready => m_axi_awready,
      m_axi_awsize(2 downto 0) => m_axi_awsize(2 downto 0),
      m_axi_awuser(0) => NLW_inst_m_axi_awuser_UNCONNECTED(0),
      m_axi_awvalid => m_axi_awvalid,
      m_axi_bid(3 downto 0) => m_axi_bid(3 downto 0),
      m_axi_bready => m_axi_bready,
      m_axi_bresp(1 downto 0) => m_axi_bresp(1 downto 0),
      m_axi_buser(0) => '0',
      m_axi_bvalid => m_axi_bvalid,
      m_axi_rdata(63 downto 0) => m_axi_rdata(63 downto 0),
      m_axi_rid(3 downto 0) => m_axi_rid(3 downto 0),
      m_axi_rlast => m_axi_rlast,
      m_axi_rready => m_axi_rready,
      m_axi_rresp(1 downto 0) => m_axi_rresp(1 downto 0),
      m_axi_ruser(0) => '0',
      m_axi_rvalid => m_axi_rvalid,
      m_axi_wdata(63 downto 0) => m_axi_wdata(63 downto 0),
      m_axi_wid(3 downto 0) => NLW_inst_m_axi_wid_UNCONNECTED(3 downto 0),
      m_axi_wlast => m_axi_wlast,
      m_axi_wready => m_axi_wready,
      m_axi_wstrb(7 downto 0) => m_axi_wstrb(7 downto 0),
      m_axi_wuser(0) => NLW_inst_m_axi_wuser_UNCONNECTED(0),
      m_axi_wvalid => m_axi_wvalid,
      s_axi_araddr(47 downto 0) => s_axi_araddr(47 downto 0),
      s_axi_arburst(1 downto 0) => s_axi_arburst(1 downto 0),
      s_axi_arcache(3 downto 0) => s_axi_arcache(3 downto 0),
      s_axi_arid(3 downto 0) => s_axi_arid(3 downto 0),
      s_axi_arlen(7 downto 0) => s_axi_arlen(7 downto 0),
      s_axi_arlock(0) => s_axi_arlock(0),
      s_axi_arprot(2 downto 0) => s_axi_arprot(2 downto 0),
      s_axi_arqos(3 downto 0) => s_axi_arqos(3 downto 0),
      s_axi_arready => s_axi_arready,
      s_axi_arsize(2 downto 0) => s_axi_arsize(2 downto 0),
      s_axi_aruser(0) => '0',
      s_axi_arvalid => s_axi_arvalid,
      s_axi_awaddr(47 downto 0) => s_axi_awaddr(47 downto 0),
      s_axi_awburst(1 downto 0) => s_axi_awburst(1 downto 0),
      s_axi_awcache(3 downto 0) => s_axi_awcache(3 downto 0),
      s_axi_awid(3 downto 0) => s_axi_awid(3 downto 0),
      s_axi_awlen(7 downto 0) => s_axi_awlen(7 downto 0),
      s_axi_awlock(0) => s_axi_awlock(0),
      s_axi_awprot(2 downto 0) => s_axi_awprot(2 downto 0),
      s_axi_awqos(3 downto 0) => s_axi_awqos(3 downto 0),
      s_axi_awready => s_axi_awready,
      s_axi_awsize(2 downto 0) => s_axi_awsize(2 downto 0),
      s_axi_awuser(0) => '0',
      s_axi_awvalid => s_axi_awvalid,
      s_axi_bid(3 downto 0) => s_axi_bid(3 downto 0),
      s_axi_bready => s_axi_bready,
      s_axi_bresp(1 downto 0) => s_axi_bresp(1 downto 0),
      s_axi_buser(0) => NLW_inst_s_axi_buser_UNCONNECTED(0),
      s_axi_bvalid => s_axi_bvalid,
      s_axi_rdata(63 downto 0) => s_axi_rdata(63 downto 0),
      s_axi_rid(3 downto 0) => s_axi_rid(3 downto 0),
      s_axi_rlast => s_axi_rlast,
      s_axi_rready => s_axi_rready,
      s_axi_rresp(1 downto 0) => s_axi_rresp(1 downto 0),
      s_axi_ruser(0) => NLW_inst_s_axi_ruser_UNCONNECTED(0),
      s_axi_rvalid => s_axi_rvalid,
      s_axi_wdata(63 downto 0) => s_axi_wdata(63 downto 0),
      s_axi_wid(3 downto 0) => B"0000",
      s_axi_wlast => s_axi_wlast,
      s_axi_wready => s_axi_wready,
      s_axi_wstrb(7 downto 0) => s_axi_wstrb(7 downto 0),
      s_axi_wuser(0) => '0',
      s_axi_wvalid => s_axi_wvalid
    );
end STRUCTURE;
