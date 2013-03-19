declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh183:
  ret void
}


define i32 @program (i32 %argc375, { i32, [ 0 x i8* ] }* %argv373){

__fresh158:
  %argc_slot376 = alloca i32
  store i32 %argc375, i32* %argc_slot376
  %argv_slot374 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv373, { i32, [ 0 x i8* ] }** %argv_slot374
  %array_ptr377 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array378 = bitcast { i32, [ 0 x i32 ] }* %array_ptr377 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr380
  br label %__compare137

__fresh159:
  br label %__compare137

__compare137:
  %comparison_result381 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr380, 3
  br i1 %comparison_result381, label %__body138, label %__end139

__fresh160:
  br label %__body138

__body138:
  store { i32, [ 0 x i32 ] }** %index_ptr380, i32* %i382
  %array_ptr383 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array384 = bitcast { i32, [ 0 x i32 ] }* %array_ptr383 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr386
  br label %__compare134

__fresh161:
  br label %__compare134

__compare134:
  %comparison_result387 = icmp slt i32* %index_ptr386, 3
  br i1 %comparison_result387, label %__body135, label %__end136

__fresh162:
  br label %__body135

__body135:
  store i32* %index_ptr386, i32* %i388
  %index_ptr386 = add i32* %index_ptr386, 1
  br label %__compare134

__fresh163:
  br label %__end136

__end136:
  %index_ptr380 = add { i32, [ 0 x i32 ] }** %index_ptr380, 1
  br label %__compare137

__fresh164:
  br label %__end139

__end139:
  %a1389 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array378, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1389
  %array_ptr390 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array391 = bitcast { i32, [ 0 x i32 ] }* %array_ptr390 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr393
  br label %__compare143

__fresh165:
  br label %__compare143

__compare143:
  %comparison_result394 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr393, 3
  br i1 %comparison_result394, label %__body144, label %__end145

__fresh166:
  br label %__body144

__body144:
  store { i32, [ 0 x i32 ] }** %index_ptr393, i32* %i395
  %array_ptr396 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array397 = bitcast { i32, [ 0 x i32 ] }* %array_ptr396 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr399
  br label %__compare140

__fresh167:
  br label %__compare140

__compare140:
  %comparison_result400 = icmp slt i32* %index_ptr399, 3
  br i1 %comparison_result400, label %__body141, label %__end142

__fresh168:
  br label %__body141

__body141:
  store i32* %index_ptr399, i32* %i401
  %index_ptr399 = add i32* %index_ptr399, 1
  br label %__compare140

__fresh169:
  br label %__end142

__end142:
  %index_ptr393 = add { i32, [ 0 x i32 ] }** %index_ptr393, 1
  br label %__compare143

__fresh170:
  br label %__end145

__end145:
  %a2402 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array391, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2402
  %array_ptr403 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array404 = bitcast { i32, [ 0 x i32 ] }* %array_ptr403 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr406
  br label %__compare149

__fresh171:
  br label %__compare149

__compare149:
  %comparison_result407 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr406, 3
  br i1 %comparison_result407, label %__body150, label %__end151

__fresh172:
  br label %__body150

__body150:
  store { i32, [ 0 x i32 ] }** %index_ptr406, i32* %i408
  %array_ptr409 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array410 = bitcast { i32, [ 0 x i32 ] }* %array_ptr409 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr412
  br label %__compare146

__fresh173:
  br label %__compare146

__compare146:
  %comparison_result413 = icmp slt i32* %index_ptr412, 3
  br i1 %comparison_result413, label %__body147, label %__end148

__fresh174:
  br label %__body147

__body147:
  store i32* %index_ptr412, i32* %i414
  %index_ptr412 = add i32* %index_ptr412, 1
  br label %__compare146

__fresh175:
  br label %__end148

__end148:
  %index_ptr406 = add { i32, [ 0 x i32 ] }** %index_ptr406, 1
  br label %__compare149

__fresh176:
  br label %__end151

__end151:
  %a3415 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array404, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3415
  %array_ptr416 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array417 = bitcast { i32, [ 0 x i32 ] }* %array_ptr416 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr419
  br label %__compare155

__fresh177:
  br label %__compare155

__compare155:
  %comparison_result420 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr419, 3
  br i1 %comparison_result420, label %__body156, label %__end157

__fresh178:
  br label %__body156

__body156:
  store { i32, [ 0 x i32 ] }** %index_ptr419, i32* %i421
  %array_ptr422 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array423 = bitcast { i32, [ 0 x i32 ] }* %array_ptr422 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr425
  br label %__compare152

__fresh179:
  br label %__compare152

__compare152:
  %comparison_result426 = icmp slt i32* %index_ptr425, 3
  br i1 %comparison_result426, label %__body153, label %__end154

__fresh180:
  br label %__body153

__body153:
  store i32* %index_ptr425, i32* %i427
  %index_ptr425 = add i32* %index_ptr425, 1
  br label %__compare152

__fresh181:
  br label %__end154

__end154:
  %index_ptr419 = add { i32, [ 0 x i32 ] }** %index_ptr419, 1
  br label %__compare155

__fresh182:
  br label %__end157

__end157:
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


