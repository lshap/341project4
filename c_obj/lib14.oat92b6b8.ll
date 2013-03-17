declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1096 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1096.init
define void @oat_init (){

__fresh133:
  call void @a1096.init(  )
  ret void
}


define i32 @program (i32 %argc1099, { i32, [ 0 x i8* ] }* %argv1097){

__fresh132:
  %argc_slot1100 = alloca i32
  store i32 %argc1099, i32* %argc_slot1100
  %argv_slot1098 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1097, { i32, [ 0 x i8* ] }** %argv_slot1098
  %_lhs1101 = load { i32, [ 0 x i32 ] }** @a1096
  %ret1102 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1101 )
  call void @print_string( i8* %ret1102 )
  ret i32 0
}


define void @a1096.init (){

__fresh131:
  %array_ptr1084 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1085 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1084 to { i32, [ 0 x i32 ] }* 
  %index_ptr1086 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1086
  %index_ptr1087 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1087
  %index_ptr1088 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1088
  %index_ptr1089 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1089
  %index_ptr1090 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1090
  %index_ptr1091 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1091
  %index_ptr1092 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1092
  %index_ptr1093 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1093
  %index_ptr1094 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1094
  %index_ptr1095 = getelementptr { i32, [ 0 x i32 ] }* %array1085, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1095
  store { i32, [ 0 x i32 ] }* %array1085, { i32, [ 0 x i32 ] }** @a1096
  ret void
}


