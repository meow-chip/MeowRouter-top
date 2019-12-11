onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xilinx_vip -L xil_defaultlib -L xpm -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.pll_example xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {pll_example.udo}

run -all

quit -force
