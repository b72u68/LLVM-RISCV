.text
.globl __main
.globl __malloc

  la t0,__main
  sw t0,main,x3
  la t0,__malloc
  sw t0,malloc,x3
  la t0,heapstart
  sw t0,heapptr,x3
  lw t1,heapsize
  add t2,t0,t1
  sw t2,heapend,x3
  jal ra,__main
  jal ra,__halt
__main:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,0
  add s1,s1,zero
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
  addi t0,zero,0
  lui t1,1
  addi t1,t1,904
  add a0,t0,t1
  addi t0,zero,0
  lui t1,1048575
  addi t1,t1,-904
  add a1,t0,t1
  add a0,a0,a1
  add a0,a0,zero
  lw t0,main__exit
  jal t0,main__exit
main__exit:
  add s1,s1,zero
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

