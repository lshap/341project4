declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@str1213 = global i8* zeroinitializer, align 4		; initialized by str1213.init
@_oat_string1211.str. = private unnamed_addr constant [ 6 x i8 ] c "hello\00", align 4
@_oat_string1211 = global i8* getelementptr inbounds ([ 6 x i8 ]* @_oat_string1211.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh178:
  call void @str1213.init(  )
  ret void
}


define i32 @program (i32 %argc1217, { i32, [ 0 x i8* ] }* %argv1215){

__fresh175:
  %argc_slot1218 = alloca i32
  store i32 %argc1217, i32* %argc_slot1218
  %argv_slot1216 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1215, { i32, [ 0 x i8* ] }** %argv_slot1216
  %_lhs1219 = load i8** @str1213
  %ret1220 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1219 )
  %arr1221 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1220, { i32, [ 0 x i32 ] }** %arr1221
  %s1222 = alloca i32
  store i32 0, i32* %s1222
  %i1223 = alloca i32
  store i32 0, i32* %i1223
  br label %__cond174

__cond174:
  %_lhs1224 = load i32* %i1223
  %bop1225 = icmp slt i32 %_lhs1224, 5
  br i1 %bop1225, label %__body173, label %__post172

__fresh176:
  br label %__body173

__body173:
  %_lhs1226 = load i32* %s1222
  %_lhs1227 = load i32* %i1223
  %index_ptr1228 = getelementptr { i32, [ 0 x i32 ] }** %arr1221, i32 %_lhs1227
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1227 )
  %_lhs1229 = load { i32, [ 0 x i32 ] }** %arr1221
  %bop1230 = add i32 %_lhs1226, %_lhs1229
  store i32 %bop1230, i32* %s1222
  %_lhs1231 = load i32* %i1223
  %bop1232 = add i32 %_lhs1231, 1
  store i32 %bop1232, i32* %i1223
  br label %__cond174

__fresh177:
  br label %__post172

__post172:
  %_lhs1233 = load i32* %s1222
  ret i32 %_lhs1233
}


define void @str1213.init (){

__fresh171:
  %strval1212 = load i8** @_oat_string1211
  store i8* %strval1212, i8** @str1213
  ret void
}


