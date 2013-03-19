declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str936 = global i8* zeroinitializer, align 4		; initialized by str936.init
define void @oat_init (){

__fresh362:
  call void @str936.init(  )
  ret void
}


define i32 @program (i32 %argc939, { i32, [ 0 x i8* ] }* %argv937){

__fresh361:
  %argc_slot940 = alloca i32
  store i32 %argc939, i32* %argc_slot940
  %argv_slot938 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv937, { i32, [ 0 x i8* ] }** %argv_slot938
  %_lhs941 = load i8** @str936
  call void @print_string( i8* %_lhs941 )
  ret i32 0
}


define void @str936.init (){

__fresh357:
  %array_ptr929 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array930 = bitcast { i32, [ 0 x i32 ] }* %array_ptr929 to { i32, [ 0 x i32 ] }* 
  %index_ptr931 = getelementptr { i32, [ 0 x i32 ] }* %array930, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr931
  store i32 0, i32* %index_ptr932
  br label %__compare354

__fresh358:
  br label %__compare354

__compare354:
  %comparison_result933 = icmp slt i32* %index_ptr932, 3
  br i1 %comparison_result933, label %__body355, label %__end356

__fresh359:
  br label %__body355

__body355:
  store i32* %index_ptr932, i32* %i934
  %index_ptr932 = add i32* %index_ptr932, 1
  br label %__compare354

__fresh360:
  br label %__end356

__end356:
  %ret935 = call i8* @string_of_array ( i32* %array930 )
  store i8* %ret935, i8** @str936
  ret void
}


