declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i402 = global i32 0, align 4
define void @oat_init (){

__fresh91:
  ret void
}


define i32 @program (i32 %argc421, { i32, [ 0 x i8* ] }* %argv419){

__fresh90:
  %argc_slot422 = alloca i32
  store i32 %argc421, i32* %argc_slot422
  %argv_slot420 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv419, { i32, [ 0 x i8* ] }** %argv_slot420
  %x423 = alloca i32
  store i32 3, i32* %x423
  %y424 = alloca i32
  store i32 3, i32* %y424
  %_lhs426 = load i32* %y424
  %_lhs425 = load i32* %x423
  %ret427 = call i32 @f ( i32 %_lhs425, i32 %_lhs426 )
  %_lhs428 = load i32* @i402
  %bop429 = add i32 %ret427, %_lhs428
  ret i32 %bop429
}


define i32 @f (i32 %x405, i32 %y403){

__fresh87:
  %x_slot406 = alloca i32
  store i32 %x405, i32* %x_slot406
  %y_slot404 = alloca i32
  store i32 %y403, i32* %y_slot404
  %r407 = alloca i32
  store i32 0, i32* %r407
  %_lhs408 = load i32* %x_slot406
  %bop409 = icmp sge i32 %_lhs408, 1
  br i1 %bop409, label %__then86, label %__else85

__fresh88:
  br label %__then86

__then86:
  %_lhs412 = load i32* %y_slot404
  %_lhs410 = load i32* %x_slot406
  %bop411 = sub i32 %_lhs410, 1
  %ret413 = call i32 @f ( i32 %bop411, i32 %_lhs412 )
  %bop414 = add i32 1, %ret413
  store i32 %bop414, i32* %r407
  br label %__merge84

__fresh89:
  br label %__else85

__else85:
  %_lhs415 = load i32* %x_slot406
  %_lhs416 = load i32* %y_slot404
  %bop417 = add i32 %_lhs415, %_lhs416
  store i32 %bop417, i32* %r407
  br label %__merge84

__merge84:
  %_lhs418 = load i32* %r407
  ret i32 %_lhs418
}


