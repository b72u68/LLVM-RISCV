.text
.globl __main
.globl __factorial06
.globl ____lookup
.globl __malloc

  la t0,__main
  sw t0,main,x3
  la t0,__factorial06
  sw t0,factorial06,x3
  la t0,____lookup
  sw t0,__lookup,x3
  la t0,__malloc
  sw t0,malloc,x3
  la t0,heapstart
  sw t0,heapptr,x3
  lw t1,heapsize
  add t2,t0,t1
  sw t2,heapend,x3
  jal ra,__main
  jal ra,__halt
____lookup:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,0
  add a0,a0,zero
  add a2,a1,zero
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
__lookup__entry:
  addi t0,zero,0
  add a1,t0,zero
  addi t0,zero,0
  add a1,t0,zero
  addi t0,zero,0
  add a1,t0,zero
  addi t0,zero,0
  add a1,t0,zero
  addi t0,zero,0
  add a1,t0,zero
  addi t0,zero,0
  add a1,t0,zero
  add a1,a0,zero
  add a2,a2,zero
  jal zero,label1
label1:
  add a1,a1,zero
  addi t0,zero,0
  add a0,t0,zero
  slt a0,a0,a1
  beq a0,zero,label3
  jal zero,label2
label2:
  add a5,a2,zero
  addi a4,a5,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add a4,a4,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add a4,a4,t1
  lw a3,0(a4)
  add a3,a3,zero
  add a2,a1,zero
  addi t0,zero,1
  add a1,t0,zero
  sub a0,a2,a1
  add a0,a0,zero
  add a1,a1,zero
  add a1,a2,zero
  add a1,a0,zero
  add a1,a4,zero
  add a1,a5,zero
  add a1,a3,zero
  add a1,a0,zero
  add a2,a3,zero
  jal zero,label1
label3:
  add a0,a2,zero
  addi a0,a0,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add a0,a0,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add a0,a0,t1
  lw a0,0(a0)
  add a0,a0,zero
  jal zero,__lookup__exit
__lookup__exit:
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
__factorial06:
  addi sp,sp,-8
  sw fp,4(sp)
  sw ra,0(sp)
  addi fp,sp,4
  addi sp,sp,-128
  add t2,a0,zero
  sw t2,-132(fp)
  add t2,a1,zero
  sw t2,-128(fp)
  add t2,s1,zero
  sw t2,-124(fp)
  add t2,s2,zero
  sw t2,-120(fp)
  add t2,s3,zero
  sw t2,-116(fp)
  add t2,s4,zero
  sw t2,-112(fp)
  add t2,s5,zero
  sw t2,-108(fp)
  add t2,s6,zero
  sw t2,-104(fp)
  add t2,s7,zero
  sw t2,-100(fp)
  add t2,s8,zero
  sw t2,-96(fp)
  add t2,s9,zero
  sw t2,-92(fp)
  add t2,s10,zero
  sw t2,-88(fp)
  add t2,s11,zero
  sw t2,-84(fp)
factorial06__entry:
  addi t0,zero,8
  add a0,t0,zero
  lw t0,malloc
  jalr ra,t0,0
  addi s1,a0,0
  add s3,s1,zero
  lw t0,-128(fp)
  add s2,t0,zero
  addi s1,s3,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw s2,0(s1)
  add s1,s2,zero
  lw t0,-132(fp)
  add s1,t0,zero
  add s2,s1,zero
  addi s1,s3,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw s2,0(s1)
  add s1,s2,zero
  add t2,s3,zero
  sw t2,-80(fp)
  lw t0,-80(fp)
  add s1,t0,zero
  lw t0,__lookup
  add s3,t0,zero
  addi t0,zero,0
  add s2,t0,zero
  lw t0,-80(fp)
  add s1,t0,zero
  add a0,s2,zero
  add a1,s1,zero
  jalr ra,s3,0
  addi s1,a0,0
  add s2,s1,zero
  addi t0,zero,0
  add s1,t0,zero
  slt s1,s1,s2
  xori s1,s1,1
  beq s1,zero,label6
  jal zero,label5
label5:
  addi t0,zero,1
  add s1,t0,zero
  add s1,s1,zero
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-76(fp)
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-72(fp)
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-68(fp)
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-64(fp)
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-60(fp)
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  add s5,s1,zero
  add s3,s1,zero
  addi t0,zero,0
  add s1,t0,zero
  addi t0,zero,0
  add s1,t0,zero
  jal zero,label7
label6:
  lw t0,__lookup
  add t2,t0,zero
  sw t2,-56(fp)
  addi t0,zero,1
  add t2,t0,zero
  sw t2,-52(fp)
  lw t0,-80(fp)
  add t2,t0,zero
  sw t2,-48(fp)
  lw t0,-52(fp)
  add a0,t0,zero
  lw t0,-48(fp)
  add a1,t0,zero
  lw t0,-56(fp)
  jalr ra,t0,0
  addi t2,a0,0
  sw t2,-44(fp)
  lw t0,-44(fp)
  add s2,t0,zero
  add s2,s2,zero
  addi s1,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  lw t2,0(s1)
  sw t2,-40(fp)
  lw t0,-40(fp)
  add t2,t0,zero
  sw t2,-36(fp)
  lw t0,__lookup
  add t2,t0,zero
  sw t2,-32(fp)
  addi t0,zero,0
  add t2,t0,zero
  sw t2,-28(fp)
  lw t0,-80(fp)
  add t2,t0,zero
  sw t2,-24(fp)
  lw t0,-28(fp)
  add a0,t0,zero
  lw t0,-24(fp)
  add a1,t0,zero
  lw t0,-32(fp)
  jalr ra,t0,0
  addi t2,a0,0
  sw t2,-20(fp)
  lw t0,-20(fp)
  add t2,t0,zero
  sw t2,-16(fp)
  addi t0,zero,1
  add t2,t0,zero
  sw t2,-12(fp)
  lw t0,-16(fp)
  lw t1,-12(fp)
  sub t2,t0,t1
  sw t2,-8(fp)
  add s11,s2,zero
  addi s10,s11,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s10,s10,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s10,s10,t1
  lw s9,0(s10)
  lw t0,-8(fp)
  add a0,t0,zero
  add a1,s9,zero
  lw t0,-36(fp)
  jalr ra,t0,0
  addi s4,a0,0
  lw t0,__lookup
  add s8,t0,zero
  addi t0,zero,0
  add s7,t0,zero
  lw t0,-80(fp)
  add s6,t0,zero
  add a0,s7,zero
  add a1,s6,zero
  jalr ra,s8,0
  addi s5,a0,0
  add s5,s5,zero
  add s4,s4,zero
  mul s3,s5,s4
  add s3,s3,zero
  add t2,s6,zero
  sw t2,-76(fp)
  add t2,s7,zero
  sw t2,-72(fp)
  add t2,s8,zero
  sw t2,-68(fp)
  add t2,s5,zero
  sw t2,-64(fp)
  add t2,s4,zero
  sw t2,-60(fp)
  add s5,s5,zero
  add s5,s3,zero
  add s5,s10,zero
  add s5,s11,zero
  lw t0,-24(fp)
  add s5,t0,zero
  lw t0,-28(fp)
  add s5,t0,zero
  lw t0,-32(fp)
  add s5,t0,zero
  lw t0,-20(fp)
  add s5,t0,zero
  lw t0,-12(fp)
  add s5,t0,zero
  lw t0,-16(fp)
  add s5,t0,zero
  add s5,s1,zero
  add s5,s2,zero
  lw t0,-40(fp)
  add s5,t0,zero
  add s5,s9,zero
  lw t0,-8(fp)
  add s5,t0,zero
  lw t0,-36(fp)
  add s5,t0,zero
  lw t0,-48(fp)
  add s5,t0,zero
  lw t0,-52(fp)
  add s5,t0,zero
  lw t0,-56(fp)
  add s5,t0,zero
  lw t0,-44(fp)
  add s5,t0,zero
  addi t0,zero,0
  add s5,t0,zero
  add s3,s3,zero
  add s1,s4,zero
  add s1,s2,zero
  jal zero,label7
label7:
  add s1,s3,zero
  add a0,s1,zero
  jal zero,factorial06__exit
factorial06__exit:
  lw t0,-124(fp)
  add s1,t0,zero
  lw t0,-120(fp)
  add s2,t0,zero
  lw t0,-116(fp)
  add s3,t0,zero
  lw t0,-112(fp)
  add s4,t0,zero
  lw t0,-108(fp)
  add s5,t0,zero
  lw t0,-104(fp)
  add s6,t0,zero
  lw t0,-100(fp)
  add s7,t0,zero
  lw t0,-96(fp)
  add s8,t0,zero
  lw t0,-92(fp)
  add s9,t0,zero
  lw t0,-88(fp)
  add s10,t0,zero
  lw t0,-84(fp)
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
  addi sp,sp,-12
  add t2,s1,zero
  sw t2,-16(fp)
  add t2,s2,zero
  sw t2,-12(fp)
  add t2,s3,zero
  sw t2,-8(fp)
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
  add s1,t0,zero
  add s3,s1,zero
  addi t0,zero,8
  add a0,t0,zero
  lw t0,malloc
  jalr ra,t0,0
  addi s1,a0,0
  add s2,s1,zero
  add s3,s3,zero
  addi s1,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw s3,0(s1)
  add s1,s3,zero
  lw t0,factorial06
  add s1,t0,zero
  add a0,s1,zero
  addi s1,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw a0,0(s1)
  add s1,a0,zero
  addi t0,zero,8
  add a0,t0,zero
  lw t0,malloc
  jalr ra,t0,0
  addi s1,a0,0
  add a0,s1,zero
  add s3,s3,zero
  addi s1,a0,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw s3,0(s1)
  add s1,s3,zero
  add s1,s2,zero
  add s3,s1,zero
  addi s1,a0,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  sw s3,0(s1)
  add s1,s3,zero
  add s1,a0,zero
  add s1,s1,zero
  add s1,s1,zero
  addi s2,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s2,s2,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s2,s2,t1
  sw s1,0(s2)
  add s2,s1,zero
  lw t0,__lookup
  add s3,t0,zero
  addi t0,zero,0
  add s2,t0,zero
  add s1,s1,zero
  add a0,s2,zero
  add a1,s1,zero
  jalr ra,s3,0
  addi s2,a0,0
  add a0,s2,zero
  add s2,a0,zero
  addi s2,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s2,s2,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s2,s2,t1
  lw s2,0(s2)
  add a2,s2,zero
  addi t0,zero,5
  add s3,t0,zero
  add s2,a0,zero
  addi s2,s2,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s2,s2,t0
  addi t1,zero,0
  addi t0,zero,4
  mul t1,t1,t0
  add s2,s2,t1
  lw s2,0(s2)
  add a0,s3,zero
  add a1,s2,zero
  jalr ra,a2,0
  addi s2,a0,0
  add s2,s2,zero
  add s1,s1,zero
  addi s1,s1,0
  addi t0,zero,0
  addi t1,zero,8
  mul t0,t0,t1
  add s1,s1,t0
  addi t1,zero,1
  addi t0,zero,4
  mul t1,t1,t0
  add s1,s1,t1
  lw s1,0(s1)
  add s1,s1,zero
  add s1,s2,zero
  add a0,s1,zero
  jal zero,main__exit
main__exit:
  lw t0,-16(fp)
  add s1,t0,zero
  lw t0,-12(fp)
  add s2,t0,zero
  lw t0,-8(fp)
  add s3,t0,zero
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

factorial06:
  .word 0

__lookup:
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

