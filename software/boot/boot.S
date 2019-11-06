.section .text
.globl _start
_start:
  li a0, 0x20
  li a1, 0x7E
  li s0, 0xFFFFF0000000
outer:
  mv t0, a0

inner:
  sb t0, 4(s0)
  addi t0, t0, 1

  li t1, 0
  li t2, 1000000
delayloop:
  addi t1, t1, 1
  ble t1, t2, delayloop

  ble t0, a1, inner

  j outer
