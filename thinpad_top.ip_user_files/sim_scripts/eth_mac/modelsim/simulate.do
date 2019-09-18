onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L xbip_utils_v3_0_9 -L xbip_pipe_v3_0_5 -L xbip_bram18k_v3_0_5 -L mult_gen_v12_0_14 -L axi_lite_ipif_v3_0_4 -L tri_mode_ethernet_mac_v9_0_13 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.eth_mac xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {eth_mac.udo}

run -all

quit -force
