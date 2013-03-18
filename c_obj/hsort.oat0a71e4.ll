declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2297 = global i32 8, align 4
@b2296 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2296.init
define void @oat_init (){

__fresh693:
  call void @b2296.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2399, i32 %i2397, i32 %n2395){

__fresh684:
  %a_slot2400 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2399, { i32, [ 0 x i32 ] }** %a_slot2400
  %i_slot2398 = alloca i32
  store i32 %i2397, i32* %i_slot2398
  %n_slot2396 = alloca i32
  store i32 %n2395, i32* %n_slot2396
  %_lhs2401 = load i32* %i_slot2398
  %index_ptr2402 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %_lhs2401
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2401 )
  %_lhs2403 = load { i32, [ 0 x i32 ] }** %a_slot2400
  %v2404 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2403, i32* %v2404
  %_lhs2405 = load i32* %i_slot2398
  %bop2406 = mul i32 %_lhs2405, 2
  %j2407 = alloca i32
  store i32 %bop2406, i32* %j2407
  %done2408 = alloca i32
  store i32 0, i32* %done2408
  br label %__cond674

__cond674:
  %_lhs2409 = load i32* %j2407
  %_lhs2410 = load i32* %n_slot2396
  %bop2411 = icmp sle i32 %_lhs2409, %_lhs2410
  %_lhs2412 = load i32* %done2408
  %bop2413 = icmp eq i32 %_lhs2412, 0
  %bop2414 = and i1 %bop2411, %bop2413
  br i1 %bop2414, label %__body673, label %__post672

__fresh685:
  br label %__body673

__body673:
  %_lhs2415 = load i32* %j2407
  %_lhs2416 = load i32* %n_slot2396
  %bop2417 = icmp slt i32 %_lhs2415, %_lhs2416
  %_lhs2418 = load i32* %j2407
  %index_ptr2419 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %_lhs2418
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2418 )
  %_lhs2420 = load { i32, [ 0 x i32 ] }** %a_slot2400
  %_lhs2421 = load i32* %j2407
  %bop2422 = add i32 %_lhs2421, 1
  %index_ptr2423 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %bop2422
  call void @oat_array_bounds_check( i32 0, i32 %bop2422 )
  %_lhs2424 = load { i32, [ 0 x i32 ] }** %a_slot2400
  %bop2425 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2420, %_lhs2424
  %bop2426 = and i1 %bop2417, %bop2425
  br i1 %bop2426, label %__then677, label %__else676

__fresh686:
  br label %__then677

__then677:
  %_lhs2427 = load i32* %j2407
  %bop2428 = add i32 %_lhs2427, 1
  store i32 %bop2428, i32* %j2407
  br label %__merge675

__fresh687:
  br label %__else676

__else676:
  br label %__merge675

__merge675:
  %_lhs2429 = load i32* %j2407
  %index_ptr2430 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %_lhs2429
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2429 )
  %_lhs2431 = load { i32, [ 0 x i32 ] }** %a_slot2400
  %_lhs2432 = load i32* %j2407
  %bop2433 = ashr i32 %_lhs2432, 1
  %index_ptr2434 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %bop2433
  call void @oat_array_bounds_check( i32 0, i32 %bop2433 )
  %_lhs2435 = load { i32, [ 0 x i32 ] }** %a_slot2400
  %bop2436 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2431, %_lhs2435
  br i1 %bop2436, label %__then680, label %__else679

__fresh688:
  br label %__then680

__then680:
  store i32 1, i32* %done2408
  br label %__merge678

__fresh689:
  br label %__else679

__else679:
  br label %__merge678

__merge678:
  %_lhs2437 = load i32* %done2408
  %bop2438 = icmp eq i32 %_lhs2437, 0
  br i1 %bop2438, label %__then683, label %__else682

__fresh690:
  br label %__then683

__then683:
  %_lhs2439 = load i32* %j2407
  %bop2440 = ashr i32 %_lhs2439, 1
  %index_ptr2441 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %bop2440
  call void @oat_array_bounds_check( i32 0, i32 %bop2440 )
  %_lhs2442 = load i32* %j2407
  %index_ptr2443 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %_lhs2442
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2442 )
  %_lhs2444 = load { i32, [ 0 x i32 ] }** %a_slot2400
  store { i32, [ 0 x i32 ] }* %_lhs2444, { i32, [ 0 x i32 ] }** %a_slot2400
  %_lhs2445 = load i32* %j2407
  %bop2446 = mul i32 %_lhs2445, 2
  store i32 %bop2446, i32* %j2407
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
  %_lhs2447 = load i32* %j2407
  %bop2448 = ashr i32 %_lhs2447, 1
  %index_ptr2449 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2400, i32 %bop2448
  call void @oat_array_bounds_check( i32 0, i32 %bop2448 )
  %_lhs2450 = load i32* %v2404
  store i32 %_lhs2450, { i32, [ 0 x i32 ] }** %a_slot2400
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2369, i32 %i2367){

__fresh669:
  %a_slot2370 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2369, { i32, [ 0 x i32 ] }** %a_slot2370
  %i_slot2368 = alloca i32
  store i32 %i2367, i32* %i_slot2368
  %_lhs2371 = load i32* %i_slot2368
  %index_ptr2372 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2370, i32 %_lhs2371
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2371 )
  %_lhs2373 = load { i32, [ 0 x i32 ] }** %a_slot2370
  %v2374 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2373, i32* %v2374
  br label %__cond668

__cond668:
  %_lhs2375 = load i32* %i_slot2368
  %bop2376 = icmp sgt i32 %_lhs2375, 1
  %_lhs2377 = load i32* %i_slot2368
  %bop2378 = ashr i32 %_lhs2377, 1
  %index_ptr2379 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2370, i32 %bop2378
  call void @oat_array_bounds_check( i32 0, i32 %bop2378 )
  %_lhs2380 = load { i32, [ 0 x i32 ] }** %a_slot2370
  %_lhs2381 = load i32* %v2374
  %bop2382 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2380, %_lhs2381
  %bop2383 = and i1 %bop2376, %bop2382
  br i1 %bop2383, label %__body667, label %__post666

__fresh670:
  br label %__body667

__body667:
  %_lhs2384 = load i32* %i_slot2368
  %index_ptr2385 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2370, i32 %_lhs2384
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2384 )
  %_lhs2386 = load i32* %i_slot2368
  %bop2387 = ashr i32 %_lhs2386, 1
  %index_ptr2388 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2370, i32 %bop2387
  call void @oat_array_bounds_check( i32 0, i32 %bop2387 )
  %_lhs2389 = load { i32, [ 0 x i32 ] }** %a_slot2370
  store { i32, [ 0 x i32 ] }* %_lhs2389, { i32, [ 0 x i32 ] }** %a_slot2370
  %_lhs2390 = load i32* %i_slot2368
  %bop2391 = ashr i32 %_lhs2390, 1
  store i32 %bop2391, i32* %i_slot2368
  br label %__cond668

__fresh671:
  br label %__post666

__post666:
  %_lhs2392 = load i32* %i_slot2368
  %index_ptr2393 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2370, i32 %_lhs2392
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2392 )
  %_lhs2394 = load i32* %v2374
  store i32 %_lhs2394, { i32, [ 0 x i32 ] }** %a_slot2370
  ret void
}


define i32 @program (i32 %argc2300, { i32, [ 0 x i8* ] }* %argv2298){

__fresh654:
  %argc_slot2301 = alloca i32
  store i32 %argc2300, i32* %argc_slot2301
  %argv_slot2299 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2298, { i32, [ 0 x i8* ] }** %argv_slot2299
  %array_ptr2302 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2303 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2302 to { i32, [ 0 x i32 ] }* 
  %index_ptr2304 = getelementptr { i32, [ 0 x i32 ] }* %array2303, i32 0, i32 1, i32 0
  store i32 9, i32* %index_ptr2304
  store i32 0, i32* %index_ptr2305
  br label %__compare639

__fresh655:
  br label %__compare639

__compare639:
  %comparison_result2306 = icmp slt i32* %index_ptr2305, 9
  br i1 %comparison_result2306, label %__body640, label %__end641

__fresh656:
  br label %__body640

__body640:
  store i32* %index_ptr2305, i32 %i2307
  %index_ptr2305 = add i32* %index_ptr2305, 1
  br label %__compare639

__fresh657:
  br label %__end641

__end641:
  %a2308 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2303, { i32, [ 0 x i32 ] }** %a2308
  %i2309 = alloca i32
  store i32 0, i32* %i2309
  %j2310 = alloca i32
  store i32 0, i32* %j2310
  %k2311 = alloca i32
  store i32 0, i32* %k2311
  %r2312 = alloca i32
  store i32 0, i32* %r2312
  %index_ptr2313 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2314 = load { i32, [ 0 x i32 ] }** %a2308
  %check2315 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2314, i32* %check2315
  %index_ptr2316 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr2317 = getelementptr { i32, [ 0 x i32 ] }** @b2296, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2318 = load { i32, [ 0 x i32 ] }** @b2296
  store { i32, [ 0 x i32 ] }* %_lhs2318, { i32, [ 0 x i32 ] }** %a2308
  store i32 1, i32* %i2309
  br label %__cond644

__cond644:
  %_lhs2319 = load i32* %i2309
  %_lhs2320 = load i32* @n2297
  %bop2321 = icmp sle i32 %_lhs2319, %_lhs2320
  br i1 %bop2321, label %__body643, label %__post642

__fresh658:
  br label %__body643

__body643:
  %_lhs2322 = load i32* %i2309
  %index_ptr2323 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 %_lhs2322
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2322 )
  %_lhs2324 = load i32* %i2309
  %index_ptr2325 = getelementptr { i32, [ 0 x i32 ] }** @b2296, i32 %_lhs2324
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2324 )
  %_lhs2326 = load { i32, [ 0 x i32 ] }** @b2296
  %unop2327 = sub i32 0, %_lhs2326
  store i32 %unop2327, { i32, [ 0 x i32 ] }** %a2308
  %_lhs2329 = load i32* %i2309
  %_lhs2328 = load { i32, [ 0 x i32 ] }** %a2308
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2328, i32 %_lhs2329 )
  %_lhs2330 = load i32* %i2309
  %bop2331 = add i32 %_lhs2330, 1
  store i32 %bop2331, i32* %i2309
  br label %__cond644

__fresh659:
  br label %__post642

__post642:
  %_lhs2332 = load i32* @n2297
  store i32 %_lhs2332, i32* %j2310
  store i32 1, i32* %i2309
  br label %__cond647

__cond647:
  %_lhs2333 = load i32* %i2309
  %_lhs2334 = load i32* %j2310
  %bop2335 = icmp sle i32 %_lhs2333, %_lhs2334
  br i1 %bop2335, label %__body646, label %__post645

__fresh660:
  br label %__body646

__body646:
  %temp2336 = alloca i32
  store i32 0, i32* %temp2336
  %index_ptr2337 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2338 = load { i32, [ 0 x i32 ] }** %a2308
  store { i32, [ 0 x i32 ] }* %_lhs2338, i32* %temp2336
  %index_ptr2339 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2340 = load i32* @n2297
  %index_ptr2341 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 %_lhs2340
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2340 )
  %_lhs2342 = load { i32, [ 0 x i32 ] }** %a2308
  store { i32, [ 0 x i32 ] }* %_lhs2342, { i32, [ 0 x i32 ] }** %a2308
  %_lhs2343 = load i32* @n2297
  %index_ptr2344 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 %_lhs2343
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2343 )
  %_lhs2345 = load i32* %temp2336
  store i32 %_lhs2345, { i32, [ 0 x i32 ] }** %a2308
  %_lhs2346 = load i32* @n2297
  %bop2347 = sub i32 %_lhs2346, 1
  store i32 %bop2347, i32* @n2297
  %_lhs2349 = load i32* @n2297
  %_lhs2348 = load { i32, [ 0 x i32 ] }** %a2308
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2348, i32 1, i32 %_lhs2349 )
  %_lhs2350 = load i32* %i2309
  %bop2351 = add i32 %_lhs2350, 1
  store i32 %bop2351, i32* %i2309
  br label %__cond647

__fresh661:
  br label %__post645

__post645:
  %_lhs2352 = load i32* %j2310
  store i32 %_lhs2352, i32* @n2297
  store i32 1, i32* %i2309
  br label %__cond650

__cond650:
  %_lhs2353 = load i32* %i2309
  %_lhs2354 = load i32* @n2297
  %bop2355 = icmp sle i32 %_lhs2353, %_lhs2354
  br i1 %bop2355, label %__body649, label %__post648

__fresh662:
  br label %__body649

__body649:
  %_lhs2356 = load i32* %i2309
  %index_ptr2357 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 %_lhs2356
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2356 )
  %_lhs2358 = load { i32, [ 0 x i32 ] }** %a2308
  %_lhs2359 = load i32* %check2315
  %bop2360 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2358, %_lhs2359
  br i1 %bop2360, label %__then653, label %__else652

__fresh663:
  br label %__then653

__then653:
  %_lhs2361 = load i32* %i2309
  %index_ptr2362 = getelementptr { i32, [ 0 x i32 ] }** %a2308, i32 %_lhs2361
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2361 )
  %_lhs2363 = load { i32, [ 0 x i32 ] }** %a2308
  store { i32, [ 0 x i32 ] }* %_lhs2363, i32* %check2315
  br label %__merge651

__fresh664:
  br label %__else652

__else652:
  store i32 1, i32* %r2312
  br label %__merge651

__merge651:
  %_lhs2364 = load i32* %i2309
  %bop2365 = add i32 %_lhs2364, 1
  store i32 %bop2365, i32* %i2309
  br label %__cond650

__fresh665:
  br label %__post648

__post648:
  %_lhs2366 = load i32* %r2312
  ret i32 %_lhs2366
}


define void @b2296.init (){

__fresh638:
  %array_ptr2277 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2278 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2277 to { i32, [ 0 x i32 ] }* 
  %index_ptr2279 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2279
  %unop2280 = sub i32 0, 110
  %index_ptr2281 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 1
  store i32 %unop2280, i32* %index_ptr2281
  %unop2282 = sub i32 0, 111
  %index_ptr2283 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 2
  store i32 %unop2282, i32* %index_ptr2283
  %unop2284 = sub i32 0, 109
  %index_ptr2285 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 3
  store i32 %unop2284, i32* %index_ptr2285
  %unop2286 = sub i32 0, 117
  %index_ptr2287 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 4
  store i32 %unop2286, i32* %index_ptr2287
  %unop2288 = sub i32 0, 119
  %index_ptr2289 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 5
  store i32 %unop2288, i32* %index_ptr2289
  %unop2290 = sub i32 0, 113
  %index_ptr2291 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 6
  store i32 %unop2290, i32* %index_ptr2291
  %unop2292 = sub i32 0, 120
  %index_ptr2293 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 7
  store i32 %unop2292, i32* %index_ptr2293
  %unop2294 = sub i32 0, 108
  %index_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %array2278, i32 0, i32 1, i32 8
  store i32 %unop2294, i32* %index_ptr2295
  store { i32, [ 0 x i32 ] }* %array2278, { i32, [ 0 x i32 ] }** @b2296
  ret void
}


