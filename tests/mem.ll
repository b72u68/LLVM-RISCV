define i32 @main() {
main__entry:
  %ptr = alloca i32, i32 8
  %ptr0 = getelementptr i32, i32* %ptr, i32 0
  %ptr1 = getelementptr i32, i32* %ptr, i32 1
  %ptr2 = getelementptr i32, i32* %ptr, i32 2
  %ptr3 = getelementptr i32, i32* %ptr, i32 3
  %ptr4 = getelementptr i32, i32* %ptr, i32 4
  %ptr5 = getelementptr i32, i32* %ptr, i32 5
  %ptr6 = getelementptr i32, i32* %ptr, i32 6
  %ptr7 = getelementptr i32, i32* %ptr, i32 7
  store i32 8, i32* %ptr0
  store i32 9, i32* %ptr1
  store i32 10, i32* %ptr2
  store i32 11, i32* %ptr3
  store i32 12, i32* %ptr4
  store i32 13, i32* %ptr5
  store i32 14, i32* %ptr6
  store i32 15, i32* %ptr7
  store i32 16, i32* %ptr0
  %a = load i32, i32* %ptr0
  %b = load i32, i32* %ptr4
  %c = add i32 %a, %b
  ret i32 %c
}
