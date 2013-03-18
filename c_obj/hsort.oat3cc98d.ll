declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2310 = global i32 8, align 4
@b2309 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2309.init
define void @oat_init (){

__fresh693:
  call void @b2309.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2412, i32 %i2410, i32 %n2408){

__fresh684:
  %a_slot2413 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2412, { i32, [ 0 x i32 ] }** %a_slot2413
  %i_slot2411 = alloca i32
  store i32 %i2410, i32* %i_slot2411
  %n_slot2409 = alloca i32
  store i32 %n2408, i32* %n_slot2409
  %_lhs2414 = load i32* %i_slot2411
  %index_ptr2415 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %_lhs2414
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2414 )
  %_lhs2416 = load { i32, [ 0 x i32 ] }** %a_slot2413
  %v2417 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2416, i32* %v2417
  %_lhs2418 = load i32* %i_slot2411
  %bop2419 = mul i32 %_lhs2418, 2
  %j2420 = alloca i32
  store i32 %bop2419, i32* %j2420
  %done2421 = alloca i32
  store i32 0, i32* %done2421
  br label %__cond674

__cond674:
  %_lhs2422 = load i32* %j2420
  %_lhs2423 = load i32* %n_slot2409
  %bop2424 = icmp sle i32 %_lhs2422, %_lhs2423
  %_lhs2425 = load i32* %done2421
  %bop2426 = icmp eq i32 %_lhs2425, 0
  %bop2427 = and i1 %bop2424, %bop2426
  br i1 %bop2427, label %__body673, label %__post672

__fresh685:
  br label %__body673

__body673:
  %_lhs2428 = load i32* %j2420
  %_lhs2429 = load i32* %n_slot2409
  %bop2430 = icmp slt i32 %_lhs2428, %_lhs2429
  %_lhs2431 = load i32* %j2420
  %index_ptr2432 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %_lhs2431
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2431 )
  %_lhs2433 = load { i32, [ 0 x i32 ] }** %a_slot2413
  %_lhs2434 = load i32* %j2420
  %bop2435 = add i32 %_lhs2434, 1
  %index_ptr2436 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %bop2435
  call void @oat_array_bounds_check( i32 0, i32 %bop2435 )
  %_lhs2437 = load { i32, [ 0 x i32 ] }** %a_slot2413
  %bop2438 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2433, %_lhs2437
  %bop2439 = and i1 %bop2430, %bop2438
  br i1 %bop2439, label %__then677, label %__else676

__fresh686:
  br label %__then677

__then677:
  %_lhs2440 = load i32* %j2420
  %bop2441 = add i32 %_lhs2440, 1
  store i32 %bop2441, i32* %j2420
  br label %__merge675

__fresh687:
  br label %__else676

__else676:
  br label %__merge675

__merge675:
  %_lhs2442 = load i32* %j2420
  %index_ptr2443 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %_lhs2442
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2442 )
  %_lhs2444 = load { i32, [ 0 x i32 ] }** %a_slot2413
  %_lhs2445 = load i32* %j2420
  %bop2446 = ashr i32 %_lhs2445, 1
  %index_ptr2447 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %bop2446
  call void @oat_array_bounds_check( i32 0, i32 %bop2446 )
  %_lhs2448 = load { i32, [ 0 x i32 ] }** %a_slot2413
  %bop2449 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2444, %_lhs2448
  br i1 %bop2449, label %__then680, label %__else679

__fresh688:
  br label %__then680

__then680:
  store i32 1, i32* %done2421
  br label %__merge678

__fresh689:
  br label %__else679

__else679:
  br label %__merge678

__merge678:
  %_lhs2450 = load i32* %done2421
  %bop2451 = icmp eq i32 %_lhs2450, 0
  br i1 %bop2451, label %__then683, label %__else682

__fresh690:
  br label %__then683

__then683:
  %_lhs2452 = load i32* %j2420
  %bop2453 = ashr i32 %_lhs2452, 1
  %index_ptr2454 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %bop2453
  call void @oat_array_bounds_check( i32 0, i32 %bop2453 )
  %_lhs2455 = load i32* %j2420
  %index_ptr2456 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %_lhs2455
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2455 )
  %_lhs2457 = load { i32, [ 0 x i32 ] }** %a_slot2413
  store { i32, [ 0 x i32 ] }* %_lhs2457, { i32, [ 0 x i32 ] }** %a_slot2413
  %_lhs2458 = load i32* %j2420
  %bop2459 = mul i32 %_lhs2458, 2
  store i32 %bop2459, i32* %j2420
  br label %__merge681

__fresh691:
  br label %__else682

__else682:
  br label %__merge681

__merge681:
  br label %__cond674

__fresh692:
  br label %__post672

__post672:
  %_lhs2460 = load i32* %j2420
  %bop2461 = ashr i32 %_lhs2460, 1
  %index_ptr2462 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2413, i32 %bop2461
  call void @oat_array_bounds_check( i32 0, i32 %bop2461 )
  %_lhs2463 = load i32* %v2417
  store i32 %_lhs2463, { i32, [ 0 x i32 ] }** %a_slot2413
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2382, i32 %i2380){

__fresh669:
  %a_slot2383 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2382, { i32, [ 0 x i32 ] }** %a_slot2383
  %i_slot2381 = alloca i32
  store i32 %i2380, i32* %i_slot2381
  %_lhs2384 = load i32* %i_slot2381
  %index_ptr2385 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2383, i32 %_lhs2384
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2384 )
  %_lhs2386 = load { i32, [ 0 x i32 ] }** %a_slot2383
  %v2387 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2386, i32* %v2387
  br label %__cond668

__cond668:
  %_lhs2388 = load i32* %i_slot2381
  %bop2389 = icmp sgt i32 %_lhs2388, 1
  %_lhs2390 = load i32* %i_slot2381
  %bop2391 = ashr i32 %_lhs2390, 1
  %index_ptr2392 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2383, i32 %bop2391
  call void @oat_array_bounds_check( i32 0, i32 %bop2391 )
  %_lhs2393 = load { i32, [ 0 x i32 ] }** %a_slot2383
  %_lhs2394 = load i32* %v2387
  %bop2395 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2393, %_lhs2394
  %bop2396 = and i1 %bop2389, %bop2395
  br i1 %bop2396, label %__body667, label %__post666

__fresh670:
  br label %__body667

__body667:
  %_lhs2397 = load i32* %i_slot2381
  %index_ptr2398 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2383, i32 %_lhs2397
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2397 )
  %_lhs2399 = load i32* %i_slot2381
  %bop2400 = ashr i32 %_lhs2399, 1
  %index_ptr2401 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2383, i32 %bop2400
  call void @oat_array_bounds_check( i32 0, i32 %bop2400 )
  %_lhs2402 = load { i32, [ 0 x i32 ] }** %a_slot2383
  store { i32, [ 0 x i32 ] }* %_lhs2402, { i32, [ 0 x i32 ] }** %a_slot2383
  %_lhs2403 = load i32* %i_slot2381
  %bop2404 = ashr i32 %_lhs2403, 1
  store i32 %bop2404, i32* %i_slot2381
  br label %__cond668

__fresh671:
  br label %__post666

__post666:
  %_lhs2405 = load i32* %i_slot2381
  %index_ptr2406 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2383, i32 %_lhs2405
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2405 )
  %_lhs2407 = load i32* %v2387
  store i32 %_lhs2407, { i32, [ 0 x i32 ] }** %a_slot2383
  ret void
}


define i32 @program (i32 %argc2313, { i32, [ 0 x i8* ] }* %argv2311){

__fresh654:
  %argc_slot2314 = alloca i32
  store i32 %argc2313, i32* %argc_slot2314
  %argv_slot2312 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2311, { i32, [ 0 x i8* ] }** %argv_slot2312
  %array_ptr2315 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2316 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2315 to { i32, [ 0 x i32 ] }* 
  %index_ptr2317 = getelementptr { i32, [ 0 x i32 ] }* %array2316, i32 0, i32 1, i32 0
  store i32 9, i32* %index_ptr2317
  store i32 0, i32* %index_ptr2318
  br label %__compare639

__fresh655:
  br label %__compare639

__compare639:
  %comparison_result2319 = icmp slt i32* %index_ptr2318, 9
  br i1 %comparison_result2319, label %__body640, label %__end641

__fresh656:
  br label %__body640

__body640:
  store i32* %index_ptr2318, i32* %i2320
  %index_ptr2318 = add i32* %index_ptr2318, 1
  br label %__compare639

__fresh657:
  br label %__end641

__end641:
  %a2321 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2316, { i32, [ 0 x i32 ] }** %a2321
  %i2322 = alloca i32
  store i32 0, i32* %i2322
  %j2323 = alloca i32
  store i32 0, i32* %j2323
  %k2324 = alloca i32
  store i32 0, i32* %k2324
  %r2325 = alloca i32
  store i32 0, i32* %r2325
  %index_ptr2326 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2327 = load { i32, [ 0 x i32 ] }** %a2321
  %check2328 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2327, i32* %check2328
  %index_ptr2329 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr2330 = getelementptr { i32, [ 0 x i32 ] }** @b2309, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2331 = load { i32, [ 0 x i32 ] }** @b2309
  store { i32, [ 0 x i32 ] }* %_lhs2331, { i32, [ 0 x i32 ] }** %a2321
  store i32 1, i32* %i2322
  br label %__cond644

__cond644:
  %_lhs2332 = load i32* %i2322
  %_lhs2333 = load i32* @n2310
  %bop2334 = icmp sle i32 %_lhs2332, %_lhs2333
  br i1 %bop2334, label %__body643, label %__post642

__fresh658:
  br label %__body643

__body643:
  %_lhs2335 = load i32* %i2322
  %index_ptr2336 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 %_lhs2335
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2335 )
  %_lhs2337 = load i32* %i2322
  %index_ptr2338 = getelementptr { i32, [ 0 x i32 ] }** @b2309, i32 %_lhs2337
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2337 )
  %_lhs2339 = load { i32, [ 0 x i32 ] }** @b2309
  %unop2340 = sub i32 0, %_lhs2339
  store i32 %unop2340, { i32, [ 0 x i32 ] }** %a2321
  %_lhs2342 = load i32* %i2322
  %_lhs2341 = load { i32, [ 0 x i32 ] }** %a2321
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2341, i32 %_lhs2342 )
  %_lhs2343 = load i32* %i2322
  %bop2344 = add i32 %_lhs2343, 1
  store i32 %bop2344, i32* %i2322
  br label %__cond644

__fresh659:
  br label %__post642

__post642:
  %_lhs2345 = load i32* @n2310
  store i32 %_lhs2345, i32* %j2323
  store i32 1, i32* %i2322
  br label %__cond647

__cond647:
  %_lhs2346 = load i32* %i2322
  %_lhs2347 = load i32* %j2323
  %bop2348 = icmp sle i32 %_lhs2346, %_lhs2347
  br i1 %bop2348, label %__body646, label %__post645

__fresh660:
  br label %__body646

__body646:
  %temp2349 = alloca i32
  store i32 0, i32* %temp2349
  %index_ptr2350 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2351 = load { i32, [ 0 x i32 ] }** %a2321
  store { i32, [ 0 x i32 ] }* %_lhs2351, i32* %temp2349
  %index_ptr2352 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2353 = load i32* @n2310
  %index_ptr2354 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 %_lhs2353
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2353 )
  %_lhs2355 = load { i32, [ 0 x i32 ] }** %a2321
  store { i32, [ 0 x i32 ] }* %_lhs2355, { i32, [ 0 x i32 ] }** %a2321
  %_lhs2356 = load i32* @n2310
  %index_ptr2357 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 %_lhs2356
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2356 )
  %_lhs2358 = load i32* %temp2349
  store i32 %_lhs2358, { i32, [ 0 x i32 ] }** %a2321
  %_lhs2359 = load i32* @n2310
  %bop2360 = sub i32 %_lhs2359, 1
  store i32 %bop2360, i32* @n2310
  %_lhs2362 = load i32* @n2310
  %_lhs2361 = load { i32, [ 0 x i32 ] }** %a2321
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2361, i32 1, i32 %_lhs2362 )
  %_lhs2363 = load i32* %i2322
  %bop2364 = add i32 %_lhs2363, 1
  store i32 %bop2364, i32* %i2322
  br label %__cond647

__fresh661:
  br label %__post645

__post645:
  %_lhs2365 = load i32* %j2323
  store i32 %_lhs2365, i32* @n2310
  store i32 1, i32* %i2322
  br label %__cond650

__cond650:
  %_lhs2366 = load i32* %i2322
  %_lhs2367 = load i32* @n2310
  %bop2368 = icmp sle i32 %_lhs2366, %_lhs2367
  br i1 %bop2368, label %__body649, label %__post648

__fresh662:
  br label %__body649

__body649:
  %_lhs2369 = load i32* %i2322
  %index_ptr2370 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 %_lhs2369
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2369 )
  %_lhs2371 = load { i32, [ 0 x i32 ] }** %a2321
  %_lhs2372 = load i32* %check2328
  %bop2373 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2371, %_lhs2372
  br i1 %bop2373, label %__then653, label %__else652

__fresh663:
  br label %__then653

__then653:
  %_lhs2374 = load i32* %i2322
  %index_ptr2375 = getelementptr { i32, [ 0 x i32 ] }** %a2321, i32 %_lhs2374
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2374 )
  %_lhs2376 = load { i32, [ 0 x i32 ] }** %a2321
  store { i32, [ 0 x i32 ] }* %_lhs2376, i32* %check2328
  br label %__merge651

__fresh664:
  br label %__else652

__else652:
  store i32 1, i32* %r2325
  br label %__merge651

__merge651:
  %_lhs2377 = load i32* %i2322
  %bop2378 = add i32 %_lhs2377, 1
  store i32 %bop2378, i32* %i2322
  br label %__cond650

__fresh665:
  br label %__post648

__post648:
  %_lhs2379 = load i32* %r2325
  ret i32 %_lhs2379
}


define void @b2309.init (){

__fresh638:
  %array_ptr2290 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2291 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2290 to { i32, [ 0 x i32 ] }* 
  %index_ptr2292 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2292
  %unop2293 = sub i32 0, 110
  %index_ptr2294 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 1
  store i32 %unop2293, i32* %index_ptr2294
  %unop2295 = sub i32 0, 111
  %index_ptr2296 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 2
  store i32 %unop2295, i32* %index_ptr2296
  %unop2297 = sub i32 0, 109
  %index_ptr2298 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 3
  store i32 %unop2297, i32* %index_ptr2298
  %unop2299 = sub i32 0, 117
  %index_ptr2300 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 4
  store i32 %unop2299, i32* %index_ptr2300
  %unop2301 = sub i32 0, 119
  %index_ptr2302 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 5
  store i32 %unop2301, i32* %index_ptr2302
  %unop2303 = sub i32 0, 113
  %index_ptr2304 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 6
  store i32 %unop2303, i32* %index_ptr2304
  %unop2305 = sub i32 0, 120
  %index_ptr2306 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 7
  store i32 %unop2305, i32* %index_ptr2306
  %unop2307 = sub i32 0, 108
  %index_ptr2308 = getelementptr { i32, [ 0 x i32 ] }* %array2291, i32 0, i32 1, i32 8
  store i32 %unop2307, i32* %index_ptr2308
  store { i32, [ 0 x i32 ] }* %array2291, { i32, [ 0 x i32 ] }** @b2309
  ret void
}


