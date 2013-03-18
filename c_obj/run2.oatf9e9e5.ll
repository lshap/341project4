declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i525 = global i32 0, align 4
define void @oat_init (){

__fresh176:
  ret void
}


define i32 @program (i32 %argc544, { i32, [ 0 x i8* ] }* %argv542){

__fresh175:
  %argc_slot545 = alloca i32
  store i32 %argc544, i32* %argc_slot545
  %argv_slot543 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv542, { i32, [ 0 x i8* ] }** %argv_slot543
  %x546 = alloca i32
  store i32 3, i32* %x546
  %y547 = alloca i32
  store i32 3, i32* %y547
  %_lhs549 = load i32* %y547
  %_lhs548 = load i32* %x546
  %ret550 = call i32 @f ( i32 %_lhs548, i32 %_lhs549 )
  %_lhs551 = load i32* @i525
  %bop552 = add i32 %ret550, %_lhs551
  ret i32 %bop552
}


define i32 @f (i32 %x528, i32 %y526){

__fresh172:
  %x_slot529 = alloca i32
  store i32 %x528, i32* %x_slot529
  %y_slot527 = alloca i32
  store i32 %y526, i32* %y_slot527
  %r530 = alloca i32
  store i32 0, i32* %r530
  %_lhs531 = load i32* %x_slot529
  %bop532 = icmp sge i32 %_lhs531, 1
  br i1 %bop532, label %__then171, label %__else170

__fresh173:
  br label %__then171

__then171:
  %_lhs535 = load i32* %y_slot527
  %_lhs533 = load i32* %x_slot529
  %bop534 = sub i32 %_lhs533, 1
  %ret536 = call i32 @f ( i32 %bop534, i32 %_lhs535 )
  %bop537 = add i32 1, %ret536
  store i32 %bop537, i32* %r530
  br label %__merge169

__fresh174:
  br label %__else170

__else170:
  %_lhs538 = load i32* %x_slot529
  %_lhs539 = load i32* %y_slot527
  %bop540 = add i32 %_lhs538, %_lhs539
  store i32 %bop540, i32* %r530
  br label %__merge169

__merge169:
  %_lhs541 = load i32* %r530
  ret i32 %_lhs541
}


