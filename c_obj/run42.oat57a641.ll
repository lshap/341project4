declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh180:
  ret void
}


define i32 @program (i32 %argc356, { i32, [ 0 x i8* ] }* %argv354){

__fresh155:
  %argc_slot357 = alloca i32
  store i32 %argc356, i32* %argc_slot357
  %argv_slot355 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv354, { i32, [ 0 x i8* ] }** %argv_slot355
  %array_ptr358 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array359 = bitcast { i32, [ 0 x i32 ] }* %array_ptr358 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr360 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array359, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr360
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr361
  br label %__compare134

__fresh156:
  br label %__compare134

__compare134:
  %comparison_result362 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr361, 3
  br i1 %comparison_result362, label %__body135, label %__end136

__fresh157:
  br label %__body135

__body135:
  store { i32, [ 0 x i32 ] }** %index_ptr361, i32* %i363
  %array_ptr364 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array365 = bitcast { i32, [ 0 x i32 ] }* %array_ptr364 to { i32, [ 0 x i32 ] }* 
  %index_ptr366 = getelementptr { i32, [ 0 x i32 ] }* %array365, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr366
  store i32 0, i32* %index_ptr367
  br label %__compare131

__fresh158:
  br label %__compare131

__compare131:
  %comparison_result368 = icmp slt i32* %index_ptr367, 3
  br i1 %comparison_result368, label %__body132, label %__end133

__fresh159:
  br label %__body132

__body132:
  store i32* %index_ptr367, i32* %i369
  %index_ptr367 = add i32* %index_ptr367, 1
  br label %__compare131

__fresh160:
  br label %__end133

__end133:
  %index_ptr361 = add { i32, [ 0 x i32 ] }** %index_ptr361, 1
  br label %__compare134

__fresh161:
  br label %__end136

__end136:
  %a1370 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array359, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1370
  %array_ptr371 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array372 = bitcast { i32, [ 0 x i32 ] }* %array_ptr371 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr373 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array372, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr373
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr374
  br label %__compare140

__fresh162:
  br label %__compare140

__compare140:
  %comparison_result375 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr374, 3
  br i1 %comparison_result375, label %__body141, label %__end142

__fresh163:
  br label %__body141

__body141:
  store { i32, [ 0 x i32 ] }** %index_ptr374, i32* %i376
  %array_ptr377 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array378 = bitcast { i32, [ 0 x i32 ] }* %array_ptr377 to { i32, [ 0 x i32 ] }* 
  %index_ptr379 = getelementptr { i32, [ 0 x i32 ] }* %array378, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr379
  store i32 0, i32* %index_ptr380
  br label %__compare137

__fresh164:
  br label %__compare137

__compare137:
  %comparison_result381 = icmp slt i32* %index_ptr380, 3
  br i1 %comparison_result381, label %__body138, label %__end139

__fresh165:
  br label %__body138

__body138:
  store i32* %index_ptr380, i32* %i382
  %index_ptr380 = add i32* %index_ptr380, 1
  br label %__compare137

__fresh166:
  br label %__end139

__end139:
  %index_ptr374 = add { i32, [ 0 x i32 ] }** %index_ptr374, 1
  br label %__compare140

__fresh167:
  br label %__end142

__end142:
  %a2383 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array372, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2383
  %array_ptr384 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array385 = bitcast { i32, [ 0 x i32 ] }* %array_ptr384 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr386 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array385, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr386
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr387
  br label %__compare146

__fresh168:
  br label %__compare146

__compare146:
  %comparison_result388 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr387, 3
  br i1 %comparison_result388, label %__body147, label %__end148

__fresh169:
  br label %__body147

__body147:
  store { i32, [ 0 x i32 ] }** %index_ptr387, i32* %i389
  %array_ptr390 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array391 = bitcast { i32, [ 0 x i32 ] }* %array_ptr390 to { i32, [ 0 x i32 ] }* 
  %index_ptr392 = getelementptr { i32, [ 0 x i32 ] }* %array391, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr392
  store i32 0, i32* %index_ptr393
  br label %__compare143

__fresh170:
  br label %__compare143

__compare143:
  %comparison_result394 = icmp slt i32* %index_ptr393, 3
  br i1 %comparison_result394, label %__body144, label %__end145

__fresh171:
  br label %__body144

__body144:
  store i32* %index_ptr393, i32* %i395
  %index_ptr393 = add i32* %index_ptr393, 1
  br label %__compare143

__fresh172:
  br label %__end145

__end145:
  %index_ptr387 = add { i32, [ 0 x i32 ] }** %index_ptr387, 1
  br label %__compare146

__fresh173:
  br label %__end148

__end148:
  %a3396 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array385, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396
  %array_ptr397 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array398 = bitcast { i32, [ 0 x i32 ] }* %array_ptr397 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr399 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array398, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr399
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr400
  br label %__compare152

__fresh174:
  br label %__compare152

__compare152:
  %comparison_result401 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr400, 3
  br i1 %comparison_result401, label %__body153, label %__end154

__fresh175:
  br label %__body153

__body153:
  store { i32, [ 0 x i32 ] }** %index_ptr400, i32* %i402
  %array_ptr403 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array404 = bitcast { i32, [ 0 x i32 ] }* %array_ptr403 to { i32, [ 0 x i32 ] }* 
  %index_ptr405 = getelementptr { i32, [ 0 x i32 ] }* %array404, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr405
  store i32 0, i32* %index_ptr406
  br label %__compare149

__fresh176:
  br label %__compare149

__compare149:
  %comparison_result407 = icmp slt i32* %index_ptr406, 3
  br i1 %comparison_result407, label %__body150, label %__end151

__fresh177:
  br label %__body150

__body150:
  store i32* %index_ptr406, i32* %i408
  %index_ptr406 = add i32* %index_ptr406, 1
  br label %__compare149

__fresh178:
  br label %__end151

__end151:
  %index_ptr400 = add { i32, [ 0 x i32 ] }** %index_ptr400, 1
  br label %__compare152

__fresh179:
  br label %__end154

__end154:
  %a4409 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }** %array398, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4409
  %_lhs410 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2383
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs410, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1370
  %_lhs411 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1370
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs411, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396
  %_lhs412 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4409
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs412, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1370
  %_lhs413 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs413, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2383
  %_lhs414 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2383
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs414, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4409
  %_lhs415 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4409
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs415, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396
  %index_ptr416 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr417 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs418 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3396
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs418
}


