declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh8:
  ret void
}


define i32 @program (i32 %argc27, { i32, [ 0 x i8* ] }* %argv25){

__fresh7:
  %argc_slot28 = alloca i32
  store i32 %argc27, i32* %argc_slot28
  %argv_slot26 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv25, { i32, [ 0 x i8* ] }** %argv_slot26
  %index_ptr29 = getelementptr { i32, [ 0 x i8* ] }** %argv_slot26, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs30 = load { i32, [ 0 x i8* ] }** %argv_slot26
  %ret31 = call i8* @sub ( { i32, [ 0 x i8* ] }* %_lhs30, i32 3, i32 5 )
  call void @print_string( i8* %ret31 )
  ret i32 0
}


define i8* @sub (i8* %str5, i32 %start3, i32 %len1){

__fresh3:
  %str_slot6 = alloca i8*
  store i8* %str5, i8** %str_slot6
  %start_slot4 = alloca i32
  store i32 %start3, i32* %start_slot4
  %len_slot2 = alloca i32
  store i32 %len1, i32* %len_slot2
  %_lhs7 = load i8** %str_slot6
  %ret8 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs7 )
  %arr9 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret8, { i32, [ 0 x i32 ] }** %arr9
  %_lhs10 = load i32* %len_slot2
  %array_ptr11 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 %_lhs10 )
  %array12 = bitcast { i32, [ 0 x i32 ] }* %array_ptr11 to { i32, [ 0 x i32 ] }* 
  %index_ptr13 = getelementptr { i32, [ 0 x i32 ] }* %array12, i32 0, i32 1, i32 0
  store i32 %_lhs10, i32* %index_ptr13
  store i32 0, i32* %index_ptr14
  br label %__compare0

__fresh4:
  br label %__compare0

__compare0:
  %comparison_result15 = icmp slt i32* %index_ptr14, %_lhs10
  br i1 %comparison_result15, label %__body1, label %__end2

__fresh5:
  br label %__body1

__body1:
  store i32* %index_ptr14, i32* %i16
  %_lhs17 = load i32* %i16
  %_lhs18 = load i32* %start_slot4
  %bop19 = add i32 %_lhs17, %_lhs18
  %index_ptr20 = getelementptr { i32, [ 0 x i32 ] }** %arr9, i32 %bop19
  call void @oat_array_bounds_check( i32 0, i32 %bop19 )
  %_lhs21 = load { i32, [ 0 x i32 ] }** %arr9
  %index_ptr14 = add i32* %index_ptr14, 1
  br label %__compare0

__fresh6:
  br label %__end2

__end2:
  %r22 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array12, { i32, [ 0 x i32 ] }** %r22
  %_lhs23 = load { i32, [ 0 x i32 ] }** %r22
  %ret24 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs23 )
  ret i8* %ret24
}


