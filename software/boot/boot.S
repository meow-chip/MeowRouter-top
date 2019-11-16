.section .text
j _start
printloop:
  sb t0, 4(a1)
  addi a0, a0, 1
print:
  lb t0, 0(a0)
  bne t0, zero, printloop
  ret

.globl _start
_start:
  li s0, 0xFFFFF0000000

  mv a1, s0
  la a0, bootmsg
  call print

  # Load data from flash into memory.
  # First 4 bytes in flash should be length

  li t1, 0xFFFFF3000000
  ld t0, 0(t1)
printhex:
  andi t1, t0, 0xF
  addi t1, t1, 0x41
  sb t1, 4(s0)
  srli t0, t0, 4
  bne t0, zero, printhex

spin:
  j spin

bootmsg:
  .string "Meow..\n\r"
