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
  addi sp,sp,0
  add a0,a0,zero
  add t3,s1,zero
  add a7,s2,zero
  add a6,s3,zero
  add a5,s4,zero
  add a4,s5,zero
  add a3,s6,zero
  add a2,s7,zero
  add a1,s8,zero
  add s9,s9,zero
  add s10,s10,zero
  add s11,s11,zero
f__entry:
  addi s8,a0,0
  addi t0,zero,0
  addi t1,zero,4
  mul t0,t0,t1
  add s8,s8,t0
  addi s7,a0,0
  addi t0,zero,1
  addi t1,zero,4
  mul t0,t0,t1
  add s7,s7,t0
  addi s6,a0,0
  addi t0,zero,2
  addi t1,zero,4
  mul t0,t0,t1
  add s6,s6,t0
  addi s5,a0,0
  addi t0,zero,3
  addi t1,zero,4
  mul t0,t0,t1
  add s5,s5,t0
  addi s4,a0,0
  addi t0,zero,4
  addi t1,zero,4
  mul t0,t0,t1
  add s4,s4,t0
  addi s3,a0,0
  addi t0,zero,5
  addi t1,zero,4
  mul t0,t0,t1
  add s3,s3,t0
  addi s2,a0,0
  addi t0,zero,6
  addi t1,zero,4
  mul t0,t0,t1
  add s2,s2,t0
  addi s1,a0,0
  addi t0,zero,7
  addi t1,zero,4
  mul t0,t0,t1
  add s1,s1,t0
  addi t0,zero,8
  sw t0,0(s8)
  addi t0,zero,9
  sw t0,0(s7)
  addi t0,zero,10
  sw t0,0(s6)
  addi t0,zero,11
  sw t0,0(s5)
  addi t0,zero,12
  sw t0,0(s4)
  addi t0,zero,13
  sw t0,0(s3)
  addi t0,zero,14
  sw t0,0(s2)
  addi t0,zero,15
  sw t0,0(s1)
  addi t0,zero,16
  sw t0,0(s8)
  jal zero,f__exit
f__exit:
  add s1,t3,zero
  add s2,a7,zero
  add s3,a6,zero
  add s4,a5,zero
  add s5,a4,zero
  add s6,a3,zero
  add s7,a2,zero
  add s8,a1,zero
  add s9,s9,zero
  add s10,s10,zero
  add s11,s11,zero
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
  addi sp,sp,-32
  add s1,zero,sp
  add a0,s1,zero
  lw t0,f
  jalr ra,t0,0
  addi a0,a0,0
  addi a0,s1,0
  addi t0,zero,0
  addi t1,zero,4
  mul t0,t0,t1
  add a0,a0,t0
  addi s1,s1,0
  addi t0,zero,4
  addi t1,zero,4
  mul t0,t0,t1
  add s1,s1,t0
  lw a0,0(a0)
  lw s1,0(s1)
  add s1,a0,s1
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

