declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh919:
  ret void
}


define i32 @program (i32 %argc2506, { i32, [ 0 x i8* ] }* %argv2504){

__fresh916:
  %argc_slot2507 = alloca i32
  store i32 %argc2506, i32* %argc_slot2507
  %argv_slot2505 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2504, { i32, [ 0 x i8* ] }** %argv_slot2505
  %array_ptr2508 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2509 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2508 to { i32, [ 0 x i32 ] }* 
  %index_ptr2510 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2510
  %index_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2511
  %index_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2512
  %index_ptr2513 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2513
  %unop2514 = sub i32 0, 6
  %index_ptr2515 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 4
  store i32 %unop2514, i32* %index_ptr2515
  %index_ptr2516 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2516
  %index_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2517
  %index_ptr2518 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2518
  %unop2519 = sub i32 0, 2
  %index_ptr2520 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 8
  store i32 %unop2519, i32* %index_ptr2520
  %unop2521 = sub i32 0, 5
  %index_ptr2522 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 9
  store i32 %unop2521, i32* %index_ptr2522
  %index_ptr2523 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2523
  %index_ptr2524 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2524
  %index_ptr2525 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2525
  %unop2526 = sub i32 0, 3
  %index_ptr2527 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 13
  store i32 %unop2526, i32* %index_ptr2527
  %index_ptr2528 = getelementptr { i32, [ 0 x i32 ] }* %array2509, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2528
  %nums2529 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2509, { i32, [ 0 x i32 ] }** %nums2529
  %i2530 = alloca i32
  store i32 0, i32* %i2530
  %_lhs2531 = load { i32, [ 0 x i32 ] }** %nums2529
  %len_ptr2532 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2531, i32 0, i32 0
  %len2533 = load i32* %len_ptr2532
  %n2534 = alloca i32
  store i32 %len2533, i32* %n2534
  %_lhs2536 = load i32* %n2534
  %bop2537 = sub i32 %_lhs2536, 1
  %_lhs2535 = load { i32, [ 0 x i32 ] }** %nums2529
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2535, i32 0, i32 %bop2537 )
  store i32 0, i32* %i2530
  br label %__cond915

__cond915:
  %_lhs2538 = load i32* %i2530
  %_lhs2539 = load i32* %n2534
  %bop2540 = sub i32 %_lhs2539, 1
  %bop2541 = icmp sle i32 %_lhs2538, %bop2540
  br i1 %bop2541, label %__body914, label %__post913

__fresh917:
  br label %__body914

__body914:
  %_lhs2542 = load i32* %i2530
  %index_ptr2543 = getelementptr { i32, [ 0 x i32 ] }** %nums2529, i32 %_lhs2542
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2542 )
  %_lhs2544 = load { i32, [ 0 x i32 ] }** %nums2529
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2544 )
  %_lhs2545 = load i32* %i2530
  %bop2546 = add i32 %_lhs2545, 1
  store i32 %bop2546, i32* %i2530
  br label %__cond915

__fresh918:
  br label %__post913

__post913:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2459, i32 %i2457, i32 %j2455){

__fresh908:
  %a_slot2460 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2459, { i32, [ 0 x i32 ] }** %a_slot2460
  %i_slot2458 = alloca i32
  store i32 %i2457, i32* %i_slot2458
  %j_slot2456 = alloca i32
  store i32 %j2455, i32* %j_slot2456
  %t2461 = alloca i32
  store i32 0, i32* %t2461
  %_lhs2462 = load i32* %j_slot2456
  %index_ptr2463 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2462
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2462 )
  %_lhs2464 = load { i32, [ 0 x i32 ] }** %a_slot2460
  %_lhs2465 = load i32* %i_slot2458
  %index_ptr2466 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2465
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2465 )
  %_lhs2467 = load { i32, [ 0 x i32 ] }** %a_slot2460
  %bop2468 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2464, %_lhs2467
  br i1 %bop2468, label %__then904, label %__else903

__fresh909:
  br label %__then904

__then904:
  %_lhs2469 = load i32* %i_slot2458
  %index_ptr2470 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2469
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2469 )
  %_lhs2471 = load { i32, [ 0 x i32 ] }** %a_slot2460
  store { i32, [ 0 x i32 ] }* %_lhs2471, i32* %t2461
  %_lhs2472 = load i32* %i_slot2458
  %index_ptr2473 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2472
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2472 )
  %_lhs2474 = load i32* %j_slot2456
  %index_ptr2475 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2474
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2474 )
  %_lhs2476 = load { i32, [ 0 x i32 ] }** %a_slot2460
  store { i32, [ 0 x i32 ] }* %_lhs2476, { i32, [ 0 x i32 ] }** %a_slot2460
  %_lhs2477 = load i32* %j_slot2456
  %index_ptr2478 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2460, i32 %_lhs2477
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2477 )
  %_lhs2479 = load i32* %t2461
  store i32 %_lhs2479, { i32, [ 0 x i32 ] }** %a_slot2460
  br label %__merge902

__fresh910:
  br label %__else903

__else903:
  br label %__merge902

__merge902:
  %_lhs2480 = load i32* %j_slot2456
  %_lhs2481 = load i32* %i_slot2458
  %bop2482 = sub i32 %_lhs2480, %_lhs2481
  %bop2483 = icmp sgt i32 %bop2482, 1
  br i1 %bop2483, label %__then907, label %__else906

__fresh911:
  br label %__then907

__then907:
  %_lhs2484 = load i32* %j_slot2456
  %_lhs2485 = load i32* %i_slot2458
  %bop2486 = sub i32 %_lhs2484, %_lhs2485
  %bop2487 = add i32 %bop2486, 1
  %bop2488 = ashr i32 %bop2487, 1
  store i32 %bop2488, i32* %t2461
  %_lhs2491 = load i32* %j_slot2456
  %_lhs2492 = load i32* %t2461
  %bop2493 = sub i32 %_lhs2491, %_lhs2492
  %_lhs2490 = load i32* %i_slot2458
  %_lhs2489 = load { i32, [ 0 x i32 ] }** %a_slot2460
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2489, i32 %_lhs2490, i32 %bop2493 )
  %_lhs2498 = load i32* %j_slot2456
  %_lhs2495 = load i32* %i_slot2458
  %_lhs2496 = load i32* %t2461
  %bop2497 = add i32 %_lhs2495, %_lhs2496
  %_lhs2494 = load { i32, [ 0 x i32 ] }** %a_slot2460
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2494, i32 %bop2497, i32 %_lhs2498 )
  %_lhs2501 = load i32* %j_slot2456
  %_lhs2502 = load i32* %t2461
  %bop2503 = sub i32 %_lhs2501, %_lhs2502
  %_lhs2500 = load i32* %i_slot2458
  %_lhs2499 = load { i32, [ 0 x i32 ] }** %a_slot2460
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2499, i32 %_lhs2500, i32 %bop2503 )
  br label %__merge905

__fresh912:
  br label %__else906

__else906:
  br label %__merge905

__merge905:
  ret void
}


