// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.3_AR71898 (win64) Build 2405991 Thu Dec  6 23:38:27 MST 2018
// Date        : Sat Nov 16 20:35:23 2019
// Host        : DESKTOP-39BAGNG running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top meowrouter_s01_mmu_0 -prefix
//               meowrouter_s01_mmu_0_ meowrouter_s01_mmu_0_sim_netlist.v
// Design      : meowrouter_s01_mmu_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tfgg676-2L
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave
   (err_awready,
    err_bvalid,
    err_rvalid,
    \FSM_onehot_gen_read.r_state_reg[2] ,
    \gen_axi.gen_read.s_axi_rlast_i_reg_0 ,
    m_axi_awready_0,
    s_axi_arvalid_0,
    m_axi_arready_0,
    s_axi_wready,
    s_axi_bid,
    s_axi_bvalid,
    s_axi_rid,
    s_axi_rlast,
    s_axi_rvalid,
    SR,
    aclk,
    \FSM_onehot_gen_read.r_state_reg[1] ,
    r_state,
    \gen_axi.gen_read.s_axi_arready_i_reg_0 ,
    s_axi_rready,
    mr_axi_arvalid,
    Q,
    \FSM_onehot_gen_read.r_state_reg[1]_0 ,
    \FSM_onehot_gen_read.r_state_reg[1]_1 ,
    mr_axi_awvalid,
    \gen_axi.gen_write.s_axi_bid_i_reg[3]_0 ,
    \gen_axi.gen_write.s_axi_wready_i_reg_0 ,
    m_axi_awready,
    m_valid_i_reg,
    s_axi_arvalid,
    sr_axi_arready,
    m_valid_i_reg_0,
    m_axi_arready,
    s_axi_wready_0,
    m_axi_wready,
    s_axi_wlast,
    s_axi_wvalid,
    m_axi_bid,
    m_axi_bvalid,
    m_axi_rid,
    m_axi_rlast,
    m_axi_rvalid,
    \gen_axi.gen_write.s_axi_awready_i_reg_0 ,
    s_axi_bready,
    \gen_axi.gen_read.s_axi_rlast_i_reg_1 );
  output err_awready;
  output err_bvalid;
  output err_rvalid;
  output \FSM_onehot_gen_read.r_state_reg[2] ;
  output \gen_axi.gen_read.s_axi_rlast_i_reg_0 ;
  output m_axi_awready_0;
  output s_axi_arvalid_0;
  output m_axi_arready_0;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output s_axi_bvalid;
  output [3:0]s_axi_rid;
  output s_axi_rlast;
  output s_axi_rvalid;
  input [0:0]SR;
  input aclk;
  input \FSM_onehot_gen_read.r_state_reg[1] ;
  input [0:0]r_state;
  input \gen_axi.gen_read.s_axi_arready_i_reg_0 ;
  input s_axi_rready;
  input mr_axi_arvalid;
  input [12:0]Q;
  input \FSM_onehot_gen_read.r_state_reg[1]_0 ;
  input \FSM_onehot_gen_read.r_state_reg[1]_1 ;
  input mr_axi_awvalid;
  input [4:0]\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 ;
  input \gen_axi.gen_write.s_axi_wready_i_reg_0 ;
  input m_axi_awready;
  input m_valid_i_reg;
  input s_axi_arvalid;
  input sr_axi_arready;
  input [0:0]m_valid_i_reg_0;
  input m_axi_arready;
  input s_axi_wready_0;
  input m_axi_wready;
  input s_axi_wlast;
  input s_axi_wvalid;
  input [3:0]m_axi_bid;
  input m_axi_bvalid;
  input [3:0]m_axi_rid;
  input m_axi_rlast;
  input m_axi_rvalid;
  input \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  input s_axi_bready;
  input \gen_axi.gen_read.s_axi_rlast_i_reg_1 ;

  wire \FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0 ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ;
  wire \FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ;
  wire \FSM_onehot_gen_read.r_state[2]_i_4_n_0 ;
  wire \FSM_onehot_gen_read.r_state_reg[1] ;
  wire \FSM_onehot_gen_read.r_state_reg[1]_0 ;
  wire \FSM_onehot_gen_read.r_state_reg[1]_1 ;
  wire \FSM_onehot_gen_read.r_state_reg[2] ;
  wire [12:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire err_arready;
  wire err_awready;
  wire [3:0]err_bid;
  wire err_bvalid;
  wire [3:0]err_rid;
  wire err_rlast;
  wire err_rvalid;
  wire err_wready;
  wire \gen_axi.gen_read.read_cnt[4]_i_2_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_1_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_3_n_0 ;
  wire \gen_axi.gen_read.read_cnt[7]_i_4_n_0 ;
  wire [7:1]\gen_axi.gen_read.read_cnt_reg__0 ;
  wire [0:0]\gen_axi.gen_read.read_cnt_reg__1 ;
  wire \gen_axi.gen_read.read_cs[0]_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_arready_i_reg_0 ;
  wire \gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg_0 ;
  wire \gen_axi.gen_read.s_axi_rlast_i_reg_1 ;
  wire \gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg_0 ;
  wire \gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ;
  wire [4:0]\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 ;
  wire \gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ;
  wire \gen_axi.gen_write.s_axi_wready_i_reg_0 ;
  wire m_axi_arready;
  wire m_axi_arready_0;
  wire m_axi_awready;
  wire m_axi_awready_0;
  wire [3:0]m_axi_bid;
  wire m_axi_bvalid;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_valid_i_reg;
  wire [0:0]m_valid_i_reg_0;
  wire mr_axi_arvalid;
  wire mr_axi_awvalid;
  wire [7:0]p_0_in;
  wire [0:0]r_state;
  wire s_axi_arvalid;
  wire s_axi_arvalid_0;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire s_axi_bvalid;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire s_axi_rvalid;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_0;
  wire s_axi_wvalid;
  wire sr_axi_arready;

  LUT5 #(
    .INIT(32'hCCCFCCC8)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1 
       (.I0(s_axi_bready),
        .I1(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ),
        .I3(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .I4(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .O(\FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAABFAAAAAA80)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1 
       (.I0(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .I1(s_axi_bready),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ),
        .I4(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .I5(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .O(\FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAAAB0)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2 
       (.I0(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I1(s_axi_bready),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .I3(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ),
        .I4(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .O(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3 
       (.I0(s_axi_wlast),
        .I1(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I2(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I3(s_axi_wvalid),
        .O(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDSE #(
    .INIT(1'b1)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs[0]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .S(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs[1]_i_1_n_0 ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .R(SR));
  (* FSM_ENCODED_STATES = "P_WRITE_IDLE:001,P_WRITE_DATA:010,P_WRITE_RESP:100," *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_axi.gen_write.write_cs_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_2_n_0 ),
        .Q(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_onehot_gen_read.r_state[1]_i_1 
       (.I0(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I1(\gen_axi.gen_read.s_axi_rlast_i_reg_0 ),
        .I2(r_state),
        .O(\FSM_onehot_gen_read.r_state_reg[2] ));
  LUT6 #(
    .INIT(64'hD5C055FFD5C05500)) 
    \FSM_onehot_gen_read.r_state[2]_i_2 
       (.I0(\FSM_onehot_gen_read.r_state_reg[1]_0 ),
        .I1(err_rlast),
        .I2(\FSM_onehot_gen_read.r_state[2]_i_4_n_0 ),
        .I3(r_state),
        .I4(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I5(\FSM_onehot_gen_read.r_state_reg[1]_1 ),
        .O(\gen_axi.gen_read.s_axi_rlast_i_reg_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \FSM_onehot_gen_read.r_state[2]_i_4 
       (.I0(s_axi_rready),
        .I1(err_rvalid),
        .O(\FSM_onehot_gen_read.r_state[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h74)) 
    \gen_axi.gen_read.read_cnt[0]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I1(err_rvalid),
        .I2(Q[1]),
        .O(p_0_in[0]));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT4 #(
    .INIT(16'hE22E)) 
    \gen_axi.gen_read.read_cnt[1]_i_1 
       (.I0(Q[2]),
        .I1(err_rvalid),
        .I2(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .O(p_0_in[1]));
  LUT5 #(
    .INIT(32'hFCAA03AA)) 
    \gen_axi.gen_read.read_cnt[2]_i_1 
       (.I0(Q[3]),
        .I1(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .I3(err_rvalid),
        .I4(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .O(p_0_in[2]));
  LUT6 #(
    .INIT(64'hFFFCAAAA0003AAAA)) 
    \gen_axi.gen_read.read_cnt[3]_i_1 
       (.I0(Q[4]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .I2(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .I4(err_rvalid),
        .I5(\gen_axi.gen_read.read_cnt_reg__0 [3]),
        .O(p_0_in[3]));
  LUT6 #(
    .INIT(64'hFCFFAAAA0300AAAA)) 
    \gen_axi.gen_read.read_cnt[4]_i_1 
       (.I0(Q[5]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [3]),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .I3(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ),
        .I4(err_rvalid),
        .I5(\gen_axi.gen_read.read_cnt_reg__0 [4]),
        .O(p_0_in[4]));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \gen_axi.gen_read.read_cnt[4]_i_2 
       (.I0(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .O(\gen_axi.gen_read.read_cnt[4]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'h3ACA)) 
    \gen_axi.gen_read.read_cnt[5]_i_1 
       (.I0(Q[6]),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I2(err_rvalid),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .O(p_0_in[5]));
  LUT5 #(
    .INIT(32'hF3AA0CAA)) 
    \gen_axi.gen_read.read_cnt[6]_i_1 
       (.I0(Q[7]),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .I3(err_rvalid),
        .I4(\gen_axi.gen_read.read_cnt_reg__0 [6]),
        .O(p_0_in[6]));
  LUT4 #(
    .INIT(16'hFF80)) 
    \gen_axi.gen_read.read_cnt[7]_i_1 
       (.I0(s_axi_rready),
        .I1(err_rvalid),
        .I2(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ),
        .I3(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .O(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFCFFAAAA0300AAAA)) 
    \gen_axi.gen_read.read_cnt[7]_i_2 
       (.I0(Q[8]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [6]),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .I3(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I4(err_rvalid),
        .I5(\gen_axi.gen_read.read_cnt_reg__0 [7]),
        .O(p_0_in[7]));
  LUT4 #(
    .INIT(16'hFFFB)) 
    \gen_axi.gen_read.read_cnt[7]_i_3 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 [7]),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [6]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \gen_axi.gen_read.read_cnt[7]_i_4 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .I1(\gen_axi.gen_read.read_cnt_reg__1 ),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [3]),
        .I4(\gen_axi.gen_read.read_cnt_reg__0 [4]),
        .O(\gen_axi.gen_read.read_cnt[7]_i_4_n_0 ));
  FDRE \gen_axi.gen_read.read_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[0]),
        .Q(\gen_axi.gen_read.read_cnt_reg__1 ),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[1]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[2]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[3]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [3]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[4]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [4]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[5]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[6] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[6]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [6]),
        .R(SR));
  FDRE \gen_axi.gen_read.read_cnt_reg[7] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.read_cnt[7]_i_1_n_0 ),
        .D(p_0_in[7]),
        .Q(\gen_axi.gen_read.read_cnt_reg__0 [7]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hFFB0)) 
    \gen_axi.gen_read.read_cs[0]_i_1 
       (.I0(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ),
        .I1(s_axi_rready),
        .I2(err_rvalid),
        .I3(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .O(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.read_cs_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.read_cs[0]_i_1_n_0 ),
        .Q(err_rvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'h00000000AAAA08AA)) 
    \gen_axi.gen_read.s_axi_arready_i_i_1 
       (.I0(\gen_axi.gen_read.s_axi_arready_i_reg_0 ),
        .I1(s_axi_rready),
        .I2(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ),
        .I3(err_rvalid),
        .I4(err_arready),
        .I5(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .O(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_read.s_axi_arready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_arready_i_i_1_n_0 ),
        .Q(err_arready),
        .R(1'b0));
  LUT5 #(
    .INIT(32'h00004000)) 
    \gen_axi.gen_read.s_axi_rid_i[3]_i_1 
       (.I0(err_rvalid),
        .I1(err_arready),
        .I2(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I3(mr_axi_arvalid),
        .I4(Q[0]),
        .O(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ));
  FDRE \gen_axi.gen_read.s_axi_rid_i_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .D(Q[9]),
        .Q(err_rid[0]),
        .R(SR));
  FDRE \gen_axi.gen_read.s_axi_rid_i_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .D(Q[10]),
        .Q(err_rid[1]),
        .R(SR));
  FDRE \gen_axi.gen_read.s_axi_rid_i_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .D(Q[11]),
        .Q(err_rid[2]),
        .R(SR));
  FDRE \gen_axi.gen_read.s_axi_rid_i_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .D(Q[12]),
        .Q(err_rid[3]),
        .R(SR));
  LUT5 #(
    .INIT(32'hF8FFF800)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_1 
       (.I0(err_rvalid),
        .I1(\gen_axi.gen_read.read_cnt[7]_i_3_n_0 ),
        .I2(\gen_axi.gen_read.s_axi_rlast_i_reg_1 ),
        .I3(\gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ),
        .I4(err_rlast),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0100)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_3 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 [3]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [2]),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [1]),
        .I3(\gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ),
        .I4(\gen_axi.gen_read.s_axi_rid_i[3]_i_1_n_0 ),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_5 
       (.I0(\gen_axi.gen_read.read_cnt_reg__0 [4]),
        .I1(\gen_axi.gen_read.read_cnt_reg__0 [5]),
        .I2(\gen_axi.gen_read.read_cnt_reg__0 [6]),
        .I3(\gen_axi.gen_read.read_cnt_reg__0 [7]),
        .I4(err_rvalid),
        .I5(s_axi_rready),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_5_n_0 ));
  FDRE \gen_axi.gen_read.s_axi_rlast_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_read.s_axi_rlast_i_i_1_n_0 ),
        .Q(err_rlast),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFBFBFBFFFB0B0B0)) 
    \gen_axi.gen_write.s_axi_awready_i_i_1 
       (.I0(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I1(\gen_axi.gen_write.s_axi_awready_i_reg_0 ),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .I3(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .I4(s_axi_bready),
        .I5(err_awready),
        .O(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_awready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_awready_i_i_1_n_0 ),
        .Q(err_awready),
        .R(SR));
  LUT5 #(
    .INIT(32'h08000000)) 
    \gen_axi.gen_write.s_axi_bid_i[3]_i_1 
       (.I0(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[0] ),
        .I1(mr_axi_awvalid),
        .I2(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [0]),
        .I3(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I4(err_awready),
        .O(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[0] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .D(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [1]),
        .Q(err_bid[0]),
        .R(SR));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[1] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .D(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [2]),
        .Q(err_bid[1]),
        .R(SR));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[2] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .D(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [3]),
        .Q(err_bid[2]),
        .R(SR));
  FDRE \gen_axi.gen_write.s_axi_bid_i_reg[3] 
       (.C(aclk),
        .CE(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .D(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [4]),
        .Q(err_bid[3]),
        .R(SR));
  LUT4 #(
    .INIT(16'hBFAA)) 
    \gen_axi.gen_write.s_axi_bvalid_i_i_1 
       (.I0(\FSM_onehot_gen_axi.gen_write.write_cs[2]_i_3_n_0 ),
        .I1(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[2] ),
        .I2(s_axi_bready),
        .I3(err_bvalid),
        .O(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_bvalid_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_bvalid_i_i_1_n_0 ),
        .Q(err_bvalid),
        .R(SR));
  LUT6 #(
    .INIT(64'hFFFF7FFFFFFF0000)) 
    \gen_axi.gen_write.s_axi_wready_i_i_1 
       (.I0(s_axi_wvalid),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(\FSM_onehot_gen_axi.gen_write.write_cs_reg_n_0_[1] ),
        .I3(s_axi_wlast),
        .I4(\gen_axi.gen_write.s_axi_bid_i[3]_i_1_n_0 ),
        .I5(err_wready),
        .O(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \gen_axi.gen_write.s_axi_wready_i_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(\gen_axi.gen_write.s_axi_wready_i_i_1_n_0 ),
        .Q(err_wready),
        .R(SR));
  LUT4 #(
    .INIT(16'h05C5)) 
    m_valid_i_i_1__0
       (.I0(m_axi_arready_0),
        .I1(s_axi_arvalid),
        .I2(sr_axi_arready),
        .I3(m_valid_i_reg_0),
        .O(s_axi_arvalid_0));
  LUT5 #(
    .INIT(32'h000022C0)) 
    m_valid_i_i_2
       (.I0(m_axi_awready),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(err_awready),
        .I3(\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 [0]),
        .I4(m_valid_i_reg),
        .O(m_axi_awready_0));
  LUT5 #(
    .INIT(32'h00000CA0)) 
    m_valid_i_i_2__0
       (.I0(m_axi_arready),
        .I1(err_arready),
        .I2(Q[0]),
        .I3(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I4(r_state),
        .O(m_axi_arready_0));
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bid[0]_INST_0 
       (.I0(err_bid[0]),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(m_axi_bid[0]),
        .O(s_axi_bid[0]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bid[1]_INST_0 
       (.I0(err_bid[1]),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(m_axi_bid[1]),
        .O(s_axi_bid[1]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bid[2]_INST_0 
       (.I0(err_bid[2]),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(m_axi_bid[2]),
        .O(s_axi_bid[2]));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_bid[3]_INST_0 
       (.I0(err_bid[3]),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(m_axi_bid[3]),
        .O(s_axi_bid[3]));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_bvalid_INST_0
       (.I0(err_bvalid),
        .I1(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .I2(m_axi_bvalid),
        .O(s_axi_bvalid));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rid[0]_INST_0 
       (.I0(err_rid[0]),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rid[0]),
        .O(s_axi_rid[0]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rid[1]_INST_0 
       (.I0(err_rid[1]),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rid[1]),
        .O(s_axi_rid[1]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rid[2]_INST_0 
       (.I0(err_rid[2]),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rid[2]),
        .O(s_axi_rid[2]));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \s_axi_rid[3]_INST_0 
       (.I0(err_rid[3]),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rid[3]),
        .O(s_axi_rid[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rlast_INST_0
       (.I0(err_rlast),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rlast),
        .O(s_axi_rlast));
  LUT3 #(
    .INIT(8'hB8)) 
    s_axi_rvalid_INST_0
       (.I0(err_rvalid),
        .I1(\FSM_onehot_gen_read.r_state_reg[1] ),
        .I2(m_axi_rvalid),
        .O(s_axi_rvalid));
  LUT4 #(
    .INIT(16'hAA30)) 
    s_axi_wready_INST_0
       (.I0(err_wready),
        .I1(s_axi_wready_0),
        .I2(m_axi_wready),
        .I3(\gen_axi.gen_write.s_axi_wready_i_reg_0 ),
        .O(s_axi_wready));
endmodule

(* C_AXI_ARUSER_WIDTH = "1" *) (* C_AXI_AWUSER_WIDTH = "1" *) (* C_AXI_BUSER_WIDTH = "1" *) 
(* C_AXI_DATA_WIDTH = "64" *) (* C_AXI_ID_WIDTH = "4" *) (* C_AXI_PROTOCOL = "0" *) 
(* C_AXI_RUSER_WIDTH = "1" *) (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) (* C_AXI_WUSER_WIDTH = "1" *) 
(* C_BASE_ADDR = "384'b000000000000000011111111111111111111111111111111100000000000000000000000000000001111111111111111111100110000000000000000000000000000000000000000111111111111111111110010000000000000000000000000000000000000000011111111111111111111000100000000000000000000000000000000000000001111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_DEST = "6'b000000" *) (* C_DEST_WIDTH = "1" *) 
(* C_FAMILY = "artix7" *) (* C_M_AXI_ADDR_WIDTH = "48" *) (* C_M_AXI_SUPPORTS_READ = "6'b111111" *) 
(* C_M_AXI_SUPPORTS_WRITE = "6'b111111" *) (* C_NUM_RANGES = "6" *) (* C_PREFIX = "6'b000000" *) 
(* C_PREFIX_WIDTH = "1" *) (* C_RANGE_SIZE = "192'b000000000000000000000000000011110000000000000000000000000001011100000000000000000000000000010000000000000000000000000000000011000000000000000000000000000001000000000000000000000000000000010110" *) (* C_S_AXI_ADDR_WIDTH = "48" *) 
(* C_S_AXI_SUPPORTS_READ = "1" *) (* C_S_AXI_SUPPORTS_WRITE = "1" *) (* C_USES_DEST = "0" *) 
(* DowngradeIPIdentifiedWarnings = "yes" *) (* P_AXI3 = "1" *) (* P_AXI4 = "0" *) 
(* P_AXILITE = "2" *) (* P_DECERR = "2'b11" *) (* P_NUM_RANGES_LOG = "3" *) 
(* R_DECERR = "2'b11" *) (* R_IDLE = "2'b00" *) (* R_PENDING = "2'b01" *) 
(* W_DECERR = "2'b11" *) (* W_IDLE = "2'b00" *) (* W_PENDING = "2'b01" *) 
module meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awuser,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wid,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wuser,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_buser,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_aruser,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_ruser,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awuser,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wid,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wuser,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_buser,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_aruser,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_ruser,
    m_axi_rvalid,
    m_axi_rready);
  input aclk;
  input aresetn;
  input [3:0]s_axi_awid;
  input [47:0]s_axi_awaddr;
  input [7:0]s_axi_awlen;
  input [2:0]s_axi_awsize;
  input [1:0]s_axi_awburst;
  input [0:0]s_axi_awlock;
  input [3:0]s_axi_awcache;
  input [2:0]s_axi_awprot;
  input [3:0]s_axi_awqos;
  input [0:0]s_axi_awuser;
  input s_axi_awvalid;
  output s_axi_awready;
  input [3:0]s_axi_wid;
  input [63:0]s_axi_wdata;
  input [7:0]s_axi_wstrb;
  input s_axi_wlast;
  input [0:0]s_axi_wuser;
  input s_axi_wvalid;
  output s_axi_wready;
  output [3:0]s_axi_bid;
  output [1:0]s_axi_bresp;
  output [0:0]s_axi_buser;
  output s_axi_bvalid;
  input s_axi_bready;
  input [3:0]s_axi_arid;
  input [47:0]s_axi_araddr;
  input [7:0]s_axi_arlen;
  input [2:0]s_axi_arsize;
  input [1:0]s_axi_arburst;
  input [0:0]s_axi_arlock;
  input [3:0]s_axi_arcache;
  input [2:0]s_axi_arprot;
  input [3:0]s_axi_arqos;
  input [0:0]s_axi_aruser;
  input s_axi_arvalid;
  output s_axi_arready;
  output [3:0]s_axi_rid;
  output [63:0]s_axi_rdata;
  output [1:0]s_axi_rresp;
  output s_axi_rlast;
  output [0:0]s_axi_ruser;
  output s_axi_rvalid;
  input s_axi_rready;
  output [3:0]m_axi_awid;
  output [47:0]m_axi_awaddr;
  output [7:0]m_axi_awlen;
  output [2:0]m_axi_awsize;
  output [1:0]m_axi_awburst;
  output [0:0]m_axi_awlock;
  output [3:0]m_axi_awcache;
  output [2:0]m_axi_awprot;
  output [3:0]m_axi_awqos;
  output [0:0]m_axi_awuser;
  output m_axi_awvalid;
  input m_axi_awready;
  output [3:0]m_axi_wid;
  output [63:0]m_axi_wdata;
  output [7:0]m_axi_wstrb;
  output m_axi_wlast;
  output [0:0]m_axi_wuser;
  output m_axi_wvalid;
  input m_axi_wready;
  input [3:0]m_axi_bid;
  input [1:0]m_axi_bresp;
  input [0:0]m_axi_buser;
  input m_axi_bvalid;
  output m_axi_bready;
  output [3:0]m_axi_arid;
  output [47:0]m_axi_araddr;
  output [7:0]m_axi_arlen;
  output [2:0]m_axi_arsize;
  output [1:0]m_axi_arburst;
  output [0:0]m_axi_arlock;
  output [3:0]m_axi_arcache;
  output [2:0]m_axi_arprot;
  output [3:0]m_axi_arqos;
  output [0:0]m_axi_aruser;
  output m_axi_arvalid;
  input m_axi_arready;
  input [3:0]m_axi_rid;
  input [63:0]m_axi_rdata;
  input [1:0]m_axi_rresp;
  input m_axi_rlast;
  input [0:0]m_axi_ruser;
  input m_axi_rvalid;
  output m_axi_rready;

  wire \<const0> ;
  wire \FSM_onehot_gen_read.r_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_read.r_state_reg_n_0_[2] ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[1] ;
  wire \FSM_onehot_gen_write.w_state_reg_n_0_[2] ;
  wire aclk;
  wire aresetn;
  wire decerr_slave_inst_n_3;
  wire decerr_slave_inst_n_4;
  wire decerr_slave_inst_n_5;
  wire decerr_slave_inst_n_6;
  wire decerr_slave_inst_n_7;
  wire err_awready;
  wire err_bvalid;
  wire err_rvalid;
  wire \gen_read.ar_cnt[0]_i_1_n_0 ;
  wire \gen_read.ar_cnt[2]_i_3_n_0 ;
  wire \gen_read.ar_cnt[2]_i_5_n_0 ;
  wire \gen_read.ar_cnt[5]_i_3_n_0 ;
  wire [5:0]\gen_read.ar_cnt_reg__0 ;
  wire \gen_write.aw_cnt[0]_i_1_n_0 ;
  wire \gen_write.aw_cnt[2]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_10_n_0 ;
  wire \gen_write.aw_cnt[5]_i_11_n_0 ;
  wire \gen_write.aw_cnt[5]_i_12_n_0 ;
  wire \gen_write.aw_cnt[5]_i_13_n_0 ;
  wire \gen_write.aw_cnt[5]_i_14_n_0 ;
  wire \gen_write.aw_cnt[5]_i_3_n_0 ;
  wire \gen_write.aw_cnt[5]_i_7_n_0 ;
  wire \gen_write.aw_cnt[5]_i_8_n_0 ;
  wire \gen_write.aw_cnt[5]_i_9_n_0 ;
  wire [5:0]\gen_write.aw_cnt_reg__0 ;
  wire \gen_write.w_cnt[0]_i_1_n_0 ;
  wire \gen_write.w_cnt[1]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_1_n_0 ;
  wire \gen_write.w_cnt[2]_i_2_n_0 ;
  wire \gen_write.w_cnt[3]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_1_n_0 ;
  wire \gen_write.w_cnt[4]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_1_n_0 ;
  wire \gen_write.w_cnt[5]_i_2_n_0 ;
  wire \gen_write.w_cnt[5]_i_3_n_0 ;
  wire \gen_write.w_cnt[5]_i_4_n_0 ;
  wire \gen_write.w_cnt[5]_i_5_n_0 ;
  wire \gen_write.w_cnt[5]_i_6_n_0 ;
  wire \gen_write.w_cnt[5]_i_7_n_0 ;
  wire \gen_write.w_cnt[5]_i_8_n_0 ;
  wire \gen_write.w_cnt[5]_i_9_n_0 ;
  wire [5:0]\gen_write.w_cnt_reg__0 ;
  wire \gen_write.w_mask_i_2_n_0 ;
  wire [47:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [47:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [3:0]m_axi_bid;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire m_axi_wready;
  wire m_axi_wvalid;
  wire [48:48]mr_axi_araddr;
  wire mr_axi_arvalid;
  wire [48:48]mr_axi_awaddr;
  wire mr_axi_awvalid;
  wire [1:1]r_state;
  wire register_slice_inst_n_1;
  wire register_slice_inst_n_163;
  wire register_slice_inst_n_165;
  wire register_slice_inst_n_166;
  wire register_slice_inst_n_167;
  wire register_slice_inst_n_168;
  wire register_slice_inst_n_169;
  wire register_slice_inst_n_170;
  wire register_slice_inst_n_171;
  wire register_slice_inst_n_172;
  wire register_slice_inst_n_173;
  wire register_slice_inst_n_174;
  wire register_slice_inst_n_175;
  wire register_slice_inst_n_177;
  wire register_slice_inst_n_178;
  wire register_slice_inst_n_179;
  wire register_slice_inst_n_180;
  wire register_slice_inst_n_181;
  wire register_slice_inst_n_182;
  wire register_slice_inst_n_184;
  wire register_slice_inst_n_185;
  wire register_slice_inst_n_186;
  wire register_slice_inst_n_187;
  wire register_slice_inst_n_188;
  wire register_slice_inst_n_189;
  wire register_slice_inst_n_190;
  wire register_slice_inst_n_191;
  wire register_slice_inst_n_192;
  wire register_slice_inst_n_193;
  wire register_slice_inst_n_194;
  wire register_slice_inst_n_195;
  wire register_slice_inst_n_196;
  wire register_slice_inst_n_197;
  wire register_slice_inst_n_198;
  wire register_slice_inst_n_201;
  wire register_slice_inst_n_202;
  wire register_slice_inst_n_3;
  wire register_slice_inst_n_4;
  wire register_slice_inst_n_5;
  wire register_slice_inst_n_84;
  wire [47:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [47:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire s_axi_wready_INST_0_i_1_n_0;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire sr_axi_arready;
  wire w_mask;
  wire w_mask0;

  assign m_axi_aruser[0] = \<const0> ;
  assign m_axi_awuser[0] = \<const0> ;
  assign m_axi_bready = s_axi_bready;
  assign m_axi_rready = s_axi_rready;
  assign m_axi_wdata[63:0] = s_axi_wdata;
  assign m_axi_wid[3] = \<const0> ;
  assign m_axi_wid[2] = \<const0> ;
  assign m_axi_wid[1] = \<const0> ;
  assign m_axi_wid[0] = \<const0> ;
  assign m_axi_wlast = s_axi_wlast;
  assign m_axi_wstrb[7:0] = s_axi_wstrb;
  assign m_axi_wuser[0] = \<const0> ;
  assign s_axi_buser[0] = \<const0> ;
  assign s_axi_ruser[0] = \<const0> ;
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \FSM_onehot_gen_read.r_state[2]_i_3 
       (.I0(\gen_read.ar_cnt_reg__0 [4]),
        .I1(\gen_read.ar_cnt_reg__0 [2]),
        .I2(\gen_read.ar_cnt_reg__0 [3]),
        .I3(\gen_read.ar_cnt_reg__0 [1]),
        .I4(\gen_read.ar_cnt_reg__0 [0]),
        .I5(\gen_read.ar_cnt_reg__0 [5]),
        .O(\FSM_onehot_gen_read.r_state[2]_i_3_n_0 ));
  (* FSM_ENCODED_STATES = "R_PENDING:010,iSTATE:001,R_DECERR:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_read.r_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(decerr_slave_inst_n_3),
        .Q(r_state),
        .R(register_slice_inst_n_1));
  (* FSM_ENCODED_STATES = "R_PENDING:010,iSTATE:001,R_DECERR:100" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_read.r_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_84),
        .Q(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .R(register_slice_inst_n_1));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_5),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .R(register_slice_inst_n_1));
  (* FSM_ENCODED_STATES = "W_DECERR:100,iSTATE:001,W_PENDING:010" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_onehot_gen_write.w_state_reg[2] 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_4),
        .Q(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .R(register_slice_inst_n_1));
  GND GND
       (.G(\<const0> ));
  meowrouter_s01_mmu_0_axi_mmu_v2_1_16_decerr_slave decerr_slave_inst
       (.\FSM_onehot_gen_read.r_state_reg[1] (\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .\FSM_onehot_gen_read.r_state_reg[1]_0 (\FSM_onehot_gen_read.r_state[2]_i_3_n_0 ),
        .\FSM_onehot_gen_read.r_state_reg[1]_1 (register_slice_inst_n_201),
        .\FSM_onehot_gen_read.r_state_reg[2] (decerr_slave_inst_n_3),
        .Q({m_axi_arid,m_axi_arlen,mr_axi_araddr}),
        .SR(register_slice_inst_n_1),
        .aclk(aclk),
        .err_awready(err_awready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.s_axi_arready_i_reg_0 (register_slice_inst_n_3),
        .\gen_axi.gen_read.s_axi_rlast_i_reg_0 (decerr_slave_inst_n_4),
        .\gen_axi.gen_read.s_axi_rlast_i_reg_1 (register_slice_inst_n_202),
        .\gen_axi.gen_write.s_axi_awready_i_reg_0 (register_slice_inst_n_163),
        .\gen_axi.gen_write.s_axi_bid_i_reg[3]_0 ({m_axi_awid,mr_axi_awaddr}),
        .\gen_axi.gen_write.s_axi_wready_i_reg_0 (\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .m_axi_arready(m_axi_arready),
        .m_axi_arready_0(decerr_slave_inst_n_7),
        .m_axi_awready(m_axi_awready),
        .m_axi_awready_0(decerr_slave_inst_n_5),
        .m_axi_bid(m_axi_bid),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wready(m_axi_wready),
        .m_valid_i_reg(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .m_valid_i_reg_0(\gen_read.ar_cnt_reg__0 [5]),
        .mr_axi_arvalid(mr_axi_arvalid),
        .mr_axi_awvalid(mr_axi_awvalid),
        .r_state(r_state),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_arvalid_0(decerr_slave_inst_n_6),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wready_0(s_axi_wready_INST_0_i_1_n_0),
        .s_axi_wvalid(s_axi_wvalid),
        .sr_axi_arready(sr_axi_arready));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_read.ar_cnt[0]_i_1 
       (.I0(\gen_read.ar_cnt_reg__0 [0]),
        .O(\gen_read.ar_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFAEEEEEEE)) 
    \gen_read.ar_cnt[2]_i_3 
       (.I0(register_slice_inst_n_194),
        .I1(register_slice_inst_n_198),
        .I2(register_slice_inst_n_197),
        .I3(register_slice_inst_n_196),
        .I4(register_slice_inst_n_195),
        .I5(\gen_read.ar_cnt[2]_i_5_n_0 ),
        .O(\gen_read.ar_cnt[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_read.ar_cnt[2]_i_5 
       (.I0(s_axi_araddr[44]),
        .I1(s_axi_araddr[43]),
        .O(\gen_read.ar_cnt[2]_i_5_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \gen_read.ar_cnt[5]_i_3 
       (.I0(m_axi_rvalid),
        .I1(m_axi_rlast),
        .I2(s_axi_rready),
        .I3(\FSM_onehot_gen_read.r_state[2]_i_3_n_0 ),
        .O(\gen_read.ar_cnt[5]_i_3_n_0 ));
  FDRE \gen_read.ar_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(\gen_read.ar_cnt[0]_i_1_n_0 ),
        .Q(\gen_read.ar_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(register_slice_inst_n_181),
        .Q(\gen_read.ar_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(register_slice_inst_n_180),
        .Q(\gen_read.ar_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(register_slice_inst_n_179),
        .Q(\gen_read.ar_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(register_slice_inst_n_178),
        .Q(\gen_read.ar_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_read.ar_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_182),
        .D(register_slice_inst_n_177),
        .Q(\gen_read.ar_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.aw_cnt[0]_i_1 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \gen_write.aw_cnt[2]_i_2 
       (.I0(m_axi_bvalid),
        .I1(s_axi_bready),
        .I2(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .O(\gen_write.aw_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_write.aw_cnt[5]_i_10 
       (.I0(\gen_write.aw_cnt_reg__0 [0]),
        .I1(\gen_write.aw_cnt_reg__0 [1]),
        .O(\gen_write.aw_cnt[5]_i_10_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \gen_write.aw_cnt[5]_i_11 
       (.I0(s_axi_awaddr[13]),
        .I1(s_axi_awaddr[12]),
        .I2(s_axi_awaddr[15]),
        .I3(s_axi_awaddr[14]),
        .O(\gen_write.aw_cnt[5]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_12 
       (.I0(\gen_write.aw_cnt[5]_i_13_n_0 ),
        .I1(register_slice_inst_n_193),
        .I2(\gen_write.aw_cnt[5]_i_14_n_0 ),
        .I3(register_slice_inst_n_192),
        .I4(register_slice_inst_n_191),
        .I5(register_slice_inst_n_190),
        .O(\gen_write.aw_cnt[5]_i_12_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \gen_write.aw_cnt[5]_i_13 
       (.I0(s_axi_awaddr[28]),
        .I1(s_axi_awaddr[36]),
        .I2(s_axi_awaddr[45]),
        .I3(s_axi_awaddr[40]),
        .O(\gen_write.aw_cnt[5]_i_13_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.aw_cnt[5]_i_14 
       (.I0(s_axi_awaddr[46]),
        .I1(s_axi_awaddr[34]),
        .O(\gen_write.aw_cnt[5]_i_14_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \gen_write.aw_cnt[5]_i_3 
       (.I0(\gen_write.aw_cnt_reg__0 [2]),
        .I1(\gen_write.aw_cnt_reg__0 [3]),
        .I2(\gen_write.aw_cnt_reg__0 [1]),
        .I3(\gen_write.aw_cnt_reg__0 [0]),
        .I4(\gen_write.aw_cnt_reg__0 [5]),
        .I5(\gen_write.aw_cnt_reg__0 [4]),
        .O(\gen_write.aw_cnt[5]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \gen_write.aw_cnt[5]_i_4 
       (.I0(s_axi_awvalid),
        .I1(\gen_write.aw_cnt_reg__0 [5]),
        .O(w_mask0));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.aw_cnt[5]_i_7 
       (.I0(\gen_write.aw_cnt_reg__0 [1]),
        .I1(\gen_write.aw_cnt_reg__0 [0]),
        .O(\gen_write.aw_cnt[5]_i_7_n_0 ));
  LUT6 #(
    .INIT(64'h00000000FF7FFFFF)) 
    \gen_write.aw_cnt[5]_i_8 
       (.I0(register_slice_inst_n_184),
        .I1(\gen_write.aw_cnt[5]_i_11_n_0 ),
        .I2(register_slice_inst_n_188),
        .I3(s_axi_awaddr[23]),
        .I4(s_axi_awaddr[24]),
        .I5(s_axi_awaddr[25]),
        .O(\gen_write.aw_cnt[5]_i_8_n_0 ));
  LUT5 #(
    .INIT(32'hDC00DDDD)) 
    \gen_write.aw_cnt[5]_i_9 
       (.I0(register_slice_inst_n_185),
        .I1(register_slice_inst_n_172),
        .I2(register_slice_inst_n_186),
        .I3(\gen_write.aw_cnt[5]_i_12_n_0 ),
        .I4(register_slice_inst_n_188),
        .O(\gen_write.aw_cnt[5]_i_9_n_0 ));
  FDRE \gen_write.aw_cnt_reg[0] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(\gen_write.aw_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.aw_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[1] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(register_slice_inst_n_169),
        .Q(\gen_write.aw_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[2] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(register_slice_inst_n_168),
        .Q(\gen_write.aw_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[3] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(register_slice_inst_n_167),
        .Q(\gen_write.aw_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[4] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(register_slice_inst_n_166),
        .Q(\gen_write.aw_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.aw_cnt_reg[5] 
       (.C(aclk),
        .CE(register_slice_inst_n_174),
        .D(register_slice_inst_n_165),
        .Q(\gen_write.aw_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \gen_write.w_cnt[0]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFEF00100010FFEF)) 
    \gen_write.w_cnt[1]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(w_mask),
        .I2(w_mask0),
        .I3(register_slice_inst_n_170),
        .I4(\gen_write.w_cnt_reg__0 [1]),
        .I5(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hEEEEE7EE11111811)) 
    \gen_write.w_cnt[2]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I3(\gen_write.w_cnt[2]_i_2_n_0 ),
        .I4(register_slice_inst_n_170),
        .I5(\gen_write.w_cnt_reg__0 [2]),
        .O(\gen_write.w_cnt[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h04)) 
    \gen_write.w_cnt[2]_i_2 
       (.I0(\gen_write.aw_cnt_reg__0 [5]),
        .I1(s_axi_awvalid),
        .I2(w_mask),
        .O(\gen_write.w_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.w_cnt[3]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I2(\gen_write.w_cnt_reg__0 [1]),
        .I3(\gen_write.w_cnt_reg__0 [0]),
        .I4(\gen_write.w_cnt_reg__0 [3]),
        .O(\gen_write.w_cnt[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_write.w_cnt[4]_i_1 
       (.I0(\gen_write.w_cnt_reg__0 [0]),
        .I1(\gen_write.w_cnt_reg__0 [1]),
        .I2(\gen_write.w_cnt[4]_i_2_n_0 ),
        .I3(\gen_write.w_cnt_reg__0 [2]),
        .I4(\gen_write.w_cnt_reg__0 [3]),
        .I5(\gen_write.w_cnt_reg__0 [4]),
        .O(\gen_write.w_cnt[4]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000F4F0000)) 
    \gen_write.w_cnt[4]_i_2 
       (.I0(register_slice_inst_n_172),
        .I1(register_slice_inst_n_173),
        .I2(register_slice_inst_n_171),
        .I3(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I4(\gen_write.w_cnt[2]_i_2_n_0 ),
        .I5(\gen_write.w_cnt[5]_i_3_n_0 ),
        .O(\gen_write.w_cnt[4]_i_2_n_0 ));
  LUT5 #(
    .INIT(32'hAAAAA9AA)) 
    \gen_write.w_cnt[5]_i_1 
       (.I0(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I1(register_slice_inst_n_170),
        .I2(\gen_write.aw_cnt_reg__0 [5]),
        .I3(s_axi_awvalid),
        .I4(w_mask),
        .O(\gen_write.w_cnt[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h6AAA6AAA6AAA69A9)) 
    \gen_write.w_cnt[5]_i_2 
       (.I0(\gen_write.w_cnt_reg__0 [5]),
        .I1(\gen_write.w_cnt_reg__0 [4]),
        .I2(\gen_write.w_cnt_reg__0 [3]),
        .I3(\gen_write.w_cnt[5]_i_4_n_0 ),
        .I4(\gen_write.w_cnt_reg__0 [2]),
        .I5(\gen_write.w_cnt[5]_i_5_n_0 ),
        .O(\gen_write.w_cnt[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT5 #(
    .INIT(32'h00002000)) 
    \gen_write.w_cnt[5]_i_3 
       (.I0(s_axi_wvalid),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I2(m_axi_wready),
        .I3(s_axi_wlast),
        .I4(s_axi_wready_INST_0_i_1_n_0),
        .O(\gen_write.w_cnt[5]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0000020000000000)) 
    \gen_write.w_cnt[5]_i_4 
       (.I0(\gen_write.w_cnt_reg__0 [2]),
        .I1(\gen_write.aw_cnt[5]_i_9_n_0 ),
        .I2(\gen_write.w_cnt[5]_i_6_n_0 ),
        .I3(\gen_write.w_cnt[2]_i_2_n_0 ),
        .I4(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I5(\gen_write.w_cnt[5]_i_7_n_0 ),
        .O(\gen_write.w_cnt[5]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hAAAAAAAAAABABABA)) 
    \gen_write.w_cnt[5]_i_5 
       (.I0(\gen_write.w_cnt[5]_i_8_n_0 ),
        .I1(\gen_write.w_cnt[5]_i_3_n_0 ),
        .I2(\gen_write.w_cnt[2]_i_2_n_0 ),
        .I3(\gen_write.aw_cnt[5]_i_8_n_0 ),
        .I4(register_slice_inst_n_171),
        .I5(\gen_write.aw_cnt[5]_i_9_n_0 ),
        .O(\gen_write.w_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000051515111)) 
    \gen_write.w_cnt[5]_i_6 
       (.I0(\gen_write.w_cnt[5]_i_9_n_0 ),
        .I1(register_slice_inst_n_188),
        .I2(\gen_write.aw_cnt[5]_i_12_n_0 ),
        .I3(register_slice_inst_n_172),
        .I4(register_slice_inst_n_186),
        .I5(s_axi_awaddr[25]),
        .O(\gen_write.w_cnt[5]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \gen_write.w_cnt[5]_i_7 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \gen_write.w_cnt[5]_i_8 
       (.I0(\gen_write.w_cnt_reg__0 [1]),
        .I1(\gen_write.w_cnt_reg__0 [0]),
        .O(\gen_write.w_cnt[5]_i_8_n_0 ));
  LUT6 #(
    .INIT(64'h0000000400000000)) 
    \gen_write.w_cnt[5]_i_9 
       (.I0(register_slice_inst_n_187),
        .I1(\gen_write.aw_cnt[5]_i_11_n_0 ),
        .I2(s_axi_awaddr[18]),
        .I3(s_axi_awaddr[17]),
        .I4(s_axi_awaddr[16]),
        .I5(register_slice_inst_n_189),
        .O(\gen_write.w_cnt[5]_i_9_n_0 ));
  FDRE \gen_write.w_cnt_reg[0] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[0]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [0]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[1] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[1]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [1]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[2] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[2]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [2]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[3] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[3]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [3]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[4] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[4]_i_1_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [4]),
        .R(register_slice_inst_n_1));
  FDRE \gen_write.w_cnt_reg[5] 
       (.C(aclk),
        .CE(\gen_write.w_cnt[5]_i_1_n_0 ),
        .D(\gen_write.w_cnt[5]_i_2_n_0 ),
        .Q(\gen_write.w_cnt_reg__0 [5]),
        .R(register_slice_inst_n_1));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_write.w_mask_i_2 
       (.I0(\gen_write.aw_cnt[5]_i_3_n_0 ),
        .I1(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .O(\gen_write.w_mask_i_2_n_0 ));
  FDRE \gen_write.w_mask_reg 
       (.C(aclk),
        .CE(1'b1),
        .D(register_slice_inst_n_175),
        .Q(w_mask),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT3 #(
    .INIT(8'h04)) 
    m_axi_wvalid_INST_0
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(s_axi_wvalid),
        .I2(s_axi_wready_INST_0_i_1_n_0),
        .O(m_axi_wvalid));
  meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice register_slice_inst
       (.D({register_slice_inst_n_165,register_slice_inst_n_166,register_slice_inst_n_167,register_slice_inst_n_168,register_slice_inst_n_169}),
        .E(register_slice_inst_n_174),
        .\FSM_onehot_gen_read.r_state_reg[1] (register_slice_inst_n_84),
        .\FSM_onehot_gen_read.r_state_reg[2] (decerr_slave_inst_n_4),
        .\FSM_onehot_gen_write.w_state_reg[1] (register_slice_inst_n_4),
        .Q({m_axi_awqos,m_axi_awid,m_axi_awlock,m_axi_awlen,m_axi_awcache,m_axi_awburst,m_axi_awsize,m_axi_awprot,mr_axi_awaddr,m_axi_awaddr}),
        .SR(register_slice_inst_n_1),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[1] (register_slice_inst_n_3),
        .err_awready(err_awready),
        .err_bvalid(err_bvalid),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.read_cs_reg[0] (register_slice_inst_n_202),
        .\gen_axi.gen_write.s_axi_awready_i_reg (register_slice_inst_n_163),
        .\gen_read.ar_cnt_reg[2] (\gen_read.ar_cnt[2]_i_3_n_0 ),
        .\gen_read.ar_cnt_reg[5] ({register_slice_inst_n_177,register_slice_inst_n_178,register_slice_inst_n_179,register_slice_inst_n_180,register_slice_inst_n_181}),
        .\gen_read.ar_cnt_reg[5]_0 (register_slice_inst_n_182),
        .\gen_read.ar_cnt_reg[5]_1 (\gen_read.ar_cnt[5]_i_3_n_0 ),
        .\gen_write.aw_cnt_reg[2] (\gen_write.aw_cnt[2]_i_2_n_0 ),
        .\gen_write.aw_cnt_reg[4] (\gen_write.aw_cnt[5]_i_8_n_0 ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt[5]_i_7_n_0 ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt[5]_i_9_n_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt[5]_i_10_n_0 ),
        .\gen_write.aw_cnt_reg[5]_2 (\gen_write.aw_cnt[5]_i_3_n_0 ),
        .\gen_write.w_mask_reg (register_slice_inst_n_175),
        .\gen_write.w_mask_reg_0 (\gen_write.w_mask_i_2_n_0 ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arvalid_0(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(\FSM_onehot_gen_write.w_state_reg_n_0_[1] ),
        .m_axi_awvalid_1(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[77] ({m_axi_arqos,m_axi_arid,m_axi_arlock,m_axi_arlen,m_axi_arcache,m_axi_arburst,m_axi_arsize,m_axi_arprot,mr_axi_araddr,m_axi_araddr}),
        .\m_payload_i_reg[77]_0 ({s_axi_arqos,s_axi_arid,s_axi_arlock,s_axi_arlen,s_axi_arcache,s_axi_arburst,s_axi_arsize,s_axi_arprot,s_axi_araddr}),
        .\m_payload_i_reg[77]_1 ({s_axi_awqos,s_axi_awid,s_axi_awlock,s_axi_awlen,s_axi_awcache,s_axi_awburst,s_axi_awsize,s_axi_awprot}),
        .m_valid_i_reg(register_slice_inst_n_5),
        .m_valid_i_reg_0(register_slice_inst_n_201),
        .m_valid_i_reg_1(decerr_slave_inst_n_6),
        .m_valid_i_reg_2(decerr_slave_inst_n_5),
        .mr_axi_arvalid(mr_axi_arvalid),
        .mr_axi_awvalid(mr_axi_awvalid),
        .r_state(r_state),
        .\s_axi_araddr[17] (register_slice_inst_n_196),
        .\s_axi_araddr[21] (register_slice_inst_n_195),
        .\s_axi_araddr[22] (register_slice_inst_n_197),
        .\s_axi_araddr[23] (register_slice_inst_n_198),
        .\s_axi_araddr[39] (register_slice_inst_n_194),
        .s_axi_arready(s_axi_arready),
        .s_axi_arready_0(\gen_read.ar_cnt_reg__0 ),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .\s_axi_awaddr[23]_0 (register_slice_inst_n_191),
        .\s_axi_awaddr[25]_0 (register_slice_inst_n_171),
        .\s_axi_awaddr[26]_0 (register_slice_inst_n_185),
        .\s_axi_awaddr[26]_1 (register_slice_inst_n_188),
        .s_axi_awaddr_16_sp_1(register_slice_inst_n_184),
        .s_axi_awaddr_22_sp_1(register_slice_inst_n_189),
        .s_axi_awaddr_23_sp_1(register_slice_inst_n_186),
        .s_axi_awaddr_24_sp_1(register_slice_inst_n_187),
        .s_axi_awaddr_25_sp_1(register_slice_inst_n_170),
        .s_axi_awaddr_26_sp_1(register_slice_inst_n_173),
        .s_axi_awaddr_29_sp_1(register_slice_inst_n_193),
        .s_axi_awaddr_30_sp_1(register_slice_inst_n_192),
        .s_axi_awaddr_32_sp_1(register_slice_inst_n_172),
        .s_axi_awaddr_44_sp_1(register_slice_inst_n_190),
        .s_axi_awready(s_axi_awready),
        .s_axi_awready_0(\gen_write.aw_cnt_reg__0 ),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .s_ready_i_reg(decerr_slave_inst_n_7),
        .sr_axi_arready(sr_axi_arready),
        .w_mask(w_mask),
        .w_mask0(w_mask0));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[0]_INST_0 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(m_axi_bresp[0]),
        .O(s_axi_bresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_bresp[1]_INST_0 
       (.I0(\FSM_onehot_gen_write.w_state_reg_n_0_[2] ),
        .I1(m_axi_bresp[1]),
        .O(s_axi_bresp[1]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[0]_INST_0 
       (.I0(m_axi_rdata[0]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[0]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[10]_INST_0 
       (.I0(m_axi_rdata[10]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[10]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[11]_INST_0 
       (.I0(m_axi_rdata[11]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[11]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[12]_INST_0 
       (.I0(m_axi_rdata[12]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[12]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[13]_INST_0 
       (.I0(m_axi_rdata[13]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[13]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[14]_INST_0 
       (.I0(m_axi_rdata[14]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[14]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[15]_INST_0 
       (.I0(m_axi_rdata[15]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[15]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[16]_INST_0 
       (.I0(m_axi_rdata[16]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[16]));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[17]_INST_0 
       (.I0(m_axi_rdata[17]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[17]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[18]_INST_0 
       (.I0(m_axi_rdata[18]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[18]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[19]_INST_0 
       (.I0(m_axi_rdata[19]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[19]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[1]_INST_0 
       (.I0(m_axi_rdata[1]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[1]));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[20]_INST_0 
       (.I0(m_axi_rdata[20]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[20]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[21]_INST_0 
       (.I0(m_axi_rdata[21]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[21]));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[22]_INST_0 
       (.I0(m_axi_rdata[22]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[22]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[23]_INST_0 
       (.I0(m_axi_rdata[23]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[23]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[24]_INST_0 
       (.I0(m_axi_rdata[24]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[24]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[25]_INST_0 
       (.I0(m_axi_rdata[25]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[25]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[26]_INST_0 
       (.I0(m_axi_rdata[26]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[26]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[27]_INST_0 
       (.I0(m_axi_rdata[27]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[27]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[28]_INST_0 
       (.I0(m_axi_rdata[28]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[28]));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[29]_INST_0 
       (.I0(m_axi_rdata[29]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[29]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[2]_INST_0 
       (.I0(m_axi_rdata[2]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[2]));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[30]_INST_0 
       (.I0(m_axi_rdata[30]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[30]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[31]_INST_0 
       (.I0(m_axi_rdata[31]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[31]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[32]_INST_0 
       (.I0(m_axi_rdata[32]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[32]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[33]_INST_0 
       (.I0(m_axi_rdata[33]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[33]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[34]_INST_0 
       (.I0(m_axi_rdata[34]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[34]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[35]_INST_0 
       (.I0(m_axi_rdata[35]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[35]));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[36]_INST_0 
       (.I0(m_axi_rdata[36]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[36]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[37]_INST_0 
       (.I0(m_axi_rdata[37]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[37]));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[38]_INST_0 
       (.I0(m_axi_rdata[38]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[38]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[39]_INST_0 
       (.I0(m_axi_rdata[39]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[39]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[3]_INST_0 
       (.I0(m_axi_rdata[3]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[3]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[40]_INST_0 
       (.I0(m_axi_rdata[40]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[40]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[41]_INST_0 
       (.I0(m_axi_rdata[41]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[41]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[42]_INST_0 
       (.I0(m_axi_rdata[42]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[42]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[43]_INST_0 
       (.I0(m_axi_rdata[43]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[43]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[44]_INST_0 
       (.I0(m_axi_rdata[44]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[44]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[45]_INST_0 
       (.I0(m_axi_rdata[45]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[45]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[46]_INST_0 
       (.I0(m_axi_rdata[46]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[46]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[47]_INST_0 
       (.I0(m_axi_rdata[47]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[47]));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[48]_INST_0 
       (.I0(m_axi_rdata[48]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[48]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[49]_INST_0 
       (.I0(m_axi_rdata[49]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[49]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[4]_INST_0 
       (.I0(m_axi_rdata[4]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[4]));
  (* SOFT_HLUTNM = "soft_lutpair37" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[50]_INST_0 
       (.I0(m_axi_rdata[50]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[50]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[51]_INST_0 
       (.I0(m_axi_rdata[51]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[51]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[52]_INST_0 
       (.I0(m_axi_rdata[52]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[52]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[53]_INST_0 
       (.I0(m_axi_rdata[53]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[53]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[54]_INST_0 
       (.I0(m_axi_rdata[54]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[54]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[55]_INST_0 
       (.I0(m_axi_rdata[55]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[55]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[56]_INST_0 
       (.I0(m_axi_rdata[56]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[56]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[57]_INST_0 
       (.I0(m_axi_rdata[57]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[57]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[58]_INST_0 
       (.I0(m_axi_rdata[58]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[58]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[59]_INST_0 
       (.I0(m_axi_rdata[59]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[59]));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[5]_INST_0 
       (.I0(m_axi_rdata[5]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[5]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[60]_INST_0 
       (.I0(m_axi_rdata[60]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[60]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[61]_INST_0 
       (.I0(m_axi_rdata[61]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[61]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[62]_INST_0 
       (.I0(m_axi_rdata[62]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[62]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[63]_INST_0 
       (.I0(m_axi_rdata[63]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[63]));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[6]_INST_0 
       (.I0(m_axi_rdata[6]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[6]));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[7]_INST_0 
       (.I0(m_axi_rdata[7]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[7]));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[8]_INST_0 
       (.I0(m_axi_rdata[8]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[8]));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \s_axi_rdata[9]_INST_0 
       (.I0(m_axi_rdata[9]),
        .I1(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .O(s_axi_rdata[9]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[0]_INST_0 
       (.I0(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .I1(m_axi_rresp[0]),
        .O(s_axi_rresp[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \s_axi_rresp[1]_INST_0 
       (.I0(\FSM_onehot_gen_read.r_state_reg_n_0_[2] ),
        .I1(m_axi_rresp[1]),
        .O(s_axi_rresp[1]));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    s_axi_wready_INST_0_i_1
       (.I0(\gen_write.w_cnt_reg__0 [4]),
        .I1(\gen_write.w_cnt_reg__0 [5]),
        .I2(\gen_write.w_cnt_reg__0 [2]),
        .I3(\gen_write.w_cnt_reg__0 [3]),
        .I4(\gen_write.w_cnt_reg__0 [0]),
        .I5(\gen_write.w_cnt_reg__0 [1]),
        .O(s_axi_wready_INST_0_i_1_n_0));
endmodule

module meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axi_register_slice
   (mr_axi_awvalid,
    SR,
    mr_axi_arvalid,
    \aresetn_d_reg[1] ,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    m_valid_i_reg,
    Q,
    \FSM_onehot_gen_read.r_state_reg[1] ,
    \m_payload_i_reg[77] ,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    m_axi_awvalid,
    D,
    s_axi_awaddr_25_sp_1,
    \s_axi_awaddr[25]_0 ,
    s_axi_awaddr_32_sp_1,
    s_axi_awaddr_26_sp_1,
    E,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    sr_axi_arready,
    s_axi_awaddr_16_sp_1,
    \s_axi_awaddr[26]_0 ,
    s_axi_awaddr_23_sp_1,
    s_axi_awaddr_24_sp_1,
    \s_axi_awaddr[26]_1 ,
    s_axi_awaddr_22_sp_1,
    s_axi_awaddr_44_sp_1,
    \s_axi_awaddr[23]_0 ,
    s_axi_awaddr_30_sp_1,
    s_axi_awaddr_29_sp_1,
    \s_axi_araddr[39] ,
    \s_axi_araddr[21] ,
    \s_axi_araddr[17] ,
    \s_axi_araddr[22] ,
    \s_axi_araddr[23] ,
    s_axi_arready,
    m_axi_arvalid,
    m_valid_i_reg_0,
    \gen_axi.gen_read.read_cs_reg[0] ,
    aclk,
    m_valid_i_reg_1,
    aresetn,
    m_axi_awvalid_0,
    m_axi_awvalid_1,
    r_state,
    \FSM_onehot_gen_read.r_state_reg[2] ,
    m_axi_arvalid_0,
    err_awready,
    s_axi_awvalid,
    s_axi_awready_0,
    m_valid_i_reg_2,
    \gen_write.w_mask_reg_0 ,
    err_bvalid,
    s_axi_bready,
    \gen_write.aw_cnt_reg[2] ,
    w_mask0,
    \gen_write.aw_cnt_reg[5] ,
    \gen_write.aw_cnt_reg[4] ,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_write.aw_cnt_reg[5]_1 ,
    \gen_write.aw_cnt_reg[5]_2 ,
    m_axi_bvalid,
    w_mask,
    s_axi_arready_0,
    \gen_read.ar_cnt_reg[2] ,
    \gen_read.ar_cnt_reg[5]_1 ,
    s_axi_arvalid,
    s_axi_awaddr,
    \m_payload_i_reg[77]_0 ,
    err_rvalid,
    \m_payload_i_reg[77]_1 ,
    s_ready_i_reg);
  output mr_axi_awvalid;
  output [0:0]SR;
  output mr_axi_arvalid;
  output \aresetn_d_reg[1] ;
  output \FSM_onehot_gen_write.w_state_reg[1] ;
  output m_valid_i_reg;
  output [77:0]Q;
  output \FSM_onehot_gen_read.r_state_reg[1] ;
  output [77:0]\m_payload_i_reg[77] ;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output m_axi_awvalid;
  output [4:0]D;
  output s_axi_awaddr_25_sp_1;
  output \s_axi_awaddr[25]_0 ;
  output s_axi_awaddr_32_sp_1;
  output s_axi_awaddr_26_sp_1;
  output [0:0]E;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  output sr_axi_arready;
  output s_axi_awaddr_16_sp_1;
  output \s_axi_awaddr[26]_0 ;
  output s_axi_awaddr_23_sp_1;
  output s_axi_awaddr_24_sp_1;
  output \s_axi_awaddr[26]_1 ;
  output s_axi_awaddr_22_sp_1;
  output s_axi_awaddr_44_sp_1;
  output \s_axi_awaddr[23]_0 ;
  output s_axi_awaddr_30_sp_1;
  output s_axi_awaddr_29_sp_1;
  output \s_axi_araddr[39] ;
  output \s_axi_araddr[21] ;
  output \s_axi_araddr[17] ;
  output \s_axi_araddr[22] ;
  output \s_axi_araddr[23] ;
  output s_axi_arready;
  output m_axi_arvalid;
  output m_valid_i_reg_0;
  output \gen_axi.gen_read.read_cs_reg[0] ;
  input aclk;
  input m_valid_i_reg_1;
  input aresetn;
  input m_axi_awvalid_0;
  input m_axi_awvalid_1;
  input [0:0]r_state;
  input \FSM_onehot_gen_read.r_state_reg[2] ;
  input m_axi_arvalid_0;
  input err_awready;
  input s_axi_awvalid;
  input [5:0]s_axi_awready_0;
  input m_valid_i_reg_2;
  input \gen_write.w_mask_reg_0 ;
  input err_bvalid;
  input s_axi_bready;
  input \gen_write.aw_cnt_reg[2] ;
  input w_mask0;
  input \gen_write.aw_cnt_reg[5] ;
  input \gen_write.aw_cnt_reg[4] ;
  input \gen_write.aw_cnt_reg[5]_0 ;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input \gen_write.aw_cnt_reg[5]_2 ;
  input m_axi_bvalid;
  input w_mask;
  input [5:0]s_axi_arready_0;
  input \gen_read.ar_cnt_reg[2] ;
  input \gen_read.ar_cnt_reg[5]_1 ;
  input s_axi_arvalid;
  input [47:0]s_axi_awaddr;
  input [76:0]\m_payload_i_reg[77]_0 ;
  input err_rvalid;
  input [28:0]\m_payload_i_reg[77]_1 ;
  input s_ready_i_reg;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_gen_read.r_state_reg[1] ;
  wire \FSM_onehot_gen_read.r_state_reg[2] ;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire [77:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d_reg[1] ;
  wire \aw.aw_pipe_n_2 ;
  wire err_awready;
  wire err_bvalid;
  wire err_rvalid;
  wire \gen_axi.gen_read.read_cs_reg[0] ;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_read.ar_cnt_reg[2] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.ar_cnt_reg[5]_1 ;
  wire \gen_write.aw_cnt_reg[2] ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.aw_cnt_reg[5]_2 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_mask_reg_0 ;
  wire m_axi_arvalid;
  wire m_axi_arvalid_0;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_awvalid_1;
  wire m_axi_bvalid;
  wire [77:0]\m_payload_i_reg[77] ;
  wire [76:0]\m_payload_i_reg[77]_0 ;
  wire [28:0]\m_payload_i_reg[77]_1 ;
  wire m_valid_i_reg;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire mr_axi_arvalid;
  wire mr_axi_awvalid;
  wire [0:0]r_state;
  wire \s_axi_araddr[17] ;
  wire \s_axi_araddr[21] ;
  wire \s_axi_araddr[22] ;
  wire \s_axi_araddr[23] ;
  wire \s_axi_araddr[39] ;
  wire s_axi_arready;
  wire [5:0]s_axi_arready_0;
  wire s_axi_arvalid;
  wire [47:0]s_axi_awaddr;
  wire \s_axi_awaddr[23]_0 ;
  wire \s_axi_awaddr[25]_0 ;
  wire \s_axi_awaddr[26]_0 ;
  wire \s_axi_awaddr[26]_1 ;
  wire s_axi_awaddr_16_sn_1;
  wire s_axi_awaddr_22_sn_1;
  wire s_axi_awaddr_23_sn_1;
  wire s_axi_awaddr_24_sn_1;
  wire s_axi_awaddr_25_sn_1;
  wire s_axi_awaddr_26_sn_1;
  wire s_axi_awaddr_29_sn_1;
  wire s_axi_awaddr_30_sn_1;
  wire s_axi_awaddr_32_sn_1;
  wire s_axi_awaddr_44_sn_1;
  wire s_axi_awready;
  wire [5:0]s_axi_awready_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_reg;
  wire sr_axi_arready;
  wire w_mask;
  wire w_mask0;

  assign s_axi_awaddr_16_sp_1 = s_axi_awaddr_16_sn_1;
  assign s_axi_awaddr_22_sp_1 = s_axi_awaddr_22_sn_1;
  assign s_axi_awaddr_23_sp_1 = s_axi_awaddr_23_sn_1;
  assign s_axi_awaddr_24_sp_1 = s_axi_awaddr_24_sn_1;
  assign s_axi_awaddr_25_sp_1 = s_axi_awaddr_25_sn_1;
  assign s_axi_awaddr_26_sp_1 = s_axi_awaddr_26_sn_1;
  assign s_axi_awaddr_29_sp_1 = s_axi_awaddr_29_sn_1;
  assign s_axi_awaddr_30_sp_1 = s_axi_awaddr_30_sn_1;
  assign s_axi_awaddr_32_sp_1 = s_axi_awaddr_32_sn_1;
  assign s_axi_awaddr_44_sp_1 = s_axi_awaddr_44_sn_1;
  meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice \ar.ar_pipe 
       (.\FSM_onehot_gen_read.r_state_reg[1] (\FSM_onehot_gen_read.r_state_reg[1] ),
        .\FSM_onehot_gen_read.r_state_reg[2] (\FSM_onehot_gen_read.r_state_reg[2] ),
        .Q(\m_payload_i_reg[77] ),
        .SR(SR),
        .aclk(aclk),
        .err_rvalid(err_rvalid),
        .\gen_axi.gen_read.read_cs_reg[0] (\gen_axi.gen_read.read_cs_reg[0] ),
        .\gen_read.ar_cnt_reg[2] (\gen_read.ar_cnt_reg[2] ),
        .\gen_read.ar_cnt_reg[5] (\gen_read.ar_cnt_reg[5] ),
        .\gen_read.ar_cnt_reg[5]_0 (\gen_read.ar_cnt_reg[5]_0 ),
        .\gen_read.ar_cnt_reg[5]_1 (\gen_read.ar_cnt_reg[5]_1 ),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_arvalid_0(m_axi_arvalid_0),
        .\m_payload_i_reg[77]_0 (\m_payload_i_reg[77]_0 ),
        .m_valid_i_reg_0(mr_axi_arvalid),
        .m_valid_i_reg_1(m_valid_i_reg_0),
        .m_valid_i_reg_2(m_valid_i_reg_1),
        .r_state(r_state),
        .\s_axi_araddr[17] (\s_axi_araddr[17] ),
        .\s_axi_araddr[21] (\s_axi_araddr[21] ),
        .\s_axi_araddr[22] (\s_axi_araddr[22] ),
        .\s_axi_araddr[23] (\s_axi_araddr[23] ),
        .\s_axi_araddr[39] (\s_axi_araddr[39] ),
        .s_axi_arready(s_axi_arready),
        .s_axi_arready_0(s_axi_arready_0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_ready_i_reg_0(sr_axi_arready),
        .s_ready_i_reg_1(\aresetn_d_reg[1] ),
        .s_ready_i_reg_2(s_ready_i_reg),
        .s_ready_i_reg_3(\aw.aw_pipe_n_2 ));
  meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0 \aw.aw_pipe 
       (.D(D),
        .E(E),
        .\FSM_onehot_gen_write.w_state_reg[1] (\FSM_onehot_gen_write.w_state_reg[1] ),
        .Q(Q),
        .SR(SR),
        .aclk(aclk),
        .aresetn(aresetn),
        .\aresetn_d_reg[0]_0 (\aw.aw_pipe_n_2 ),
        .\aresetn_d_reg[1]_0 (\aresetn_d_reg[1] ),
        .err_awready(err_awready),
        .err_bvalid(err_bvalid),
        .\gen_axi.gen_write.s_axi_awready_i_reg (\gen_axi.gen_write.s_axi_awready_i_reg ),
        .\gen_write.aw_cnt_reg[2] (\gen_write.aw_cnt_reg[2] ),
        .\gen_write.aw_cnt_reg[4] (\gen_write.aw_cnt_reg[4] ),
        .\gen_write.aw_cnt_reg[5] (\gen_write.aw_cnt_reg[5] ),
        .\gen_write.aw_cnt_reg[5]_0 (\gen_write.aw_cnt_reg[5]_0 ),
        .\gen_write.aw_cnt_reg[5]_1 (\gen_write.aw_cnt_reg[5]_1 ),
        .\gen_write.aw_cnt_reg[5]_2 (\gen_write.aw_cnt_reg[5]_2 ),
        .\gen_write.w_mask_reg (\gen_write.w_mask_reg ),
        .\gen_write.w_mask_reg_0 (\gen_write.w_mask_reg_0 ),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_awvalid_0(m_axi_awvalid_0),
        .m_axi_awvalid_1(m_axi_awvalid_1),
        .m_axi_bvalid(m_axi_bvalid),
        .\m_payload_i_reg[77]_0 ({\m_payload_i_reg[77]_1 ,s_axi_awaddr}),
        .m_valid_i_reg_0(mr_axi_awvalid),
        .m_valid_i_reg_1(m_valid_i_reg),
        .m_valid_i_reg_2(m_valid_i_reg_2),
        .\s_axi_awaddr[16] (s_axi_awaddr_16_sn_1),
        .\s_axi_awaddr[22] (s_axi_awaddr_22_sn_1),
        .\s_axi_awaddr[23] (s_axi_awaddr_23_sn_1),
        .\s_axi_awaddr[23]_0 (\s_axi_awaddr[23]_0 ),
        .\s_axi_awaddr[24] (s_axi_awaddr_24_sn_1),
        .\s_axi_awaddr[25] (s_axi_awaddr_25_sn_1),
        .\s_axi_awaddr[25]_0 (\s_axi_awaddr[25]_0 ),
        .\s_axi_awaddr[26] (s_axi_awaddr_26_sn_1),
        .\s_axi_awaddr[26]_0 (\s_axi_awaddr[26]_0 ),
        .\s_axi_awaddr[26]_1 (\s_axi_awaddr[26]_1 ),
        .\s_axi_awaddr[29] (s_axi_awaddr_29_sn_1),
        .\s_axi_awaddr[30] (s_axi_awaddr_30_sn_1),
        .\s_axi_awaddr[32] (s_axi_awaddr_32_sn_1),
        .\s_axi_awaddr[44] (s_axi_awaddr_44_sn_1),
        .s_axi_awready(s_axi_awready),
        .s_axi_awready_0(s_axi_awready_0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bready(s_axi_bready),
        .w_mask(w_mask),
        .w_mask0(w_mask0));
endmodule

module meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice
   (m_valid_i_reg_0,
    \FSM_onehot_gen_read.r_state_reg[1] ,
    Q,
    \gen_read.ar_cnt_reg[5] ,
    \gen_read.ar_cnt_reg[5]_0 ,
    s_ready_i_reg_0,
    \s_axi_araddr[39] ,
    \s_axi_araddr[21] ,
    \s_axi_araddr[17] ,
    \s_axi_araddr[22] ,
    \s_axi_araddr[23] ,
    s_axi_arready,
    m_axi_arvalid,
    m_valid_i_reg_1,
    \gen_axi.gen_read.read_cs_reg[0] ,
    SR,
    m_valid_i_reg_2,
    aclk,
    r_state,
    \FSM_onehot_gen_read.r_state_reg[2] ,
    m_axi_arvalid_0,
    s_axi_arready_0,
    \gen_read.ar_cnt_reg[2] ,
    \gen_read.ar_cnt_reg[5]_1 ,
    s_axi_arvalid,
    \m_payload_i_reg[77]_0 ,
    err_rvalid,
    s_ready_i_reg_1,
    s_ready_i_reg_2,
    s_ready_i_reg_3);
  output m_valid_i_reg_0;
  output \FSM_onehot_gen_read.r_state_reg[1] ;
  output [77:0]Q;
  output [4:0]\gen_read.ar_cnt_reg[5] ;
  output [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  output s_ready_i_reg_0;
  output \s_axi_araddr[39] ;
  output \s_axi_araddr[21] ;
  output \s_axi_araddr[17] ;
  output \s_axi_araddr[22] ;
  output \s_axi_araddr[23] ;
  output s_axi_arready;
  output m_axi_arvalid;
  output m_valid_i_reg_1;
  output \gen_axi.gen_read.read_cs_reg[0] ;
  input [0:0]SR;
  input m_valid_i_reg_2;
  input aclk;
  input [0:0]r_state;
  input \FSM_onehot_gen_read.r_state_reg[2] ;
  input m_axi_arvalid_0;
  input [5:0]s_axi_arready_0;
  input \gen_read.ar_cnt_reg[2] ;
  input \gen_read.ar_cnt_reg[5]_1 ;
  input s_axi_arvalid;
  input [76:0]\m_payload_i_reg[77]_0 ;
  input err_rvalid;
  input s_ready_i_reg_1;
  input s_ready_i_reg_2;
  input s_ready_i_reg_3;

  wire \FSM_onehot_gen_read.r_state_reg[1] ;
  wire \FSM_onehot_gen_read.r_state_reg[2] ;
  wire [77:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire err_rvalid;
  wire \gen_axi.gen_read.read_cs_reg[0] ;
  wire \gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ;
  wire \gen_read.ar_cnt[2]_i_2_n_0 ;
  wire \gen_read.ar_cnt[2]_i_4_n_0 ;
  wire \gen_read.ar_cnt[5]_i_4_n_0 ;
  wire \gen_read.ar_cnt_reg[2] ;
  wire [4:0]\gen_read.ar_cnt_reg[5] ;
  wire [0:0]\gen_read.ar_cnt_reg[5]_0 ;
  wire \gen_read.ar_cnt_reg[5]_1 ;
  wire m_axi_arvalid;
  wire m_axi_arvalid_0;
  wire \m_payload_i[48]_i_10__0_n_0 ;
  wire \m_payload_i[48]_i_15__0_n_0 ;
  wire \m_payload_i[48]_i_16__0_n_0 ;
  wire \m_payload_i[48]_i_17__0_n_0 ;
  wire \m_payload_i[48]_i_18__0_n_0 ;
  wire \m_payload_i[48]_i_19__0_n_0 ;
  wire \m_payload_i[48]_i_20__0_n_0 ;
  wire \m_payload_i[48]_i_21__0_n_0 ;
  wire \m_payload_i[48]_i_22__0_n_0 ;
  wire \m_payload_i[48]_i_23__0_n_0 ;
  wire \m_payload_i[48]_i_2__0_n_0 ;
  wire \m_payload_i[48]_i_3__0_n_0 ;
  wire \m_payload_i[48]_i_4__0_n_0 ;
  wire \m_payload_i[48]_i_6__0_n_0 ;
  wire \m_payload_i[48]_i_7__0_n_0 ;
  wire \m_payload_i[48]_i_8__0_n_0 ;
  wire \m_payload_i[48]_i_9__0_n_0 ;
  wire \m_payload_i[73]_i_1__0_n_0 ;
  wire [76:0]\m_payload_i_reg[77]_0 ;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire r_match;
  wire [0:0]r_state;
  wire \s_axi_araddr[17] ;
  wire \s_axi_araddr[21] ;
  wire \s_axi_araddr[22] ;
  wire \s_axi_araddr[23] ;
  wire \s_axi_araddr[39] ;
  wire s_axi_arready;
  wire [5:0]s_axi_arready_0;
  wire s_axi_arvalid;
  wire s_ready_i_i_1_n_0;
  wire s_ready_i_reg_0;
  wire s_ready_i_reg_1;
  wire s_ready_i_reg_2;
  wire s_ready_i_reg_3;

  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT5 #(
    .INIT(32'hAEFFAA00)) 
    \FSM_onehot_gen_read.r_state[2]_i_1 
       (.I0(r_state),
        .I1(m_valid_i_reg_0),
        .I2(Q[48]),
        .I3(\FSM_onehot_gen_read.r_state_reg[2] ),
        .I4(m_axi_arvalid_0),
        .O(\FSM_onehot_gen_read.r_state_reg[1] ));
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_gen_read.r_state[2]_i_5 
       (.I0(m_valid_i_reg_0),
        .I1(Q[48]),
        .O(m_valid_i_reg_1));
  LUT4 #(
    .INIT(16'h0002)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_2 
       (.I0(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ),
        .I1(err_rvalid),
        .I2(Q[61]),
        .I3(Q[62]),
        .O(\gen_axi.gen_read.read_cs_reg[0] ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \gen_axi.gen_read.s_axi_rlast_i_i_4 
       (.I0(Q[63]),
        .I1(Q[64]),
        .I2(Q[65]),
        .I3(Q[66]),
        .I4(Q[68]),
        .I5(Q[67]),
        .O(\gen_axi.gen_read.s_axi_rlast_i_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[1]_i_1 
       (.I0(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .I1(s_axi_arready_0[1]),
        .I2(s_axi_arready_0[0]),
        .O(\gen_read.ar_cnt_reg[5] [0]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'h6AA9)) 
    \gen_read.ar_cnt[2]_i_1 
       (.I0(s_axi_arready_0[2]),
        .I1(s_axi_arready_0[1]),
        .I2(s_axi_arready_0[0]),
        .I3(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .O(\gen_read.ar_cnt_reg[5] [1]));
  LUT6 #(
    .INIT(64'h0000000002FF0000)) 
    \gen_read.ar_cnt[2]_i_2 
       (.I0(\m_payload_i[48]_i_3__0_n_0 ),
        .I1(\gen_read.ar_cnt_reg[2] ),
        .I2(\m_payload_i[48]_i_6__0_n_0 ),
        .I3(\m_payload_i[48]_i_7__0_n_0 ),
        .I4(\gen_read.ar_cnt[2]_i_4_n_0 ),
        .I5(\gen_read.ar_cnt_reg[5]_1 ),
        .O(\gen_read.ar_cnt[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_read.ar_cnt[2]_i_4 
       (.I0(s_axi_arready_0[5]),
        .I1(s_ready_i_reg_0),
        .I2(s_axi_arvalid),
        .O(\gen_read.ar_cnt[2]_i_4_n_0 ));
  LUT3 #(
    .INIT(8'h69)) 
    \gen_read.ar_cnt[3]_i_1 
       (.I0(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I1(s_axi_arready_0[2]),
        .I2(s_axi_arready_0[3]),
        .O(\gen_read.ar_cnt_reg[5] [2]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT4 #(
    .INIT(16'h7E81)) 
    \gen_read.ar_cnt[4]_i_1 
       (.I0(s_axi_arready_0[3]),
        .I1(s_axi_arready_0[2]),
        .I2(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I3(s_axi_arready_0[4]),
        .O(\gen_read.ar_cnt_reg[5] [3]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT5 #(
    .INIT(32'hEFFF1000)) 
    \gen_read.ar_cnt[5]_i_1 
       (.I0(\m_payload_i[48]_i_2__0_n_0 ),
        .I1(s_axi_arready_0[5]),
        .I2(s_ready_i_reg_0),
        .I3(s_axi_arvalid),
        .I4(\gen_read.ar_cnt_reg[5]_1 ),
        .O(\gen_read.ar_cnt_reg[5]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT5 #(
    .INIT(32'h6AAAAAA9)) 
    \gen_read.ar_cnt[5]_i_2 
       (.I0(s_axi_arready_0[5]),
        .I1(\gen_read.ar_cnt[5]_i_4_n_0 ),
        .I2(s_axi_arready_0[2]),
        .I3(s_axi_arready_0[3]),
        .I4(s_axi_arready_0[4]),
        .O(\gen_read.ar_cnt_reg[5] [4]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT4 #(
    .INIT(16'hD554)) 
    \gen_read.ar_cnt[5]_i_4 
       (.I0(s_axi_arready_0[2]),
        .I1(\gen_read.ar_cnt[2]_i_2_n_0 ),
        .I2(s_axi_arready_0[0]),
        .I3(s_axi_arready_0[1]),
        .O(\gen_read.ar_cnt[5]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    m_axi_arvalid_INST_0
       (.I0(Q[48]),
        .I1(m_valid_i_reg_0),
        .I2(m_axi_arvalid_0),
        .I3(r_state),
        .O(m_axi_arvalid));
  LUT4 #(
    .INIT(16'h0001)) 
    \m_payload_i[48]_i_10__0 
       (.I0(\m_payload_i_reg[77]_0 [13]),
        .I1(\m_payload_i_reg[77]_0 [12]),
        .I2(\m_payload_i_reg[77]_0 [15]),
        .I3(\m_payload_i_reg[77]_0 [14]),
        .O(\m_payload_i[48]_i_10__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_payload_i[48]_i_11__0 
       (.I0(\m_payload_i_reg[77]_0 [21]),
        .I1(\m_payload_i_reg[77]_0 [20]),
        .I2(\m_payload_i_reg[77]_0 [19]),
        .I3(\m_payload_i_reg[77]_0 [18]),
        .O(\s_axi_araddr[21] ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h80)) 
    \m_payload_i[48]_i_12__0 
       (.I0(\m_payload_i_reg[77]_0 [17]),
        .I1(\m_payload_i_reg[77]_0 [16]),
        .I2(\m_payload_i_reg[77]_0 [15]),
        .O(\s_axi_araddr[17] ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \m_payload_i[48]_i_13__0 
       (.I0(\m_payload_i_reg[77]_0 [22]),
        .I1(\m_payload_i_reg[77]_0 [23]),
        .I2(\m_payload_i_reg[77]_0 [24]),
        .I3(\m_payload_i_reg[77]_0 [25]),
        .I4(\m_payload_i_reg[77]_0 [27]),
        .I5(\m_payload_i_reg[77]_0 [26]),
        .O(\s_axi_araddr[22] ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \m_payload_i[48]_i_14__0 
       (.I0(\m_payload_i_reg[77]_0 [23]),
        .I1(\m_payload_i_reg[77]_0 [26]),
        .I2(\m_payload_i_reg[77]_0 [27]),
        .O(\s_axi_araddr[23] ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_15__0 
       (.I0(\m_payload_i_reg[77]_0 [42]),
        .I1(\m_payload_i_reg[77]_0 [40]),
        .I2(\m_payload_i_reg[77]_0 [33]),
        .I3(\m_payload_i_reg[77]_0 [47]),
        .O(\m_payload_i[48]_i_15__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_16__0 
       (.I0(\m_payload_i_reg[77]_0 [29]),
        .I1(\m_payload_i_reg[77]_0 [46]),
        .I2(\m_payload_i_reg[77]_0 [31]),
        .I3(\m_payload_i_reg[77]_0 [41]),
        .O(\m_payload_i[48]_i_16__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_17__0 
       (.I0(\m_payload_i_reg[77]_0 [28]),
        .I1(\m_payload_i_reg[77]_0 [45]),
        .I2(\m_payload_i_reg[77]_0 [32]),
        .I3(\m_payload_i_reg[77]_0 [34]),
        .O(\m_payload_i[48]_i_17__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[48]_i_18__0 
       (.I0(\m_payload_i_reg[77]_0 [34]),
        .I1(\m_payload_i_reg[77]_0 [42]),
        .I2(\m_payload_i_reg[77]_0 [31]),
        .I3(\m_payload_i_reg[77]_0 [47]),
        .O(\m_payload_i[48]_i_18__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_payload_i[48]_i_19__0 
       (.I0(\m_payload_i_reg[77]_0 [22]),
        .I1(\m_payload_i_reg[77]_0 [30]),
        .I2(\m_payload_i_reg[77]_0 [35]),
        .I3(\m_payload_i_reg[77]_0 [39]),
        .I4(\m_payload_i_reg[77]_0 [38]),
        .I5(\m_payload_i_reg[77]_0 [37]),
        .O(\m_payload_i[48]_i_19__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[48]_i_1__0 
       (.I0(\m_payload_i[48]_i_2__0_n_0 ),
        .O(r_match));
  LUT2 #(
    .INIT(4'hE)) 
    \m_payload_i[48]_i_20__0 
       (.I0(\m_payload_i_reg[77]_0 [36]),
        .I1(\m_payload_i_reg[77]_0 [44]),
        .O(\m_payload_i[48]_i_20__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[48]_i_21__0 
       (.I0(\m_payload_i_reg[77]_0 [32]),
        .I1(\m_payload_i_reg[77]_0 [41]),
        .I2(\m_payload_i_reg[77]_0 [27]),
        .I3(\m_payload_i_reg[77]_0 [26]),
        .I4(\m_payload_i_reg[77]_0 [23]),
        .O(\m_payload_i[48]_i_21__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[48]_i_22__0 
       (.I0(\m_payload_i_reg[77]_0 [24]),
        .I1(\m_payload_i_reg[77]_0 [25]),
        .I2(\m_payload_i_reg[77]_0 [29]),
        .I3(\m_payload_i_reg[77]_0 [40]),
        .I4(\m_payload_i_reg[77]_0 [33]),
        .O(\m_payload_i[48]_i_22__0_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[48]_i_23__0 
       (.I0(\m_payload_i_reg[77]_0 [28]),
        .I1(\m_payload_i_reg[77]_0 [45]),
        .I2(\m_payload_i_reg[77]_0 [43]),
        .I3(\m_payload_i_reg[77]_0 [46]),
        .O(\m_payload_i[48]_i_23__0_n_0 ));
  LUT5 #(
    .INIT(32'hFFFD0000)) 
    \m_payload_i[48]_i_2__0 
       (.I0(\m_payload_i[48]_i_3__0_n_0 ),
        .I1(\m_payload_i[48]_i_4__0_n_0 ),
        .I2(\s_axi_araddr[39] ),
        .I3(\m_payload_i[48]_i_6__0_n_0 ),
        .I4(\m_payload_i[48]_i_7__0_n_0 ),
        .O(\m_payload_i[48]_i_2__0_n_0 ));
  LUT5 #(
    .INIT(32'hF888D888)) 
    \m_payload_i[48]_i_3__0 
       (.I0(\m_payload_i_reg[77]_0 [24]),
        .I1(\m_payload_i_reg[77]_0 [25]),
        .I2(\m_payload_i[48]_i_8__0_n_0 ),
        .I3(\m_payload_i[48]_i_9__0_n_0 ),
        .I4(\m_payload_i[48]_i_10__0_n_0 ),
        .O(\m_payload_i[48]_i_3__0_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF77777777)) 
    \m_payload_i[48]_i_4__0 
       (.I0(\m_payload_i_reg[77]_0 [43]),
        .I1(\m_payload_i_reg[77]_0 [44]),
        .I2(\s_axi_araddr[21] ),
        .I3(\s_axi_araddr[17] ),
        .I4(\s_axi_araddr[22] ),
        .I5(\s_axi_araddr[23] ),
        .O(\m_payload_i[48]_i_4__0_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_5__0 
       (.I0(\m_payload_i_reg[77]_0 [39]),
        .I1(\m_payload_i_reg[77]_0 [35]),
        .I2(\m_payload_i_reg[77]_0 [30]),
        .I3(\m_payload_i_reg[77]_0 [37]),
        .O(\s_axi_araddr[39] ));
  LUT5 #(
    .INIT(32'hFEFFFFFF)) 
    \m_payload_i[48]_i_6__0 
       (.I0(\m_payload_i[48]_i_15__0_n_0 ),
        .I1(\m_payload_i[48]_i_16__0_n_0 ),
        .I2(\m_payload_i[48]_i_17__0_n_0 ),
        .I3(\m_payload_i_reg[77]_0 [36]),
        .I4(\m_payload_i_reg[77]_0 [38]),
        .O(\m_payload_i[48]_i_6__0_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_payload_i[48]_i_7__0 
       (.I0(\m_payload_i[48]_i_18__0_n_0 ),
        .I1(\m_payload_i[48]_i_19__0_n_0 ),
        .I2(\m_payload_i[48]_i_20__0_n_0 ),
        .I3(\m_payload_i[48]_i_21__0_n_0 ),
        .I4(\m_payload_i[48]_i_22__0_n_0 ),
        .I5(\m_payload_i[48]_i_23__0_n_0 ),
        .O(\m_payload_i[48]_i_7__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_payload_i[48]_i_8__0 
       (.I0(\m_payload_i_reg[77]_0 [22]),
        .I1(\m_payload_i_reg[77]_0 [21]),
        .I2(\m_payload_i_reg[77]_0 [20]),
        .I3(\m_payload_i_reg[77]_0 [19]),
        .O(\m_payload_i[48]_i_8__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT3 #(
    .INIT(8'h01)) 
    \m_payload_i[48]_i_9__0 
       (.I0(\m_payload_i_reg[77]_0 [18]),
        .I1(\m_payload_i_reg[77]_0 [17]),
        .I2(\m_payload_i_reg[77]_0 [16]),
        .O(\m_payload_i[48]_i_9__0_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[73]_i_1__0 
       (.I0(m_valid_i_reg_0),
        .O(\m_payload_i[73]_i_1__0_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(r_match),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [48]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [49]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [50]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [51]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [52]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [53]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [54]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [55]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [56]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [57]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [58]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [59]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [60]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [61]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [62]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [63]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [64]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [65]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [66]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \m_payload_i_reg[68] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [67]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \m_payload_i_reg[69] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [68]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[70] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [69]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \m_payload_i_reg[71] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [70]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \m_payload_i_reg[72] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [71]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \m_payload_i_reg[73] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [72]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE \m_payload_i_reg[74] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [73]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE \m_payload_i_reg[75] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [74]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE \m_payload_i_reg[76] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [75]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE \m_payload_i_reg[77] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [76]),
        .Q(Q[77]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1__0_n_0 ),
        .D(\m_payload_i_reg[77]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_reg_2),
        .Q(m_valid_i_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_arready_INST_0
       (.I0(s_ready_i_reg_0),
        .I1(s_axi_arready_0[5]),
        .O(s_axi_arready));
  LUT6 #(
    .INIT(64'hDFD5DFDF00000000)) 
    s_ready_i_i_1
       (.I0(s_ready_i_reg_1),
        .I1(s_ready_i_reg_2),
        .I2(m_valid_i_reg_0),
        .I3(s_axi_arready_0[5]),
        .I4(s_axi_arvalid),
        .I5(s_ready_i_reg_3),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(s_ready_i_reg_0),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "axi_register_slice_v2_1_18_axic_register_slice" *) 
module meowrouter_s01_mmu_0_axi_register_slice_v2_1_18_axic_register_slice_0
   (m_valid_i_reg_0,
    SR,
    \aresetn_d_reg[0]_0 ,
    \aresetn_d_reg[1]_0 ,
    \FSM_onehot_gen_write.w_state_reg[1] ,
    m_valid_i_reg_1,
    Q,
    \gen_axi.gen_write.s_axi_awready_i_reg ,
    m_axi_awvalid,
    D,
    \s_axi_awaddr[25] ,
    \s_axi_awaddr[25]_0 ,
    \s_axi_awaddr[32] ,
    \s_axi_awaddr[26] ,
    E,
    \gen_write.w_mask_reg ,
    s_axi_awready,
    \s_axi_awaddr[16] ,
    \s_axi_awaddr[26]_0 ,
    \s_axi_awaddr[23] ,
    \s_axi_awaddr[24] ,
    \s_axi_awaddr[26]_1 ,
    \s_axi_awaddr[22] ,
    \s_axi_awaddr[44] ,
    \s_axi_awaddr[23]_0 ,
    \s_axi_awaddr[30] ,
    \s_axi_awaddr[29] ,
    aclk,
    aresetn,
    m_axi_awvalid_0,
    m_axi_awvalid_1,
    err_awready,
    s_axi_awvalid,
    s_axi_awready_0,
    m_valid_i_reg_2,
    \gen_write.w_mask_reg_0 ,
    err_bvalid,
    s_axi_bready,
    \gen_write.aw_cnt_reg[2] ,
    w_mask0,
    \gen_write.aw_cnt_reg[5] ,
    \gen_write.aw_cnt_reg[4] ,
    \gen_write.aw_cnt_reg[5]_0 ,
    \gen_write.aw_cnt_reg[5]_1 ,
    \gen_write.aw_cnt_reg[5]_2 ,
    m_axi_bvalid,
    w_mask,
    \m_payload_i_reg[77]_0 );
  output m_valid_i_reg_0;
  output [0:0]SR;
  output \aresetn_d_reg[0]_0 ;
  output \aresetn_d_reg[1]_0 ;
  output \FSM_onehot_gen_write.w_state_reg[1] ;
  output m_valid_i_reg_1;
  output [77:0]Q;
  output \gen_axi.gen_write.s_axi_awready_i_reg ;
  output m_axi_awvalid;
  output [4:0]D;
  output \s_axi_awaddr[25] ;
  output \s_axi_awaddr[25]_0 ;
  output \s_axi_awaddr[32] ;
  output \s_axi_awaddr[26] ;
  output [0:0]E;
  output \gen_write.w_mask_reg ;
  output s_axi_awready;
  output \s_axi_awaddr[16] ;
  output \s_axi_awaddr[26]_0 ;
  output \s_axi_awaddr[23] ;
  output \s_axi_awaddr[24] ;
  output \s_axi_awaddr[26]_1 ;
  output \s_axi_awaddr[22] ;
  output \s_axi_awaddr[44] ;
  output \s_axi_awaddr[23]_0 ;
  output \s_axi_awaddr[30] ;
  output \s_axi_awaddr[29] ;
  input aclk;
  input aresetn;
  input m_axi_awvalid_0;
  input m_axi_awvalid_1;
  input err_awready;
  input s_axi_awvalid;
  input [5:0]s_axi_awready_0;
  input m_valid_i_reg_2;
  input \gen_write.w_mask_reg_0 ;
  input err_bvalid;
  input s_axi_bready;
  input \gen_write.aw_cnt_reg[2] ;
  input w_mask0;
  input \gen_write.aw_cnt_reg[5] ;
  input \gen_write.aw_cnt_reg[4] ;
  input \gen_write.aw_cnt_reg[5]_0 ;
  input \gen_write.aw_cnt_reg[5]_1 ;
  input \gen_write.aw_cnt_reg[5]_2 ;
  input m_axi_bvalid;
  input w_mask;
  input [76:0]\m_payload_i_reg[77]_0 ;

  wire [4:0]D;
  wire [0:0]E;
  wire \FSM_onehot_gen_write.w_state[2]_i_2_n_0 ;
  wire \FSM_onehot_gen_write.w_state[2]_i_3_n_0 ;
  wire \FSM_onehot_gen_write.w_state_reg[1] ;
  wire [77:0]Q;
  wire [0:0]SR;
  wire aclk;
  wire aresetn;
  wire \aresetn_d[1]_i_1_n_0 ;
  wire \aresetn_d_reg[0]_0 ;
  wire \aresetn_d_reg[1]_0 ;
  wire err_awready;
  wire err_bvalid;
  wire \gen_axi.gen_write.s_axi_awready_i_reg ;
  wire \gen_write.aw_cnt[2]_i_3_n_0 ;
  wire \gen_write.aw_cnt[4]_i_2_n_0 ;
  wire \gen_write.aw_cnt[5]_i_5_n_0 ;
  wire \gen_write.aw_cnt[5]_i_6_n_0 ;
  wire \gen_write.aw_cnt_reg[2] ;
  wire \gen_write.aw_cnt_reg[4] ;
  wire \gen_write.aw_cnt_reg[5] ;
  wire \gen_write.aw_cnt_reg[5]_0 ;
  wire \gen_write.aw_cnt_reg[5]_1 ;
  wire \gen_write.aw_cnt_reg[5]_2 ;
  wire \gen_write.w_mask_reg ;
  wire \gen_write.w_mask_reg_0 ;
  wire m_axi_awvalid;
  wire m_axi_awvalid_0;
  wire m_axi_awvalid_1;
  wire m_axi_bvalid;
  wire \m_payload_i[48]_i_10_n_0 ;
  wire \m_payload_i[48]_i_11_n_0 ;
  wire \m_payload_i[48]_i_14_n_0 ;
  wire \m_payload_i[48]_i_15_n_0 ;
  wire \m_payload_i[48]_i_19_n_0 ;
  wire \m_payload_i[48]_i_20_n_0 ;
  wire \m_payload_i[48]_i_7_n_0 ;
  wire \m_payload_i[48]_i_8_n_0 ;
  wire \m_payload_i[48]_i_9_n_0 ;
  wire \m_payload_i[73]_i_1_n_0 ;
  wire [76:0]\m_payload_i_reg[77]_0 ;
  wire m_valid_i_i_1_n_0;
  wire m_valid_i_reg_0;
  wire m_valid_i_reg_1;
  wire m_valid_i_reg_2;
  wire \s_axi_awaddr[16] ;
  wire \s_axi_awaddr[22] ;
  wire \s_axi_awaddr[23] ;
  wire \s_axi_awaddr[23]_0 ;
  wire \s_axi_awaddr[24] ;
  wire \s_axi_awaddr[25] ;
  wire \s_axi_awaddr[25]_0 ;
  wire \s_axi_awaddr[26] ;
  wire \s_axi_awaddr[26]_0 ;
  wire \s_axi_awaddr[26]_1 ;
  wire \s_axi_awaddr[29] ;
  wire \s_axi_awaddr[30] ;
  wire \s_axi_awaddr[32] ;
  wire \s_axi_awaddr[44] ;
  wire s_axi_awready;
  wire [5:0]s_axi_awready_0;
  wire s_axi_awvalid;
  wire s_axi_bready;
  wire s_ready_i_i_1_n_0;
  wire sr_axi_awready;
  wire w_mask;
  wire w_mask0;
  wire w_match;

  LUT1 #(
    .INIT(2'h1)) 
    \FSM_onehot_gen_axi.gen_write.write_cs[2]_i_1 
       (.I0(\aresetn_d_reg[1]_0 ),
        .O(SR));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT5 #(
    .INIT(32'h20FF2F00)) 
    \FSM_onehot_gen_write.w_state[1]_i_1 
       (.I0(m_valid_i_reg_0),
        .I1(Q[48]),
        .I2(m_axi_awvalid_1),
        .I3(\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ),
        .I4(m_axi_awvalid_0),
        .O(m_valid_i_reg_1));
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_gen_write.w_state[2]_i_1 
       (.I0(m_axi_awvalid_0),
        .I1(\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ),
        .I2(m_axi_awvalid_1),
        .O(\FSM_onehot_gen_write.w_state_reg[1] ));
  LUT6 #(
    .INIT(64'hFFAAAAAABABABABA)) 
    \FSM_onehot_gen_write.w_state[2]_i_2 
       (.I0(\gen_write.w_mask_reg_0 ),
        .I1(m_axi_awvalid_0),
        .I2(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ),
        .I3(err_bvalid),
        .I4(s_axi_bready),
        .I5(m_axi_awvalid_1),
        .O(\FSM_onehot_gen_write.w_state[2]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \FSM_onehot_gen_write.w_state[2]_i_3 
       (.I0(m_valid_i_reg_0),
        .I1(Q[48]),
        .O(\FSM_onehot_gen_write.w_state[2]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \aresetn_d[1]_i_1 
       (.I0(\aresetn_d_reg[0]_0 ),
        .I1(aresetn),
        .O(\aresetn_d[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[0] 
       (.C(aclk),
        .CE(1'b1),
        .D(aresetn),
        .Q(\aresetn_d_reg[0]_0 ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \aresetn_d_reg[1] 
       (.C(aclk),
        .CE(1'b1),
        .D(\aresetn_d[1]_i_1_n_0 ),
        .Q(\aresetn_d_reg[1]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT4 #(
    .INIT(16'h0800)) 
    \gen_axi.gen_write.s_axi_awready_i_i_2 
       (.I0(err_awready),
        .I1(m_axi_awvalid_1),
        .I2(Q[48]),
        .I3(m_valid_i_reg_0),
        .O(\gen_axi.gen_write.s_axi_awready_i_reg ));
  LUT6 #(
    .INIT(64'hFFBF00400040FFBF)) 
    \gen_write.aw_cnt[1]_i_1 
       (.I0(\gen_write.aw_cnt_reg[2] ),
        .I1(sr_axi_awready),
        .I2(w_mask0),
        .I3(\s_axi_awaddr[25] ),
        .I4(s_axi_awready_0[1]),
        .I5(s_axi_awready_0[0]),
        .O(D[0]));
  LUT6 #(
    .INIT(64'hA9A9A9A9A96AA9A9)) 
    \gen_write.aw_cnt[2]_i_1 
       (.I0(s_axi_awready_0[2]),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[0]),
        .I3(\gen_write.aw_cnt_reg[2] ),
        .I4(\gen_write.aw_cnt[2]_i_3_n_0 ),
        .I5(\s_axi_awaddr[25] ),
        .O(D[1]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \gen_write.aw_cnt[2]_i_3 
       (.I0(s_axi_awready_0[5]),
        .I1(s_axi_awvalid),
        .I2(sr_axi_awready),
        .O(\gen_write.aw_cnt[2]_i_3_n_0 ));
  LUT5 #(
    .INIT(32'h7FFE8001)) 
    \gen_write.aw_cnt[3]_i_1 
       (.I0(s_axi_awready_0[1]),
        .I1(s_axi_awready_0[0]),
        .I2(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I3(s_axi_awready_0[2]),
        .I4(s_axi_awready_0[3]),
        .O(D[2]));
  LUT6 #(
    .INIT(64'h7FFFFFFE80000001)) 
    \gen_write.aw_cnt[4]_i_1 
       (.I0(s_axi_awready_0[3]),
        .I1(s_axi_awready_0[1]),
        .I2(s_axi_awready_0[0]),
        .I3(\gen_write.aw_cnt[4]_i_2_n_0 ),
        .I4(s_axi_awready_0[2]),
        .I5(s_axi_awready_0[4]),
        .O(D[3]));
  LUT6 #(
    .INIT(64'h000000000F4F0000)) 
    \gen_write.aw_cnt[4]_i_2 
       (.I0(\s_axi_awaddr[32] ),
        .I1(\s_axi_awaddr[26] ),
        .I2(\s_axi_awaddr[25]_0 ),
        .I3(\gen_write.aw_cnt_reg[4] ),
        .I4(\gen_write.aw_cnt[2]_i_3_n_0 ),
        .I5(\gen_write.aw_cnt_reg[2] ),
        .O(\gen_write.aw_cnt[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h807F808080808080)) 
    \gen_write.aw_cnt[5]_i_1 
       (.I0(\gen_write.aw_cnt_reg[5]_2 ),
        .I1(s_axi_bready),
        .I2(m_axi_bvalid),
        .I3(\s_axi_awaddr[25] ),
        .I4(w_mask0),
        .I5(sr_axi_awready),
        .O(E));
  LUT6 #(
    .INIT(64'h5AAAAAAAAAAAAAA6)) 
    \gen_write.aw_cnt[5]_i_2 
       (.I0(s_axi_awready_0[5]),
        .I1(\gen_write.aw_cnt[5]_i_5_n_0 ),
        .I2(s_axi_awready_0[2]),
        .I3(\gen_write.aw_cnt[5]_i_6_n_0 ),
        .I4(s_axi_awready_0[3]),
        .I5(s_axi_awready_0[4]),
        .O(D[4]));
  LUT6 #(
    .INIT(64'h5555555555454545)) 
    \gen_write.aw_cnt[5]_i_5 
       (.I0(\gen_write.aw_cnt_reg[5] ),
        .I1(\gen_write.aw_cnt_reg[2] ),
        .I2(\gen_write.aw_cnt[2]_i_3_n_0 ),
        .I3(\gen_write.aw_cnt_reg[4] ),
        .I4(\s_axi_awaddr[25]_0 ),
        .I5(\gen_write.aw_cnt_reg[5]_0 ),
        .O(\gen_write.aw_cnt[5]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000202020)) 
    \gen_write.aw_cnt[5]_i_6 
       (.I0(\gen_write.aw_cnt_reg[5]_1 ),
        .I1(\gen_write.aw_cnt_reg[2] ),
        .I2(\gen_write.aw_cnt[2]_i_3_n_0 ),
        .I3(\gen_write.aw_cnt_reg[4] ),
        .I4(\s_axi_awaddr[25]_0 ),
        .I5(\gen_write.aw_cnt_reg[5]_0 ),
        .O(\gen_write.aw_cnt[5]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h5400540000005400)) 
    \gen_write.w_mask_i_1 
       (.I0(\gen_write.w_mask_reg_0 ),
        .I1(w_mask),
        .I2(w_mask0),
        .I3(\aresetn_d_reg[1]_0 ),
        .I4(s_axi_awready),
        .I5(\s_axi_awaddr[25] ),
        .O(\gen_write.w_mask_reg ));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT4 #(
    .INIT(16'h0008)) 
    m_axi_awvalid_INST_0
       (.I0(Q[48]),
        .I1(m_valid_i_reg_0),
        .I2(m_axi_awvalid_0),
        .I3(m_axi_awvalid_1),
        .O(m_axi_awvalid));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[48]_i_1 
       (.I0(\s_axi_awaddr[25] ),
        .O(w_match));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_10 
       (.I0(\m_payload_i_reg[77]_0 [46]),
        .I1(\m_payload_i_reg[77]_0 [41]),
        .I2(\m_payload_i_reg[77]_0 [36]),
        .I3(\m_payload_i_reg[77]_0 [47]),
        .O(\m_payload_i[48]_i_10_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \m_payload_i[48]_i_11 
       (.I0(\m_payload_i_reg[77]_0 [38]),
        .I1(\m_payload_i_reg[77]_0 [42]),
        .I2(\m_payload_i_reg[77]_0 [40]),
        .I3(\m_payload_i_reg[77]_0 [31]),
        .I4(\m_payload_i_reg[77]_0 [43]),
        .I5(\m_payload_i_reg[77]_0 [37]),
        .O(\m_payload_i[48]_i_11_n_0 ));
  LUT6 #(
    .INIT(64'h8000000F00000000)) 
    \m_payload_i[48]_i_12 
       (.I0(\m_payload_i[48]_i_19_n_0 ),
        .I1(\m_payload_i[48]_i_20_n_0 ),
        .I2(\m_payload_i_reg[77]_0 [26]),
        .I3(\m_payload_i_reg[77]_0 [27]),
        .I4(\m_payload_i_reg[77]_0 [23]),
        .I5(\m_payload_i_reg[77]_0 [24]),
        .O(\s_axi_awaddr[26]_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFEFFFFFFFF)) 
    \m_payload_i[48]_i_13 
       (.I0(\m_payload_i_reg[77]_0 [23]),
        .I1(\m_payload_i_reg[77]_0 [24]),
        .I2(\m_payload_i_reg[77]_0 [18]),
        .I3(\m_payload_i_reg[77]_0 [17]),
        .I4(\m_payload_i_reg[77]_0 [16]),
        .I5(\s_axi_awaddr[22] ),
        .O(\s_axi_awaddr[23] ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[48]_i_14 
       (.I0(\s_axi_awaddr[29] ),
        .I1(\m_payload_i_reg[77]_0 [40]),
        .I2(\m_payload_i_reg[77]_0 [45]),
        .I3(\m_payload_i_reg[77]_0 [36]),
        .I4(\m_payload_i_reg[77]_0 [28]),
        .O(\m_payload_i[48]_i_14_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \m_payload_i[48]_i_15 
       (.I0(\s_axi_awaddr[44] ),
        .I1(\s_axi_awaddr[23]_0 ),
        .I2(\s_axi_awaddr[30] ),
        .I3(\m_payload_i_reg[77]_0 [46]),
        .I4(\m_payload_i_reg[77]_0 [34]),
        .O(\m_payload_i[48]_i_15_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \m_payload_i[48]_i_16 
       (.I0(\m_payload_i_reg[77]_0 [26]),
        .I1(\m_payload_i_reg[77]_0 [27]),
        .O(\s_axi_awaddr[26]_1 ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \m_payload_i[48]_i_17 
       (.I0(\m_payload_i_reg[77]_0 [22]),
        .I1(\m_payload_i_reg[77]_0 [21]),
        .I2(\m_payload_i_reg[77]_0 [20]),
        .I3(\m_payload_i_reg[77]_0 [19]),
        .O(\s_axi_awaddr[22] ));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT4 #(
    .INIT(16'hFFFD)) 
    \m_payload_i[48]_i_18 
       (.I0(\m_payload_i_reg[77]_0 [24]),
        .I1(\m_payload_i_reg[77]_0 [23]),
        .I2(\m_payload_i_reg[77]_0 [27]),
        .I3(\m_payload_i_reg[77]_0 [26]),
        .O(\s_axi_awaddr[24] ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_payload_i[48]_i_19 
       (.I0(\m_payload_i_reg[77]_0 [16]),
        .I1(\m_payload_i_reg[77]_0 [15]),
        .I2(\m_payload_i_reg[77]_0 [18]),
        .I3(\m_payload_i_reg[77]_0 [17]),
        .O(\m_payload_i[48]_i_19_n_0 ));
  LUT6 #(
    .INIT(64'hB0B0B0B0B0F0F0F0)) 
    \m_payload_i[48]_i_2 
       (.I0(\s_axi_awaddr[32] ),
        .I1(\s_axi_awaddr[26] ),
        .I2(\s_axi_awaddr[25]_0 ),
        .I3(\s_axi_awaddr[16] ),
        .I4(\m_payload_i[48]_i_7_n_0 ),
        .I5(\m_payload_i_reg[77]_0 [25]),
        .O(\s_axi_awaddr[25] ));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \m_payload_i[48]_i_20 
       (.I0(\m_payload_i_reg[77]_0 [22]),
        .I1(\m_payload_i_reg[77]_0 [21]),
        .I2(\m_payload_i_reg[77]_0 [20]),
        .I3(\m_payload_i_reg[77]_0 [19]),
        .O(\m_payload_i[48]_i_20_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \m_payload_i[48]_i_21 
       (.I0(\m_payload_i_reg[77]_0 [29]),
        .I1(\m_payload_i_reg[77]_0 [33]),
        .I2(\m_payload_i_reg[77]_0 [22]),
        .I3(\m_payload_i_reg[77]_0 [47]),
        .I4(\m_payload_i_reg[77]_0 [39]),
        .I5(\m_payload_i_reg[77]_0 [37]),
        .O(\s_axi_awaddr[29] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[48]_i_22 
       (.I0(\m_payload_i_reg[77]_0 [44]),
        .I1(\m_payload_i_reg[77]_0 [41]),
        .I2(\m_payload_i_reg[77]_0 [32]),
        .I3(\m_payload_i_reg[77]_0 [25]),
        .O(\s_axi_awaddr[44] ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[48]_i_23 
       (.I0(\m_payload_i_reg[77]_0 [23]),
        .I1(\m_payload_i_reg[77]_0 [24]),
        .I2(\m_payload_i_reg[77]_0 [42]),
        .I3(\m_payload_i_reg[77]_0 [31]),
        .O(\s_axi_awaddr[23]_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \m_payload_i[48]_i_24 
       (.I0(\m_payload_i_reg[77]_0 [30]),
        .I1(\m_payload_i_reg[77]_0 [43]),
        .I2(\m_payload_i_reg[77]_0 [38]),
        .I3(\m_payload_i_reg[77]_0 [35]),
        .O(\s_axi_awaddr[30] ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFF7)) 
    \m_payload_i[48]_i_3 
       (.I0(\m_payload_i_reg[77]_0 [32]),
        .I1(\m_payload_i_reg[77]_0 [34]),
        .I2(\m_payload_i[48]_i_8_n_0 ),
        .I3(\m_payload_i[48]_i_9_n_0 ),
        .I4(\m_payload_i[48]_i_10_n_0 ),
        .I5(\m_payload_i[48]_i_11_n_0 ),
        .O(\s_axi_awaddr[32] ));
  LUT4 #(
    .INIT(16'hAAAB)) 
    \m_payload_i[48]_i_4 
       (.I0(\s_axi_awaddr[26]_0 ),
        .I1(\s_axi_awaddr[23] ),
        .I2(\m_payload_i_reg[77]_0 [26]),
        .I3(\m_payload_i_reg[77]_0 [27]),
        .O(\s_axi_awaddr[26] ));
  LUT6 #(
    .INIT(64'hFEFEFE00FFFFFFFF)) 
    \m_payload_i[48]_i_5 
       (.I0(\m_payload_i_reg[77]_0 [25]),
        .I1(\s_axi_awaddr[23] ),
        .I2(\s_axi_awaddr[32] ),
        .I3(\m_payload_i[48]_i_14_n_0 ),
        .I4(\m_payload_i[48]_i_15_n_0 ),
        .I5(\s_axi_awaddr[26]_1 ),
        .O(\s_axi_awaddr[25]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT4 #(
    .INIT(16'h0002)) 
    \m_payload_i[48]_i_6 
       (.I0(\s_axi_awaddr[22] ),
        .I1(\m_payload_i_reg[77]_0 [16]),
        .I2(\m_payload_i_reg[77]_0 [17]),
        .I3(\m_payload_i_reg[77]_0 [18]),
        .O(\s_axi_awaddr[16] ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \m_payload_i[48]_i_7 
       (.I0(\m_payload_i_reg[77]_0 [14]),
        .I1(\m_payload_i_reg[77]_0 [15]),
        .I2(\m_payload_i_reg[77]_0 [12]),
        .I3(\m_payload_i_reg[77]_0 [13]),
        .I4(\s_axi_awaddr[24] ),
        .O(\m_payload_i[48]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_8 
       (.I0(\m_payload_i_reg[77]_0 [30]),
        .I1(\m_payload_i_reg[77]_0 [45]),
        .I2(\m_payload_i_reg[77]_0 [33]),
        .I3(\m_payload_i_reg[77]_0 [44]),
        .O(\m_payload_i[48]_i_8_n_0 ));
  LUT4 #(
    .INIT(16'h7FFF)) 
    \m_payload_i[48]_i_9 
       (.I0(\m_payload_i_reg[77]_0 [39]),
        .I1(\m_payload_i_reg[77]_0 [35]),
        .I2(\m_payload_i_reg[77]_0 [28]),
        .I3(\m_payload_i_reg[77]_0 [29]),
        .O(\m_payload_i[48]_i_9_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \m_payload_i[73]_i_1 
       (.I0(m_valid_i_reg_0),
        .O(\m_payload_i[73]_i_1_n_0 ));
  FDRE \m_payload_i_reg[0] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [0]),
        .Q(Q[0]),
        .R(1'b0));
  FDRE \m_payload_i_reg[10] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [10]),
        .Q(Q[10]),
        .R(1'b0));
  FDRE \m_payload_i_reg[11] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [11]),
        .Q(Q[11]),
        .R(1'b0));
  FDRE \m_payload_i_reg[12] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [12]),
        .Q(Q[12]),
        .R(1'b0));
  FDRE \m_payload_i_reg[13] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [13]),
        .Q(Q[13]),
        .R(1'b0));
  FDRE \m_payload_i_reg[14] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [14]),
        .Q(Q[14]),
        .R(1'b0));
  FDRE \m_payload_i_reg[15] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [15]),
        .Q(Q[15]),
        .R(1'b0));
  FDRE \m_payload_i_reg[16] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [16]),
        .Q(Q[16]),
        .R(1'b0));
  FDRE \m_payload_i_reg[17] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [17]),
        .Q(Q[17]),
        .R(1'b0));
  FDRE \m_payload_i_reg[18] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [18]),
        .Q(Q[18]),
        .R(1'b0));
  FDRE \m_payload_i_reg[19] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [19]),
        .Q(Q[19]),
        .R(1'b0));
  FDRE \m_payload_i_reg[1] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [1]),
        .Q(Q[1]),
        .R(1'b0));
  FDRE \m_payload_i_reg[20] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [20]),
        .Q(Q[20]),
        .R(1'b0));
  FDRE \m_payload_i_reg[21] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [21]),
        .Q(Q[21]),
        .R(1'b0));
  FDRE \m_payload_i_reg[22] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [22]),
        .Q(Q[22]),
        .R(1'b0));
  FDRE \m_payload_i_reg[23] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [23]),
        .Q(Q[23]),
        .R(1'b0));
  FDRE \m_payload_i_reg[24] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [24]),
        .Q(Q[24]),
        .R(1'b0));
  FDRE \m_payload_i_reg[25] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [25]),
        .Q(Q[25]),
        .R(1'b0));
  FDRE \m_payload_i_reg[26] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [26]),
        .Q(Q[26]),
        .R(1'b0));
  FDRE \m_payload_i_reg[27] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [27]),
        .Q(Q[27]),
        .R(1'b0));
  FDRE \m_payload_i_reg[28] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [28]),
        .Q(Q[28]),
        .R(1'b0));
  FDRE \m_payload_i_reg[29] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [29]),
        .Q(Q[29]),
        .R(1'b0));
  FDRE \m_payload_i_reg[2] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [2]),
        .Q(Q[2]),
        .R(1'b0));
  FDRE \m_payload_i_reg[30] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [30]),
        .Q(Q[30]),
        .R(1'b0));
  FDRE \m_payload_i_reg[31] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [31]),
        .Q(Q[31]),
        .R(1'b0));
  FDRE \m_payload_i_reg[32] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [32]),
        .Q(Q[32]),
        .R(1'b0));
  FDRE \m_payload_i_reg[33] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [33]),
        .Q(Q[33]),
        .R(1'b0));
  FDRE \m_payload_i_reg[34] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [34]),
        .Q(Q[34]),
        .R(1'b0));
  FDRE \m_payload_i_reg[35] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [35]),
        .Q(Q[35]),
        .R(1'b0));
  FDRE \m_payload_i_reg[36] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [36]),
        .Q(Q[36]),
        .R(1'b0));
  FDRE \m_payload_i_reg[37] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [37]),
        .Q(Q[37]),
        .R(1'b0));
  FDRE \m_payload_i_reg[38] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [38]),
        .Q(Q[38]),
        .R(1'b0));
  FDRE \m_payload_i_reg[39] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [39]),
        .Q(Q[39]),
        .R(1'b0));
  FDRE \m_payload_i_reg[3] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [3]),
        .Q(Q[3]),
        .R(1'b0));
  FDRE \m_payload_i_reg[40] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [40]),
        .Q(Q[40]),
        .R(1'b0));
  FDRE \m_payload_i_reg[41] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [41]),
        .Q(Q[41]),
        .R(1'b0));
  FDRE \m_payload_i_reg[42] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [42]),
        .Q(Q[42]),
        .R(1'b0));
  FDRE \m_payload_i_reg[43] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [43]),
        .Q(Q[43]),
        .R(1'b0));
  FDRE \m_payload_i_reg[44] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [44]),
        .Q(Q[44]),
        .R(1'b0));
  FDRE \m_payload_i_reg[45] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [45]),
        .Q(Q[45]),
        .R(1'b0));
  FDRE \m_payload_i_reg[46] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [46]),
        .Q(Q[46]),
        .R(1'b0));
  FDRE \m_payload_i_reg[47] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [47]),
        .Q(Q[47]),
        .R(1'b0));
  FDRE \m_payload_i_reg[48] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(w_match),
        .Q(Q[48]),
        .R(1'b0));
  FDRE \m_payload_i_reg[49] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [48]),
        .Q(Q[49]),
        .R(1'b0));
  FDRE \m_payload_i_reg[4] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [4]),
        .Q(Q[4]),
        .R(1'b0));
  FDRE \m_payload_i_reg[50] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [49]),
        .Q(Q[50]),
        .R(1'b0));
  FDRE \m_payload_i_reg[51] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [50]),
        .Q(Q[51]),
        .R(1'b0));
  FDRE \m_payload_i_reg[52] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [51]),
        .Q(Q[52]),
        .R(1'b0));
  FDRE \m_payload_i_reg[53] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [52]),
        .Q(Q[53]),
        .R(1'b0));
  FDRE \m_payload_i_reg[54] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [53]),
        .Q(Q[54]),
        .R(1'b0));
  FDRE \m_payload_i_reg[55] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [54]),
        .Q(Q[55]),
        .R(1'b0));
  FDRE \m_payload_i_reg[56] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [55]),
        .Q(Q[56]),
        .R(1'b0));
  FDRE \m_payload_i_reg[57] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [56]),
        .Q(Q[57]),
        .R(1'b0));
  FDRE \m_payload_i_reg[58] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [57]),
        .Q(Q[58]),
        .R(1'b0));
  FDRE \m_payload_i_reg[59] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [58]),
        .Q(Q[59]),
        .R(1'b0));
  FDRE \m_payload_i_reg[5] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [5]),
        .Q(Q[5]),
        .R(1'b0));
  FDRE \m_payload_i_reg[60] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [59]),
        .Q(Q[60]),
        .R(1'b0));
  FDRE \m_payload_i_reg[61] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [60]),
        .Q(Q[61]),
        .R(1'b0));
  FDRE \m_payload_i_reg[62] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [61]),
        .Q(Q[62]),
        .R(1'b0));
  FDRE \m_payload_i_reg[63] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [62]),
        .Q(Q[63]),
        .R(1'b0));
  FDRE \m_payload_i_reg[64] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [63]),
        .Q(Q[64]),
        .R(1'b0));
  FDRE \m_payload_i_reg[65] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [64]),
        .Q(Q[65]),
        .R(1'b0));
  FDRE \m_payload_i_reg[66] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [65]),
        .Q(Q[66]),
        .R(1'b0));
  FDRE \m_payload_i_reg[67] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [66]),
        .Q(Q[67]),
        .R(1'b0));
  FDRE \m_payload_i_reg[68] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [67]),
        .Q(Q[68]),
        .R(1'b0));
  FDRE \m_payload_i_reg[69] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [68]),
        .Q(Q[69]),
        .R(1'b0));
  FDRE \m_payload_i_reg[6] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [6]),
        .Q(Q[6]),
        .R(1'b0));
  FDRE \m_payload_i_reg[70] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [69]),
        .Q(Q[70]),
        .R(1'b0));
  FDRE \m_payload_i_reg[71] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [70]),
        .Q(Q[71]),
        .R(1'b0));
  FDRE \m_payload_i_reg[72] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [71]),
        .Q(Q[72]),
        .R(1'b0));
  FDRE \m_payload_i_reg[73] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [72]),
        .Q(Q[73]),
        .R(1'b0));
  FDRE \m_payload_i_reg[74] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [73]),
        .Q(Q[74]),
        .R(1'b0));
  FDRE \m_payload_i_reg[75] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [74]),
        .Q(Q[75]),
        .R(1'b0));
  FDRE \m_payload_i_reg[76] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [75]),
        .Q(Q[76]),
        .R(1'b0));
  FDRE \m_payload_i_reg[77] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [76]),
        .Q(Q[77]),
        .R(1'b0));
  FDRE \m_payload_i_reg[7] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [7]),
        .Q(Q[7]),
        .R(1'b0));
  FDRE \m_payload_i_reg[8] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [8]),
        .Q(Q[8]),
        .R(1'b0));
  FDRE \m_payload_i_reg[9] 
       (.C(aclk),
        .CE(\m_payload_i[73]_i_1_n_0 ),
        .D(\m_payload_i_reg[77]_0 [9]),
        .Q(Q[9]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT4 #(
    .INIT(16'h202F)) 
    m_valid_i_i_1
       (.I0(s_axi_awvalid),
        .I1(s_axi_awready_0[5]),
        .I2(sr_axi_awready),
        .I3(m_valid_i_reg_2),
        .O(m_valid_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    m_valid_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(m_valid_i_i_1_n_0),
        .Q(m_valid_i_reg_0),
        .R(SR));
  LUT2 #(
    .INIT(4'h2)) 
    s_axi_awready_INST_0
       (.I0(sr_axi_awready),
        .I1(s_axi_awready_0[5]),
        .O(s_axi_awready));
  LUT6 #(
    .INIT(64'hDFD5DFDF00000000)) 
    s_ready_i_i_1
       (.I0(\aresetn_d_reg[1]_0 ),
        .I1(m_valid_i_reg_2),
        .I2(m_valid_i_reg_0),
        .I3(s_axi_awready_0[5]),
        .I4(s_axi_awvalid),
        .I5(\aresetn_d_reg[0]_0 ),
        .O(s_ready_i_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    s_ready_i_reg
       (.C(aclk),
        .CE(1'b1),
        .D(s_ready_i_i_1_n_0),
        .Q(sr_axi_awready),
        .R(1'b0));
endmodule

(* CHECK_LICENSE_TYPE = "meowrouter_s01_mmu_0,axi_mmu_v2_1_16_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "axi_mmu_v2_1_16_top,Vivado 2018.3_AR71898" *) 
(* NotValidForBitStream *)
module meowrouter_s01_mmu_0
   (aclk,
    aresetn,
    s_axi_awid,
    s_axi_awaddr,
    s_axi_awlen,
    s_axi_awsize,
    s_axi_awburst,
    s_axi_awlock,
    s_axi_awcache,
    s_axi_awprot,
    s_axi_awqos,
    s_axi_awvalid,
    s_axi_awready,
    s_axi_wdata,
    s_axi_wstrb,
    s_axi_wlast,
    s_axi_wvalid,
    s_axi_wready,
    s_axi_bid,
    s_axi_bresp,
    s_axi_bvalid,
    s_axi_bready,
    s_axi_arid,
    s_axi_araddr,
    s_axi_arlen,
    s_axi_arsize,
    s_axi_arburst,
    s_axi_arlock,
    s_axi_arcache,
    s_axi_arprot,
    s_axi_arqos,
    s_axi_arvalid,
    s_axi_arready,
    s_axi_rid,
    s_axi_rdata,
    s_axi_rresp,
    s_axi_rlast,
    s_axi_rvalid,
    s_axi_rready,
    m_axi_awid,
    m_axi_awaddr,
    m_axi_awlen,
    m_axi_awsize,
    m_axi_awburst,
    m_axi_awlock,
    m_axi_awcache,
    m_axi_awprot,
    m_axi_awqos,
    m_axi_awvalid,
    m_axi_awready,
    m_axi_wdata,
    m_axi_wstrb,
    m_axi_wlast,
    m_axi_wvalid,
    m_axi_wready,
    m_axi_bid,
    m_axi_bresp,
    m_axi_bvalid,
    m_axi_bready,
    m_axi_arid,
    m_axi_araddr,
    m_axi_arlen,
    m_axi_arsize,
    m_axi_arburst,
    m_axi_arlock,
    m_axi_arcache,
    m_axi_arprot,
    m_axi_arqos,
    m_axi_arvalid,
    m_axi_arready,
    m_axi_rid,
    m_axi_rdata,
    m_axi_rresp,
    m_axi_rlast,
    m_axi_rvalid,
    m_axi_rready);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK, FREQ_HZ 50000000, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, ASSOCIATED_BUSIF S_AXI:M_AXI, ASSOCIATED_RESET ARESETN, INSERT_VIP 0" *) input aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST, POLARITY ACTIVE_LOW, INSERT_VIP 0, TYPE INTERCONNECT" *) input aresetn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWID" *) input [3:0]s_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWADDR" *) input [47:0]s_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLEN" *) input [7:0]s_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWSIZE" *) input [2:0]s_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWBURST" *) input [1:0]s_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWLOCK" *) input [0:0]s_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWCACHE" *) input [3:0]s_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWPROT" *) input [2:0]s_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWQOS" *) input [3:0]s_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWVALID" *) input s_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI AWREADY" *) output s_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WDATA" *) input [63:0]s_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WSTRB" *) input [7:0]s_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WLAST" *) input s_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WVALID" *) input s_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI WREADY" *) output s_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BID" *) output [3:0]s_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BRESP" *) output [1:0]s_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BVALID" *) output s_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI BREADY" *) input s_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARID" *) input [3:0]s_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARADDR" *) input [47:0]s_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLEN" *) input [7:0]s_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARSIZE" *) input [2:0]s_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARBURST" *) input [1:0]s_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARLOCK" *) input [0:0]s_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARCACHE" *) input [3:0]s_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARPROT" *) input [2:0]s_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARQOS" *) input [3:0]s_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARVALID" *) input s_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI ARREADY" *) output s_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RID" *) output [3:0]s_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RDATA" *) output [63:0]s_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RRESP" *) output [1:0]s_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RLAST" *) output s_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RVALID" *) output s_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 1, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) input s_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWID" *) output [3:0]m_axi_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWADDR" *) output [47:0]m_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLEN" *) output [7:0]m_axi_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWSIZE" *) output [2:0]m_axi_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWBURST" *) output [1:0]m_axi_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWLOCK" *) output [0:0]m_axi_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWCACHE" *) output [3:0]m_axi_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWPROT" *) output [2:0]m_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWQOS" *) output [3:0]m_axi_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWVALID" *) output m_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI AWREADY" *) input m_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WDATA" *) output [63:0]m_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WSTRB" *) output [7:0]m_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WLAST" *) output m_axi_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WVALID" *) output m_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI WREADY" *) input m_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BID" *) input [3:0]m_axi_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BRESP" *) input [1:0]m_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BVALID" *) input m_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI BREADY" *) output m_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARID" *) output [3:0]m_axi_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARADDR" *) output [47:0]m_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLEN" *) output [7:0]m_axi_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARSIZE" *) output [2:0]m_axi_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARBURST" *) output [1:0]m_axi_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARLOCK" *) output [0:0]m_axi_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARCACHE" *) output [3:0]m_axi_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARPROT" *) output [2:0]m_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARQOS" *) output [3:0]m_axi_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARVALID" *) output m_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI ARREADY" *) input m_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RID" *) input [3:0]m_axi_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RDATA" *) input [63:0]m_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RRESP" *) input [1:0]m_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RLAST" *) input m_axi_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RVALID" *) input m_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 M_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME M_AXI, DATA_WIDTH 64, PROTOCOL AXI4, FREQ_HZ 50000000, ID_WIDTH 4, ADDR_WIDTH 48, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 1, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 1, HAS_QOS 1, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 1, NUM_READ_OUTSTANDING 2, NUM_WRITE_OUTSTANDING 2, MAX_BURST_LENGTH 256, PHASE 0.000, CLK_DOMAIN meowrouter_cpu_clk, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0" *) output m_axi_rready;

  wire aclk;
  wire aresetn;
  wire [47:0]m_axi_araddr;
  wire [1:0]m_axi_arburst;
  wire [3:0]m_axi_arcache;
  wire [3:0]m_axi_arid;
  wire [7:0]m_axi_arlen;
  wire [0:0]m_axi_arlock;
  wire [2:0]m_axi_arprot;
  wire [3:0]m_axi_arqos;
  wire m_axi_arready;
  wire [2:0]m_axi_arsize;
  wire m_axi_arvalid;
  wire [47:0]m_axi_awaddr;
  wire [1:0]m_axi_awburst;
  wire [3:0]m_axi_awcache;
  wire [3:0]m_axi_awid;
  wire [7:0]m_axi_awlen;
  wire [0:0]m_axi_awlock;
  wire [2:0]m_axi_awprot;
  wire [3:0]m_axi_awqos;
  wire m_axi_awready;
  wire [2:0]m_axi_awsize;
  wire m_axi_awvalid;
  wire [3:0]m_axi_bid;
  wire m_axi_bready;
  wire [1:0]m_axi_bresp;
  wire m_axi_bvalid;
  wire [63:0]m_axi_rdata;
  wire [3:0]m_axi_rid;
  wire m_axi_rlast;
  wire m_axi_rready;
  wire [1:0]m_axi_rresp;
  wire m_axi_rvalid;
  wire [63:0]m_axi_wdata;
  wire m_axi_wlast;
  wire m_axi_wready;
  wire [7:0]m_axi_wstrb;
  wire m_axi_wvalid;
  wire [47:0]s_axi_araddr;
  wire [1:0]s_axi_arburst;
  wire [3:0]s_axi_arcache;
  wire [3:0]s_axi_arid;
  wire [7:0]s_axi_arlen;
  wire [0:0]s_axi_arlock;
  wire [2:0]s_axi_arprot;
  wire [3:0]s_axi_arqos;
  wire s_axi_arready;
  wire [2:0]s_axi_arsize;
  wire s_axi_arvalid;
  wire [47:0]s_axi_awaddr;
  wire [1:0]s_axi_awburst;
  wire [3:0]s_axi_awcache;
  wire [3:0]s_axi_awid;
  wire [7:0]s_axi_awlen;
  wire [0:0]s_axi_awlock;
  wire [2:0]s_axi_awprot;
  wire [3:0]s_axi_awqos;
  wire s_axi_awready;
  wire [2:0]s_axi_awsize;
  wire s_axi_awvalid;
  wire [3:0]s_axi_bid;
  wire s_axi_bready;
  wire [1:0]s_axi_bresp;
  wire s_axi_bvalid;
  wire [63:0]s_axi_rdata;
  wire [3:0]s_axi_rid;
  wire s_axi_rlast;
  wire s_axi_rready;
  wire [1:0]s_axi_rresp;
  wire s_axi_rvalid;
  wire [63:0]s_axi_wdata;
  wire s_axi_wlast;
  wire s_axi_wready;
  wire [7:0]s_axi_wstrb;
  wire s_axi_wvalid;
  wire [0:0]NLW_inst_m_axi_aruser_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_awuser_UNCONNECTED;
  wire [3:0]NLW_inst_m_axi_wid_UNCONNECTED;
  wire [0:0]NLW_inst_m_axi_wuser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_buser_UNCONNECTED;
  wire [0:0]NLW_inst_s_axi_ruser_UNCONNECTED;

  (* C_AXI_ARUSER_WIDTH = "1" *) 
  (* C_AXI_AWUSER_WIDTH = "1" *) 
  (* C_AXI_BUSER_WIDTH = "1" *) 
  (* C_AXI_DATA_WIDTH = "64" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_PROTOCOL = "0" *) 
  (* C_AXI_RUSER_WIDTH = "1" *) 
  (* C_AXI_SUPPORTS_USER_SIGNALS = "0" *) 
  (* C_AXI_WUSER_WIDTH = "1" *) 
  (* C_BASE_ADDR = "384'b000000000000000011111111111111111111111111111111100000000000000000000000000000001111111111111111111100110000000000000000000000000000000000000000111111111111111111110010000000000000000000000000000000000000000011111111111111111111000100000000000000000000000000000000000000001111111111111111111100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_DEST = "6'b000000" *) 
  (* C_DEST_WIDTH = "1" *) 
  (* C_FAMILY = "artix7" *) 
  (* C_M_AXI_ADDR_WIDTH = "48" *) 
  (* C_M_AXI_SUPPORTS_READ = "6'b111111" *) 
  (* C_M_AXI_SUPPORTS_WRITE = "6'b111111" *) 
  (* C_NUM_RANGES = "6" *) 
  (* C_PREFIX = "6'b000000" *) 
  (* C_PREFIX_WIDTH = "1" *) 
  (* C_RANGE_SIZE = "192'b000000000000000000000000000011110000000000000000000000000001011100000000000000000000000000010000000000000000000000000000000011000000000000000000000000000001000000000000000000000000000000010110" *) 
  (* C_S_AXI_ADDR_WIDTH = "48" *) 
  (* C_S_AXI_SUPPORTS_READ = "1" *) 
  (* C_S_AXI_SUPPORTS_WRITE = "1" *) 
  (* C_USES_DEST = "0" *) 
  (* DowngradeIPIdentifiedWarnings = "yes" *) 
  (* P_AXI3 = "1" *) 
  (* P_AXI4 = "0" *) 
  (* P_AXILITE = "2" *) 
  (* P_DECERR = "2'b11" *) 
  (* P_NUM_RANGES_LOG = "3" *) 
  (* R_DECERR = "2'b11" *) 
  (* R_IDLE = "2'b00" *) 
  (* R_PENDING = "2'b01" *) 
  (* W_DECERR = "2'b11" *) 
  (* W_IDLE = "2'b00" *) 
  (* W_PENDING = "2'b01" *) 
  meowrouter_s01_mmu_0_axi_mmu_v2_1_16_top inst
       (.aclk(aclk),
        .aresetn(aresetn),
        .m_axi_araddr(m_axi_araddr),
        .m_axi_arburst(m_axi_arburst),
        .m_axi_arcache(m_axi_arcache),
        .m_axi_arid(m_axi_arid),
        .m_axi_arlen(m_axi_arlen),
        .m_axi_arlock(m_axi_arlock),
        .m_axi_arprot(m_axi_arprot),
        .m_axi_arqos(m_axi_arqos),
        .m_axi_arready(m_axi_arready),
        .m_axi_arsize(m_axi_arsize),
        .m_axi_aruser(NLW_inst_m_axi_aruser_UNCONNECTED[0]),
        .m_axi_arvalid(m_axi_arvalid),
        .m_axi_awaddr(m_axi_awaddr),
        .m_axi_awburst(m_axi_awburst),
        .m_axi_awcache(m_axi_awcache),
        .m_axi_awid(m_axi_awid),
        .m_axi_awlen(m_axi_awlen),
        .m_axi_awlock(m_axi_awlock),
        .m_axi_awprot(m_axi_awprot),
        .m_axi_awqos(m_axi_awqos),
        .m_axi_awready(m_axi_awready),
        .m_axi_awsize(m_axi_awsize),
        .m_axi_awuser(NLW_inst_m_axi_awuser_UNCONNECTED[0]),
        .m_axi_awvalid(m_axi_awvalid),
        .m_axi_bid(m_axi_bid),
        .m_axi_bready(m_axi_bready),
        .m_axi_bresp(m_axi_bresp),
        .m_axi_buser(1'b0),
        .m_axi_bvalid(m_axi_bvalid),
        .m_axi_rdata(m_axi_rdata),
        .m_axi_rid(m_axi_rid),
        .m_axi_rlast(m_axi_rlast),
        .m_axi_rready(m_axi_rready),
        .m_axi_rresp(m_axi_rresp),
        .m_axi_ruser(1'b0),
        .m_axi_rvalid(m_axi_rvalid),
        .m_axi_wdata(m_axi_wdata),
        .m_axi_wid(NLW_inst_m_axi_wid_UNCONNECTED[3:0]),
        .m_axi_wlast(m_axi_wlast),
        .m_axi_wready(m_axi_wready),
        .m_axi_wstrb(m_axi_wstrb),
        .m_axi_wuser(NLW_inst_m_axi_wuser_UNCONNECTED[0]),
        .m_axi_wvalid(m_axi_wvalid),
        .s_axi_araddr(s_axi_araddr),
        .s_axi_arburst(s_axi_arburst),
        .s_axi_arcache(s_axi_arcache),
        .s_axi_arid(s_axi_arid),
        .s_axi_arlen(s_axi_arlen),
        .s_axi_arlock(s_axi_arlock),
        .s_axi_arprot(s_axi_arprot),
        .s_axi_arqos(s_axi_arqos),
        .s_axi_arready(s_axi_arready),
        .s_axi_arsize(s_axi_arsize),
        .s_axi_aruser(1'b0),
        .s_axi_arvalid(s_axi_arvalid),
        .s_axi_awaddr(s_axi_awaddr),
        .s_axi_awburst(s_axi_awburst),
        .s_axi_awcache(s_axi_awcache),
        .s_axi_awid(s_axi_awid),
        .s_axi_awlen(s_axi_awlen),
        .s_axi_awlock(s_axi_awlock),
        .s_axi_awprot(s_axi_awprot),
        .s_axi_awqos(s_axi_awqos),
        .s_axi_awready(s_axi_awready),
        .s_axi_awsize(s_axi_awsize),
        .s_axi_awuser(1'b0),
        .s_axi_awvalid(s_axi_awvalid),
        .s_axi_bid(s_axi_bid),
        .s_axi_bready(s_axi_bready),
        .s_axi_bresp(s_axi_bresp),
        .s_axi_buser(NLW_inst_s_axi_buser_UNCONNECTED[0]),
        .s_axi_bvalid(s_axi_bvalid),
        .s_axi_rdata(s_axi_rdata),
        .s_axi_rid(s_axi_rid),
        .s_axi_rlast(s_axi_rlast),
        .s_axi_rready(s_axi_rready),
        .s_axi_rresp(s_axi_rresp),
        .s_axi_ruser(NLW_inst_s_axi_ruser_UNCONNECTED[0]),
        .s_axi_rvalid(s_axi_rvalid),
        .s_axi_wdata(s_axi_wdata),
        .s_axi_wid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(s_axi_wlast),
        .s_axi_wready(s_axi_wready),
        .s_axi_wstrb(s_axi_wstrb),
        .s_axi_wuser(1'b0),
        .s_axi_wvalid(s_axi_wvalid));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

endmodule
`endif
