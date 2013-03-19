declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2374.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2374 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2374.str., i32 0, i32 0), align 4
@_oat_string2370.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2370 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2370.str., i32 0, i32 0), align 4
@a2361 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2361.init
define void @oat_init (){

__fresh1049:
  call void @a2361.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2410, i32 %low2408, i32 %high2406, i32 %mid2404){

__fresh1035:
  %a_slot2411 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2410, { i32, [ 0 x i32 ] }** %a_slot2411
  %low_slot2409 = alloca i32
  store i32 %low2408, i32* %low_slot2409
  %high_slot2407 = alloca i32
  store i32 %high2406, i32* %high_slot2407
  %mid_slot2405 = alloca i32
  store i32 %mid2404, i32* %mid_slot2405
  %i2412 = alloca i32
  store i32 0, i32* %i2412
  %j2413 = alloca i32
  store i32 0, i32* %j2413
  %k2414 = alloca i32
  store i32 0, i32* %k2414
  %array_ptr2415 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2416 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2415 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2418
  br label %__compare1017

__fresh1036:
  br label %__compare1017

__compare1017:
  %comparison_result2419 = icmp slt i32* %index_ptr2418, 50
  br i1 %comparison_result2419, label %__body1018, label %__end1019

__fresh1037:
  br label %__body1018

__body1018:
  store i32* %index_ptr2418, i32* %i2420
  %index_ptr2418 = add i32* %index_ptr2418, 1
  br label %__compare1017

__fresh1038:
  br label %__end1019

__end1019:
  %c2421 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2416, { i32, [ 0 x i32 ] }** %c2421
  %_lhs2422 = load i32* %low_slot2409
  store i32 %_lhs2422, i32* %i2412
  %_lhs2423 = load i32* %mid_slot2405
  %bop2424 = add i32 %_lhs2423, 1
  store i32 %bop2424, i32* %j2413
  %_lhs2425 = load i32* %low_slot2409
  store i32 %_lhs2425, i32* %k2414
  br label %__cond1022

__cond1022:
  %_lhs2426 = load i32* %i2412
  %_lhs2427 = load i32* %mid_slot2405
  %bop2428 = icmp sle i32 %_lhs2426, %_lhs2427
  %_lhs2429 = load i32* %j2413
  %_lhs2430 = load i32* %high_slot2407
  %bop2431 = icmp sle i32 %_lhs2429, %_lhs2430
  %bop2432 = and i1 %bop2428, %bop2431
  br i1 %bop2432, label %__body1021, label %__post1020

__fresh1039:
  br label %__body1021

__body1021:
  %_lhs2433 = load i32* %i2412
  %size_ptr2435 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2435, i32 %_lhs2433 )
  %index_ptr2434 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2433
  %_lhs2436 = load { i32, [ 0 x i32 ] }** %a_slot2411
  %_lhs2437 = load i32* %j2413
  %size_ptr2439 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2439, i32 %_lhs2437 )
  %index_ptr2438 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2437
  %_lhs2440 = load { i32, [ 0 x i32 ] }** %a_slot2411
  %bop2441 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2436, %_lhs2440
  br i1 %bop2441, label %__then1025, label %__else1024

__fresh1040:
  br label %__then1025

__then1025:
  %_lhs2442 = load i32* %k2414
  %size_ptr2444 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2444, i32 %_lhs2442 )
  %index_ptr2443 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 1, i32 %_lhs2442
  %_lhs2445 = load i32* %i2412
  %size_ptr2447 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2447, i32 %_lhs2445 )
  %index_ptr2446 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2445
  %_lhs2448 = load { i32, [ 0 x i32 ] }** %a_slot2411
  store { i32, [ 0 x i32 ] }* %_lhs2448, { i32, [ 0 x i32 ] }** %c2421
  %_lhs2449 = load i32* %k2414
  %bop2450 = add i32 %_lhs2449, 1
  store i32 %bop2450, i32* %k2414
  %_lhs2451 = load i32* %i2412
  %bop2452 = add i32 %_lhs2451, 1
  store i32 %bop2452, i32* %i2412
  br label %__merge1023

__fresh1041:
  br label %__else1024

__else1024:
  %_lhs2453 = load i32* %k2414
  %size_ptr2455 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2455, i32 %_lhs2453 )
  %index_ptr2454 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 1, i32 %_lhs2453
  %_lhs2456 = load i32* %j2413
  %size_ptr2458 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2458, i32 %_lhs2456 )
  %index_ptr2457 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2456
  %_lhs2459 = load { i32, [ 0 x i32 ] }** %a_slot2411
  store { i32, [ 0 x i32 ] }* %_lhs2459, { i32, [ 0 x i32 ] }** %c2421
  %_lhs2460 = load i32* %k2414
  %bop2461 = add i32 %_lhs2460, 1
  store i32 %bop2461, i32* %k2414
  %_lhs2462 = load i32* %j2413
  %bop2463 = add i32 %_lhs2462, 1
  store i32 %bop2463, i32* %j2413
  br label %__merge1023

__merge1023:
  br label %__cond1022

__fresh1042:
  br label %__post1020

__post1020:
  br label %__cond1028

__cond1028:
  %_lhs2464 = load i32* %i2412
  %_lhs2465 = load i32* %mid_slot2405
  %bop2466 = icmp sle i32 %_lhs2464, %_lhs2465
  br i1 %bop2466, label %__body1027, label %__post1026

__fresh1043:
  br label %__body1027

__body1027:
  %_lhs2467 = load i32* %k2414
  %size_ptr2469 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2469, i32 %_lhs2467 )
  %index_ptr2468 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 1, i32 %_lhs2467
  %_lhs2470 = load i32* %i2412
  %size_ptr2472 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2472, i32 %_lhs2470 )
  %index_ptr2471 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2470
  %_lhs2473 = load { i32, [ 0 x i32 ] }** %a_slot2411
  store { i32, [ 0 x i32 ] }* %_lhs2473, { i32, [ 0 x i32 ] }** %c2421
  %_lhs2474 = load i32* %k2414
  %bop2475 = add i32 %_lhs2474, 1
  store i32 %bop2475, i32* %k2414
  %_lhs2476 = load i32* %i2412
  %bop2477 = add i32 %_lhs2476, 1
  store i32 %bop2477, i32* %i2412
  br label %__cond1028

__fresh1044:
  br label %__post1026

__post1026:
  br label %__cond1031

__cond1031:
  %_lhs2478 = load i32* %j2413
  %_lhs2479 = load i32* %high_slot2407
  %bop2480 = icmp sle i32 %_lhs2478, %_lhs2479
  br i1 %bop2480, label %__body1030, label %__post1029

__fresh1045:
  br label %__body1030

__body1030:
  %_lhs2481 = load i32* %k2414
  %size_ptr2483 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2483, i32 %_lhs2481 )
  %index_ptr2482 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 1, i32 %_lhs2481
  %_lhs2484 = load i32* %j2413
  %size_ptr2486 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2486, i32 %_lhs2484 )
  %index_ptr2485 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2484
  %_lhs2487 = load { i32, [ 0 x i32 ] }** %a_slot2411
  store { i32, [ 0 x i32 ] }* %_lhs2487, { i32, [ 0 x i32 ] }** %c2421
  %_lhs2488 = load i32* %k2414
  %bop2489 = add i32 %_lhs2488, 1
  store i32 %bop2489, i32* %k2414
  %_lhs2490 = load i32* %j2413
  %bop2491 = add i32 %_lhs2490, 1
  store i32 %bop2491, i32* %j2413
  br label %__cond1031

__fresh1046:
  br label %__post1029

__post1029:
  %_lhs2492 = load i32* %low_slot2409
  store i32 %_lhs2492, i32* %i2412
  br label %__cond1034

__cond1034:
  %_lhs2493 = load i32* %i2412
  %_lhs2494 = load i32* %k2414
  %bop2495 = icmp slt i32 %_lhs2493, %_lhs2494
  br i1 %bop2495, label %__body1033, label %__post1032

__fresh1047:
  br label %__body1033

__body1033:
  %_lhs2496 = load i32* %i2412
  %size_ptr2498 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2498, i32 %_lhs2496 )
  %index_ptr2497 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2411, i32 0, i32 1, i32 %_lhs2496
  %_lhs2499 = load i32* %i2412
  %size_ptr2501 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2501, i32 %_lhs2499 )
  %index_ptr2500 = getelementptr { i32, [ 0 x i32 ] }* %c2421, i32 0, i32 1, i32 %_lhs2499
  %_lhs2502 = load { i32, [ 0 x i32 ] }** %c2421
  store { i32, [ 0 x i32 ] }* %_lhs2502, { i32, [ 0 x i32 ] }** %a_slot2411
  %_lhs2503 = load i32* %i2412
  %bop2504 = add i32 %_lhs2503, 1
  store i32 %bop2504, i32* %i2412
  br label %__cond1034

__fresh1048:
  br label %__post1032

__post1032:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2383, i32 %low2381, i32 %high2379){

__fresh1014:
  %a_slot2384 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2383, { i32, [ 0 x i32 ] }** %a_slot2384
  %low_slot2382 = alloca i32
  store i32 %low2381, i32* %low_slot2382
  %high_slot2380 = alloca i32
  store i32 %high2379, i32* %high_slot2380
  %mid2385 = alloca i32
  store i32 0, i32* %mid2385
  %_lhs2386 = load i32* %low_slot2382
  %_lhs2387 = load i32* %high_slot2380
  %bop2388 = icmp slt i32 %_lhs2386, %_lhs2387
  br i1 %bop2388, label %__then1013, label %__else1012

__fresh1015:
  br label %__then1013

__then1013:
  %_lhs2389 = load i32* %low_slot2382
  %_lhs2390 = load i32* %high_slot2380
  %bop2391 = add i32 %_lhs2389, %_lhs2390
  %bop2392 = ashr i32 %bop2391, 1
  store i32 %bop2392, i32* %mid2385
  %_lhs2395 = load i32* %mid2385
  %_lhs2394 = load i32* %low_slot2382
  %_lhs2393 = load { i32, [ 0 x i32 ] }** %a_slot2384
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2393, i32 %_lhs2394, i32 %_lhs2395 )
  %_lhs2399 = load i32* %high_slot2380
  %_lhs2397 = load i32* %mid2385
  %bop2398 = add i32 %_lhs2397, 1
  %_lhs2396 = load { i32, [ 0 x i32 ] }** %a_slot2384
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2396, i32 %bop2398, i32 %_lhs2399 )
  %_lhs2403 = load i32* %mid2385
  %_lhs2402 = load i32* %high_slot2380
  %_lhs2401 = load i32* %low_slot2382
  %_lhs2400 = load { i32, [ 0 x i32 ] }** %a_slot2384
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2400, i32 %_lhs2401, i32 %_lhs2402, i32 %_lhs2403 )
  br label %__merge1011

__fresh1016:
  br label %__else1012

__else1012:
  br label %__merge1011

__merge1011:
  ret void
}


define i32 @program (i32 %argc2364, { i32, [ 0 x i8* ] }* %argv2362){

__fresh1010:
  %argc_slot2365 = alloca i32
  store i32 %argc2364, i32* %argc_slot2365
  %argv_slot2363 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2362, { i32, [ 0 x i8* ] }** %argv_slot2363
  %i2366 = alloca i32
  store i32 0, i32* %i2366
  %_lhs2367 = load { i32, [ 0 x i32 ] }** @a2361
  %ret2368 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2367 )
  call void @print_string( i8* %ret2368 )
  %_lhs2369 = load { i32, [ 0 x i32 ] }** @a2361
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2369, i32 0, i32 9 )
  %strval2371 = load i8** @_oat_string2370
  call void @print_string( i8* %strval2371 )
  %_lhs2372 = load { i32, [ 0 x i32 ] }** @a2361
  %ret2373 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2372 )
  call void @print_string( i8* %ret2373 )
  %strval2375 = load i8** @_oat_string2374
  call void @print_string( i8* %strval2375 )
  %_lhs2376 = load i32* %i2366
  ret i32 %_lhs2376
}


define void @a2361.init (){

__fresh1009:
  %array_ptr2349 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2350 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2349 to { i32, [ 0 x i32 ] }* 
  %index_ptr2351 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2351
  %index_ptr2352 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2352
  %index_ptr2353 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2353
  %index_ptr2354 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2354
  %index_ptr2355 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2355
  %index_ptr2356 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2356
  %index_ptr2357 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2357
  %index_ptr2358 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2358
  %index_ptr2359 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2359
  %index_ptr2360 = getelementptr { i32, [ 0 x i32 ] }* %array2350, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2360
  store { i32, [ 0 x i32 ] }* %array2350, { i32, [ 0 x i32 ] }** @a2361
  ret void
}


