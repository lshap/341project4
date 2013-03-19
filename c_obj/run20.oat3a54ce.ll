declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh34:
  ret void
}


define i32 @program (i32 %argc103, { i32, [ 0 x i8* ] }* %argv101){

__fresh33:
  %argc_slot104 = alloca i32
  store i32 %argc103, i32* %argc_slot104
  %argv_slot102 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv101, { i32, [ 0 x i8* ] }** %argv_slot102
  %array_ptr105 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array106 = bitcast { i32, [ 0 x i32 ] }* %array_ptr105 to { i32, [ 0 x i32 ] }* 
  %unop107 = sub i32 0, 1
  %index_ptr108 = getelementptr { i32, [ 0 x i32 ] }* %array106, i32 0, i32 1, i32 0
  store i32 %unop107, i32* %index_ptr108
  %unop109 = sub i32 0, 100
  %index_ptr110 = getelementptr { i32, [ 0 x i32 ] }* %array106, i32 0, i32 1, i32 1
  store i32 %unop109, i32* %index_ptr110
  %ret111 = call i32 @f (  )
  %index_ptr112 = getelementptr { i32, [ 0 x i32 ] }* %array106, i32 0, i32 1, i32 2
  store i32 %ret111, i32* %index_ptr112
  %a113 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array106, { i32, [ 0 x i32 ] }** %a113
  %index_ptr114 = getelementptr { i32, [ 0 x i32 ] }** %a113, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %_lhs115 = load { i32, [ 0 x i32 ] }** %a113
  ret { i32, [ 0 x i32 ] }* %_lhs115
}


define i32 @f (){

__fresh32:
  ret i32 19
}


