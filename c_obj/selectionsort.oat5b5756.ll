declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh735:
  ret void
}


define i32 @program (i32 %argc2601, { i32, [ 0 x i8* ] }* %argv2599){

__fresh732:
  %argc_slot2602 = alloca i32
  store i32 %argc2601, i32* %argc_slot2602
  %argv_slot2600 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2599, { i32, [ 0 x i8* ] }** %argv_slot2600
  %array_ptr2603 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2604 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2603 to { i32, [ 0 x i32 ] }* 
  %index_ptr2605 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2605
  %index_ptr2606 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2606
  %index_ptr2607 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2607
  %index_ptr2608 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2608
  %index_ptr2609 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2609
  %index_ptr2610 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2610
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2611
  %index_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %array2604, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2612
  %ar2613 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2604, { i32, [ 0 x i32 ] }** %ar2613
  %_lhs2614 = load { i32, [ 0 x i32 ] }** %ar2613
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2614, i32 8 )
  %i2615 = alloca i32
  store i32 0, i32* %i2615
  br label %__cond731

__cond731:
  %_lhs2616 = load i32* %i2615
  %bop2617 = icmp slt i32 %_lhs2616, 8
  br i1 %bop2617, label %__body730, label %__post729

__fresh733:
  br label %__body730

__body730:
  %_lhs2618 = load i32* %i2615
  %index_ptr2619 = getelementptr { i32, [ 0 x i32 ] }** %ar2613, i32 %_lhs2618
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2618 )
  %_lhs2620 = load { i32, [ 0 x i32 ] }** %ar2613
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2620 )
  %_lhs2621 = load i32* %i2615
  %bop2622 = add i32 %_lhs2621, 1
  store i32 %bop2622, i32* %i2615
  br label %__cond731

__fresh734:
  br label %__post729

__post729:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2574, i32 %s2572){

__fresh726:
  %a_slot2575 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2574, { i32, [ 0 x i32 ] }** %a_slot2575
  %s_slot2573 = alloca i32
  store i32 %s2572, i32* %s_slot2573
  %t2576 = alloca i32
  store i32 0, i32* %t2576
  %mi2577 = alloca i32
  store i32 0, i32* %mi2577
  %i2578 = alloca i32
  store i32 0, i32* %i2578
  br label %__cond725

__cond725:
  %_lhs2579 = load i32* %i2578
  %_lhs2580 = load i32* %s_slot2573
  %bop2581 = icmp slt i32 %_lhs2579, %_lhs2580
  br i1 %bop2581, label %__body724, label %__post723

__fresh727:
  br label %__body724

__body724:
  %_lhs2584 = load i32* %s_slot2573
  %_lhs2583 = load i32* %i2578
  %_lhs2582 = load { i32, [ 0 x i32 ] }** %a_slot2575
  %ret2585 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2582, i32 %_lhs2583, i32 %_lhs2584 )
  store i32 %ret2585, i32* %mi2577
  %_lhs2586 = load i32* %i2578
  %index_ptr2587 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2575, i32 %_lhs2586
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2586 )
  %_lhs2588 = load { i32, [ 0 x i32 ] }** %a_slot2575
  store { i32, [ 0 x i32 ] }* %_lhs2588, i32* %t2576
  %_lhs2589 = load i32* %i2578
  %index_ptr2590 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2575, i32 %_lhs2589
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2589 )
  %_lhs2591 = load i32* %mi2577
  %index_ptr2592 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2575, i32 %_lhs2591
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2591 )
  %_lhs2593 = load { i32, [ 0 x i32 ] }** %a_slot2575
  store { i32, [ 0 x i32 ] }* %_lhs2593, { i32, [ 0 x i32 ] }** %a_slot2575
  %_lhs2594 = load i32* %mi2577
  %index_ptr2595 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2575, i32 %_lhs2594
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2594 )
  %_lhs2596 = load i32* %t2576
  store i32 %_lhs2596, { i32, [ 0 x i32 ] }** %a_slot2575
  %_lhs2597 = load i32* %i2578
  %bop2598 = add i32 %_lhs2597, 1
  store i32 %bop2598, i32* %i2578
  br label %__cond725

__fresh728:
  br label %__post723

__post723:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2547, i32 %s2545, i32 %b2543){

__fresh718:
  %a_slot2548 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2547, { i32, [ 0 x i32 ] }** %a_slot2548
  %s_slot2546 = alloca i32
  store i32 %s2545, i32* %s_slot2546
  %b_slot2544 = alloca i32
  store i32 %b2543, i32* %b_slot2544
  %_lhs2549 = load i32* %s_slot2546
  %i2550 = alloca i32
  store i32 %_lhs2549, i32* %i2550
  %_lhs2551 = load i32* %s_slot2546
  %index_ptr2552 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2548, i32 %_lhs2551
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2551 )
  %_lhs2553 = load { i32, [ 0 x i32 ] }** %a_slot2548
  %min2554 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2553, i32* %min2554
  %_lhs2555 = load i32* %s_slot2546
  %mi2556 = alloca i32
  store i32 %_lhs2555, i32* %mi2556
  br label %__cond714

__cond714:
  %_lhs2557 = load i32* %i2550
  %_lhs2558 = load i32* %b_slot2544
  %bop2559 = icmp slt i32 %_lhs2557, %_lhs2558
  br i1 %bop2559, label %__body713, label %__post712

__fresh719:
  br label %__body713

__body713:
  %_lhs2560 = load i32* %i2550
  %index_ptr2561 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2548, i32 %_lhs2560
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2560 )
  %_lhs2562 = load { i32, [ 0 x i32 ] }** %a_slot2548
  %_lhs2563 = load i32* %min2554
  %bop2564 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2562, %_lhs2563
  br i1 %bop2564, label %__then717, label %__else716

__fresh720:
  br label %__then717

__then717:
  %_lhs2565 = load i32* %i2550
  %index_ptr2566 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2548, i32 %_lhs2565
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2565 )
  %_lhs2567 = load { i32, [ 0 x i32 ] }** %a_slot2548
  store { i32, [ 0 x i32 ] }* %_lhs2567, i32* %min2554
  %_lhs2568 = load i32* %i2550
  store i32 %_lhs2568, i32* %mi2556
  br label %__merge715

__fresh721:
  br label %__else716

__else716:
  br label %__merge715

__merge715:
  %_lhs2569 = load i32* %i2550
  %bop2570 = add i32 %_lhs2569, 1
  store i32 %bop2570, i32* %i2550
  br label %__cond714

__fresh722:
  br label %__post712

__post712:
  %_lhs2571 = load i32* %mi2556
  ret i32 %_lhs2571
}


