.text
.globl __main
.globl __f
.globl __malloc

  la t0,__main
  sw t0,main,x3
  la t0,__f
  sw t0,f,x3
  la t0,__malloc
  sw t0,malloc,x3
  la t0,heapstart
  sw t0,heapptr,x3
  lw t1,heapsize
  add t2,t0,t1
  sw t2,heapend,x3
  jal ra,__main
  jal ra,__halt
__f:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,-112
  add a0,a0,zero
  add t2,s1,zero
  sw t2,-116(fp)
  add t2,s2,zero
  sw t2,-112(fp)
  add t2,s3,zero
  sw t2,-108(fp)
  add t2,s4,zero
  sw t2,-104(fp)
  add t2,s5,zero
  sw t2,-100(fp)
  add t2,s6,zero
  sw t2,-96(fp)
  add t2,s7,zero
  sw t2,-92(fp)
  add t2,s8,zero
  sw t2,-88(fp)
  add t2,s9,zero
  sw t2,-84(fp)
  add t2,s10,zero
  sw t2,-80(fp)
  add t2,s11,zero
  sw t2,-76(fp)
f__entry:
  add t2,a0,zero
  sw t2,-72(fp)
  add t2,a0,zero
  sw t2,-68(fp)
  add t2,a0,zero
  sw t2,-64(fp)
  add t2,a0,zero
  sw t2,-60(fp)
  add t2,a0,zero
  sw t2,-56(fp)
  add t2,a0,zero
  sw t2,-52(fp)
  add t2,a0,zero
  sw t2,-48(fp)
  add t2,a0,zero
  sw t2,-44(fp)
  add t2,a0,zero
  sw t2,-40(fp)
  add t6,a0,zero
  add t4,a0,zero
  add t3,a0,zero
  add a7,a0,zero
  add a6,a0,zero
  add a5,a0,zero
  add a4,a0,zero
  add a3,a0,zero
  add a2,a0,zero
  add a1,a0,zero
  add a0,a0,zero
  add s11,a0,zero
  add s10,a0,zero
  add s9,a0,zero
  add s8,a0,zero
  add s7,a0,zero
  add s6,a0,zero
  add s5,a0,zero
  add s4,a0,zero
  add s3,a0,zero
  add s2,a0,zero
  add s1,a0,zero
  add t5,a0,zero
  lw t0,-72(fp)
  lw t1,-68(fp)
  add t2,t0,t1
  sw t2,-36(fp)
  lw t0,-36(fp)
  lw t1,-64(fp)
  add t2,t0,t1
  sw t2,-32(fp)
  lw t0,-32(fp)
  lw t1,-60(fp)
  add t2,t0,t1
  sw t2,-28(fp)
  lw t0,-28(fp)
  lw t1,-56(fp)
  add t2,t0,t1
  sw t2,-24(fp)
  lw t0,-24(fp)
  lw t1,-52(fp)
  add t2,t0,t1
  sw t2,-20(fp)
  lw t0,-20(fp)
  lw t1,-48(fp)
  add t2,t0,t1
  sw t2,-16(fp)
  lw t0,-16(fp)
  lw t1,-44(fp)
  add t2,t0,t1
  sw t2,-12(fp)
  lw t0,-12(fp)
  lw t1,-40(fp)
  add t2,t0,t1
  sw t2,-8(fp)
  lw t0,-8(fp)
  add t6,t0,t6
  add t4,t6,t4
  add t3,t4,t3
  add a7,t3,a7
  add a6,a7,a6
  add a5,a6,a5
  add a4,a5,a4
  add a3,a4,a3
  add a2,a3,a2
  add a1,a2,a1
  add a0,a1,a0
  add s11,a0,s11
  add s10,s11,s10
  add s9,s10,s9
  add s8,s9,s8
  add s7,s8,s7
  add s6,s7,s6
  add s5,s6,s5
  add s4,s5,s4
  add s3,s4,s3
  add s2,s3,s2
  add s1,s2,s1
  add t5,s1,t5
  lw t0,-72(fp)
  lw t1,-68(fp)
  add t5,t0,t1
  lw t0,-36(fp)
  add t5,t0,t5
  lw t0,-32(fp)
  add t5,t0,t5
  lw t0,-28(fp)
  add t5,t0,t5
  lw t0,-24(fp)
  add t5,t0,t5
  lw t0,-20(fp)
  add t5,t0,t5
  lw t0,-16(fp)
  add t5,t0,t5
  lw t0,-12(fp)
  add t5,t0,t5
  lw t0,-8(fp)
  add t5,t0,t5
  add t5,t6,t5
  add t4,t4,t5
  add t3,t3,t4
  add a7,a7,t3
  add a6,a6,a7
  add a5,a5,a6
  add a4,a4,a5
  add a3,a3,a4
  add a2,a2,a3
  add a1,a1,a2
  add a0,a0,a1
  add s11,s11,a0
  add s10,s10,s11
  add s9,s9,s10
  add s8,s8,s9
  add s7,s7,s8
  add s6,s6,s7
  add s5,s5,s6
  add s4,s4,s5
  add s3,s3,s4
  add s2,s2,s3
  add s1,s1,s2
  add a0,s1,zero
  jal zero,f__exit
f__exit:
  lw t0,-116(fp)
  add s1,t0,zero
  lw t0,-112(fp)
  add s2,t0,zero
  lw t0,-108(fp)
  add s3,t0,zero
  lw t0,-104(fp)
  add s4,t0,zero
  lw t0,-100(fp)
  add s5,t0,zero
  lw t0,-96(fp)
  add s6,t0,zero
  lw t0,-92(fp)
  add s7,t0,zero
  lw t0,-88(fp)
  add s8,t0,zero
  lw t0,-84(fp)
  add s9,t0,zero
  lw t0,-80(fp)
  add s10,t0,zero
  lw t0,-76(fp)
  add s11,t0,zero
  addi sp,fp,-4
  lw fp,4(sp)
  lw ra,0(sp)
  addi sp,sp,8
  jalr zero,ra,0
__main:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,-4
  add t2,s1,zero
  sw t2,-8(fp)
  add s2,s2,zero
  add s3,s3,zero
  add s4,s4,zero
  add s5,s5,zero
  add s6,s6,zero
  add s7,s7,zero
  add s8,s8,zero
  add s9,s9,zero
  add s10,s10,zero
  add s11,s11,zero
main__entry:
  addi t0,zero,1
  add a0,t0,zero
  lw t0,f
  jalr ra,t0,0
  addi s1,a0,0
  add a0,s1,zero
  jal zero,main__exit
main__exit:
  lw t0,-8(fp)
  add s1,t0,zero
  add s2,s2,zero
  add s3,s3,zero
  add s4,s4,zero
  add s5,s5,zero
  add s6,s6,zero
  add s7,s7,zero
  add s8,s8,zero
  add s9,s9,zero
  add s10,s10,zero
  add s11,s11,zero
  addi sp,fp,-4
  lw fp,4(sp)
  lw ra,0(sp)
  addi sp,sp,8
  jalr zero,ra,0
__malloc:
  lw t0,heapptr
  lw t2,heapend
  add t1,t0,a0
  blt t2,t1,__eom
  sw t1,heapptr,x3
  addi a0,t0,0
  jalr zero,ra,0
__eom:
  xor a0,a0,a0
  jalr zero,ra,0
__halt:


.data

main:
  .word 0

f:
  .word 0

malloc:
  .word 0

heapptr:
  .word 0

heapsize:
  .word 4194304

heapend:
  .word 0

heapstart:
  .word 0

