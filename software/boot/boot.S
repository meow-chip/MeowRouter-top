.section .text
.globl _start
_start:
  li a0, 0x20
  li a1, 0x7E
  li s0, 0xFFFFF0000000
outer:
  mv t0, a0

inner:
  sb t0, 0(s0)
  addi t0, t0, 1
  ble t0, a1, inner
