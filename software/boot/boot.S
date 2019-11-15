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

  li t0, 97
  sb t0, 4(s0)
  li t0, 98
  sb t0, 4(s0)
  li t0, 99
  sb t0, 4(s0)
  li t0, 100
  sb t0, 4(s0)

  mv a1, s0
  lui a0, %hi(bootmsg)
  addi a0, a0, %lo(bootmsg)
  call print

  # Load data from flash into memory.
  # First 4 bytes in flash should be length

  li t1, 0xFFFFF3000000
  ld t0, 0(t1)
printhex:
  ori t1, t0, 0xF
  addi t1, t1, 97
  sb t1, 4(s0)
  slli t1, t1, 4
  bne t1, zero, printhex

spin:
  j spin

  # Little endian

bootmsg:
  .string "MeowRouter boot..."
