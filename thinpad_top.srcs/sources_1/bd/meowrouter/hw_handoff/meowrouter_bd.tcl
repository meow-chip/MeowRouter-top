
################################################################
# This is a generated script based on design: meowrouter
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2018.3
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_msg_id "BD_TCL-109" "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source meowrouter_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# Core, Top

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a100tfgg676-2L
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name meowrouter

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_msg_id "BD_TCL-001" "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_msg_id "BD_TCL-002" "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_msg_id "BD_TCL-003" "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_msg_id "BD_TCL-004" "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_msg_id "BD_TCL-005" "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_msg_id "BD_TCL-114" "ERROR" $errMsg}
   return $nRet
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder
  variable design_name

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_msg_id "BD_TCL-100" "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_msg_id "BD_TCL-101" "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set DISP [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 DISP ]
  set FlashEMC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 FlashEMC ]
  set RAMEMC [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:emc_rtl:1.0 RAMEMC ]
  set SWITCH [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:gpio_rtl:1.0 SWITCH ]
  set UART [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:uart_rtl:1.0 UART ]
  set data_rx [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:axis_rtl:1.0 data_rx ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   CONFIG.HAS_TKEEP {0} \
   CONFIG.HAS_TLAST {1} \
   CONFIG.HAS_TREADY {0} \
   CONFIG.HAS_TSTRB {0} \
   CONFIG.LAYERED_METADATA {undef} \
   CONFIG.TDATA_NUM_BYTES {1} \
   CONFIG.TDEST_WIDTH {0} \
   CONFIG.TID_WIDTH {0} \
   CONFIG.TUSER_WIDTH {0} \
   ] $data_rx
  set data_tx [ create_bd_intf_port -mode Master -vlnv xilinx.com:interface:axis_rtl:1.0 data_tx ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
   ] $data_tx

  # Create ports
  set cpu_clk [ create_bd_port -dir I -type clk cpu_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {70000000} \
 ] $cpu_clk
  set data_clk [ create_bd_port -dir I -type clk data_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] $data_clk
  set data_rx_clk [ create_bd_port -dir I -type clk data_rx_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] $data_rx_clk
  set data_tx_clk [ create_bd_port -dir I -type clk data_tx_clk ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {125000000} \
 ] $data_tx_clk
  set rst [ create_bd_port -dir I -type rst rst ]
  set_property -dict [ list \
   CONFIG.POLARITY {ACTIVE_HIGH} \
 ] $rst
  set vio_rst [ create_bd_port -dir O -from 0 -to 0 vio_rst ]

  # Create instance: AXIVerif, and set properties
  set AXIVerif [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_vip:1.1 AXIVerif ]

  # Create instance: Board, and set properties
  set Board [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_gpio:2.0 Board ]
  set_property -dict [ list \
   CONFIG.C_ALL_INPUTS {1} \
   CONFIG.C_ALL_OUTPUTS_2 {1} \
   CONFIG.C_GPIO2_WIDTH {32} \
   CONFIG.C_GPIO_WIDTH {16} \
   CONFIG.C_IS_DUAL {1} \
 ] $Board

  # Create instance: BufAddrSlice, and set properties
  set BufAddrSlice [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlslice:1.0 BufAddrSlice ]
  set_property -dict [ list \
   CONFIG.DIN_FROM {31} \
   CONFIG.DIN_TO {2} \
   CONFIG.DOUT_WIDTH {30} \
 ] $BufAddrSlice

  # Create instance: CPU, and set properties
  set block_name Core
  set block_cell_name CPU
  if { [catch {set CPU [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $CPU eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: EthBuf, and set properties
  set EthBuf [ create_bd_cell -type ip -vlnv xilinx.com:ip:blk_mem_gen:8.4 EthBuf ]
  set_property -dict [ list \
   CONFIG.Assume_Synchronous_Clk {false} \
   CONFIG.Byte_Size {8} \
   CONFIG.EN_SAFETY_CKT {true} \
   CONFIG.Enable_32bit_Address {false} \
   CONFIG.Enable_B {Use_ENB_Pin} \
   CONFIG.Memory_Type {True_Dual_Port_RAM} \
   CONFIG.Port_B_Clock {100} \
   CONFIG.Port_B_Enable_Rate {100} \
   CONFIG.Port_B_Write_Rate {50} \
   CONFIG.Read_Width_A {32} \
   CONFIG.Read_Width_B {8} \
   CONFIG.Register_PortA_Output_of_Memory_Core {false} \
   CONFIG.Register_PortA_Output_of_Memory_Primitives {true} \
   CONFIG.Register_PortB_Output_of_Memory_Core {false} \
   CONFIG.Register_PortB_Output_of_Memory_Primitives {false} \
   CONFIG.Reset_Memory_Latch_A {false} \
   CONFIG.Reset_Memory_Latch_B {false} \
   CONFIG.Use_Byte_Write_Enable {true} \
   CONFIG.Use_RSTA_Pin {true} \
   CONFIG.Use_RSTB_Pin {false} \
   CONFIG.Write_Depth_A {4096} \
   CONFIG.Write_Width_A {32} \
   CONFIG.Write_Width_B {8} \
   CONFIG.use_bram_block {Stand_Alone} \
 ] $EthBuf

  # Create instance: EthBufCtrl, and set properties
  set EthBufCtrl [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_bram_ctrl:4.1 EthBufCtrl ]
  set_property -dict [ list \
   CONFIG.DATA_WIDTH {32} \
   CONFIG.ECC_TYPE {0} \
   CONFIG.PROTOCOL {AXI4} \
   CONFIG.READ_LATENCY {2} \
   CONFIG.SINGLE_PORT_BRAM {1} \
 ] $EthBufCtrl

  # Create instance: FlashEMC, and set properties
  set FlashEMC [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 FlashEMC ]
  set_property -dict [ list \
   CONFIG.C_MEM0_TYPE {5} \
   CONFIG.C_TAVDV_PS_MEM_0 {30000} \
   CONFIG.C_TCEDV_PS_MEM_0 {70000} \
   CONFIG.C_THZCE_PS_MEM_0 {7000} \
 ] $FlashEMC

  # Create instance: IntCont, and set properties
  set IntCont [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_intc:4.1 IntCont ]
  set_property -dict [ list \
   CONFIG.C_CASCADE_MASTER {0} \
   CONFIG.C_EN_CASCADE_MODE {0} \
   CONFIG.C_HAS_CIE {1} \
   CONFIG.C_HAS_FAST {0} \
   CONFIG.C_HAS_ILR {0} \
   CONFIG.C_HAS_IPR {1} \
   CONFIG.C_HAS_IVR {1} \
   CONFIG.C_HAS_SIE {1} \
   CONFIG.C_IRQ_CONNECTION {1} \
   CONFIG.C_IRQ_IS_LEVEL {1} \
   CONFIG.C_NUM_SW_INTR {0} \
   CONFIG.C_PROCESSOR_CLK_FREQ_MHZ {70} \
   CONFIG.C_S_AXI_ACLK_FREQ_MHZ {70} \
   CONFIG.Sense_of_IRQ_Level_Type {Active_High} \
 ] $IntCont

  # Create instance: NRST, and set properties
  set NRST [ create_bd_cell -type ip -vlnv xilinx.com:ip:util_vector_logic:2.0 NRST ]
  set_property -dict [ list \
   CONFIG.C_OPERATION {not} \
   CONFIG.C_SIZE {1} \
   CONFIG.LOGO_FILE {data/sym_notgate.png} \
 ] $NRST

  # Create instance: Primary, and set properties
  set Primary [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_interconnect:2.1 Primary ]
  set_property -dict [ list \
   CONFIG.ENABLE_ADVANCED_OPTIONS {0} \
   CONFIG.M00_HAS_DATA_FIFO {0} \
   CONFIG.NUM_MI {6} \
   CONFIG.NUM_SI {1} \
   CONFIG.S00_HAS_DATA_FIFO {2} \
   CONFIG.S01_HAS_DATA_FIFO {2} \
   CONFIG.STRATEGY {1} \
 ] $Primary

  # Create instance: RAMEMC, and set properties
  set RAMEMC [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_emc:3.0 RAMEMC ]
  set_property -dict [ list \
   CONFIG.C_INCLUDE_DATAWIDTH_MATCHING_0 {0} \
   CONFIG.C_MAX_MEM_WIDTH {64} \
   CONFIG.C_MEM0_TYPE {1} \
   CONFIG.C_MEM0_WIDTH {64} \
   CONFIG.C_MEM1_WIDTH {16} \
   CONFIG.C_NUM_BANKS_MEM {1} \
   CONFIG.C_S_AXI_MEM_DATA_WIDTH {64} \
 ] $RAMEMC

  # Create instance: Reset, and set properties
  set Reset [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 Reset ]

  # Create instance: Router, and set properties
  set block_name Top
  set block_cell_name Router
  if { [catch {set Router [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_msg_id "BD_TCL-105" "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $Router eq "" } {
     catch {common::send_msg_id "BD_TCL-106" "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: UART, and set properties
  set UART [ create_bd_cell -type ip -vlnv xilinx.com:ip:axi_uartlite:2.0 UART ]
  set_property -dict [ list \
   CONFIG.C_BAUDRATE {57600} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ {70000000} \
   CONFIG.C_S_AXI_ACLK_FREQ_HZ_d {70} \
 ] $UART

  # Create instance: VIO, and set properties
  set VIO [ create_bd_cell -type ip -vlnv xilinx.com:ip:vio:3.0 VIO ]
  set_property -dict [ list \
   CONFIG.C_EN_PROBE_IN_ACTIVITY {0} \
   CONFIG.C_NUM_PROBE_IN {0} \
   CONFIG.C_NUM_PROBE_OUT {1} \
 ] $VIO

  # Create interface connections
  connect_bd_intf_net -intf_net Board_GPIO [get_bd_intf_ports SWITCH] [get_bd_intf_pins Board/GPIO]
  connect_bd_intf_net -intf_net CPU_io_axi [get_bd_intf_pins AXIVerif/S_AXI] [get_bd_intf_pins CPU/io_axi]
  connect_bd_intf_net -intf_net EthBufCtrl_BRAM_PORTA [get_bd_intf_pins EthBuf/BRAM_PORTA] [get_bd_intf_pins EthBufCtrl/BRAM_PORTA]
  connect_bd_intf_net -intf_net FlashEMC_EMC_INTF [get_bd_intf_ports FlashEMC] [get_bd_intf_pins FlashEMC/EMC_INTF]
  connect_bd_intf_net -intf_net Primary_M00_AXI [get_bd_intf_pins Board/S_AXI] [get_bd_intf_pins Primary/M00_AXI]
  connect_bd_intf_net -intf_net Primary_M01_AXI [get_bd_intf_pins Primary/M01_AXI] [get_bd_intf_pins UART/S_AXI]
  connect_bd_intf_net -intf_net Primary_M03_AXI [get_bd_intf_pins Primary/M03_AXI] [get_bd_intf_pins RAMEMC/S_AXI_MEM]
  connect_bd_intf_net -intf_net Primary_M04_AXI [get_bd_intf_pins FlashEMC/S_AXI_MEM] [get_bd_intf_pins Primary/M04_AXI]
  connect_bd_intf_net -intf_net Primary_M05_AXI [get_bd_intf_pins IntCont/s_axi] [get_bd_intf_pins Primary/M05_AXI]
  connect_bd_intf_net -intf_net RAMEMC_EMC_INTF [get_bd_intf_ports RAMEMC] [get_bd_intf_pins RAMEMC/EMC_INTF]
  connect_bd_intf_net -intf_net Router_io_tx [get_bd_intf_ports data_tx] [get_bd_intf_pins Router/io_tx]
  connect_bd_intf_net -intf_net axi_gpio_0_GPIO2 [get_bd_intf_ports DISP] [get_bd_intf_pins Board/GPIO2]
  connect_bd_intf_net -intf_net axi_interconnect_0_M02_AXI [get_bd_intf_pins EthBufCtrl/S_AXI] [get_bd_intf_pins Primary/M02_AXI]
  connect_bd_intf_net -intf_net axi_uartlite_0_UART [get_bd_intf_ports UART] [get_bd_intf_pins UART/UART]
  connect_bd_intf_net -intf_net axi_vip_0_M_AXI [get_bd_intf_pins AXIVerif/M_AXI] [get_bd_intf_pins Primary/S00_AXI]
  connect_bd_intf_net -intf_net io_rx_1 [get_bd_intf_ports data_rx] [get_bd_intf_pins Router/io_rx]

  # Create port connections
  connect_bd_net -net EthBufCtrl_bram_addr_a [get_bd_pins BufAddrSlice/Din] [get_bd_pins EthBufCtrl/bram_addr_a]
  connect_bd_net -net EthBufCtrl_bram_clk_a [get_bd_pins EthBuf/clka] [get_bd_pins EthBufCtrl/bram_clk_a]
  connect_bd_net -net EthBufCtrl_bram_en_a [get_bd_pins EthBuf/ena] [get_bd_pins EthBufCtrl/bram_en_a]
  connect_bd_net -net EthBufCtrl_bram_rst_a [get_bd_pins EthBuf/rsta] [get_bd_pins EthBufCtrl/bram_rst_a]
  connect_bd_net -net EthBufCtrl_bram_we_a [get_bd_pins EthBuf/wea] [get_bd_pins EthBufCtrl/bram_we_a]
  connect_bd_net -net EthBufCtrl_bram_wrdata_a [get_bd_pins EthBuf/dina] [get_bd_pins EthBufCtrl/bram_wrdata_a]
  connect_bd_net -net EthBuf_douta [get_bd_pins EthBuf/douta] [get_bd_pins EthBufCtrl/bram_rddata_a]
  connect_bd_net -net EthBuf_doutb [get_bd_pins EthBuf/doutb] [get_bd_pins Router/io_buf_dout]
  connect_bd_net -net Router_io_buf_addr [get_bd_pins EthBuf/addrb] [get_bd_pins Router/io_buf_addr]
  connect_bd_net -net Router_io_buf_clk [get_bd_pins EthBuf/clkb] [get_bd_pins Router/io_buf_clk]
  connect_bd_net -net Router_io_buf_din [get_bd_pins EthBuf/dinb] [get_bd_pins Router/io_buf_din]
  connect_bd_net -net Router_io_buf_we [get_bd_pins EthBuf/web] [get_bd_pins Router/io_buf_we]
  connect_bd_net -net axi_intc_0_irq [get_bd_pins CPU/io_eint] [get_bd_pins IntCont/irq]
  connect_bd_net -net axi_uartlite_0_interrupt [get_bd_pins IntCont/intr] [get_bd_pins UART/interrupt]
  connect_bd_net -net clk_1 [get_bd_ports cpu_clk] [get_bd_pins AXIVerif/aclk] [get_bd_pins Board/s_axi_aclk] [get_bd_pins CPU/clock] [get_bd_pins EthBufCtrl/s_axi_aclk] [get_bd_pins FlashEMC/rdclk] [get_bd_pins FlashEMC/s_axi_aclk] [get_bd_pins IntCont/s_axi_aclk] [get_bd_pins Primary/ACLK] [get_bd_pins Primary/M00_ACLK] [get_bd_pins Primary/M01_ACLK] [get_bd_pins Primary/M02_ACLK] [get_bd_pins Primary/M03_ACLK] [get_bd_pins Primary/M04_ACLK] [get_bd_pins Primary/M05_ACLK] [get_bd_pins Primary/S00_ACLK] [get_bd_pins RAMEMC/rdclk] [get_bd_pins RAMEMC/s_axi_aclk] [get_bd_pins Reset/slowest_sync_clk] [get_bd_pins UART/s_axi_aclk] [get_bd_pins VIO/clk]
  connect_bd_net -net proc_sys_reset_0_interconnect_aresetn [get_bd_pins Primary/ARESETN] [get_bd_pins Reset/interconnect_aresetn]
  connect_bd_net -net proc_sys_reset_0_mb_reset [get_bd_pins CPU/reset] [get_bd_pins NRST/Op1] [get_bd_pins Reset/mb_reset]
  connect_bd_net -net proc_sys_reset_0_peripheral_aresetn [get_bd_pins Board/s_axi_aresetn] [get_bd_pins EthBufCtrl/s_axi_aresetn] [get_bd_pins FlashEMC/s_axi_aresetn] [get_bd_pins IntCont/s_axi_aresetn] [get_bd_pins Primary/M00_ARESETN] [get_bd_pins Primary/M01_ARESETN] [get_bd_pins Primary/M02_ARESETN] [get_bd_pins Primary/M03_ARESETN] [get_bd_pins Primary/M04_ARESETN] [get_bd_pins Primary/M05_ARESETN] [get_bd_pins RAMEMC/s_axi_aresetn] [get_bd_pins Reset/peripheral_aresetn] [get_bd_pins UART/s_axi_aresetn]
  connect_bd_net -net rst_1 [get_bd_ports rst] [get_bd_pins Reset/ext_reset_in] [get_bd_pins Router/reset]
  connect_bd_net -net rtclk_1 [get_bd_ports data_clk] [get_bd_pins Router/clock]
  connect_bd_net -net rx_clk_1 [get_bd_ports data_rx_clk] [get_bd_pins Router/io_rx_clk]
  connect_bd_net -net tx_clk_1 [get_bd_ports data_tx_clk] [get_bd_pins Router/io_tx_clk]
  connect_bd_net -net util_vector_logic_0_Res [get_bd_pins AXIVerif/aresetn] [get_bd_pins NRST/Res] [get_bd_pins Primary/S00_ARESETN]
  connect_bd_net -net vio_0_probe_out0 [get_bd_ports vio_rst] [get_bd_pins VIO/probe_out0]
  connect_bd_net -net xlslice_0_Dout [get_bd_pins BufAddrSlice/Dout] [get_bd_pins EthBuf/addra]

  # Create address segments
  create_bd_addr_seg -range 0x00010000 -offset 0xFFFF10000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs Board/S_AXI/Reg] SEG_Board_Reg
  create_bd_addr_seg -range 0x00004000 -offset 0xFFFF30000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs EthBufCtrl/S_AXI/Mem0] SEG_EthBufCtrl_Mem0
  create_bd_addr_seg -range 0x00800000 -offset 0xFFFF20000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs FlashEMC/S_AXI_MEM/Mem0] SEG_FlashEMC_Mem0
  create_bd_addr_seg -range 0x00800000 -offset 0x00000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs RAMEMC/S_AXI_MEM/Mem0] SEG_RAMEMC_Mem0
  create_bd_addr_seg -range 0x00010000 -offset 0xE00000000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs IntCont/S_AXI/Reg] SEG_axi_intc_0_Reg
  create_bd_addr_seg -range 0x00010000 -offset 0xFFFF00000000 [get_bd_addr_spaces CPU/io_axi] [get_bd_addr_segs UART/S_AXI/Reg] SEG_axi_uartlite_0_Reg


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


