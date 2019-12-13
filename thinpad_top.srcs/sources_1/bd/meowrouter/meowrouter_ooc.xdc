################################################################################

# This XDC is used only for OOC mode of synthesis, implementation
# This constraints file contains default clock frequencies to be used during
# out-of-context flows such as OOC Synthesis and Hierarchical Designs.
# This constraints file is not used in normal top-down synthesis (default flow
# of Vivado)
################################################################################
create_clock -name cpu_clk -period 14.286 [get_ports cpu_clk]
create_clock -name data_clk -period 8 [get_ports data_clk]
create_clock -name data_rx_clk -period 8 [get_ports data_rx_clk]
create_clock -name data_tx_clk -period 8 [get_ports data_tx_clk]

################################################################################