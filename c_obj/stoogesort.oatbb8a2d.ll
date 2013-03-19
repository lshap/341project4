declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh920:
  ret void
}


define i32 @program (i32 %argc2515, { i32, [ 0 x i8* ] }* %argv2513){

__fresh917:
  %argc_slot2516 = alloca i32
  store i32 %argc2515, i32* %argc_slot2516
  %argv_slot2514 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2513, { i32, [ 0 x i8* ] }** %argv_slot2514
  %array_ptr2517 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2518 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2517 to { i32, [ 0 x i32 ] }* 
  %index_ptr2519 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2519
  %index_ptr2520 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2520
  %index_ptr2521 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2521
  %index_ptr2522 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2522
  %unop2523 = sub i32 0, 6
  %index_ptr2524 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 4
  store i32 %unop2523, i32* %index_ptr2524
  %index_ptr2525 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2525
  %index_ptr2526 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2526
  %index_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2527
  %unop2528 = sub i32 0, 2
  %index_ptr2529 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 8
  store i32 %unop2528, i32* %index_ptr2529
  %unop2530 = sub i32 0, 5
  %index_ptr2531 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 9
  store i32 %unop2530, i32* %index_ptr2531
  %index_ptr2532 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2532
  %index_ptr2533 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2533
  %index_ptr2534 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2534
  %unop2535 = sub i32 0, 3
  %index_ptr2536 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 13
  store i32 %unop2535, i32* %index_ptr2536
  %index_ptr2537 = getelementptr { i32, [ 0 x i32 ] }* %array2518, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2537
  %nums2538 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2518, { i32, [ 0 x i32 ] }** %nums2538
  %i2539 = alloca i32
  store i32 0, i32* %i2539
  %_lhs2540 = load { i32, [ 0 x i32 ] }** %nums2538
  %len_ptr2541 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2540, i32 0, i32 0
  %len2542 = load i32* %len_ptr2541
  %n2543 = alloca i32
  store i32 %len2542, i32* %n2543
  %_lhs2545 = load i32* %n2543
  %bop2546 = sub i32 %_lhs2545, 1
  %_lhs2544 = load { i32, [ 0 x i32 ] }** %nums2538
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2544, i32 0, i32 %bop2546 )
  store i32 0, i32* %i2539
  br label %__cond916

__cond916:
  %_lhs2547 = load i32* %i2539
  %_lhs2548 = load i32* %n2543
  %bop2549 = sub i32 %_lhs2548, 1
  %bop2550 = icmp sle i32 %_lhs2547, %bop2549
  br i1 %bop2550, label %__body915, label %__post914

__fresh918:
  br label %__body915

__body915:
  %_lhs2551 = load i32* %i2539
  %index_ptr2552 = getelementptr { i32, [ 0 x i32 ] }** %nums2538, i32 %_lhs2551
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2551 )
  %_lhs2553 = load { i32, [ 0 x i32 ] }** %nums2538
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2553 )
  %_lhs2554 = load i32* %i2539
  %bop2555 = add i32 %_lhs2554, 1
  store i32 %bop2555, i32* %i2539
  br label %__cond916

__fresh919:
  br label %__post914

__post914:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2468, i32 %i2466, i32 %j2464){

__fresh909:
  %a_slot2469 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2468, { i32, [ 0 x i32 ] }** %a_slot2469
  %i_slot2467 = alloca i32
  store i32 %i2466, i32* %i_slot2467
  %j_slot2465 = alloca i32
  store i32 %j2464, i32* %j_slot2465
  %t2470 = alloca i32
  store i32 0, i32* %t2470
  %_lhs2471 = load i32* %j_slot2465
  %index_ptr2472 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2471
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2471 )
  %_lhs2473 = load { i32, [ 0 x i32 ] }** %a_slot2469
  %_lhs2474 = load i32* %i_slot2467
  %index_ptr2475 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2474
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2474 )
  %_lhs2476 = load { i32, [ 0 x i32 ] }** %a_slot2469
  %bop2477 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2473, %_lhs2476
  br i1 %bop2477, label %__then905, label %__else904

__fresh910:
  br label %__then905

__then905:
  %_lhs2478 = load i32* %i_slot2467
  %index_ptr2479 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2478
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2478 )
  %_lhs2480 = load { i32, [ 0 x i32 ] }** %a_slot2469
  store { i32, [ 0 x i32 ] }* %_lhs2480, i32* %t2470
  %_lhs2481 = load i32* %i_slot2467
  %index_ptr2482 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2481
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2481 )
  %_lhs2483 = load i32* %j_slot2465
  %index_ptr2484 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2483
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2483 )
  %_lhs2485 = load { i32, [ 0 x i32 ] }** %a_slot2469
  store { i32, [ 0 x i32 ] }* %_lhs2485, { i32, [ 0 x i32 ] }** %a_slot2469
  %_lhs2486 = load i32* %j_slot2465
  %index_ptr2487 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2469, i32 %_lhs2486
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2486 )
  %_lhs2488 = load i32* %t2470
  store i32 %_lhs2488, { i32, [ 0 x i32 ] }** %a_slot2469
  br label %__merge903

__fresh911:
  br label %__else904

__else904:
  br label %__merge903

__merge903:
  %_lhs2489 = load i32* %j_slot2465
  %_lhs2490 = load i32* %i_slot2467
  %bop2491 = sub i32 %_lhs2489, %_lhs2490
  %bop2492 = icmp sgt i32 %bop2491, 1
  br i1 %bop2492, label %__then908, label %__else907

__fresh912:
  br label %__then908

__then908:
  %_lhs2493 = load i32* %j_slot2465
  %_lhs2494 = load i32* %i_slot2467
  %bop2495 = sub i32 %_lhs2493, %_lhs2494
  %bop2496 = add i32 %bop2495, 1
  %bop2497 = ashr i32 %bop2496, 1
  store i32 %bop2497, i32* %t2470
  %_lhs2500 = load i32* %j_slot2465
  %_lhs2501 = load i32* %t2470
  %bop2502 = sub i32 %_lhs2500, %_lhs2501
  %_lhs2499 = load i32* %i_slot2467
  %_lhs2498 = load { i32, [ 0 x i32 ] }** %a_slot2469
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2498, i32 %_lhs2499, i32 %bop2502 )
  %_lhs2507 = load i32* %j_slot2465
  %_lhs2504 = load i32* %i_slot2467
  %_lhs2505 = load i32* %t2470
  %bop2506 = add i32 %_lhs2504, %_lhs2505
  %_lhs2503 = load { i32, [ 0 x i32 ] }** %a_slot2469
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2503, i32 %bop2506, i32 %_lhs2507 )
  %_lhs2510 = load i32* %j_slot2465
  %_lhs2511 = load i32* %t2470
  %bop2512 = sub i32 %_lhs2510, %_lhs2511
  %_lhs2509 = load i32* %i_slot2467
  %_lhs2508 = load { i32, [ 0 x i32 ] }** %a_slot2469
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2508, i32 %_lhs2509, i32 %bop2512 )
  br label %__merge906

__fresh913:
  br label %__else907

__else907:
  br label %__merge906

__merge906:
  ret void
}


