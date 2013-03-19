declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str992 = global i8* zeroinitializer, align 4		; initialized by str992.init
define void @oat_init (){

__fresh375:
  call void @str992.init(  )
  ret void
}


define i32 @program (i32 %argc995, { i32, [ 0 x i8* ] }* %argv993){

__fresh374:
  %argc_slot996 = alloca i32
  store i32 %argc995, i32* %argc_slot996
  %argv_slot994 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv993, { i32, [ 0 x i8* ] }** %argv_slot994
  %_lhs997 = load i8** @str992
  call void @print_string( i8* %_lhs997 )
  ret i32 0
}


define void @str992.init (){

__fresh370:
  %array_ptr985 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array986 = bitcast { i32, [ 0 x i32 ] }* %array_ptr985 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr988
  br label %__compare367

__fresh371:
  br label %__compare367

__compare367:
  %comparison_result989 = icmp slt i32* %index_ptr988, 3
  br i1 %comparison_result989, label %__body368, label %__end369

__fresh372:
  br label %__body368

__body368:
  store i32* %index_ptr988, i32* %i990
  %index_ptr988 = add i32* %index_ptr988, 1
  br label %__compare367

__fresh373:
  br label %__end369

__end369:
  %ret991 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %array986 )
  store i8* %ret991, i8** @str992
  ret void
}


