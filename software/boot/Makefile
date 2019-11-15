SRCS=$(wildcard *.S)
COES=$(SRCS:.S=.coe)
O=$(SRCS:.S=.o)

.PHONY: all clean

all: $(O) $(COES)

%.coe: %.bin
	echo "memory_initialization_radix=16;" > $@
	echo "memory_initialization_vector=" >> $@
	hexdump $< -ve '1/8 "%016x" ",\n"' >> $@
	# Replace last comma
	sed -i '$$s/,/;/g' $@

%.bin: %.o
	$(PREFIX)objcopy -O binary $< $@

%.o: %.S
	$(PREFIX)as -march=rv64imc $< -o $@.tmp
	$(PREFIX)ld $@.tmp -o $@ -T boot.ld
	rm $@.tmp

clean:
	rm -f *.coe *.o *.bin
