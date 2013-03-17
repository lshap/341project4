declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh141:
  ret void
}


define i32 @program (i32 %argc1125, { i32, [ 0 x i8* ] }* %argv1123){

__fresh140:
  %argc_slot1126 = alloca i32
  store i32 %argc1125, i32* %argc_slot1126
  %argv_slot1124 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1123, { i32, [ 0 x i8* ] }** %argv_slot1124
  %ret1127 = call i32 @f ( i32 5 )
  ret i32 %ret1127
}


define i32 @f (i32 %i1112){

__fresh137:
  %i_slot1113 = alloca i32
  store i32 %i1112, i32* %i_slot1113
  %r1114 = alloca i32
  store i32 0, i32* %r1114
  %_lhs1115 = load i32* %i_slot1113
  %bop1116 = icmp eq i32 %_lhs1115, 0
  br i1 %bop1116, label %__then136, label %__else135

__fresh138:
  br label %__then136

__then136:
  store i32 1, i32* %r1114
  br label %__merge134

__fresh139:
  br label %__else135

__else135:
  %_lhs1117 = load i32* %i_slot1113
  %_lhs1118 = load i32* %i_slot1113
  %bop1119 = sub i32 %_lhs1118, 1
  %ret1120 = call i32 @f ( i32 %bop1119 )
  %bop1121 = mul i32 %_lhs1117, %ret1120
  store i32 %bop1121, i32* %r1114
  br label %__merge134

__merge134:
  %_lhs1122 = load i32* %r1114
  ret i32 %_lhs1122
}


