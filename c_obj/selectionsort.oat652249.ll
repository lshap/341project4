declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh944:
  ret void
}


define i32 @program (i32 %argc2605, { i32, [ 0 x i8* ] }* %argv2603){

__fresh941:
  %argc_slot2606 = alloca i32
  store i32 %argc2605, i32* %argc_slot2606
  %argv_slot2604 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2603, { i32, [ 0 x i8* ] }** %argv_slot2604
  %array_ptr2607 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2608 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2607 to { i32, [ 0 x i32 ] }* 
  %index_ptr2609 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 0
  store i32 5, i32* %index_ptr2609
  %index_ptr2610 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 1
  store i32 200, i32* %index_ptr2610
  %index_ptr2611 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2611
  %index_ptr2612 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 3
  store i32 65, i32* %index_ptr2612
  %index_ptr2613 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 4
  store i32 30, i32* %index_ptr2613
  %index_ptr2614 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 5
  store i32 99, i32* %index_ptr2614
  %index_ptr2615 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 6
  store i32 2, i32* %index_ptr2615
  %index_ptr2616 = getelementptr { i32, [ 0 x i32 ] }* %array2608, i32 0, i32 1, i32 7
  store i32 0, i32* %index_ptr2616
  %ar2617 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2608, { i32, [ 0 x i32 ] }** %ar2617
  %_lhs2618 = load { i32, [ 0 x i32 ] }** %ar2617
  call void @selectionsort( { i32, [ 0 x i32 ] }* %_lhs2618, i32 8 )
  %i2619 = alloca i32
  store i32 0, i32* %i2619
  br label %__cond940

__cond940:
  %_lhs2620 = load i32* %i2619
  %bop2621 = icmp slt i32 %_lhs2620, 8
  br i1 %bop2621, label %__body939, label %__post938

__fresh942:
  br label %__body939

__body939:
  %_lhs2622 = load i32* %i2619
  %index_ptr2623 = getelementptr { i32, [ 0 x i32 ] }** %ar2617, i32 %_lhs2622
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2622 )
  %_lhs2624 = load { i32, [ 0 x i32 ] }** %ar2617
  call void @print_int( { i32, [ 0 x i32 ] }* %_lhs2624 )
  %_lhs2625 = load i32* %i2619
  %bop2626 = add i32 %_lhs2625, 1
  store i32 %bop2626, i32* %i2619
  br label %__cond940

__fresh943:
  br label %__post938

__post938:
  ret i32 0
}


define void @selectionsort ({ i32, [ 0 x i32 ] }* %a2578, i32 %s2576){

__fresh935:
  %a_slot2579 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2578, { i32, [ 0 x i32 ] }** %a_slot2579
  %s_slot2577 = alloca i32
  store i32 %s2576, i32* %s_slot2577
  %t2580 = alloca i32
  store i32 0, i32* %t2580
  %mi2581 = alloca i32
  store i32 0, i32* %mi2581
  %i2582 = alloca i32
  store i32 0, i32* %i2582
  br label %__cond934

__cond934:
  %_lhs2583 = load i32* %i2582
  %_lhs2584 = load i32* %s_slot2577
  %bop2585 = icmp slt i32 %_lhs2583, %_lhs2584
  br i1 %bop2585, label %__body933, label %__post932

__fresh936:
  br label %__body933

__body933:
  %_lhs2588 = load i32* %s_slot2577
  %_lhs2587 = load i32* %i2582
  %_lhs2586 = load { i32, [ 0 x i32 ] }** %a_slot2579
  %ret2589 = call i32 @getminindex ( { i32, [ 0 x i32 ] }* %_lhs2586, i32 %_lhs2587, i32 %_lhs2588 )
  store i32 %ret2589, i32* %mi2581
  %_lhs2590 = load i32* %i2582
  %index_ptr2591 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2579, i32 %_lhs2590
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2590 )
  %_lhs2592 = load { i32, [ 0 x i32 ] }** %a_slot2579
  store { i32, [ 0 x i32 ] }* %_lhs2592, i32* %t2580
  %_lhs2593 = load i32* %i2582
  %index_ptr2594 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2579, i32 %_lhs2593
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2593 )
  %_lhs2595 = load i32* %mi2581
  %index_ptr2596 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2579, i32 %_lhs2595
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2595 )
  %_lhs2597 = load { i32, [ 0 x i32 ] }** %a_slot2579
  store { i32, [ 0 x i32 ] }* %_lhs2597, { i32, [ 0 x i32 ] }** %a_slot2579
  %_lhs2598 = load i32* %mi2581
  %index_ptr2599 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2579, i32 %_lhs2598
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2598 )
  %_lhs2600 = load i32* %t2580
  store i32 %_lhs2600, { i32, [ 0 x i32 ] }** %a_slot2579
  %_lhs2601 = load i32* %i2582
  %bop2602 = add i32 %_lhs2601, 1
  store i32 %bop2602, i32* %i2582
  br label %__cond934

__fresh937:
  br label %__post932

__post932:
  ret void
}


define i32 @getminindex ({ i32, [ 0 x i32 ] }* %a2551, i32 %s2549, i32 %b2547){

__fresh927:
  %a_slot2552 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2551, { i32, [ 0 x i32 ] }** %a_slot2552
  %s_slot2550 = alloca i32
  store i32 %s2549, i32* %s_slot2550
  %b_slot2548 = alloca i32
  store i32 %b2547, i32* %b_slot2548
  %_lhs2553 = load i32* %s_slot2550
  %i2554 = alloca i32
  store i32 %_lhs2553, i32* %i2554
  %_lhs2555 = load i32* %s_slot2550
  %index_ptr2556 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2552, i32 %_lhs2555
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2555 )
  %_lhs2557 = load { i32, [ 0 x i32 ] }** %a_slot2552
  %min2558 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2557, i32* %min2558
  %_lhs2559 = load i32* %s_slot2550
  %mi2560 = alloca i32
  store i32 %_lhs2559, i32* %mi2560
  br label %__cond923

__cond923:
  %_lhs2561 = load i32* %i2554
  %_lhs2562 = load i32* %b_slot2548
  %bop2563 = icmp slt i32 %_lhs2561, %_lhs2562
  br i1 %bop2563, label %__body922, label %__post921

__fresh928:
  br label %__body922

__body922:
  %_lhs2564 = load i32* %i2554
  %index_ptr2565 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2552, i32 %_lhs2564
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2564 )
  %_lhs2566 = load { i32, [ 0 x i32 ] }** %a_slot2552
  %_lhs2567 = load i32* %min2558
  %bop2568 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2566, %_lhs2567
  br i1 %bop2568, label %__then926, label %__else925

__fresh929:
  br label %__then926

__then926:
  %_lhs2569 = load i32* %i2554
  %index_ptr2570 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2552, i32 %_lhs2569
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2569 )
  %_lhs2571 = load { i32, [ 0 x i32 ] }** %a_slot2552
  store { i32, [ 0 x i32 ] }* %_lhs2571, i32* %min2558
  %_lhs2572 = load i32* %i2554
  store i32 %_lhs2572, i32* %mi2560
  br label %__merge924

__fresh930:
  br label %__else925

__else925:
  br label %__merge924

__merge924:
  %_lhs2573 = load i32* %i2554
  %bop2574 = add i32 %_lhs2573, 1
  store i32 %bop2574, i32* %i2554
  br label %__cond923

__fresh931:
  br label %__post921

__post921:
  %_lhs2575 = load i32* %mi2560
  ret i32 %_lhs2575
}


