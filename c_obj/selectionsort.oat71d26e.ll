declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh646:
  ret void
}


define i32 @program (i32 %argc2507, { i32, [ 0 x i8* ] }* %argv2505){

__fresh643:
  %argc_slot2508 = alloca i32
  store i32 %argc2507, i32* %argc_slot2508
  %argv_slot2506 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2505, { i32, [ 0 x i8* ] }** %argv_slot2506
  %array_ptr2509 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2510 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2509 to { i32, [ 0 x i32 ] }* 
  %index_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2511
  %index_ptr2512 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2512
  %index_ptr2513 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2513
  %index_ptr2514 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2514
  %index_ptr2515 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2515
  %index_ptr2516 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2516
  %index_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2517
  %index_ptr2518 = getelementptr { i32, [ 0 x i32 ] }* %array2510, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2518
  %ar2519 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2510, { i32, [ 0 x i32 ] }** %ar2519
  %_lhs2520 = load { i32, [ 0 x i32 ] }** %ar2519
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2520, i32 8 )
  %i2521 = alloca i32
  store i32 0, i32* %i2521
  br label %__cond642

__cond642:
  %_lhs2522 = load i32* %i2521
  %bop2523 = icmp slt i32 %_lhs2522, 8
  br i1 %bop2523, label %__body641, label %__post640

__fresh644:
  br label %__body641

__body641:
  %_lhs2524 = load i32* %i2521
  %index_ptr2525 = getelementptr { i32, [ 0 x i32 ] }** %ar2519, i32 %_lhs2524
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2524 )
  %_lhs2526 = load { i32, [ 0 x i32 ] }** %ar2519
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2526 )
  %_lhs2527 = load i32* %i2521
  %bop2528 = add i32 %_lhs2527, 1
  store i32 %bop2528, i32* %i2521
  br label %__cond642

__fresh645:
  br label %__post640

__post640:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2480, i32 %s2478){

__fresh637:
  %a_slot2481 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2480, { i32, [ 0 x i32 ] }** %a_slot2481
  %s_slot2479 = alloca i32
  store i32 %s2478, i32* %s_slot2479
  %t2482 = alloca i32
  store i32 0, i32* %t2482
  %mi2483 = alloca i32
  store i32 0, i32* %mi2483
  %i2484 = alloca i32
  store i32 0, i32* %i2484
  br label %__cond636

__cond636:
  %_lhs2485 = load i32* %i2484
  %_lhs2486 = load i32* %s_slot2479
  %bop2487 = icmp slt i32 %_lhs2485, %_lhs2486
  br i1 %bop2487, label %__body635, label %__post634

__fresh638:
  br label %__body635

__body635:
  %_lhs2490 = load i32* %s_slot2479
  %_lhs2489 = load i32* %i2484
  %_lhs2488 = load { i32, [ 0 x i32 ] }** %a_slot2481
  %ret2491 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2488, i32 %_lhs2489, i32 %_lhs2490 )
  store i32 %ret2491, i32* %mi2483
  %_lhs2492 = load i32* %i2484
  %index_ptr2493 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2481, i32 %_lhs2492
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2492 )
  %_lhs2494 = load { i32, [ 0 x i32 ] }** %a_slot2481
  store { i32, [ 0 x i32 ] }* %_lhs2494, i32* %t2482
  %_lhs2495 = load i32* %i2484
  %index_ptr2496 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2481, i32 %_lhs2495
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2495 )
  %_lhs2497 = load i32* %mi2483
  %index_ptr2498 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2481, i32 %_lhs2497
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2497 )
  %_lhs2499 = load { i32, [ 0 x i32 ] }** %a_slot2481
  store { i32, [ 0 x i32 ] }* %_lhs2499, { i32, [ 0 x i32 ] }** %a_slot2481
  %_lhs2500 = load i32* %mi2483
  %index_ptr2501 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2481, i32 %_lhs2500
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2500 )
  %_lhs2502 = load i32* %t2482
  store i32 %_lhs2502, { i32, [ 0 x i32 ] }** %a_slot2481
  %_lhs2503 = load i32* %i2484
  %bop2504 = add i32 %_lhs2503, 1
  store i32 %bop2504, i32* %i2484
  br label %__cond636

__fresh639:
  br label %__post634

__post634:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2453, i32 %s2451, i32 %b2449){

__fresh629:
  %a_slot2454 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2453, { i32, [ 0 x i32 ] }** %a_slot2454
  %s_slot2452 = alloca i32
  store i32 %s2451, i32* %s_slot2452
  %b_slot2450 = alloca i32
  store i32 %b2449, i32* %b_slot2450
  %_lhs2455 = load i32* %s_slot2452
  %i2456 = alloca i32
  store i32 %_lhs2455, i32* %i2456
  %_lhs2457 = load i32* %s_slot2452
  %index_ptr2458 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2454, i32 %_lhs2457
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2457 )
  %_lhs2459 = load { i32, [ 0 x i32 ] }** %a_slot2454
  %min2460 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2459, i32* %min2460
  %_lhs2461 = load i32* %s_slot2452
  %mi2462 = alloca i32
  store i32 %_lhs2461, i32* %mi2462
  br label %__cond625

__cond625:
  %_lhs2463 = load i32* %i2456
  %_lhs2464 = load i32* %b_slot2450
  %bop2465 = icmp slt i32 %_lhs2463, %_lhs2464
  br i1 %bop2465, label %__body624, label %__post623

__fresh630:
  br label %__body624

__body624:
  %_lhs2466 = load i32* %i2456
  %index_ptr2467 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2454, i32 %_lhs2466
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2466 )
  %_lhs2468 = load { i32, [ 0 x i32 ] }** %a_slot2454
  %_lhs2469 = load i32* %min2460
  %bop2470 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2468, %_lhs2469
  br i1 %bop2470, label %__then628, label %__else627

__fresh631:
  br label %__then628

__then628:
  %_lhs2471 = load i32* %i2456
  %index_ptr2472 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2454, i32 %_lhs2471
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2471 )
  %_lhs2473 = load { i32, [ 0 x i32 ] }** %a_slot2454
  store { i32, [ 0 x i32 ] }* %_lhs2473, i32* %min2460
  %_lhs2474 = load i32* %i2456
  store i32 %_lhs2474, i32* %mi2462
  br label %__merge626

__fresh632:
  br label %__else627

__else627:
  br label %__merge626

__merge626:
  %_lhs2475 = load i32* %i2456
  %bop2476 = add i32 %_lhs2475, 1
  store i32 %bop2476, i32* %i2456
  br label %__cond625

__fresh633:
  br label %__post623

__post623:
  %_lhs2477 = load i32* %mi2462
  ret i32 %_lhs2477
}


