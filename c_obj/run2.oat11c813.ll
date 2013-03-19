declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i516 = global i32 0, align 4
define void @oat_init (){

__fresh214:
  ret void
}


define i32 @program (i32 %argc535, { i32, [ 0 x i8* ] }* %argv533){

__fresh213:
  %argc_slot536 = alloca i32
  store i32 %argc535, i32* %argc_slot536
  %argv_slot534 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv533, { i32, [ 0 x i8* ] }** %argv_slot534
  %x537 = alloca i32
  store i32 3, i32* %x537
  %y538 = alloca i32
  store i32 3, i32* %y538
  %_lhs540 = load i32* %y538
  %_lhs539 = load i32* %x537
  %ret541 = call i32 @f ( i32 %_lhs539, i32 %_lhs540 )
  %_lhs542 = load i32* @i516
  %bop543 = add i32 %ret541, %_lhs542
  ret i32 %bop543
}


define i32 @f (i32 %x519, i32 %y517){

__fresh210:
  %x_slot520 = alloca i32
  store i32 %x519, i32* %x_slot520
  %y_slot518 = alloca i32
  store i32 %y517, i32* %y_slot518
  %r521 = alloca i32
  store i32 0, i32* %r521
  %_lhs522 = load i32* %x_slot520
  %bop523 = icmp sge i32 %_lhs522, 1
  br i1 %bop523, label %__then209, label %__else208

__fresh211:
  br label %__then209

__then209:
  %_lhs526 = load i32* %y_slot518
  %_lhs524 = load i32* %x_slot520
  %bop525 = sub i32 %_lhs524, 1
  %ret527 = call i32 @f ( i32 %bop525, i32 %_lhs526 )
  %bop528 = add i32 1, %ret527
  store i32 %bop528, i32* %r521
  br label %__merge207

__fresh212:
  br label %__else208

__else208:
  %_lhs529 = load i32* %x_slot520
  %_lhs530 = load i32* %y_slot518
  %bop531 = add i32 %_lhs529, %_lhs530
  store i32 %bop531, i32* %r521
  br label %__merge207

__merge207:
  %_lhs532 = load i32* %r521
  ret i32 %_lhs532
}


