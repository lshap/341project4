declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh55:
  ret void
}


define i32 @program (i32 %argc168, { i32, [ 0 x i8* ] }* %argv166){

__fresh50:
  %argc_slot169 = alloca i32
  store i32 %argc168, i32* %argc_slot169
  %argv_slot167 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv166, { i32, [ 0 x i8* ] }** %argv_slot167
  %array_ptr170 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array171 = bitcast { i32, [ 0 x i32 ] }* %array_ptr170 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr172 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array173 = bitcast { i32, [ 0 x i32 ] }* %array_ptr172 to { i32, [ 0 x i32 ] }* 
  %index_ptr174 = getelementptr { i32, [ 0 x i32 ] }* %array173, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr174
  %index_ptr175 = getelementptr { i32, [ 0 x i32 ] }* %array173, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr175
  %index_ptr176 = getelementptr { i32, [ 0 x i32 ] }* %array173, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr176
  %index_ptr177 = getelementptr { i32, [ 0 x i32 ] }* %array173, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr177
  %index_ptr178 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array171, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array173, { i32, [ 0 x i32 ] }** %index_ptr178
  %array_ptr179 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array180 = bitcast { i32, [ 0 x i32 ] }* %array_ptr179 to { i32, [ 0 x i32 ] }* 
  %index_ptr181 = getelementptr { i32, [ 0 x i32 ] }* %array180, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr181
  %index_ptr182 = getelementptr { i32, [ 0 x i32 ] }* %array180, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr182
  %index_ptr183 = getelementptr { i32, [ 0 x i32 ] }* %array180, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr183
  %index_ptr184 = getelementptr { i32, [ 0 x i32 ] }* %array180, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr184
  %index_ptr185 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array171, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array180, { i32, [ 0 x i32 ] }** %index_ptr185
  %array_ptr186 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array187 = bitcast { i32, [ 0 x i32 ] }* %array_ptr186 to { i32, [ 0 x i32 ] }* 
  %index_ptr188 = getelementptr { i32, [ 0 x i32 ] }* %array187, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr188
  %index_ptr189 = getelementptr { i32, [ 0 x i32 ] }* %array187, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr189
  %index_ptr190 = getelementptr { i32, [ 0 x i32 ] }* %array187, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr190
  %index_ptr191 = getelementptr { i32, [ 0 x i32 ] }* %array187, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr191
  %index_ptr192 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array171, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array187, { i32, [ 0 x i32 ] }** %index_ptr192
  %a193 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array171, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a193
  %s194 = alloca i32
  store i32 0, i32* %s194
  %i195 = alloca i32
  store i32 0, i32* %i195
  br label %__cond46

__cond46:
  %_lhs196 = load i32* %i195
  %bop197 = icmp slt i32 %_lhs196, 3
  br i1 %bop197, label %__body45, label %__post44

__fresh51:
  br label %__body45

__body45:
  %j198 = alloca i32
  store i32 0, i32* %j198
  br label %__cond49

__cond49:
  %_lhs199 = load i32* %j198
  %bop200 = icmp slt i32 %_lhs199, 4
  br i1 %bop200, label %__body48, label %__post47

__fresh52:
  br label %__body48

__body48:
  %_lhs201 = load i32* %s194
  %index_ptr205 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a193, i32 %_lhs202
  %index_ptr204 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a193, i32 %_lhs203
  %_lhs203 = load i32* %i195
  %_lhs202 = load i32* %j198
  %_lhs206 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a193
  %bop207 = add i32 %_lhs201, %_lhs206
  store i32 %bop207, i32* %s194
  %_lhs208 = load i32* %j198
  %bop209 = add i32 %_lhs208, 1
  store i32 %bop209, i32* %j198
  br label %__cond49

__fresh53:
  br label %__post47

__post47:
  %_lhs210 = load i32* %i195
  %bop211 = add i32 %_lhs210, 1
  store i32 %bop211, i32* %i195
  br label %__cond46

__fresh54:
  br label %__post44

__post44:
  %_lhs212 = load i32* %s194
  ret i32 %_lhs212
}


