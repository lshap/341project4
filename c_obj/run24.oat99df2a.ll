declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a146 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a146.init
define void @oat_init (){

__fresh36:
  call void @a146.init(  )
  ret void
}


define i32 @program (i32 %argc149, { i32, [ 0 x i8* ] }* %argv147){

__fresh35:
  %argc_slot150 = alloca i32
  store i32 %argc149, i32* %argc_slot150
  %argv_slot148 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv147, { i32, [ 0 x i8* ] }** %argv_slot148
  %index_ptr151 = getelementptr { i32, [ 0 x i32 ] }** @a146, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs152 = load { i32, [ 0 x i32 ] }** @a146
  ret { i32, [ 0 x i32 ] }* %_lhs152
}


define void @a146.init (){

__fresh34:
  %array_ptr136 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array137 = bitcast { i32, [ 0 x i32 ] }* %array_ptr136 to { i32, [ 0 x i32 ] }* 
  %bop138 = mul i32 12, 7
  %bop139 = add i32 %bop138, 13
  %bop140 = ashr i32 %bop139, 2
  %index_ptr141 = getelementptr { i32, [ 0 x i32 ] }* %array137, i32 0, i32 1, i32 0
  store i32 %bop140, i32* %index_ptr141
  %bop142 = sub i32 9, 4
  %index_ptr143 = getelementptr { i32, [ 0 x i32 ] }* %array137, i32 0, i32 1, i32 1
  store i32 %bop142, i32* %index_ptr143
  %bop144 = add i32 5, 5
  %index_ptr145 = getelementptr { i32, [ 0 x i32 ] }* %array137, i32 0, i32 1, i32 2
  store i32 %bop144, i32* %index_ptr145
  store { i32, [ 0 x i32 ] }* %array137, { i32, [ 0 x i32 ] }** @a146
  ret void
}


