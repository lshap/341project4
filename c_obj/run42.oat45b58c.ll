declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh181:
  ret void
}


define i32 @program (i32 %argc365, { i32, [ 0 x i8* ] }* %argv363){

__fresh156:
  %argc_slot366 = alloca i32
  store i32 %argc365, i32* %argc_slot366
  %argv_slot364 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv363, { i32, [ 0 x i8* ] }** %argv_slot364
  %array_ptr367 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array368 = bitcast { i32, [ 0 x i32 ] }* %array_ptr367 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr369 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array368, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr369
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr370
  br label %__compare135

__fresh157:
  br label %__compare135

__compare135:
  %comparison_result371 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr370, 3
  br i1 %comparison_result371, label %__body136, label %__end137

__fresh158:
  br label %__body136

__body136:
  store { i32, [ 0 x i32 ] }** %index_ptr370, i32* %i372
  %array_ptr373 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array374 = bitcast { i32, [ 0 x i32 ] }* %array_ptr373 to { i32, [ 0 x i32 ] }* 
  %index_ptr375 = getelementptr { i32, [ 0 x i32 ] }* %array374, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr375
  store i32 0, i32* %index_ptr376
  br label %__compare132

__fresh159:
  br label %__compare132

__compare132:
  %comparison_result377 = icmp slt i32* %index_ptr376, 3
  br i1 %comparison_result377, label %__body133, label %__end134

__fresh160:
  br label %__body133

__body133:
  store i32* %index_ptr376, i32* %i378
  %index_ptr376 = add i32* %index_ptr376, 1
  br label %__compare132

__fresh161:
  br label %__end134

__end134:
  %index_ptr370 = add { i32, [ 0 x i32 ] }** %index_ptr370, 1
  br label %__compare135

__fresh162:
  br label %__end137

__end137:
  %a1379 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array368, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1379
  %array_ptr380 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array381 = bitcast { i32, [ 0 x i32 ] }* %array_ptr380 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr382 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array381, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr382
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr383
  br label %__compare141

__fresh163:
  br label %__compare141

__compare141:
  %comparison_result384 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr383, 3
  br i1 %comparison_result384, label %__body142, label %__end143

__fresh164:
  br label %__body142

__body142:
  store { i32, [ 0 x i32 ] }** %index_ptr383, i32* %i385
  %array_ptr386 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array387 = bitcast { i32, [ 0 x i32 ] }* %array_ptr386 to { i32, [ 0 x i32 ] }* 
  %index_ptr388 = getelementptr { i32, [ 0 x i32 ] }* %array387, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr388
  store i32 0, i32* %index_ptr389
  br label %__compare138

__fresh165:
  br label %__compare138

__compare138:
  %comparison_result390 = icmp slt i32* %index_ptr389, 3
  br i1 %comparison_result390, label %__body139, label %__end140

__fresh166:
  br label %__body139

__body139:
  store i32* %index_ptr389, i32* %i391
  %index_ptr389 = add i32* %index_ptr389, 1
  br label %__compare138

__fresh167:
  br label %__end140

__end140:
  %index_ptr383 = add { i32, [ 0 x i32 ] }** %index_ptr383, 1
  br label %__compare141

__fresh168:
  br label %__end143

__end143:
  %a2392 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array381, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2392
  %array_ptr393 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array394 = bitcast { i32, [ 0 x i32 ] }* %array_ptr393 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr395 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array394, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr395
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr396
  br label %__compare147

__fresh169:
  br label %__compare147

__compare147:
  %comparison_result397 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr396, 3
  br i1 %comparison_result397, label %__body148, label %__end149

__fresh170:
  br label %__body148

__body148:
  store { i32, [ 0 x i32 ] }** %index_ptr396, i32* %i398
  %array_ptr399 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array400 = bitcast { i32, [ 0 x i32 ] }* %array_ptr399 to { i32, [ 0 x i32 ] }* 
  %index_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr401
  store i32 0, i32* %index_ptr402
  br label %__compare144

__fresh171:
  br label %__compare144

__compare144:
  %comparison_result403 = icmp slt i32* %index_ptr402, 3
  br i1 %comparison_result403, label %__body145, label %__end146

__fresh172:
  br label %__body145

__body145:
  store i32* %index_ptr402, i32* %i404
  %index_ptr402 = add i32* %index_ptr402, 1
  br label %__compare144

__fresh173:
  br label %__end146

__end146:
  %index_ptr396 = add { i32, [ 0 x i32 ] }** %index_ptr396, 1
  br label %__compare147

__fresh174:
  br label %__end149

__end149:
  %a3405 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array394, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  %array_ptr406 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array407 = bitcast { i32, [ 0 x i32 ] }* %array_ptr406 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr408 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr408
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr409
  br label %__compare153

__fresh175:
  br label %__compare153

__compare153:
  %comparison_result410 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr409, 3
  br i1 %comparison_result410, label %__body154, label %__end155

__fresh176:
  br label %__body154

__body154:
  store { i32, [ 0 x i32 ] }** %index_ptr409, i32* %i411
  %array_ptr412 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array413 = bitcast { i32, [ 0 x i32 ] }* %array_ptr412 to { i32, [ 0 x i32 ] }* 
  %index_ptr414 = getelementptr { i32, [ 0 x i32 ] }* %array413, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr414
  store i32 0, i32* %index_ptr415
  br label %__compare150

__fresh177:
  br label %__compare150

__compare150:
  %comparison_result416 = icmp slt i32* %index_ptr415, 3
  br i1 %comparison_result416, label %__body151, label %__end152

__fresh178:
  br label %__body151

__body151:
  store i32* %index_ptr415, i32* %i417
  %index_ptr415 = add i32* %index_ptr415, 1
  br label %__compare150

__fresh179:
  br label %__end152

__end152:
  %index_ptr409 = add { i32, [ 0 x i32 ] }** %index_ptr409, 1
  br label %__compare153

__fresh180:
  br label %__end155

__end155:
  %a4418 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x i32 ] }*** %array407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4418
  %_lhs419 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2392
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs419, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1379
  %_lhs420 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1379
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs420, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  %_lhs421 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4418
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs421, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1379
  %_lhs422 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs422, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2392
  %_lhs423 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2392
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs423, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4418
  %_lhs424 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4418
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs424, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  %index_ptr425 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr426 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs427 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs427
}


