declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2301 = global i32 8, align 4
@b2300 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2300.init
define void @oat_init (){

__fresh899:
  call void @b2300.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2403, i32 %i2401, i32 %n2399){

__fresh890:
  %a_slot2404 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2403, { i32, [ 0 x i32 ] }** %a_slot2404
  %i_slot2402 = alloca i32
  store i32 %i2401, i32* %i_slot2402
  %n_slot2400 = alloca i32
  store i32 %n2399, i32* %n_slot2400
  %_lhs2405 = load i32* %i_slot2402
  %index_ptr2406 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %_lhs2405
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2405 )
  %_lhs2407 = load { i32, [ 0 x i32 ] }** %a_slot2404
  %v2408 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2407, i32* %v2408
  %_lhs2409 = load i32* %i_slot2402
  %bop2410 = mul i32 %_lhs2409, 2
  %j2411 = alloca i32
  store i32 %bop2410, i32* %j2411
  %done2412 = alloca i32
  store i32 0, i32* %done2412
  br label %__cond880

__cond880:
  %_lhs2413 = load i32* %j2411
  %_lhs2414 = load i32* %n_slot2400
  %bop2415 = icmp sle i32 %_lhs2413, %_lhs2414
  %_lhs2416 = load i32* %done2412
  %bop2417 = icmp eq i32 %_lhs2416, 0
  %bop2418 = and i1 %bop2415, %bop2417
  br i1 %bop2418, label %__body879, label %__post878

__fresh891:
  br label %__body879

__body879:
  %_lhs2419 = load i32* %j2411
  %_lhs2420 = load i32* %n_slot2400
  %bop2421 = icmp slt i32 %_lhs2419, %_lhs2420
  %_lhs2422 = load i32* %j2411
  %index_ptr2423 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %_lhs2422
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2422 )
  %_lhs2424 = load { i32, [ 0 x i32 ] }** %a_slot2404
  %_lhs2425 = load i32* %j2411
  %bop2426 = add i32 %_lhs2425, 1
  %index_ptr2427 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %bop2426
  call void @oat_array_bounds_check( i32 0, i32 %bop2426 )
  %_lhs2428 = load { i32, [ 0 x i32 ] }** %a_slot2404
  %bop2429 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2424, %_lhs2428
  %bop2430 = and i1 %bop2421, %bop2429
  br i1 %bop2430, label %__then883, label %__else882

__fresh892:
  br label %__then883

__then883:
  %_lhs2431 = load i32* %j2411
  %bop2432 = add i32 %_lhs2431, 1
  store i32 %bop2432, i32* %j2411
  br label %__merge881

__fresh893:
  br label %__else882

__else882:
  br label %__merge881

__merge881:
  %_lhs2433 = load i32* %j2411
  %index_ptr2434 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %_lhs2433
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2433 )
  %_lhs2435 = load { i32, [ 0 x i32 ] }** %a_slot2404
  %_lhs2436 = load i32* %j2411
  %bop2437 = ashr i32 %_lhs2436, 1
  %index_ptr2438 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %bop2437
  call void @oat_array_bounds_check( i32 0, i32 %bop2437 )
  %_lhs2439 = load { i32, [ 0 x i32 ] }** %a_slot2404
  %bop2440 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2435, %_lhs2439
  br i1 %bop2440, label %__then886, label %__else885

__fresh894:
  br label %__then886

__then886:
  store i32 1, i32* %done2412
  br label %__merge884

__fresh895:
  br label %__else885

__else885:
  br label %__merge884

__merge884:
  %_lhs2441 = load i32* %done2412
  %bop2442 = icmp eq i32 %_lhs2441, 0
  br i1 %bop2442, label %__then889, label %__else888

__fresh896:
  br label %__then889

__then889:
  %_lhs2443 = load i32* %j2411
  %bop2444 = ashr i32 %_lhs2443, 1
  %index_ptr2445 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %bop2444
  call void @oat_array_bounds_check( i32 0, i32 %bop2444 )
  %_lhs2446 = load i32* %j2411
  %index_ptr2447 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %_lhs2446
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2446 )
  %_lhs2448 = load { i32, [ 0 x i32 ] }** %a_slot2404
  store { i32, [ 0 x i32 ] }* %_lhs2448, { i32, [ 0 x i32 ] }** %a_slot2404
  %_lhs2449 = load i32* %j2411
  %bop2450 = mul i32 %_lhs2449, 2
  store i32 %bop2450, i32* %j2411
  br label %__merge887

__fresh897:
  br label %__else888

__else888:
  br label %__merge887

__merge887:
  br label %__cond880

__fresh898:
  br label %__post878

__post878:
  %_lhs2451 = load i32* %j2411
  %bop2452 = ashr i32 %_lhs2451, 1
  %index_ptr2453 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2404, i32 %bop2452
  call void @oat_array_bounds_check( i32 0, i32 %bop2452 )
  %_lhs2454 = load i32* %v2408
  store i32 %_lhs2454, { i32, [ 0 x i32 ] }** %a_slot2404
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2373, i32 %i2371){

__fresh875:
  %a_slot2374 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2373, { i32, [ 0 x i32 ] }** %a_slot2374
  %i_slot2372 = alloca i32
  store i32 %i2371, i32* %i_slot2372
  %_lhs2375 = load i32* %i_slot2372
  %index_ptr2376 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2374, i32 %_lhs2375
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2375 )
  %_lhs2377 = load { i32, [ 0 x i32 ] }** %a_slot2374
  %v2378 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2377, i32* %v2378
  br label %__cond874

__cond874:
  %_lhs2379 = load i32* %i_slot2372
  %bop2380 = icmp sgt i32 %_lhs2379, 1
  %_lhs2381 = load i32* %i_slot2372
  %bop2382 = ashr i32 %_lhs2381, 1
  %index_ptr2383 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2374, i32 %bop2382
  call void @oat_array_bounds_check( i32 0, i32 %bop2382 )
  %_lhs2384 = load { i32, [ 0 x i32 ] }** %a_slot2374
  %_lhs2385 = load i32* %v2378
  %bop2386 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2384, %_lhs2385
  %bop2387 = and i1 %bop2380, %bop2386
  br i1 %bop2387, label %__body873, label %__post872

__fresh876:
  br label %__body873

__body873:
  %_lhs2388 = load i32* %i_slot2372
  %index_ptr2389 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2374, i32 %_lhs2388
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2388 )
  %_lhs2390 = load i32* %i_slot2372
  %bop2391 = ashr i32 %_lhs2390, 1
  %index_ptr2392 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2374, i32 %bop2391
  call void @oat_array_bounds_check( i32 0, i32 %bop2391 )
  %_lhs2393 = load { i32, [ 0 x i32 ] }** %a_slot2374
  store { i32, [ 0 x i32 ] }* %_lhs2393, { i32, [ 0 x i32 ] }** %a_slot2374
  %_lhs2394 = load i32* %i_slot2372
  %bop2395 = ashr i32 %_lhs2394, 1
  store i32 %bop2395, i32* %i_slot2372
  br label %__cond874

__fresh877:
  br label %__post872

__post872:
  %_lhs2396 = load i32* %i_slot2372
  %index_ptr2397 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2374, i32 %_lhs2396
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2396 )
  %_lhs2398 = load i32* %v2378
  store i32 %_lhs2398, { i32, [ 0 x i32 ] }** %a_slot2374
  ret void
}


define i32 @program (i32 %argc2304, { i32, [ 0 x i8* ] }* %argv2302){

__fresh860:
  %argc_slot2305 = alloca i32
  store i32 %argc2304, i32* %argc_slot2305
  %argv_slot2303 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2302, { i32, [ 0 x i8* ] }** %argv_slot2303
  %array_ptr2306 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2307 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2306 to { i32, [ 0 x i32 ] }* 
  %index_ptr2308 = getelementptr { i32, [ 0 x i32 ] }* %array2307, i32 0, i32 1, i32 0
  store i32 9, i32* %index_ptr2308
  store i32 0, i32* %index_ptr2309
  br label %__compare845

__fresh861:
  br label %__compare845

__compare845:
  %comparison_result2310 = icmp slt i32* %index_ptr2309, 9
  br i1 %comparison_result2310, label %__body846, label %__end847

__fresh862:
  br label %__body846

__body846:
  store i32* %index_ptr2309, i32* %i2311
  %index_ptr2309 = add i32* %index_ptr2309, 1
  br label %__compare845

__fresh863:
  br label %__end847

__end847:
  %a2312 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array2307, { i32, [ 0 x i32 ] }** %a2312
  %i2313 = alloca i32
  store i32 0, i32* %i2313
  %j2314 = alloca i32
  store i32 0, i32* %j2314
  %k2315 = alloca i32
  store i32 0, i32* %k2315
  %r2316 = alloca i32
  store i32 0, i32* %r2316
  %index_ptr2317 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2318 = load { i32, [ 0 x i32 ] }** %a2312
  %check2319 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2318, i32* %check2319
  %index_ptr2320 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr2321 = getelementptr { i32, [ 0 x i32 ] }** @b2300, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2322 = load { i32, [ 0 x i32 ] }** @b2300
  store { i32, [ 0 x i32 ] }* %_lhs2322, { i32, [ 0 x i32 ] }** %a2312
  store i32 1, i32* %i2313
  br label %__cond850

__cond850:
  %_lhs2323 = load i32* %i2313
  %_lhs2324 = load i32* @n2301
  %bop2325 = icmp sle i32 %_lhs2323, %_lhs2324
  br i1 %bop2325, label %__body849, label %__post848

__fresh864:
  br label %__body849

__body849:
  %_lhs2326 = load i32* %i2313
  %index_ptr2327 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 %_lhs2326
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2326 )
  %_lhs2328 = load i32* %i2313
  %index_ptr2329 = getelementptr { i32, [ 0 x i32 ] }** @b2300, i32 %_lhs2328
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2328 )
  %_lhs2330 = load { i32, [ 0 x i32 ] }** @b2300
  %unop2331 = sub i32 0, %_lhs2330
  store i32 %unop2331, { i32, [ 0 x i32 ] }** %a2312
  %_lhs2333 = load i32* %i2313
  %_lhs2332 = load { i32, [ 0 x i32 ] }** %a2312
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2332, i32 %_lhs2333 )
  %_lhs2334 = load i32* %i2313
  %bop2335 = add i32 %_lhs2334, 1
  store i32 %bop2335, i32* %i2313
  br label %__cond850

__fresh865:
  br label %__post848

__post848:
  %_lhs2336 = load i32* @n2301
  store i32 %_lhs2336, i32* %j2314
  store i32 1, i32* %i2313
  br label %__cond853

__cond853:
  %_lhs2337 = load i32* %i2313
  %_lhs2338 = load i32* %j2314
  %bop2339 = icmp sle i32 %_lhs2337, %_lhs2338
  br i1 %bop2339, label %__body852, label %__post851

__fresh866:
  br label %__body852

__body852:
  %temp2340 = alloca i32
  store i32 0, i32* %temp2340
  %index_ptr2341 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2342 = load { i32, [ 0 x i32 ] }** %a2312
  store { i32, [ 0 x i32 ] }* %_lhs2342, i32* %temp2340
  %index_ptr2343 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2344 = load i32* @n2301
  %index_ptr2345 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 %_lhs2344
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2344 )
  %_lhs2346 = load { i32, [ 0 x i32 ] }** %a2312
  store { i32, [ 0 x i32 ] }* %_lhs2346, { i32, [ 0 x i32 ] }** %a2312
  %_lhs2347 = load i32* @n2301
  %index_ptr2348 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 %_lhs2347
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2347 )
  %_lhs2349 = load i32* %temp2340
  store i32 %_lhs2349, { i32, [ 0 x i32 ] }** %a2312
  %_lhs2350 = load i32* @n2301
  %bop2351 = sub i32 %_lhs2350, 1
  store i32 %bop2351, i32* @n2301
  %_lhs2353 = load i32* @n2301
  %_lhs2352 = load { i32, [ 0 x i32 ] }** %a2312
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2352, i32 1, i32 %_lhs2353 )
  %_lhs2354 = load i32* %i2313
  %bop2355 = add i32 %_lhs2354, 1
  store i32 %bop2355, i32* %i2313
  br label %__cond853

__fresh867:
  br label %__post851

__post851:
  %_lhs2356 = load i32* %j2314
  store i32 %_lhs2356, i32* @n2301
  store i32 1, i32* %i2313
  br label %__cond856

__cond856:
  %_lhs2357 = load i32* %i2313
  %_lhs2358 = load i32* @n2301
  %bop2359 = icmp sle i32 %_lhs2357, %_lhs2358
  br i1 %bop2359, label %__body855, label %__post854

__fresh868:
  br label %__body855

__body855:
  %_lhs2360 = load i32* %i2313
  %index_ptr2361 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 %_lhs2360
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2360 )
  %_lhs2362 = load { i32, [ 0 x i32 ] }** %a2312
  %_lhs2363 = load i32* %check2319
  %bop2364 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2362, %_lhs2363
  br i1 %bop2364, label %__then859, label %__else858

__fresh869:
  br label %__then859

__then859:
  %_lhs2365 = load i32* %i2313
  %index_ptr2366 = getelementptr { i32, [ 0 x i32 ] }** %a2312, i32 %_lhs2365
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2365 )
  %_lhs2367 = load { i32, [ 0 x i32 ] }** %a2312
  store { i32, [ 0 x i32 ] }* %_lhs2367, i32* %check2319
  br label %__merge857

__fresh870:
  br label %__else858

__else858:
  store i32 1, i32* %r2316
  br label %__merge857

__merge857:
  %_lhs2368 = load i32* %i2313
  %bop2369 = add i32 %_lhs2368, 1
  store i32 %bop2369, i32* %i2313
  br label %__cond856

__fresh871:
  br label %__post854

__post854:
  %_lhs2370 = load i32* %r2316
  ret i32 %_lhs2370
}


define void @b2300.init (){

__fresh844:
  %array_ptr2281 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2282 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2281 to { i32, [ 0 x i32 ] }* 
  %index_ptr2283 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2283
  %unop2284 = sub i32 0, 110
  %index_ptr2285 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 1
  store i32 %unop2284, i32* %index_ptr2285
  %unop2286 = sub i32 0, 111
  %index_ptr2287 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 2
  store i32 %unop2286, i32* %index_ptr2287
  %unop2288 = sub i32 0, 109
  %index_ptr2289 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 3
  store i32 %unop2288, i32* %index_ptr2289
  %unop2290 = sub i32 0, 117
  %index_ptr2291 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 4
  store i32 %unop2290, i32* %index_ptr2291
  %unop2292 = sub i32 0, 119
  %index_ptr2293 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 5
  store i32 %unop2292, i32* %index_ptr2293
  %unop2294 = sub i32 0, 113
  %index_ptr2295 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 6
  store i32 %unop2294, i32* %index_ptr2295
  %unop2296 = sub i32 0, 120
  %index_ptr2297 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 7
  store i32 %unop2296, i32* %index_ptr2297
  %unop2298 = sub i32 0, 108
  %index_ptr2299 = getelementptr { i32, [ 0 x i32 ] }* %array2282, i32 0, i32 1, i32 8
  store i32 %unop2298, i32* %index_ptr2299
  store { i32, [ 0 x i32 ] }* %array2282, { i32, [ 0 x i32 ] }** @b2300
  ret void
}


