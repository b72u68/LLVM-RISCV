.text
.globl __main
.globl __fib
.globl __malloc

  la t0,__main
  sw t0,main,x3
  la t0,__fib
  sw t0,fib,x3
  la t0,__malloc
  sw t0,malloc,x3
  la t0,heapstart
  sw t0,heapptr,x3
  lw t1,heapsize
  add t2,t0,t1
  sw t2,heapend,x3
  jal ra,__main
  jal ra,__halt
__fib:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,-12
  add t2,a0,zero
  sw t2,-12(fp)
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
fib__entry:
  lw t0,-12(fp)
  add a0,t0,zero
  addi t0,zero,1
  add s1,t0,zero
  slt s1,s1,a0
  xori s1,s1,1
  beq s1,zero,label2
  jal zero,label1
label1:
  lw t0,-12(fp)
  add s1,t0,zero
  add a0,s1,zero
  jal zero,fib__exit
label2:
  lw t0,fib
  add a1,t0,zero
  lw t0,-12(fp)
  add a0,t0,zero
  addi t0,zero,2
  add s1,t0,zero
  sub s1,a0,s1
  add a0,s1,zero
  jalr ra,a1,0
  addi s1,a0,0
  lw t0,fib
  add a2,t0,zero
  lw t0,-12(fp)
  add a1,t0,zero
  addi t0,zero,1
  add a0,t0,zero
  sub a0,a1,a0
  add a0,a0,zero
  jalr ra,a2,0
  addi t2,a0,0
  sw t2,-16(fp)
  lw t1,-16(fp)
  add s1,s1,t1
  add a0,s1,zero
  jal zero,fib__exit
fib__exit:
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
  lw t0,fib
  add a1,t0,zero
  addi t0,zero,6
  add s1,t0,zero
  add a0,s1,zero
  jalr ra,a1,0
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

fib:
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

