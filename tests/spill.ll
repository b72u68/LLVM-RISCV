define i32 @f(i32 %n) {
f__entry:
  %v1 = bitcast i32 %n to i32
  %v2 = bitcast i32 %n to i32
  %v3 = bitcast i32 %n to i32
  %v4 = bitcast i32 %n to i32
  %v5 = bitcast i32 %n to i32
  %v6 = bitcast i32 %n to i32
  %v7 = bitcast i32 %n to i32
  %v8 = bitcast i32 %n to i32
  %v9 = bitcast i32 %n to i32
  %v10 = bitcast i32 %n to i32
  %v11 = bitcast i32 %n to i32
  %v12 = bitcast i32 %n to i32
  %v13 = bitcast i32 %n to i32
  %v14 = bitcast i32 %n to i32
  %v15 = bitcast i32 %n to i32
  %v16 = bitcast i32 %n to i32
  %v17 = bitcast i32 %n to i32
  %v18 = bitcast i32 %n to i32
  %v19 = bitcast i32 %n to i32
  %v20 = bitcast i32 %n to i32
  %v21 = bitcast i32 %n to i32
  %v22 = bitcast i32 %n to i32
  %v23 = bitcast i32 %n to i32
  %v24 = bitcast i32 %n to i32
  %v25 = bitcast i32 %n to i32
  %v26 = bitcast i32 %n to i32
  %v27 = bitcast i32 %n to i32
  %v28 = bitcast i32 %n to i32
  %v29 = bitcast i32 %n to i32
  %v30 = bitcast i32 %n to i32
  %v31 = bitcast i32 %n to i32
  %v32 = bitcast i32 %n to i32
  %temp1 = add i32 %v1, %v2
  %temp2 = add i32 %temp1, %v3
  %temp3 = add i32 %temp2, %v4
  %temp4 = add i32 %temp3, %v5
  %temp5 = add i32 %temp4, %v6
  %temp6 = add i32 %temp5, %v7
  %temp7 = add i32 %temp6, %v8
  %temp8 = add i32 %temp7, %v9
  %temp9 = add i32 %temp8, %v10
  %temp10 = add i32 %temp9, %v11
  %temp11 = add i32 %temp10, %v12
  %temp12 = add i32 %temp11, %v13
  %temp13 = add i32 %temp12, %v14
  %temp14 = add i32 %temp13, %v15
  %temp15 = add i32 %temp14, %v16
  %temp16 = add i32 %temp15, %v17
  %temp17 = add i32 %temp16, %v18
  %temp18 = add i32 %temp17, %v19
  %temp19 = add i32 %temp18, %v20
  %temp20 = add i32 %temp19, %v21
  %temp21 = add i32 %temp20, %v22
  %temp22 = add i32 %temp21, %v23
  %temp23 = add i32 %temp22, %v24
  %temp24 = add i32 %temp23, %v25
  %temp25 = add i32 %temp24, %v26
  %temp26 = add i32 %temp25, %v27
  %temp27 = add i32 %temp26, %v28
  %temp28 = add i32 %temp27, %v29
  %temp29 = add i32 %temp28, %v30
  %temp30 = add i32 %temp29, %v31
  %temp31 = add i32 %temp30, %v32
  %btemp1 = add i32 %v1, %v2
  %btemp2 = add i32 %temp1, %btemp1
  %btemp3 = add i32 %temp2, %btemp2
  %btemp4 = add i32 %temp3, %btemp3
  %btemp5 = add i32 %temp4, %btemp4
  %btemp6 = add i32 %temp5, %btemp5
  %btemp7 = add i32 %temp6, %btemp6
  %btemp8 = add i32 %temp7, %btemp7
  %btemp9 = add i32 %temp8, %btemp8
  %btemp10 = add i32 %temp9, %btemp9
  %btemp11 = add i32 %temp10, %btemp10
  %btemp12 = add i32 %temp11, %btemp11
  %btemp13 = add i32 %temp12, %btemp12
  %btemp14 = add i32 %temp13, %btemp13
  %btemp15 = add i32 %temp14, %btemp14
  %btemp16 = add i32 %temp15, %btemp15
  %btemp17 = add i32 %temp16, %btemp16
  %btemp18 = add i32 %temp17, %btemp17
  %btemp19 = add i32 %temp18, %btemp18
  %btemp20 = add i32 %temp19, %btemp19
  %btemp21 = add i32 %temp20, %btemp20
  %btemp22 = add i32 %temp21, %btemp21
  %btemp23 = add i32 %temp22, %btemp22
  %btemp24 = add i32 %temp23, %btemp23
  %btemp25 = add i32 %temp24, %btemp24
  %btemp26 = add i32 %temp25, %btemp25
  %btemp27 = add i32 %temp26, %btemp26
  %btemp28 = add i32 %temp27, %btemp27
  %btemp29 = add i32 %temp28, %btemp28
  %btemp30 = add i32 %temp29, %btemp29
  %btemp31 = add i32 %temp30, %btemp30
  ret i32 %btemp31
}

define i32 @main() {
main__entry:
  %r = call i32 @f(i32 1)
  ret i32 %r
}