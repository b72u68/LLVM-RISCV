define i32 @main() {
main__entry:
  %temp1 = add i32 0, 5000
  %temp2 = add i32 0, -5000
  %temp3 = add i32 %temp1, %temp2
  ret i32 %temp3
}
