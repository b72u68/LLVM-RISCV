__clos = type { %__list*, i32 ()*
}
__list = type { i32, %__list*
}
__pair = type { i32, i32
}
define i32 @__lookup(i32 i, %__list* __env) {
__lookup__entry:
  br label %label1
label1:
  %i$7 = phi i32 [%i$21, %label2], [%i, %__lookup__entry]
  %__env$8 = phi i32 [%__env$17, %label2], [%__env, %__lookup__entry]
  %temp7$11 = icmp sgt i32 %i$7, 0
  br i1 %temp7$11, label %label2, label %label3
label2:
  %temp2$15 = bitcast %__list* %__env$8 to %__list*
  %temp3$16 = getelementptr %__list, %__list* %temp2$15, i32 0, i32 1
  %__env$17 = load %__list*, %__list** %temp3$16
  %i$21 = sub i32 %i$7, 1
  br label %label1
label3:
  %temp11$12 = bitcast %__list* %__env$8 to %__list*
  %temp12$13 = getelementptr %__list, %__list* %temp11$12, i32 0, i32 0
  %temp10$14 = load i32, i32* %temp12$13
  ret i32 %temp10$14
}

define i32 @fun1(i32 x, %__list* __env) {
fun1__entry:
  %__ctemp0$1 = call %__list* @malloc(i32 8)
  %temp15$3 = getelementptr %__list, %__list* %__ctemp0$1, i32 0, i32 1
  store %__list* %__env, %__list** %temp15$3
  %temp19$5 = bitcast i32 %x to i32
  %temp17$6 = bitcast i32 %temp19$5 to i32
  %temp18$7 = getelementptr %__list, %__list* %__ctemp0$1, i32 0, i32 0
  store i32 %temp17$6, i32* %temp18$7
  %temp25$11 = bitcast i32 (i32 %__list*)* @__lookup to i32 (i32 %__list*)*
  %temp24$14 = call i32 %temp25$11(i32 0, %__list* %__ctemp0$1)
  %temp22$15 = bitcast i32 %temp24$14 to i32
  %temp21$17 = add i32 %temp22$15, 1
  ret i32 %temp21$17
}

define i32 @main() {
main__entry:
  %temp28$1 = bitcast i32 0 to i32
  %__env$2 = bitcast %__list* %temp28$1 to %__list*
  %__ctemp2$3 = call %__clos* @malloc(i32 8)
  %temp31$5 = getelementptr %__clos, %__clos* %__ctemp2$3, i32 0, i32 0
  store %__list* %__env$2, %__list** %temp31$5
  %temp35$7 = bitcast i32 (i32 %__list*)* @fun1 to i32 (i32 %__list*)*
  %temp33$8 = bitcast i32 ()* %temp35$7 to i32 (i32 %__list*)*
  %temp34$9 = getelementptr %__clos, %__clos* %__ctemp2$3, i32 0, i32 1
  store i32 ()* %temp33$8, i32 ()** %temp34$9
  %temp41$12 = bitcast %__clos* %__ctemp2$3 to %__clos*
  %temp42$13 = getelementptr %__clos, %__clos* %temp41$12, i32 0, i32 1
  %temp40$14 = load i32 ()*, i32 ()** %temp42$13
  %temp37$15 = bitcast i32 (i32 %__list*)* %temp40$14 to i32 ()*
  %temp43$17 = bitcast %__clos* %__ctemp2$3 to %__clos*
  %temp44$18 = getelementptr %__clos, %__clos* %temp43$17, i32 0, i32 0
  %temp39$19 = load %__list*, %__list** %temp44$18
  %temp36$20 = call i32 %temp37$15(i32 2, %__list* %temp39$19)
  ret i32 %temp36$20
}
