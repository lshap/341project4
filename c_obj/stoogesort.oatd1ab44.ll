declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh711:
  ret void
}


define i32 @program (i32 %argc2502, { i32, [ 0 x i8* ] }* %argv2500){

__fresh708:
  %argc_slot2503 = alloca i32
  store i32 %argc2502, i32* %argc_slot2503
  %argv_slot2501 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2500, { i32, [ 0 x i8* ] }** %argv_slot2501
  %array_ptr2504 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 15 )
  %array2505 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2504 to { i32, [ 0 x i32 ] }* 
  %index_ptr2506 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2506
  %index_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 1
  store i32 4, i32* %index_ptr2507
  %index_ptr2508 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 2
  store i32 5, i32* %index_ptr2508
  %index_ptr2509 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 3
  store i32 3, i32* %index_ptr2509
  %unop2510 = sub i32 0, 6
  %index_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 4
  store i32 %unop2510, i32* %index_ptr2511
  %index_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 5
  store i32 3, i32* %index_ptr2512
  %index_ptr2513 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 6
  store i32 7, i32* %index_ptr2513
  %index_ptr2514 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 7
  store i32 10, i32* %index_ptr2514
  %unop2515 = sub i32 0, 2
  %index_ptr2516 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 8
  store i32 %unop2515, i32* %index_ptr2516
  %unop2517 = sub i32 0, 5
  %index_ptr2518 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 9
  store i32 %unop2517, i32* %index_ptr2518
  %index_ptr2519 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 10
  store i32 7, i32* %index_ptr2519
  %index_ptr2520 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 11
  store i32 5, i32* %index_ptr2520
  %index_ptr2521 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 12
  store i32 9, i32* %index_ptr2521
  %unop2522 = sub i32 0, 3
  %index_ptr2523 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 13
  store i32 %unop2522, i32* %index_ptr2523
  %index_ptr2524 = getelementptr { i32, [ 0 x i32 ] }* %array2505, i32 0, i32 1, i32 14
  store i32 7, i32* %index_ptr2524
  %nums2525 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2505, { i32, [ 0 x i32 ] }** %nums2525
  %i2526 = alloca i32
  store i32 0, i32* %i2526
  %_lhs2527 = load { i32, [ 0 x i32 ] }** %nums2525
  %len_ptr2528 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2527, i32 0, i32 0
  %len2529 = load i32* %len_ptr2528
  %n2530 = alloca i32
  store i32 %len2529, i32* %n2530
  %_lhs2532 = load i32* %n2530
  %bop2533 = sub i32 %_lhs2532, 1
  %_lhs2531 = load { i32, [ 0 x i32 ] }** %nums2525
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2531, i32 0, i32 %bop2533 )
  store i32 0, i32* %i2526
  br label %__cond707

__cond707:
  %_lhs2534 = load i32* %i2526
  %_lhs2535 = load i32* %n2530
  %bop2536 = sub i32 %_lhs2535, 1
  %bop2537 = icmp sle i32 %_lhs2534, %bop2536
  br i1 %bop2537, label %__body706, label %__post705

__fresh709:
  br label %__body706

__body706:
  %_lhs2538 = load i32* %i2526
  %index_ptr2539 = getelementptr { i32, [ 0 x i32 ] }** %nums2525, i32 %_lhs2538
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2538 )
  %_lhs2540 = load { i32, [ 0 x i32 ] }** %nums2525
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2540 )
  %_lhs2541 = load i32* %i2526
  %bop2542 = add i32 %_lhs2541, 1
  store i32 %bop2542, i32* %i2526
  br label %__cond707

__fresh710:
  br label %__post705

__post705:
  ret i32 0
}


define void @stoogeSort ({ i32, [ 0 x i32 ] }* %a2455, i32 %i2453, i32 %j2451){

__fresh700:
  %a_slot2456 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2455, { i32, [ 0 x i32 ] }** %a_slot2456
  %i_slot2454 = alloca i32
  store i32 %i2453, i32* %i_slot2454
  %j_slot2452 = alloca i32
  store i32 %j2451, i32* %j_slot2452
  %t2457 = alloca i32
  store i32 0, i32* %t2457
  %_lhs2458 = load i32* %j_slot2452
  %index_ptr2459 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2458
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2458 )
  %_lhs2460 = load { i32, [ 0 x i32 ] }** %a_slot2456
  %_lhs2461 = load i32* %i_slot2454
  %index_ptr2462 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2461
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2461 )
  %_lhs2463 = load { i32, [ 0 x i32 ] }** %a_slot2456
  %bop2464 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2460, %_lhs2463
  br i1 %bop2464, label %__then696, label %__else695

__fresh701:
  br label %__then696

__then696:
  %_lhs2465 = load i32* %i_slot2454
  %index_ptr2466 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2465
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2465 )
  %_lhs2467 = load { i32, [ 0 x i32 ] }** %a_slot2456
  store { i32, [ 0 x i32 ] }* %_lhs2467, i32* %t2457
  %_lhs2468 = load i32* %i_slot2454
  %index_ptr2469 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2468
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2468 )
  %_lhs2470 = load i32* %j_slot2452
  %index_ptr2471 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2470
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2470 )
  %_lhs2472 = load { i32, [ 0 x i32 ] }** %a_slot2456
  store { i32, [ 0 x i32 ] }* %_lhs2472, { i32, [ 0 x i32 ] }** %a_slot2456
  %_lhs2473 = load i32* %j_slot2452
  %index_ptr2474 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2456, i32 %_lhs2473
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2473 )
  %_lhs2475 = load i32* %t2457
  store i32 %_lhs2475, { i32, [ 0 x i32 ] }** %a_slot2456
  br label %__merge694

__fresh702:
  br label %__else695

__else695:
  br label %__merge694

__merge694:
  %_lhs2476 = load i32* %j_slot2452
  %_lhs2477 = load i32* %i_slot2454
  %bop2478 = sub i32 %_lhs2476, %_lhs2477
  %bop2479 = icmp sgt i32 %bop2478, 1
  br i1 %bop2479, label %__then699, label %__else698

__fresh703:
  br label %__then699

__then699:
  %_lhs2480 = load i32* %j_slot2452
  %_lhs2481 = load i32* %i_slot2454
  %bop2482 = sub i32 %_lhs2480, %_lhs2481
  %bop2483 = add i32 %bop2482, 1
  %bop2484 = ashr i32 %bop2483, 1
  store i32 %bop2484, i32* %t2457
  %_lhs2487 = load i32* %j_slot2452
  %_lhs2488 = load i32* %t2457
  %bop2489 = sub i32 %_lhs2487, %_lhs2488
  %_lhs2486 = load i32* %i_slot2454
  %_lhs2485 = load { i32, [ 0 x i32 ] }** %a_slot2456
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2485, i32 %_lhs2486, i32 %bop2489 )
  %_lhs2494 = load i32* %j_slot2452
  %_lhs2491 = load i32* %i_slot2454
  %_lhs2492 = load i32* %t2457
  %bop2493 = add i32 %_lhs2491, %_lhs2492
  %_lhs2490 = load { i32, [ 0 x i32 ] }** %a_slot2456
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2490, i32 %bop2493, i32 %_lhs2494 )
  %_lhs2497 = load i32* %j_slot2452
  %_lhs2498 = load i32* %t2457
  %bop2499 = sub i32 %_lhs2497, %_lhs2498
  %_lhs2496 = load i32* %i_slot2454
  %_lhs2495 = load { i32, [ 0 x i32 ] }** %a_slot2456
  call void @stoogeSort( { i32, [ 0 x i32 ] }* %_lhs2495, i32 %_lhs2496, i32 %bop2499 )
  br label %__merge697

__fresh704:
  br label %__else698

__else698:
  br label %__merge697

__merge697:
  ret void
}


