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


define i32 @program (i32 %argc2614, { i32, [ 0 x i8* ] }* %argv2612){

__fresh732:
  %argc_slot2615 = alloca i32
  store i32 %argc2614, i32* %argc_slot2615
  %argv_slot2613 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2612, { i32, [ 0 x i8* ] }** %argv_slot2613
  %array_ptr2616 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2617 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2616 to { i32, [ 0 x i32 ] }* 
  %index_ptr2618 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2618
  %index_ptr2619 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2619
  %index_ptr2620 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2620
  %index_ptr2621 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2621
  %index_ptr2622 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2622
  %index_ptr2623 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2623
  %index_ptr2624 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2624
  %index_ptr2625 = getelementptr { i32, [ 0 x i32 ] }* %array2617, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2625
  %ar2626 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2617, { i32, [ 0 x i32 ] }** %ar2626
  %_lhs2627 = load { i32, [ 0 x i32 ] }** %ar2626
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2627, i32 8 )
  %i2628 = alloca i32
  store i32 0, i32* %i2628
  br label %__cond731

__cond731:
  %_lhs2629 = load i32* %i2628
  %bop2630 = icmp slt i32 %_lhs2629, 8
  br i1 %bop2630, label %__body730, label %__post729

__fresh733:
  br label %__body730

__body730:
  %_lhs2631 = load i32* %i2628
  %index_ptr2632 = getelementptr { i32, [ 0 x i32 ] }** %ar2626, i32 %_lhs2631
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2631 )
  %_lhs2633 = load { i32, [ 0 x i32 ] }** %ar2626
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2633 )
  %_lhs2634 = load i32* %i2628
  %bop2635 = add i32 %_lhs2634, 1
  store i32 %bop2635, i32* %i2628
  br label %__cond731

__fresh734:
  br label %__post729

__post729:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2587, i32 %s2585){

__fresh726:
  %a_slot2588 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2587, { i32, [ 0 x i32 ] }** %a_slot2588
  %s_slot2586 = alloca i32
  store i32 %s2585, i32* %s_slot2586
  %t2589 = alloca i32
  store i32 0, i32* %t2589
  %mi2590 = alloca i32
  store i32 0, i32* %mi2590
  %i2591 = alloca i32
  store i32 0, i32* %i2591
  br label %__cond725

__cond725:
  %_lhs2592 = load i32* %i2591
  %_lhs2593 = load i32* %s_slot2586
  %bop2594 = icmp slt i32 %_lhs2592, %_lhs2593
  br i1 %bop2594, label %__body724, label %__post723

__fresh727:
  br label %__body724

__body724:
  %_lhs2597 = load i32* %s_slot2586
  %_lhs2596 = load i32* %i2591
  %_lhs2595 = load { i32, [ 0 x i32 ] }** %a_slot2588
  %ret2598 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2595, i32 %_lhs2596, i32 %_lhs2597 )
  store i32 %ret2598, i32* %mi2590
  %_lhs2599 = load i32* %i2591
  %index_ptr2600 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2588, i32 %_lhs2599
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2599 )
  %_lhs2601 = load { i32, [ 0 x i32 ] }** %a_slot2588
  store { i32, [ 0 x i32 ] }* %_lhs2601, i32* %t2589
  %_lhs2602 = load i32* %i2591
  %index_ptr2603 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2588, i32 %_lhs2602
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2602 )
  %_lhs2604 = load i32* %mi2590
  %index_ptr2605 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2588, i32 %_lhs2604
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2604 )
  %_lhs2606 = load { i32, [ 0 x i32 ] }** %a_slot2588
  store { i32, [ 0 x i32 ] }* %_lhs2606, { i32, [ 0 x i32 ] }** %a_slot2588
  %_lhs2607 = load i32* %mi2590
  %index_ptr2608 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2588, i32 %_lhs2607
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2607 )
  %_lhs2609 = load i32* %t2589
  store i32 %_lhs2609, { i32, [ 0 x i32 ] }** %a_slot2588
  %_lhs2610 = load i32* %i2591
  %bop2611 = add i32 %_lhs2610, 1
  store i32 %bop2611, i32* %i2591
  br label %__cond725

__fresh728:
  br label %__post723

__post723:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2560, i32 %s2558, i32 %b2556){

__fresh718:
  %a_slot2561 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2560, { i32, [ 0 x i32 ] }** %a_slot2561
  %s_slot2559 = alloca i32
  store i32 %s2558, i32* %s_slot2559
  %b_slot2557 = alloca i32
  store i32 %b2556, i32* %b_slot2557
  %_lhs2562 = load i32* %s_slot2559
  %i2563 = alloca i32
  store i32 %_lhs2562, i32* %i2563
  %_lhs2564 = load i32* %s_slot2559
  %index_ptr2565 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2561, i32 %_lhs2564
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2564 )
  %_lhs2566 = load { i32, [ 0 x i32 ] }** %a_slot2561
  %min2567 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2566, i32* %min2567
  %_lhs2568 = load i32* %s_slot2559
  %mi2569 = alloca i32
  store i32 %_lhs2568, i32* %mi2569
  br label %__cond714

__cond714:
  %_lhs2570 = load i32* %i2563
  %_lhs2571 = load i32* %b_slot2557
  %bop2572 = icmp slt i32 %_lhs2570, %_lhs2571
  br i1 %bop2572, label %__body713, label %__post712

__fresh719:
  br label %__body713

__body713:
  %_lhs2573 = load i32* %i2563
  %index_ptr2574 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2561, i32 %_lhs2573
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2573 )
  %_lhs2575 = load { i32, [ 0 x i32 ] }** %a_slot2561
  %_lhs2576 = load i32* %min2567
  %bop2577 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2575, %_lhs2576
  br i1 %bop2577, label %__then717, label %__else716

__fresh720:
  br label %__then717

__then717:
  %_lhs2578 = load i32* %i2563
  %index_ptr2579 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2561, i32 %_lhs2578
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2578 )
  %_lhs2580 = load { i32, [ 0 x i32 ] }** %a_slot2561
  store { i32, [ 0 x i32 ] }* %_lhs2580, i32* %min2567
  %_lhs2581 = load i32* %i2563
  store i32 %_lhs2581, i32* %mi2569
  br label %__merge715

__fresh721:
  br label %__else716

__else716:
  br label %__merge715

__merge715:
  %_lhs2582 = load i32* %i2563
  %bop2583 = add i32 %_lhs2582, 1
  store i32 %bop2583, i32* %i2563
  br label %__cond714

__fresh722:
  br label %__post712

__post712:
  %_lhs2584 = load i32* %mi2569
  ret i32 %_lhs2584
}


