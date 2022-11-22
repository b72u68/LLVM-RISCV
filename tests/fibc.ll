declare i8* @malloc(i32)
define i32 @fib(i32 %n) {
fib__entry:
  %temp15$1 = bitcast i32 %n to i32
  %temp16$2 = bitcast i32 1 to i32
  %temp14$3 = icmp sle i32 %temp15$1, %temp16$2
  br i1 %temp14$3, label %label1, label %label2
label1:
  %temp2$15 = bitcast i32 %n to i32
  ret i32 %temp2$15
label2:
  %temp6$4 = bitcast i32 (i32)* @fib to i32 (i32)*
  %temp8$5 = bitcast i32 %n to i32
  %temp9$6 = bitcast i32 2 to i32
  %temp7$7 = sub i32 %temp8$5, %temp9$6
  %temp4$8 = call i32 %temp6$4(i32 %temp7$7)
  %temp10$9 = bitcast i32 (i32)* @fib to i32 (i32)*
  %temp12$10 = bitcast i32 %n to i32
  %temp13$11 = bitcast i32 1 to i32
  %temp11$12 = sub i32 %temp12$10, %temp13$11
  %temp5$13 = call i32 %temp10$9(i32 %temp11$12)
  %temp3$14 = add i32 %temp4$8, %temp5$13
  ret i32 %temp3$14
}

define i32 @main() {
main__entry:
  %temp18$1 = bitcast i32 (i32)* @fib to i32 (i32)*
  %temp19$2 = bitcast i32 6 to i32
  %temp17$3 = call i32 %temp18$1(i32 %temp19$2)
  ret i32 %temp17$3
}
