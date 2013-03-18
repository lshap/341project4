declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh147:
  ret void
}


define i32 @program (i32 %argc365, { i32, [ 0 x i8* ] }* %argv363){

__fresh122:
  %argc_slot366 = alloca i32
  store i32 %argc365, i32* %argc_slot366
  %argv_slot364 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv363, { i32, [ 0 x i8* ] }** %argv_slot364
  %array_ptr367 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array368 = bitcast { i32, [ 0 x i32 ] }* %array_ptr367 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr369 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array368, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr369
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr370
  br label %__compare101

__fresh123:
  br label %__compare101

__compare101:
  %comparison_result371 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr370, 3
  br i1 %comparison_result371, label %__body102, label %__end103

__fresh124:
  br label %__body102

__body102:
  store { i32, [ 0 x i32 ] }** %index_ptr370, i32 %i372
  %array_ptr373 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array374 = bitcast { i32, [ 0 x i32 ] }* %array_ptr373 to { i32, [ 0 x i32 ] }* 
  %index_ptr375 = getelementptr { i32, [ 0 x i32 ] }* %array374, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr375
  store i32 0, i32* %index_ptr376
  br label %__compare98

__fresh125:
  br label %__compare98

__compare98:
  %comparison_result377 = icmp slt i32* %index_ptr376, 3
  br i1 %comparison_result377, label %__body99, label %__end100

__fresh126:
  br label %__body99

__body99:
  store i32* %index_ptr376, i32 %i378
  %index_ptr376 = add i32* %index_ptr376, 1
  br label %__compare98

__fresh127:
  br label %__end100

__end100:
  %index_ptr370 = add { i32, [ 0 x i32 ] }** %index_ptr370, 1
  br label %__compare101

__fresh128:
  br label %__end103

__end103:
  %a1379 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array368, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1379
  %array_ptr380 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array381 = bitcast { i32, [ 0 x i32 ] }* %array_ptr380 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr382 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array381, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr382
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr383
  br label %__compare107

__fresh129:
  br label %__compare107

__compare107:
  %comparison_result384 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr383, 3
  br i1 %comparison_result384, label %__body108, label %__end109

__fresh130:
  br label %__body108

__body108:
  store { i32, [ 0 x i32 ] }** %index_ptr383, i32 %i385
  %array_ptr386 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array387 = bitcast { i32, [ 0 x i32 ] }* %array_ptr386 to { i32, [ 0 x i32 ] }* 
  %index_ptr388 = getelementptr { i32, [ 0 x i32 ] }* %array387, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr388
  store i32 0, i32* %index_ptr389
  br label %__compare104

__fresh131:
  br label %__compare104

__compare104:
  %comparison_result390 = icmp slt i32* %index_ptr389, 3
  br i1 %comparison_result390, label %__body105, label %__end106

__fresh132:
  br label %__body105

__body105:
  store i32* %index_ptr389, i32 %i391
  %index_ptr389 = add i32* %index_ptr389, 1
  br label %__compare104

__fresh133:
  br label %__end106

__end106:
  %index_ptr383 = add { i32, [ 0 x i32 ] }** %index_ptr383, 1
  br label %__compare107

__fresh134:
  br label %__end109

__end109:
  %a2392 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array381, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2392
  %array_ptr393 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array394 = bitcast { i32, [ 0 x i32 ] }* %array_ptr393 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr395 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array394, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr395
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr396
  br label %__compare113

__fresh135:
  br label %__compare113

__compare113:
  %comparison_result397 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr396, 3
  br i1 %comparison_result397, label %__body114, label %__end115

__fresh136:
  br label %__body114

__body114:
  store { i32, [ 0 x i32 ] }** %index_ptr396, i32 %i398
  %array_ptr399 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array400 = bitcast { i32, [ 0 x i32 ] }* %array_ptr399 to { i32, [ 0 x i32 ] }* 
  %index_ptr401 = getelementptr { i32, [ 0 x i32 ] }* %array400, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr401
  store i32 0, i32* %index_ptr402
  br label %__compare110

__fresh137:
  br label %__compare110

__compare110:
  %comparison_result403 = icmp slt i32* %index_ptr402, 3
  br i1 %comparison_result403, label %__body111, label %__end112

__fresh138:
  br label %__body111

__body111:
  store i32* %index_ptr402, i32 %i404
  %index_ptr402 = add i32* %index_ptr402, 1
  br label %__compare110

__fresh139:
  br label %__end112

__end112:
  %index_ptr396 = add { i32, [ 0 x i32 ] }** %index_ptr396, 1
  br label %__compare113

__fresh140:
  br label %__end115

__end115:
  %a3405 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array394, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3405
  %array_ptr406 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array407 = bitcast { i32, [ 0 x i32 ] }* %array_ptr406 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %index_ptr408 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr408
  store i32 0, { i32, [ 0 x i32 ] }** %index_ptr409
  br label %__compare119

__fresh141:
  br label %__compare119

__compare119:
  %comparison_result410 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr409, 3
  br i1 %comparison_result410, label %__body120, label %__end121

__fresh142:
  br label %__body120

__body120:
  store { i32, [ 0 x i32 ] }** %index_ptr409, i32 %i411
  %array_ptr412 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array413 = bitcast { i32, [ 0 x i32 ] }* %array_ptr412 to { i32, [ 0 x i32 ] }* 
  %index_ptr414 = getelementptr { i32, [ 0 x i32 ] }* %array413, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr414
  store i32 0, i32* %index_ptr415
  br label %__compare116

__fresh143:
  br label %__compare116

__compare116:
  %comparison_result416 = icmp slt i32* %index_ptr415, 3
  br i1 %comparison_result416, label %__body117, label %__end118

__fresh144:
  br label %__body117

__body117:
  store i32* %index_ptr415, i32 %i417
  %index_ptr415 = add i32* %index_ptr415, 1
  br label %__compare116

__fresh145:
  br label %__end118

__end118:
  %index_ptr409 = add { i32, [ 0 x i32 ] }** %index_ptr409, 1
  br label %__compare119

__fresh146:
  br label %__end121

__end121:
  %a4418 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array407, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4418
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


