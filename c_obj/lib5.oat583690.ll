declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1238.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1238 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1238.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh185:
  ret void
}


define i32 @program (i32 %argc1236, { i32, [ 0 x i8* ] }* %argv1234){

__fresh182:
  %argc_slot1237 = alloca i32
  store i32 %argc1236, i32* %argc_slot1237
  %argv_slot1235 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1234, { i32, [ 0 x i8* ] }** %argv_slot1235
  %strval1239 = load i8** @_oat_string1238
  %str1240 = alloca i8*
  store i8* %strval1239, i8** %str1240
  %_lhs1241 = load i8** %str1240
  %ret1242 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1241 )
  %arr1243 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1242, { i32, [ 0 x i32 ] }** %arr1243
  %s1244 = alloca i32
  store i32 0, i32* %s1244
  %i1245 = alloca i32
  store i32 0, i32* %i1245
  br label %__cond181

__cond181:
  %_lhs1246 = load i32* %i1245
  %bop1247 = icmp slt i32 %_lhs1246, 5
  br i1 %bop1247, label %__body180, label %__post179

__fresh183:
  br label %__body180

__body180:
  %_lhs1248 = load i32* %s1244
  %index_ptr1250 = getelementptr { i32, [ 0 x i32 ] }** %arr1243, i32 %_lhs1249
  %_lhs1249 = load i32* %i1245
  %_lhs1251 = load { i32, [ 0 x i32 ] }** %arr1243
  %bop1252 = add i32 %_lhs1248, %_lhs1251
  store i32 %bop1252, i32* %s1244
  %_lhs1253 = load i32* %i1245
  %bop1254 = add i32 %_lhs1253, 1
  store i32 %bop1254, i32* %i1245
  br label %__cond181

__fresh184:
  br label %__post179

__post179:
  %_lhs1255 = load i32* %s1244
  ret i32 %_lhs1255
}


