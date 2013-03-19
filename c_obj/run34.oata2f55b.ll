declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh65:
  ret void
}


define i32 @program (i32 %argc159, { i32, [ 0 x i8* ] }* %argv157){

__fresh60:
  %argc_slot160 = alloca i32
  store i32 %argc159, i32* %argc_slot160
  %argv_slot158 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv157, { i32, [ 0 x i8* ] }** %argv_slot158
  %array_ptr161 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array162 = bitcast { i32, [ 0 x i32 ] }* %array_ptr161 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr163 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array164 = bitcast { i32, [ 0 x i32 ] }* %array_ptr163 to { i32, [ 0 x i32 ] }* 
  %index_ptr165 = getelementptr { i32, [ 0 x i32 ] }* %array164, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr165
  %index_ptr166 = getelementptr { i32, [ 0 x i32 ] }* %array164, i32 0, i32 1, i32 1
  store i32 1, i32* %index_ptr166
  %index_ptr167 = getelementptr { i32, [ 0 x i32 ] }* %array164, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr167
  %index_ptr168 = getelementptr { i32, [ 0 x i32 ] }* %array164, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr168
  %index_ptr169 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array162, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array164, { i32, [ 0 x i32 ] }** %index_ptr169
  %array_ptr170 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array171 = bitcast { i32, [ 0 x i32 ] }* %array_ptr170 to { i32, [ 0 x i32 ] }* 
  %index_ptr172 = getelementptr { i32, [ 0 x i32 ] }* %array171, i32 0, i32 1, i32 0
  store i32 4, i32* %index_ptr172
  %index_ptr173 = getelementptr { i32, [ 0 x i32 ] }* %array171, i32 0, i32 1, i32 1
  store i32 5, i32* %index_ptr173
  %index_ptr174 = getelementptr { i32, [ 0 x i32 ] }* %array171, i32 0, i32 1, i32 2
  store i32 6, i32* %index_ptr174
  %index_ptr175 = getelementptr { i32, [ 0 x i32 ] }* %array171, i32 0, i32 1, i32 3
  store i32 7, i32* %index_ptr175
  %index_ptr176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array162, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array171, { i32, [ 0 x i32 ] }** %index_ptr176
  %array_ptr177 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array178 = bitcast { i32, [ 0 x i32 ] }* %array_ptr177 to { i32, [ 0 x i32 ] }* 
  %index_ptr179 = getelementptr { i32, [ 0 x i32 ] }* %array178, i32 0, i32 1, i32 0
  store i32 8, i32* %index_ptr179
  %index_ptr180 = getelementptr { i32, [ 0 x i32 ] }* %array178, i32 0, i32 1, i32 1
  store i32 9, i32* %index_ptr180
  %index_ptr181 = getelementptr { i32, [ 0 x i32 ] }* %array178, i32 0, i32 1, i32 2
  store i32 10, i32* %index_ptr181
  %index_ptr182 = getelementptr { i32, [ 0 x i32 ] }* %array178, i32 0, i32 1, i32 3
  store i32 11, i32* %index_ptr182
  %index_ptr183 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array162, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array178, { i32, [ 0 x i32 ] }** %index_ptr183
  %a184 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array162, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a184
  %s185 = alloca i32
  store i32 0, i32* %s185
  %i186 = alloca i32
  store i32 0, i32* %i186
  br label %__cond56

__cond56:
  %_lhs187 = load i32* %i186
  %bop188 = icmp slt i32 %_lhs187, 3
  br i1 %bop188, label %__body55, label %__post54

__fresh61:
  br label %__body55

__body55:
  %j189 = alloca i32
  store i32 0, i32* %j189
  br label %__cond59

__cond59:
  %_lhs190 = load i32* %j189
  %bop191 = icmp slt i32 %_lhs190, 4
  br i1 %bop191, label %__body58, label %__post57

__fresh62:
  br label %__body58

__body58:
  %_lhs192 = load i32* %s185
  %_lhs193 = load i32* %j189
  %_lhs194 = load i32* %i186
  %index_ptr195 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a184, i32 %_lhs194
  call void @oat_array_bounds_check( i32 0, i32 %_lhs194 )
  %index_ptr196 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a184, i32 %_lhs193
  call void @oat_array_bounds_check( i32 0, i32 %_lhs193 )
  %_lhs197 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a184
  %bop198 = add i32 %_lhs192, %_lhs197
  store i32 %bop198, i32* %s185
  %_lhs199 = load i32* %j189
  %bop200 = add i32 %_lhs199, 1
  store i32 %bop200, i32* %j189
  br label %__cond59

__fresh63:
  br label %__post57

__post57:
  %_lhs201 = load i32* %i186
  %bop202 = add i32 %_lhs201, 1
  store i32 %bop202, i32* %i186
  br label %__cond56

__fresh64:
  br label %__post54

__post54:
  %_lhs203 = load i32* %s185
  ret i32 %_lhs203
}


