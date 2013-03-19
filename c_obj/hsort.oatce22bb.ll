declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2525 = global i32 8, align 4
@b2524 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2524.init
define void @oat_init (){

__fresh1107:
  call void @b2524.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2643, i32 %i2641, i32 %n2639){

__fresh1098:
  %a_slot2644 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2643, { i32, [ 0 x i32 ] }** %a_slot2644
  %i_slot2642 = alloca i32
  store i32 %i2641, i32* %i_slot2642
  %n_slot2640 = alloca i32
  store i32 %n2639, i32* %n_slot2640
  %_lhs2645 = load i32* %i_slot2642
  %size_ptr2647 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2647, i32 %_lhs2645 )
  %index_ptr2646 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %_lhs2645
  %_lhs2648 = load { i32, [ 0 x i32 ] }** %a_slot2644
  %v2649 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2648, i32* %v2649
  %_lhs2650 = load i32* %i_slot2642
  %bop2651 = mul i32 %_lhs2650, 2
  %j2652 = alloca i32
  store i32 %bop2651, i32* %j2652
  %done2653 = alloca i32
  store i32 0, i32* %done2653
  br label %__cond1088

__cond1088:
  %_lhs2654 = load i32* %j2652
  %_lhs2655 = load i32* %n_slot2640
  %bop2656 = icmp sle i32 %_lhs2654, %_lhs2655
  %_lhs2657 = load i32* %done2653
  %bop2658 = icmp eq i32 %_lhs2657, 0
  %bop2659 = and i1 %bop2656, %bop2658
  br i1 %bop2659, label %__body1087, label %__post1086

__fresh1099:
  br label %__body1087

__body1087:
  %_lhs2660 = load i32* %j2652
  %_lhs2661 = load i32* %n_slot2640
  %bop2662 = icmp slt i32 %_lhs2660, %_lhs2661
  %_lhs2663 = load i32* %j2652
  %size_ptr2665 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2665, i32 %_lhs2663 )
  %index_ptr2664 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %_lhs2663
  %_lhs2666 = load { i32, [ 0 x i32 ] }** %a_slot2644
  %_lhs2667 = load i32* %j2652
  %bop2668 = add i32 %_lhs2667, 1
  %size_ptr2670 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2670, i32 %bop2668 )
  %index_ptr2669 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %bop2668
  %_lhs2671 = load { i32, [ 0 x i32 ] }** %a_slot2644
  %bop2672 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2666, %_lhs2671
  %bop2673 = and i1 %bop2662, %bop2672
  br i1 %bop2673, label %__then1091, label %__else1090

__fresh1100:
  br label %__then1091

__then1091:
  %_lhs2674 = load i32* %j2652
  %bop2675 = add i32 %_lhs2674, 1
  store i32 %bop2675, i32* %j2652
  br label %__merge1089

__fresh1101:
  br label %__else1090

__else1090:
  br label %__merge1089

__merge1089:
  %_lhs2676 = load i32* %j2652
  %size_ptr2678 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2678, i32 %_lhs2676 )
  %index_ptr2677 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %_lhs2676
  %_lhs2679 = load { i32, [ 0 x i32 ] }** %a_slot2644
  %_lhs2680 = load i32* %j2652
  %bop2681 = ashr i32 %_lhs2680, 1
  %size_ptr2683 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2683, i32 %bop2681 )
  %index_ptr2682 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %bop2681
  %_lhs2684 = load { i32, [ 0 x i32 ] }** %a_slot2644
  %bop2685 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2679, %_lhs2684
  br i1 %bop2685, label %__then1094, label %__else1093

__fresh1102:
  br label %__then1094

__then1094:
  store i32 1, i32* %done2653
  br label %__merge1092

__fresh1103:
  br label %__else1093

__else1093:
  br label %__merge1092

__merge1092:
  %_lhs2686 = load i32* %done2653
  %bop2687 = icmp eq i32 %_lhs2686, 0
  br i1 %bop2687, label %__then1097, label %__else1096

__fresh1104:
  br label %__then1097

__then1097:
  %_lhs2688 = load i32* %j2652
  %bop2689 = ashr i32 %_lhs2688, 1
  %size_ptr2691 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2691, i32 %bop2689 )
  %index_ptr2690 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %bop2689
  %_lhs2692 = load i32* %j2652
  %size_ptr2694 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2694, i32 %_lhs2692 )
  %index_ptr2693 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %_lhs2692
  %_lhs2695 = load { i32, [ 0 x i32 ] }** %a_slot2644
  store { i32, [ 0 x i32 ] }* %_lhs2695, { i32, [ 0 x i32 ] }** %a_slot2644
  %_lhs2696 = load i32* %j2652
  %bop2697 = mul i32 %_lhs2696, 2
  store i32 %bop2697, i32* %j2652
  br label %__merge1095

__fresh1105:
  br label %__else1096

__else1096:
  br label %__merge1095

__merge1095:
  br label %__cond1088

__fresh1106:
  br label %__post1086

__post1086:
  %_lhs2698 = load i32* %j2652
  %bop2699 = ashr i32 %_lhs2698, 1
  %size_ptr2701 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2701, i32 %bop2699 )
  %index_ptr2700 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2644, i32 0, i32 1, i32 %bop2699
  %_lhs2702 = load i32* %v2649
  store i32 %_lhs2702, { i32, [ 0 x i32 ] }** %a_slot2644
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2608, i32 %i2606){

__fresh1083:
  %a_slot2609 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2608, { i32, [ 0 x i32 ] }** %a_slot2609
  %i_slot2607 = alloca i32
  store i32 %i2606, i32* %i_slot2607
  %_lhs2610 = load i32* %i_slot2607
  %size_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2612, i32 %_lhs2610 )
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 1, i32 %_lhs2610
  %_lhs2613 = load { i32, [ 0 x i32 ] }** %a_slot2609
  %v2614 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2613, i32* %v2614
  br label %__cond1082

__cond1082:
  %_lhs2615 = load i32* %i_slot2607
  %bop2616 = icmp sgt i32 %_lhs2615, 1
  %_lhs2617 = load i32* %i_slot2607
  %bop2618 = ashr i32 %_lhs2617, 1
  %size_ptr2620 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2620, i32 %bop2618 )
  %index_ptr2619 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 1, i32 %bop2618
  %_lhs2621 = load { i32, [ 0 x i32 ] }** %a_slot2609
  %_lhs2622 = load i32* %v2614
  %bop2623 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2621, %_lhs2622
  %bop2624 = and i1 %bop2616, %bop2623
  br i1 %bop2624, label %__body1081, label %__post1080

__fresh1084:
  br label %__body1081

__body1081:
  %_lhs2625 = load i32* %i_slot2607
  %size_ptr2627 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2627, i32 %_lhs2625 )
  %index_ptr2626 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 1, i32 %_lhs2625
  %_lhs2628 = load i32* %i_slot2607
  %bop2629 = ashr i32 %_lhs2628, 1
  %size_ptr2631 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2631, i32 %bop2629 )
  %index_ptr2630 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 1, i32 %bop2629
  %_lhs2632 = load { i32, [ 0 x i32 ] }** %a_slot2609
  store { i32, [ 0 x i32 ] }* %_lhs2632, { i32, [ 0 x i32 ] }** %a_slot2609
  %_lhs2633 = load i32* %i_slot2607
  %bop2634 = ashr i32 %_lhs2633, 1
  store i32 %bop2634, i32* %i_slot2607
  br label %__cond1082

__fresh1085:
  br label %__post1080

__post1080:
  %_lhs2635 = load i32* %i_slot2607
  %size_ptr2637 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2637, i32 %_lhs2635 )
  %index_ptr2636 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2609, i32 0, i32 1, i32 %_lhs2635
  %_lhs2638 = load i32* %v2614
  store i32 %_lhs2638, { i32, [ 0 x i32 ] }** %a_slot2609
  ret void
}


define i32 @program (i32 %argc2528, { i32, [ 0 x i8* ] }* %argv2526){

__fresh1068:
  %argc_slot2529 = alloca i32
  store i32 %argc2528, i32* %argc_slot2529
  %argv_slot2527 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2526, { i32, [ 0 x i8* ] }** %argv_slot2527
  %array_ptr2530 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2531 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2530 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2533
  br label %__compare1053

__fresh1069:
  br label %__compare1053

__compare1053:
  %comparison_result2534 = icmp slt i32* %index_ptr2533, 9
  br i1 %comparison_result2534, label %__body1054, label %__end1055

__fresh1070:
  br label %__body1054

__body1054:
  store i32* %index_ptr2533, i32* %i2535
  %index_ptr2533 = add i32* %index_ptr2533, 1
  br label %__compare1053

__fresh1071:
  br label %__end1055

__end1055:
  %a2536 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2531, { i32, [ 0 x i32 ] }** %a2536
  %i2537 = alloca i32
  store i32 0, i32* %i2537
  %j2538 = alloca i32
  store i32 0, i32* %j2538
  %k2539 = alloca i32
  store i32 0, i32* %k2539
  %r2540 = alloca i32
  store i32 0, i32* %r2540
  %size_ptr2542 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2542, i32 0 )
  %index_ptr2541 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 0
  %_lhs2543 = load { i32, [ 0 x i32 ] }** %a2536
  %check2544 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2543, i32* %check2544
  %size_ptr2546 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2546, i32 0 )
  %index_ptr2545 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 0
  %size_ptr2548 = getelementptr { i32, [ 0 x i32 ] }* @b2524, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2548, i32 0 )
  %index_ptr2547 = getelementptr { i32, [ 0 x i32 ] }* @b2524, i32 0, i32 1, i32 0
  %_lhs2549 = load { i32, [ 0 x i32 ] }** @b2524
  store { i32, [ 0 x i32 ] }* %_lhs2549, { i32, [ 0 x i32 ] }** %a2536
  store i32 1, i32* %i2537
  br label %__cond1058

__cond1058:
  %_lhs2550 = load i32* %i2537
  %_lhs2551 = load i32* @n2525
  %bop2552 = icmp sle i32 %_lhs2550, %_lhs2551
  br i1 %bop2552, label %__body1057, label %__post1056

__fresh1072:
  br label %__body1057

__body1057:
  %_lhs2553 = load i32* %i2537
  %size_ptr2555 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2555, i32 %_lhs2553 )
  %index_ptr2554 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 %_lhs2553
  %_lhs2556 = load i32* %i2537
  %size_ptr2558 = getelementptr { i32, [ 0 x i32 ] }* @b2524, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2558, i32 %_lhs2556 )
  %index_ptr2557 = getelementptr { i32, [ 0 x i32 ] }* @b2524, i32 0, i32 1, i32 %_lhs2556
  %_lhs2559 = load { i32, [ 0 x i32 ] }** @b2524
  %unop2560 = sub i32 0, %_lhs2559
  store i32 %unop2560, { i32, [ 0 x i32 ] }** %a2536
  %_lhs2562 = load i32* %i2537
  %_lhs2561 = load { i32, [ 0 x i32 ] }** %a2536
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2561, i32 %_lhs2562 )
  %_lhs2563 = load i32* %i2537
  %bop2564 = add i32 %_lhs2563, 1
  store i32 %bop2564, i32* %i2537
  br label %__cond1058

__fresh1073:
  br label %__post1056

__post1056:
  %_lhs2565 = load i32* @n2525
  store i32 %_lhs2565, i32* %j2538
  store i32 1, i32* %i2537
  br label %__cond1061

__cond1061:
  %_lhs2566 = load i32* %i2537
  %_lhs2567 = load i32* %j2538
  %bop2568 = icmp sle i32 %_lhs2566, %_lhs2567
  br i1 %bop2568, label %__body1060, label %__post1059

__fresh1074:
  br label %__body1060

__body1060:
  %temp2569 = alloca i32
  store i32 0, i32* %temp2569
  %size_ptr2571 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2571, i32 1 )
  %index_ptr2570 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 1
  %_lhs2572 = load { i32, [ 0 x i32 ] }** %a2536
  store { i32, [ 0 x i32 ] }* %_lhs2572, i32* %temp2569
  %size_ptr2574 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2574, i32 1 )
  %index_ptr2573 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 1
  %_lhs2575 = load i32* @n2525
  %size_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2577, i32 %_lhs2575 )
  %index_ptr2576 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 %_lhs2575
  %_lhs2578 = load { i32, [ 0 x i32 ] }** %a2536
  store { i32, [ 0 x i32 ] }* %_lhs2578, { i32, [ 0 x i32 ] }** %a2536
  %_lhs2579 = load i32* @n2525
  %size_ptr2581 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2581, i32 %_lhs2579 )
  %index_ptr2580 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 %_lhs2579
  %_lhs2582 = load i32* %temp2569
  store i32 %_lhs2582, { i32, [ 0 x i32 ] }** %a2536
  %_lhs2583 = load i32* @n2525
  %bop2584 = sub i32 %_lhs2583, 1
  store i32 %bop2584, i32* @n2525
  %_lhs2586 = load i32* @n2525
  %_lhs2585 = load { i32, [ 0 x i32 ] }** %a2536
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2585, i32 1, i32 %_lhs2586 )
  %_lhs2587 = load i32* %i2537
  %bop2588 = add i32 %_lhs2587, 1
  store i32 %bop2588, i32* %i2537
  br label %__cond1061

__fresh1075:
  br label %__post1059

__post1059:
  %_lhs2589 = load i32* %j2538
  store i32 %_lhs2589, i32* @n2525
  store i32 1, i32* %i2537
  br label %__cond1064

__cond1064:
  %_lhs2590 = load i32* %i2537
  %_lhs2591 = load i32* @n2525
  %bop2592 = icmp sle i32 %_lhs2590, %_lhs2591
  br i1 %bop2592, label %__body1063, label %__post1062

__fresh1076:
  br label %__body1063

__body1063:
  %_lhs2593 = load i32* %i2537
  %size_ptr2595 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2595, i32 %_lhs2593 )
  %index_ptr2594 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 %_lhs2593
  %_lhs2596 = load { i32, [ 0 x i32 ] }** %a2536
  %_lhs2597 = load i32* %check2544
  %bop2598 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2596, %_lhs2597
  br i1 %bop2598, label %__then1067, label %__else1066

__fresh1077:
  br label %__then1067

__then1067:
  %_lhs2599 = load i32* %i2537
  %size_ptr2601 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2601, i32 %_lhs2599 )
  %index_ptr2600 = getelementptr { i32, [ 0 x i32 ] }* %a2536, i32 0, i32 1, i32 %_lhs2599
  %_lhs2602 = load { i32, [ 0 x i32 ] }** %a2536
  store { i32, [ 0 x i32 ] }* %_lhs2602, i32* %check2544
  br label %__merge1065

__fresh1078:
  br label %__else1066

__else1066:
  store i32 1, i32* %r2540
  br label %__merge1065

__merge1065:
  %_lhs2603 = load i32* %i2537
  %bop2604 = add i32 %_lhs2603, 1
  store i32 %bop2604, i32* %i2537
  br label %__cond1064

__fresh1079:
  br label %__post1062

__post1062:
  %_lhs2605 = load i32* %r2540
  ret i32 %_lhs2605
}


define void @b2524.init (){

__fresh1052:
  %array_ptr2505 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2506 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2505 to { i32, [ 0 x i32 ] }* 
  %index_ptr2507 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2507
  %unop2508 = sub i32 0, 110
  %index_ptr2509 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 1
  store i32 %unop2508, i32* %index_ptr2509
  %unop2510 = sub i32 0, 111
  %index_ptr2511 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 2
  store i32 %unop2510, i32* %index_ptr2511
  %unop2512 = sub i32 0, 109
  %index_ptr2513 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 3
  store i32 %unop2512, i32* %index_ptr2513
  %unop2514 = sub i32 0, 117
  %index_ptr2515 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 4
  store i32 %unop2514, i32* %index_ptr2515
  %unop2516 = sub i32 0, 119
  %index_ptr2517 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 5
  store i32 %unop2516, i32* %index_ptr2517
  %unop2518 = sub i32 0, 113
  %index_ptr2519 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 6
  store i32 %unop2518, i32* %index_ptr2519
  %unop2520 = sub i32 0, 120
  %index_ptr2521 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 7
  store i32 %unop2520, i32* %index_ptr2521
  %unop2522 = sub i32 0, 108
  %index_ptr2523 = getelementptr { i32, [ 0 x i32 ] }* %array2506, i32 0, i32 1, i32 8
  store i32 %unop2522, i32* %index_ptr2523
  store { i32, [ 0 x i32 ] }* %array2506, { i32, [ 0 x i32 ] }** @b2524
  ret void
}


