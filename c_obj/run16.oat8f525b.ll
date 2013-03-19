declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh353:
  ret void
}


define i32 @program (i32 %argc905, { i32, [ 0 x i8* ] }* %argv903){

__fresh346:
  %argc_slot906 = alloca i32
  store i32 %argc905, i32* %argc_slot906
  %argv_slot904 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv903, { i32, [ 0 x i8* ] }** %argv_slot904
  %x907 = alloca i32
  store i32 10, i32* %x907
  %array_ptr908 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array909 = bitcast { i32, [ 0 x i32 ] }* %array_ptr908 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr911
  br label %__compare343

__fresh347:
  br label %__compare343

__compare343:
  %comparison_result912 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr911, 3
  br i1 %comparison_result912, label %__body344, label %__end345

__fresh348:
  br label %__body344

__body344:
  store { i32, [ 0 x i32 ] }** %index_ptr911, i32* %i913
  %array_ptr914 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array915 = bitcast { i32, [ 0 x i32 ] }* %array_ptr914 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr917
  br label %__compare340

__fresh349:
  br label %__compare340

__compare340:
  %comparison_result918 = icmp slt i32* %index_ptr917, 3
  br i1 %comparison_result918, label %__body341, label %__end342

__fresh350:
  br label %__body341

__body341:
  store i32* %index_ptr917, i32* %j919
  %_lhs920 = load i32* %x907
  %_lhs921 = load i32* %i913
  %bop922 = add i32 %_lhs920, %_lhs921
  %_lhs923 = load i32* %j919
  %bop924 = add i32 %bop922, %_lhs923
  %index_ptr917 = add i32* %index_ptr917, 1
  br label %__compare340

__fresh351:
  br label %__end342

__end342:
  %index_ptr911 = add { i32, [ 0 x i32 ] }** %index_ptr911, 1
  br label %__compare343

__fresh352:
  br label %__end345

__end345:
  %a925 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array909, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a925
  %_lhs926 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a925
  %b927 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs926, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b927
  %size_ptr929 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b927, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr929, i32 2 )
  %index_ptr928 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b927, i32 0, i32 1, i32 2
  %size_ptr931 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b927, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr931, i32 1 )
  %index_ptr930 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %b927, i32 0, i32 1, i32 1
  %_lhs932 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b927
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs932
}


