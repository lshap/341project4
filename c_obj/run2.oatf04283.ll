declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i478 = global i32 0, align 4
define void @oat_init (){

__fresh126:
  ret void
}


define i32 @program (i32 %argc497, { i32, [ 0 x i8* ] }* %argv495){

__fresh125:
  %argc_slot498 = alloca i32
  store i32 %argc497, i32* %argc_slot498
  %argv_slot496 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv495, { i32, [ 0 x i8* ] }** %argv_slot496
  %x499 = alloca i32
  store i32 3, i32* %x499
  %y500 = alloca i32
  store i32 3, i32* %y500
  %_lhs502 = load i32* %y500
  %_lhs501 = load i32* %x499
  %ret503 = call i32 @f ( i32 %_lhs501, i32 %_lhs502 )
  %_lhs504 = load i32* @i478
  %bop505 = add i32 %ret503, %_lhs504
  ret i32 %bop505
}


define i32 @f (i32 %x481, i32 %y479){

__fresh122:
  %x_slot482 = alloca i32
  store i32 %x481, i32* %x_slot482
  %y_slot480 = alloca i32
  store i32 %y479, i32* %y_slot480
  %r483 = alloca i32
  store i32 0, i32* %r483
  %_lhs484 = load i32* %x_slot482
  %bop485 = icmp sge i32 %_lhs484, 1
  br i1 %bop485, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %_lhs488 = load i32* %y_slot480
  %_lhs486 = load i32* %x_slot482
  %bop487 = sub i32 %_lhs486, 1
  %ret489 = call i32 @f ( i32 %bop487, i32 %_lhs488 )
  %bop490 = add i32 1, %ret489
  store i32 %bop490, i32* %r483
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  %_lhs491 = load i32* %x_slot482
  %_lhs492 = load i32* %y_slot480
  %bop493 = add i32 %_lhs491, %_lhs492
  store i32 %bop493, i32* %r483
  br label %__merge119

__merge119:
  %_lhs494 = load i32* %r483
  ret i32 %_lhs494
}


