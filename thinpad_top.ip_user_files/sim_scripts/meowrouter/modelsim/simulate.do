onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_18 -L fifo_generator_v13_2_3 -L axi_data_fifo_v2_1_17 -L axi_crossbar_v2_1_19 -L blk_mem_gen_v8_4_2 -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_1_0 -L util_vector_logic_v2_0_1 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_20 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L emc_common_v3_0_5 -L axi_emc_v3_0_18 -L axi_uart16550_v2_0_20 -L axi_vip_v1_1_4 -L axi_intc_v4_1_12 -L axi_protocol_converter_v2_1_18 -L axi_clock_converter_v2_1_17 -L axi_dwidth_converter_v2_1_18 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.meowrouter xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {meowrouter.udo}

run -all

quit -force
