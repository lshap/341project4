declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@i464 = global i32 0, align 4
define void @oat_init (){

__fresh126:
  ret void
}


define i32 @program (i32 %argc483, { i32, [ 0 x i8* ] }* %argv481){

__fresh125:
  %argc_slot484 = alloca i32
  store i32 %argc483, i32* %argc_slot484
  %argv_slot482 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv481, { i32, [ 0 x i8* ] }** %argv_slot482
  %x485 = alloca i32
  store i32 3, i32* %x485
  %y486 = alloca i32
  store i32 3, i32* %y486
  %_lhs488 = load i32* %y486
  %_lhs487 = load i32* %x485
  %ret489 = call i32 @f ( i32 %_lhs487, i32 %_lhs488 )
  %_lhs490 = load i32* @i464
  %bop491 = add i32 %ret489, %_lhs490
  ret i32 %bop491
}


define i32 @f (i32 %x467, i32 %y465){

__fresh122:
  %x_slot468 = alloca i32
  store i32 %x467, i32* %x_slot468
  %y_slot466 = alloca i32
  store i32 %y465, i32* %y_slot466
  %r469 = alloca i32
  store i32 0, i32* %r469
  %_lhs470 = load i32* %x_slot468
  %bop471 = icmp sge i32 %_lhs470, 1
  br i1 %bop471, label %__then121, label %__else120

__fresh123:
  br label %__then121

__then121:
  %_lhs474 = load i32* %y_slot466
  %_lhs472 = load i32* %x_slot468
  %bop473 = sub i32 %_lhs472, 1
  %ret475 = call i32 @f ( i32 %bop473, i32 %_lhs474 )
  %bop476 = add i32 1, %ret475
  store i32 %bop476, i32* %r469
  br label %__merge119

__fresh124:
  br label %__else120

__else120:
  %_lhs477 = load i32* %x_slot468
  %_lhs478 = load i32* %y_slot466
  %bop479 = add i32 %_lhs477, %_lhs478
  store i32 %bop479, i32* %r469
  br label %__merge119

__merge119:
  %_lhs480 = load i32* %r469
  ret i32 %_lhs480
}


