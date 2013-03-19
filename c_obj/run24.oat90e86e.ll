declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a137 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a137.init
define void @oat_init (){

__fresh43:
  call void @a137.init(  )
  ret void
}


define i32 @program (i32 %argc140, { i32, [ 0 x i8* ] }* %argv138){

__fresh42:
  %argc_slot141 = alloca i32
  store i32 %argc140, i32* %argc_slot141
  %argv_slot139 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv138, { i32, [ 0 x i8* ] }** %argv_slot139
  %index_ptr142 = getelementptr { i32, [ 0 x i32 ] }** @a137, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs143 = load { i32, [ 0 x i32 ] }** @a137
  ret { i32, [ 0 x i32 ] }* %_lhs143
}


define void @a137.init (){

__fresh41:
  %array_ptr127 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array128 = bitcast { i32, [ 0 x i32 ] }* %array_ptr127 to { i32, [ 0 x i32 ] }* 
  %bop129 = mul i32 12, 7
  %bop130 = add i32 %bop129, 13
  %bop131 = ashr i32 %bop130, 2
  %index_ptr132 = getelementptr { i32, [ 0 x i32 ] }* %array128, i32 0, i32 1, i32 0
  store i32 %bop131, i32* %index_ptr132
  %bop133 = sub i32 9, 4
  %index_ptr134 = getelementptr { i32, [ 0 x i32 ] }* %array128, i32 0, i32 1, i32 1
  store i32 %bop133, i32* %index_ptr134
  %bop135 = add i32 5, 5
  %index_ptr136 = getelementptr { i32, [ 0 x i32 ] }* %array128, i32 0, i32 1, i32 2
  store i32 %bop135, i32* %index_ptr136
  store { i32, [ 0 x i32 ] }* %array128, { i32, [ 0 x i32 ] }** @a137
  ret void
}


