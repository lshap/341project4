declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh199:
  ret void
}


define i32 @program (i32 %argc375, { i32, [ 0 x i8* ] }* %argv373){

__fresh174:
  %argc_slot376 = alloca i32
  store i32 %argc375, i32* %argc_slot376
  %argv_slot374 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv373, { i32, [ 0 x i8* ] }** %argv_slot374
  %array_ptr377 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array378 = bitcast { i32, [ 0 x i32 ] }* %array_ptr377 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr380
  br label %__compare153

__fresh175:
  br label %__compare153

__compare153:
  %comparison_result381 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr380, 3
  br i1 %comparison_result381, label %__body154, label %__end155

__fresh176:
  br label %__body154

__body154:
  store { i32, [ 0 x i32 ] }** %index_ptr380, i32* %i382
  %array_ptr383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr383 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr386
  br label %__compare150

__fresh177:
  br label %__compare150

__compare150:
  %comparison_result387 = icmp slt i32* %index_ptr386, 3
  br i1 %comparison_result387, label %__body151, label %__end152

__fresh178:
  br label %__body151

__body151:
  store i32* %index_ptr386, i32* %i388
  %index_ptr386 = add i32* %index_ptr386, 1
  br label %__compare150

__fresh179:
  br label %__end152

__end152:
  %index_ptr380 = add { i32, [ 0 x i32 ] }** %index_ptr380, 1
  br label %__compare153

__fresh180:
  br label %__end155

__end155:
  %a1389 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array378, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1389
  %array_ptr390 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array391 = bitcast { i32, [ 0 x i32 ] }* %array_ptr390 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr393
  br label %__compare159

__fresh181:
  br label %__compare159

__compare159:
  %comparison_result394 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr393, 3
  br i1 %comparison_result394, label %__body160, label %__end161

__fresh182:
  br label %__body160

__body160:
  store { i32, [ 0 x i32 ] }** %index_ptr393, i32* %i395
  %array_ptr396 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array397 = bitcast { i32, [ 0 x i32 ] }* %array_ptr396 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr399
  br label %__compare156

__fresh183:
  br label %__compare156

__compare156:
  %comparison_result400 = icmp slt i32* %index_ptr399, 3
  br i1 %comparison_result400, label %__body157, label %__end158

__fresh184:
  br label %__body157

__body157:
  store i32* %index_ptr399, i32* %i401
  %index_ptr399 = add i32* %index_ptr399, 1
  br label %__compare156

__fresh185:
  br label %__end158

__end158:
  %index_ptr393 = add { i32, [ 0 x i32 ] }** %index_ptr393, 1
  br label %__compare159

__fresh186:
  br label %__end161

__end161:
  %a2402 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array391, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2402
  %array_ptr403 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array404 = bitcast { i32, [ 0 x i32 ] }* %array_ptr403 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr406
  br label %__compare165

__fresh187:
  br label %__compare165

__compare165:
  %comparison_result407 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr406, 3
  br i1 %comparison_result407, label %__body166, label %__end167

__fresh188:
  br label %__body166

__body166:
  store { i32, [ 0 x i32 ] }** %index_ptr406, i32* %i408
  %array_ptr409 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array410 = bitcast { i32, [ 0 x i32 ] }* %array_ptr409 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr412
  br label %__compare162

__fresh189:
  br label %__compare162

__compare162:
  %comparison_result413 = icmp slt i32* %index_ptr412, 3
  br i1 %comparison_result413, label %__body163, label %__end164

__fresh190:
  br label %__body163

__body163:
  store i32* %index_ptr412, i32* %i414
  %index_ptr412 = add i32* %index_ptr412, 1
  br label %__compare162

__fresh191:
  br label %__end164

__end164:
  %index_ptr406 = add { i32, [ 0 x i32 ] }** %index_ptr406, 1
  br label %__compare165

__fresh192:
  br label %__end167

__end167:
  %a3415 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array404, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  %array_ptr416 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array417 = bitcast { i32, [ 0 x i32 ] }* %array_ptr416 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr419
  br label %__compare171

__fresh193:
  br label %__compare171

__compare171:
  %comparison_result420 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr419, 3
  br i1 %comparison_result420, label %__body172, label %__end173

__fresh194:
  br label %__body172

__body172:
  store { i32, [ 0 x i32 ] }** %index_ptr419, i32* %i421
  %array_ptr422 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array423 = bitcast { i32, [ 0 x i32 ] }* %array_ptr422 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr425
  br label %__compare168

__fresh195:
  br label %__compare168

__compare168:
  %comparison_result426 = icmp slt i32* %index_ptr425, 3
  br i1 %comparison_result426, label %__body169, label %__end170

__fresh196:
  br label %__body169

__body169:
  store i32* %index_ptr425, i32* %i427
  %index_ptr425 = add i32* %index_ptr425, 1
  br label %__compare168

__fresh197:
  br label %__end170

__end170:
  %index_ptr419 = add { i32, [ 0 x i32 ] }** %index_ptr419, 1
  br label %__compare171

__fresh198:
  br label %__end173

__end173:
  %a4428 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array417, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4428
  %_lhs429 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2402
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs429, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1389
  %_lhs430 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1389
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs430, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  %_lhs431 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4428
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs431, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1389
  %_lhs432 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs432, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2402
  %_lhs433 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2402
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs433, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4428
  %_lhs434 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a4428
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs434, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  %size_ptr436 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3415, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr436, i32 0 )
  %index_ptr435 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3415, i32 0, i32 1, i32 0
  %size_ptr438 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3415, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr438, i32 0 )
  %index_ptr437 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a3415, i32 0, i32 1, i32 0
  %_lhs439 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs439
}


