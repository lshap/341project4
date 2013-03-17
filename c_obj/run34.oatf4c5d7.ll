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


define i32 @program (i32 %argc174, { i32, [ 0 x i8* ] }* %argv172){

__fresh50:
  %argc_slot175 = alloca i32
  store i32 %argc174, i32* %argc_slot175
  %argv_slot173 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv172, { i32, [ 0 x i8* ] }** %argv_slot173
  %array_ptr176 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array177 = bitcast { i32, [ 0 x i32 ] }* %array_ptr176 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr178 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array179 = bitcast { i32, [ 0 x i32 ] }* %array_ptr178 to { i32, [ 0 x i32 ] }* 
  %index_ptr180 = getelementptr { i32, [ 0 x i32 ] }* %array179, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr180
  %index_ptr181 = getelementptr { i32, [ 0 x i32 ] }* %array179, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr181
  %index_ptr182 = getelementptr { i32, [ 0 x i32 ] }* %array179, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr182
  %index_ptr183 = getelementptr { i32, [ 0 x i32 ] }* %array179, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr183
  %index_ptr184 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array177, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array179, { i32, [ 0 x i32 ] }** %index_ptr184
  %array_ptr185 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array186 = bitcast { i32, [ 0 x i32 ] }* %array_ptr185 to { i32, [ 0 x i32 ] }* 
  %index_ptr187 = getelementptr { i32, [ 0 x i32 ] }* %array186, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr187
  %index_ptr188 = getelementptr { i32, [ 0 x i32 ] }* %array186, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr188
  %index_ptr189 = getelementptr { i32, [ 0 x i32 ] }* %array186, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr189
  %index_ptr190 = getelementptr { i32, [ 0 x i32 ] }* %array186, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr190
  %index_ptr191 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array177, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array186, { i32, [ 0 x i32 ] }** %index_ptr191
  %array_ptr192 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array193 = bitcast { i32, [ 0 x i32 ] }* %array_ptr192 to { i32, [ 0 x i32 ] }* 
  %index_ptr194 = getelementptr { i32, [ 0 x i32 ] }* %array193, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr194
  %index_ptr195 = getelementptr { i32, [ 0 x i32 ] }* %array193, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr195
  %index_ptr196 = getelementptr { i32, [ 0 x i32 ] }* %array193, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr196
  %index_ptr197 = getelementptr { i32, [ 0 x i32 ] }* %array193, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr197
  %index_ptr198 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array177, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array193, { i32, [ 0 x i32 ] }** %index_ptr198
  %a199 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array177, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a199
  %s200 = alloca i32
  store i32 0, i32* %s200
  %i201 = alloca i32
  store i32 0, i32* %i201
  br label %__cond46

__cond46:
  %_lhs202 = load i32* %i201
  %bop203 = icmp slt i32 %_lhs202, 3
  br i1 %bop203, label %__body45, label %__post44

__fresh51:
  br label %__body45

__body45:
  %j204 = alloca i32
  store i32 0, i32* %j204
  br label %__cond49

__cond49:
  %_lhs205 = load i32* %j204
  %bop206 = icmp slt i32 %_lhs205, 4
  br i1 %bop206, label %__body48, label %__post47

__fresh52:
  br label %__body48

__body48:
  %_lhs207 = load i32* %s200
  %_lhs208 = load i32* %j204
  %_lhs209 = load i32* %i201
  %index_ptr210 = getelementptr { i32, [ 0 x { i32, [ 0 