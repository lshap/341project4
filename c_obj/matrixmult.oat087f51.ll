declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2712.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2712 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2712.str., i32 0, i32 0), align 4
@_oat_string2708.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2708 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2708.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh692:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2694, i32 %n2692){

__fresh687:
  %ar_slot2695 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2694, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2695
  %n_slot2693 = alloca i32
  store i32 %n2692, i32* %n_slot2693
  %i2696 = alloca i32
  store i32 0, i32* %i2696
  br label %__cond683

__cond683:
  %_lhs2697 = load i32* %i2696
  %_lhs2698 = load i32* %n_slot2693
  %bop2699 = icmp slt i32 %_lhs2697, %_lhs2698
  br i1 %bop2699, label %__body682, label %__post681

__fresh688:
  br label %__body682

__body682:
  %j2700 = alloca i32
  store i32 0, i32* %j2700
  br label %__cond686

__cond686:
  %_lhs2701 = load i32* %j2700
  %bop2702 = icmp slt i32 %_lhs2701, 4
  br i1 %bop2702, label %__body685, label %__post684

__fresh689:
  br label %__body685

__body685:
  %_lhs2703 = load i32* %j2700
  %_lhs2704 = load i32* %i2696
  %index_ptr2705 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2695, i32 %_lhs2704
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2704 )
  %index_ptr2706 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2695, i32 %_lhs2703
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2703 )
  %_lhs2707 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2695
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2707 )
  %strval2709 = load i8** @_oat_string2708
  call void @print_string( i8* %strval2709 )
  %_lhs2710 = load i32* %j2700
  %bop2711 = add i32 %_lhs2710, 1
  store i32 %bop2711, i32* %j2700
  br label %__cond686

__fresh690:
  br label %__post684

__post684:
  %strval2713 = load i8** @_oat_string2712
  call void @print_string( i8* %strval2713 )
  %_lhs2714 = load i32* %i2696
  %bop2715 = add i32 %_lhs2714, 1
  store i32 %bop2715, i32* %i2696
  br label %__cond683

__fresh691:
  br label %__post681

__post681:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12670, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22668, i32 %row2666, i32 %col2664){

__fresh678:
  %a1_slot2671 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12670, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2671
  %a2_slot2669 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22668, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2669
  %row_slot2667 = alloca i32
  store i32 %row2666, i32* %row_slot2667
  %col_slot2665 = alloca i32
  store i32 %col2664, i32* %col_slot2665
  %sum2672 = alloca i32
  store i32 0, i32* %sum2672
  %k2673 = alloca i32
  store i32 0, i32* %k2673
  br label %__cond677

__cond677:
  %_lhs2674 = load i32* %k2673
  %bop2675 = icmp slt i32 %_lhs2674, 3
  br i1 %bop2675, label %__body676, label %__post675

__fresh679:
  br label %__body676

__body676:
  %_lhs2676 = load i32* %sum2672
  %_lhs2677 = load i32* %k2673
  %_lhs2678 = load i32* %row_slot2667
  %index_ptr2679 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2671, i32 %_lhs2678
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2678 )
  %index_ptr2680 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2671, i32 %_lhs2677
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2677 )
  %_lhs2681 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2671
  %_lhs2682 = load i32* %col_slot2665
  %_lhs2683 = load i32* %k2673
  %index_ptr2684 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2669, i32 %_lhs2683
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2683 )
  %index_ptr2685 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2669, i32 %_lhs2682
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2682 )
  %_lhs2686 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2669
  %bop2687 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2681, %_lhs2686
  %bop2688 = add i32 %_lhs2676, %bop2687
  store i32 %bop2688, i32* %sum2672
  %_lhs2689 = load i32* %k2673
  %bop2690 = add i32 %_lhs2689, 1
  store i32 %bop2690, i32* %k2673
  br label %__cond677

__fresh680:
  br label %__post675

__post675:
  %_lhs2691 = load i32* %sum2672
  ret i32 %_lhs2691
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12643, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22641, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32639){

__fresh670:
  %a1_slot2644 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12643, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2644
  %a2_slot2642 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22641, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2642
  %a3_slot2640 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32639, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2640
  %i2645 = alloca i32
  store i32 0, i32* %i2645
  br label %__cond666

__cond666:
  %_lhs2646 = load i32* %i2645
  %bop2647 = icmp slt i32 %_lhs2646, 2
  br i1 %bop2647, label %__body665, label %__post664

__fresh671:
  br label %__body665

__body665:
  %j2648 = alloca i32
  store i32 0, i32* %j2648
  br label %__cond669

__cond669:
  %_lhs2649 = load i32* %j2648
  %bop2650 = icmp slt i32 %_lhs2649, 4
  br i1 %bop2650, label %__body668, label %__post667

__fresh672:
  br label %__body668

__body668:
  %_lhs2651 = load i32* %j2648
  %_lhs2652 = load i32* %i2645
  %index_ptr2653 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2640, i32 %_lhs2652
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2652 )
  %index_ptr2654 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2640, i32 %_lhs2651
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2651 )
  %_lhs2658 = load i32* %j2648
  %_lhs2657 = load i32* %i2645
  %_lhs2656 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2642
  %_lhs2655 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2644
  %ret2659 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2655, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2656, i32 %_lhs2657, i32 %_lhs2658 )
  store i32 %ret2659, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2640
  %_lhs2660 = load i32* %j2648
  %bop2661 = add i32 %_lhs2660, 1
  store i32 %bop2661, i32* %j2648
  br label %__cond669

__fresh673:
  br label %__post667

__post667:
  %_lhs2662 = load i32* %i2645
  %bop2663 = add i32 %_lhs2662, 1
  store i32 %bop2663, i32* %i2645
  br label %__cond666

__fresh674:
  br label %__post664

__post664:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12601, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22599, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32597){

__fresh657:
  %a1_slot2602 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12601, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2602
  %a2_slot2600 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22599, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2600
  %a3_slot2598 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32597, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598
  %i2603 = alloca i32
  store i32 0, i32* %i2603
  br label %__cond650

__cond650:
  %_lhs2604 = load i32* %i2603
  %bop2605 = icmp slt i32 %_lhs2604, 2
  br i1 %bop2605, label %__body649, label %__post648

__fresh658:
  br label %__body649

__body649:
  %j2606 = alloca i32
  store i32 0, i32* %j2606
  br label %__cond653

__cond653:
  %_lhs2607 = load i32* %j2606
  %bop2608 = icmp slt i32 %_lhs2607, 4
  br i1 %bop2608, label %__body652, label %__post651

__fresh659:
  br label %__body652

__body652:
  %k2609 = alloca i32
  store i32 0, i32* %k2609
  br label %__cond656

__cond656:
  %_lhs2610 = load i32* %k2609
  %bop2611 = icmp slt i32 %_lhs2610, 3
  br i1 %bop2611, label %__body655, label %__post654

__fresh660:
  br label %__body655

__body655:
  %_lhs2612 = load i32* %j2606
  %_lhs2613 = load i32* %i2603
  %index_ptr2614 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598, i32 %_lhs2613
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2613 )
  %index_ptr2615 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598, i32 %_lhs2612
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2612 )
  %_lhs2616 = load i32* %j2606
  %_lhs2617 = load i32* %i2603
  %index_ptr2618 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598, i32 %_lhs2617
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2617 )
  %index_ptr2619 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598, i32 %_lhs2616
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2616 )
  %_lhs2620 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598
  %_lhs2621 = load i32* %k2609
  %_lhs2622 = load i32* %i2603
  %index_ptr2623 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2602, i32 %_lhs2622
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2622 )
  %index_ptr2624 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2602, i32 %_lhs2621
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2621 )
  %_lhs2625 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2602
  %_lhs2626 = load i32* %j2606
  %_lhs2627 = load i32* %k2609
  %index_ptr2628 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2600, i32 %_lhs2627
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2627 )
  %index_ptr2629 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2600, i32 %_lhs2626
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2626 )
  %_lhs2630 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2600
  %bop2631 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2625, %_lhs2630
  %bop2632 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2620, %bop2631
  store i32 %bop2632, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2598
  %_lhs2633 = load i32* %k2609
  %bop2634 = add i32 %_lhs2633, 1
  store i32 %bop2634, i32* %k2609
  br label %__cond656

__fresh661:
  br label %__post654

__post654:
  %_lhs2635 = load i32* %j2606
  %bop2636 = add i32 %_lhs2635, 1
  store i32 %bop2636, i32* %j2606
  br label %__cond653

__fresh662:
  br label %__post651

__post651:
  %_lhs2637 = load i32* %i2603
  %bop2638 = add i32 %_lhs2637, 1
  store i32 %bop2638, i32* %i2603
  br label %__cond650

__fresh663:
  br label %__post648

__post648:
  ret void
}


define i32 @program (i32 %argc2531, { i32, [ 0 x i8* ] }* %argv2529){

__fresh647:
  %argc_slot2532 = alloca i32
  store i32 %argc2531, i32* %argc_slot2532
  %argv_slot2530 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2529, { i32, [ 0 x i8* ] }** %argv_slot2530
  %array_ptr2533 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2534 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2533 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2535 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2536 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2535 to { i32, [ 0 x i32 ] }* 
  %index_ptr2537 = getelementptr { i32, [ 0 x i32 ] }* %array2536, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2537
  %index_ptr2538 = getelementptr { i32, [ 0 x i32 ] }* %array2536, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2538
  %index_ptr2539 = getelementptr { i32, [ 0 x i32 ] }* %array2536, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2539
  %index_ptr2540 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2534, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2536, { i32, [ 0 x i32 ] }** %index_ptr2540
  %array_ptr2541 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2542 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2541 to { i32, [ 0 x i32 ] }* 
  %index_ptr2543 = getelementptr { i32, [ 0 x i32 ] }* %array2542, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2543
  %index_ptr2544 = getelementptr { i32, [ 0 x i32 ] }* %array2542, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2544
  %index_ptr2545 = getelementptr { i32, [ 0 x i32 ] }* %array2542, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2545
  %index_ptr2546 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2534, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2542, { i32, [ 0 x i32 ] }** %index_ptr2546
  %a2547 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2534, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2547
  %array_ptr2548 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2549 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2548 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2550 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2551 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2550 to { i32, [ 0 x i32 ] }* 
  %index_ptr2552 = getelementptr { i32, [ 0 x i32 ] }* %array2551, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2552
  %index_ptr2553 = getelementptr { i32, [ 0 x i32 ] }* %array2551, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2553
  %index_ptr2554 = getelementptr { i32, [ 0 x i32 ] }* %array2551, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2554
  %index_ptr2555 = getelementptr { i32, [ 0 x i32 ] }* %array2551, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2555
  %index_ptr2556 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2549, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2551, { i32, [ 0 x i32 ] }** %index_ptr2556
  %array_ptr2557 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2558 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2557 to { i32, [ 0 x i32 ] }* 
  %index_ptr2559 = getelementptr { i32, [ 0 x i32 ] }* %array2558, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2559
  %index_ptr2560 = getelementptr { i32, [ 0 x i32 ] }* %array2558, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2560
  %index_ptr2561 = getelementptr { i32, [ 0 x i32 ] }* %array2558, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2561
  %index_ptr2562 = getelementptr { i32, [ 0 x i32 ] }* %array2558, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2562
  %index_ptr2563 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2549, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2558, { i32, [ 0 x i32 ] }** %index_ptr2563
  %array_ptr2564 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2565 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2564 to { i32, [ 0 x i32 ] }* 
  %index_ptr2566 = getelementptr { i32, [ 0 x i32 ] }* %array2565, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2566
  %index_ptr2567 = getelementptr { i32, [ 0 x i32 ] }* %array2565, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2567
  %index_ptr2568 = getelementptr { i32, [ 0 x i32 ] }* %array2565, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2568
  %index_ptr2569 = getelementptr { i32, [ 0 x i32 ] }* %array2565, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2569
  %index_ptr2570 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2549, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2565, { i32, [ 0 x i32 ] }** %index_ptr2570
  %b2571 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2549, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2571
  %array_ptr2572 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2573 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2572 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2574 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2575 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2574 to { i32, [ 0 x i32 ] }* 
  %index_ptr2576 = getelementptr { i32, [ 0 x i32 ] }* %array2575, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2576
  %index_ptr2577 = getelementptr { i32, [ 0 x i32 ] }* %array2575, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2577
  %index_ptr2578 = getelementptr { i32, [ 0 x i32 ] }* %array2575, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2578
  %index_ptr2579 = getelementptr { i32, [ 0 x i32 ] }* %array2575, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2579
  %index_ptr2580 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2573, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2575, { i32, [ 0 x i32 ] }** %index_ptr2580
  %array_ptr2581 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2582 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2581 to { i32, [ 0 x i32 ] }* 
  %index_ptr2583 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2583
  %index_ptr2584 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2584
  %index_ptr2585 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2585
  %index_ptr2586 = getelementptr { i32, [ 0 x i32 ] }* %array2582, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2586
  %index_ptr2587 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2573, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2582, { i32, [ 0 x i32 ] }** %index_ptr2587
  %c2588 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2573, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2588
  %_lhs2591 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2588
  %_lhs2590 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2571
  %_lhs2589 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2547
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2589, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2590, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2591 )
  %_lhs2592 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2588
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2592, i32 2 )
  %_lhs2595 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2588
  %_lhs2594 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2571
  %_lhs2593 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2547
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2593, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2594, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2595 )
  %_lhs2596 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2588
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2596, i32 2 )
  ret i32 0
}


