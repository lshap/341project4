declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh342:
  ret void
}


define i32 @program (i32 %argc863, { i32, [ 0 x i8* ] }* %argv861){

__fresh335:
  %argc_slot864 = alloca i32
  store i32 %argc863, i32* %argc_slot864
  %argv_slot862 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv861, { i32, [ 0 x i8* ] }** %argv_slot862
  %x865 = alloca i32
  store i32 10, i32* %x865
  %array_ptr866 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array867 = bitcast { i32, [ 0 x i32 ] }* %array_ptr866 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr869
  br label %__compare332

__fresh336:
  br label %__compare332

__compare332:
  %comparison_result870 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr869, 3
  br i1 %comparison_result870, label %__body333, label %__end334

__fresh337:
  br label %__body333

__body333:
  store { i32, [ 0 x i32 ] }** %index_ptr869, i32* %i871
  %array_ptr872 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array873 = bitcast { i32, [ 0 x i32 ] }* %array_ptr872 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr875
  br label %__compare329

__fresh338:
  br label %__compare329

__compare329:
  %comparison_result876 = icmp slt i32* %index_ptr875, 3
  br i1 %comparison_result876, label %__body330, label %__end331

__fresh339:
  br label %__body330

__body330:
  store i32* %index_ptr875, i32* %j877
  %_lhs878 = load i32* %x865
  %_lhs879 = load i32* %i871
  %bop880 = add i32 %_lhs878, %_lhs879
  %_lhs881 = load i32* %j877
  %bop882 = add i32 %bop880, %_lhs881
  %index_ptr875 = add i32* %index_ptr875, 1
  br label %__compare329

__fresh340:
  br label %__end331

__end331:
  %index_ptr869 = add { i32, [ 0 x i32 ] }** %index_ptr869, 1
  br label %__compare332

__fresh341:
  br label %__end334

__end334:
  %a883 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array867, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a883
  %_lhs884 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a883
  %b885 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs884, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b885
  %index_ptr886 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b885, i32 2
  call void @oat_array_bounds_check( i32 0, i32 2 )
  %index_ptr887 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b885, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs888 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b885
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs888
}


