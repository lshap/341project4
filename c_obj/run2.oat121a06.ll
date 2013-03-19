declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i541 = global i32 0, align 4
define void @oat_init (){

__fresh217:
  ret void
}


define i32 @program (i32 %argc560, { i32, [ 0 x i8* ] }* %argv558){

__fresh216:
  %argc_slot561 = alloca i32
  store i32 %argc560, i32* %argc_slot561
  %argv_slot559 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv558, { i32, [ 0 x i8* ] }** %argv_slot559
  %x562 = alloca i32
  store i32 3, i32* %x562
  %y563 = alloca i32
  store i32 3, i32* %y563
  %_lhs565 = load i32* %y563
  %_lhs564 = load i32* %x562
  %ret566 = call i32 @f ( i32 %_lhs564, i32 %_lhs565 )
  %_lhs567 = load i32* @i541
  %bop568 = add i32 %ret566, %_lhs567
  ret i32 %bop568
}


define i32 @f (i32 %x544, i32 %y542){

__fresh213:
  %x_slot545 = alloca i32
  store i32 %x544, i32* %x_slot545
  %y_slot543 = alloca i32
  store i32 %y542, i32* %y_slot543
  %r546 = alloca i32
  store i32 0, i32* %r546
  %_lhs547 = load i32* %x_slot545
  %bop548 = icmp sge i32 %_lhs547, 1
  br i1 %bop548, label %__then212, label %__else211

__fresh214:
  br label %__then212

__then212:
  %_lhs551 = load i32* %y_slot543
  %_lhs549 = load i32* %x_slot545
  %bop550 = sub i32 %_lhs549, 1
  %ret552 = call i32 @f ( i32 %bop550, i32 %_lhs551 )
  %bop553 = add i32 1, %ret552
  store i32 %bop553, i32* %r546
  br label %__merge210

__fresh215:
  br label %__else211

__else211:
  %_lhs554 = load i32* %x_slot545
  %_lhs555 = load i32* %y_slot543
  %bop556 = add i32 %_lhs554, %_lhs555
  store i32 %bop556, i32* %r546
  br label %__merge210

__merge210:
  %_lhs557 = load i32* %r546
  ret i32 %_lhs557
}


