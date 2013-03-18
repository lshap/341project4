declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh622:
  ret void
}


define i32 @program (i32 %argc2408, { i32, [ 0 x i8* ] }* %argv2406){

__fresh619:
  %argc_slot2409 = alloca i32
  store i32 %argc2408, i32* %argc_slot2409
  %argv_slot2407 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2406, { i32, [ 0 x i8* ] }** %argv_slot2407
  %array_ptr2410 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2411 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2410 to { i32, [ 0 x i32 ] }* 
  %index_ptr2412 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2412
  %index_ptr2413 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2413
  %index_ptr2414 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2414
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2415
  %unop2416 = sub i32 0, 6
  %index_ptr2417 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 4
  store i32 %unop2416, i32* %index_ptr2417
  %index_ptr2418 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2418
  %index_ptr2419 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2419
  %index_ptr2420 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2420
  %unop2421 = sub i32 0, 2
  %index_ptr2422 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 8
  store i32 %unop2421, i32* %index_ptr2422
  %unop2423 = sub i32 0, 5
  %index_ptr2424 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 9
  store i32 %unop2423, i32* %index_ptr2424
  %index_ptr2425 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2425
  %index_ptr2426 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2426
  %index_ptr2427 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2427
  %unop2428 = sub i32 0, 3
  %index_ptr2429 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 13
  store i32 %unop2428, i32* %index_ptr2429
  %index_ptr2430 = getelementptr { i32, [ 0 x i32 ] }* %array2411, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2430
  %nums2431 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2411, { i32, [ 0 x i32 ] }** %nums2431
  %i2432 = alloca i32
  store i32 0, i32* %i2432
  %_lhs2433 = load { i32, [ 0 x i32 ] }** %nums2431
  %len_ptr2434 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2433, i32 0, i32 0
  %len2435 = load i32* %len_ptr2434
  %n2436 = alloca i32
  store i32 %len2435, i32* %n2436
  %_lhs2438 = load i32* %n2436
  %bop2439 = sub i32 %_lhs2438, 1
  %_lhs2437 = load { i32, [ 0 x i32 ] }** %nums2431
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2437, i32 0, i32 %bop2439 )
  store i32 0, i32* %i2432
  br label %__cond618

__cond618:
  %_lhs2440 = load i32* %i2432
  %_lhs2441 = load i32* %n2436
  %bop2442 = sub i32 %_lhs2441, 1
  %bop2443 = icmp sle i32 %_lhs2440, %bop2442
  br i1 %bop2443, label %__body617, label %__post616

__fresh620:
  br label %__body617

__body617:
  %_lhs2444 = load i32* %i2432
  %index_ptr2445 = getelementptr { i32, [ 0 x i32 ] }** %nums2431, i32 %_lhs2444
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2444 )
  %_lhs2446 = load { i32, [ 0 x i32 ] }** %nums2431
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2446 )
  %_lhs2447 = load i32* %i2432
  %bop2448 = add i32 %_lhs2447, 1
  store i32 %bop2448, i32* %i2432
  br label %__cond618

__fresh621:
  br label %__post616

__post616:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2361, i32 %i2359, i32 %j2357){

__fresh611:
  %a_slot2362 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2361, { i32, [ 0 x i32 ] }** %a_slot2362
  %i_slot2360 = alloca i32
  store i32 %i2359, i32* %i_slot2360
  %j_slot2358 = alloca i32
  store i32 %j2357, i32* %j_slot2358
  %t2363 = alloca i32
  store i32 0, i32* %t2363
  %_lhs2364 = load i32* %j_slot2358
  %index_ptr2365 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2364
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2364 )
  %_lhs2366 = load { i32, [ 0 x i32 ] }** %a_slot2362
  %_lhs2367 = load i32* %i_slot2360
  %index_ptr2368 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2367
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2367 )
  %_lhs2369 = load { i32, [ 0 x i32 ] }** %a_slot2362
  %bop2370 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2366, %_lhs2369
  br i1 %bop2370, label %__then607, label %__else606

__fresh612:
  br label %__then607

__then607:
  %_lhs2371 = load i32* %i_slot2360
  %index_ptr2372 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2371
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2371 )
  %_lhs2373 = load { i32, [ 0 x i32 ] }** %a_slot2362
  store { i32, [ 0 x i32 ] }* %_lhs2373, i32* %t2363
  %_lhs2374 = load i32* %i_slot2360
  %index_ptr2375 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2374
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2374 )
  %_lhs2376 = load i32* %j_slot2358
  %index_ptr2377 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2376
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2376 )
  %_lhs2378 = load { i32, [ 0 x i32 ] }** %a_slot2362
  store { i32, [ 0 x i32 ] }* %_lhs2378, { i32, [ 0 x i32 ] }** %a_slot2362
  %_lhs2379 = load i32* %j_slot2358
  %index_ptr2380 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2362, i32 %_lhs2379
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2379 )
  %_lhs2381 = load i32* %t2363
  store i32 %_lhs2381, { i32, [ 0 x i32 ] }** %a_slot2362
  br label %__merge605

__fresh613:
  br label %__else606

__else606:
  br label %__merge605

__merge605:
  %_lhs2382 = load i32* %j_slot2358
  %_lhs2383 = load i32* %i_slot2360
  %bop2384 = sub i32 %_lhs2382, %_lhs2383
  %bop2385 = icmp sgt i32 %bop2384, 1
  br i1 %bop2385, label %__then610, label %__else609

__fresh614:
  br label %__then610

__then610:
  %_lhs2386 = load i32* %j_slot2358
  %_lhs2387 = load i32* %i_slot2360
  %bop2388 = sub i32 %_lhs2386, %_lhs2387
  %bop2389 = add i32 %bop2388, 1
  %bop2390 = ashr i32 %bop2389, 1
  store i32 %bop2390, i32* %t2363
  %_lhs2393 = load i32* %j_slot2358
  %_lhs2394 = load i32* %t2363
  %bop2395 = sub i32 %_lhs2393, %_lhs2394
  %_lhs2392 = load i32* %i_slot2360
  %_lhs2391 = load { i32, [ 0 x i32 ] }** %a_slot2362
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2391, i32 %_lhs2392, i32 %bop2395 )
  %_lhs2400 = load i32* %j_slot2358
  %_lhs2397 = load i32* %i_slot2360
  %_lhs2398 = load i32* %t2363
  %bop2399 = add i32 %_lhs2397, %_lhs2398
  %_lhs2396 = load { i32, [ 0 x i32 ] }** %a_slot2362
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2396, i32 %bop2399, i32 %_lhs2400 )
  %_lhs2403 = load i32* %j_slot2358
  %_lhs2404 = load i32* %t2363
  %bop2405 = sub i32 %_lhs2403, %_lhs2404
  %_lhs2402 = load i32* %i_slot2360
  %_lhs2401 = load { i32, [ 0 x i32 ] }** %a_slot2362
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2401, i32 %_lhs2402, i32 %bop2405 )
  br label %__merge608

__fresh615:
  br label %__else609

__else609:
  br label %__merge608

__merge608:
  ret void
}


