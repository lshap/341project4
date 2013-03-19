declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1921 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1921.init
define void @oat_init (){

__fresh684:
  call void @a1921.init(  )
  ret void
}


define i32 @program (i32 %argc1924, { i32, [ 0 x i8* ] }* %argv1922){

__fresh683:
  %argc_slot1925 = alloca i32
  store i32 %argc1924, i32* %argc_slot1925
  %argv_slot1923 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1922, { i32, [ 0 x i8* ] }** %argv_slot1923
  %_lhs1926 = load { i32, [ 0 x i32 ] }** @a1921
  %ret1927 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1926 )
  call void @print_string( i8* %ret1927 )
  ret i32 0
}


define void @a1921.init (){

__fresh682:
  %array_ptr1909 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1910 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1909 to { i32, [ 0 x i32 ] }* 
  %index_ptr1911 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1911
  %index_ptr1912 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1912
  %index_ptr1913 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1913
  %index_ptr1914 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1914
  %index_ptr1915 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1915
  %index_ptr1916 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1916
  %index_ptr1917 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1917
  %index_ptr1918 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1918
  %index_ptr1919 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1919
  %index_ptr1920 = getelementptr { i32, [ 0 x i32 ] }* %array1910, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1920
  store { i32, [ 0 x i32 ] }* %array1910, { i32, [ 0 x i32 ] }** @a1921
  ret void
}


