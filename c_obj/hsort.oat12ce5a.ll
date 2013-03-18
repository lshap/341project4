declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@n2203 = global i32 8, align 4
@b2202 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by b2202.init
define void @oat_init (){

__fresh604:
  call void @b2202.init(  )
  ret void
}


define void @restoreHdown ({ i32, [ 0 x i32 ] }* %a2305, i32 %i2303, i32 %n2301){

__fresh595:
  %a_slot2306 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2305, { i32, [ 0 x i32 ] }** %a_slot2306
  %i_slot2304 = alloca i32
  store i32 %i2303, i32* %i_slot2304
  %n_slot2302 = alloca i32
  store i32 %n2301, i32* %n_slot2302
  %_lhs2307 = load i32* %i_slot2304
  %index_ptr2308 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %_lhs2307
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2307 )
  %_lhs2309 = load { i32, [ 0 x i32 ] }** %a_slot2306
  %v2310 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2309, i32* %v2310
  %_lhs2311 = load i32* %i_slot2304
  %bop2312 = mul i32 %_lhs2311, 2
  %j2313 = alloca i32
  store i32 %bop2312, i32* %j2313
  %done2314 = alloca i32
  store i32 0, i32* %done2314
  br label %__cond585

__cond585:
  %_lhs2315 = load i32* %j2313
  %_lhs2316 = load i32* %n_slot2302
  %bop2317 = icmp sle i32 %_lhs2315, %_lhs2316
  %_lhs2318 = load i32* %done2314
  %bop2319 = icmp eq i32 %_lhs2318, 0
  %bop2320 = and i1 %bop2317, %bop2319
  br i1 %bop2320, label %__body584, label %__post583

__fresh596:
  br label %__body584

__body584:
  %_lhs2321 = load i32* %j2313
  %_lhs2322 = load i32* %n_slot2302
  %bop2323 = icmp slt i32 %_lhs2321, %_lhs2322
  %_lhs2324 = load i32* %j2313
  %index_ptr2325 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %_lhs2324
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2324 )
  %_lhs2326 = load { i32, [ 0 x i32 ] }** %a_slot2306
  %_lhs2327 = load i32* %j2313
  %bop2328 = add i32 %_lhs2327, 1
  %index_ptr2329 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %bop2328
  call void @oat_array_bounds_check( i32 0, i32 %bop2328 )
  %_lhs2330 = load { i32, [ 0 x i32 ] }** %a_slot2306
  %bop2331 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2326, %_lhs2330
  %bop2332 = and i1 %bop2323, %bop2331
  br i1 %bop2332, label %__then588, label %__else587

__fresh597:
  br label %__then588

__then588:
  %_lhs2333 = load i32* %j2313
  %bop2334 = add i32 %_lhs2333, 1
  store i32 %bop2334, i32* %j2313
  br label %__merge586

__fresh598:
  br label %__else587

__else587:
  br label %__merge586

__merge586:
  %_lhs2335 = load i32* %j2313
  %index_ptr2336 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %_lhs2335
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2335 )
  %_lhs2337 = load { i32, [ 0 x i32 ] }** %a_slot2306
  %_lhs2338 = load i32* %j2313
  %bop2339 = ashr i32 %_lhs2338, 1
  %index_ptr2340 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %bop2339
  call void @oat_array_bounds_check( i32 0, i32 %bop2339 )
  %_lhs2341 = load { i32, [ 0 x i32 ] }** %a_slot2306
  %bop2342 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2337, %_lhs2341
  br i1 %bop2342, label %__then591, label %__else590

__fresh599:
  br label %__then591

__then591:
  store i32 1, i32* %done2314
  br label %__merge589

__fresh600:
  br label %__else590

__else590:
  br label %__merge589

__merge589:
  %_lhs2343 = load i32* %done2314
  %bop2344 = icmp eq i32 %_lhs2343, 0
  br i1 %bop2344, label %__then594, label %__else593

__fresh601:
  br label %__then594

__then594:
  %_lhs2345 = load i32* %j2313
  %bop2346 = ashr i32 %_lhs2345, 1
  %index_ptr2347 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %bop2346
  call void @oat_array_bounds_check( i32 0, i32 %bop2346 )
  %_lhs2348 = load i32* %j2313
  %index_ptr2349 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %_lhs2348
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2348 )
  %_lhs2350 = load { i32, [ 0 x i32 ] }** %a_slot2306
  store { i32, [ 0 x i32 ] }* %_lhs2350, { i32, [ 0 x i32 ] }** %a_slot2306
  %_lhs2351 = load i32* %j2313
  %bop2352 = mul i32 %_lhs2351, 2
  store i32 %bop2352, i32* %j2313
  br label %__merge592

__fresh602:
  br label %__else593

__else593:
  br label %__merge592

__merge592:
  br label %__cond585

__fresh603:
  br label %__post583

__post583:
  %_lhs2353 = load i32* %j2313
  %bop2354 = ashr i32 %_lhs2353, 1
  %index_ptr2355 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2306, i32 %bop2354
  call void @oat_array_bounds_check( i32 0, i32 %bop2354 )
  %_lhs2356 = load i32* %v2310
  store i32 %_lhs2356, { i32, [ 0 x i32 ] }** %a_slot2306
  ret void
}


define void @restoreHup ({ i32, [ 0 x i32 ] }* %a2275, i32 %i2273){

__fresh580:
  %a_slot2276 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2275, { i32, [ 0 x i32 ] }** %a_slot2276
  %i_slot2274 = alloca i32
  store i32 %i2273, i32* %i_slot2274
  %_lhs2277 = load i32* %i_slot2274
  %index_ptr2278 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2276, i32 %_lhs2277
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2277 )
  %_lhs2279 = load { i32, [ 0 x i32 ] }** %a_slot2276
  %v2280 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2279, i32* %v2280
  br label %__cond579

__cond579:
  %_lhs2281 = load i32* %i_slot2274
  %bop2282 = icmp sgt i32 %_lhs2281, 1
  %_lhs2283 = load i32* %i_slot2274
  %bop2284 = ashr i32 %_lhs2283, 1
  %index_ptr2285 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2276, i32 %bop2284
  call void @oat_array_bounds_check( i32 0, i32 %bop2284 )
  %_lhs2286 = load { i32, [ 0 x i32 ] }** %a_slot2276
  %_lhs2287 = load i32* %v2280
  %bop2288 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2286, %_lhs2287
  %bop2289 = and i1 %bop2282, %bop2288
  br i1 %bop2289, label %__body578, label %__post577

__fresh581:
  br label %__body578

__body578:
  %_lhs2290 = load i32* %i_slot2274
  %index_ptr2291 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2276, i32 %_lhs2290
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2290 )
  %_lhs2292 = load i32* %i_slot2274
  %bop2293 = ashr i32 %_lhs2292, 1
  %index_ptr2294 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2276, i32 %bop2293
  call void @oat_array_bounds_check( i32 0, i32 %bop2293 )
  %_lhs2295 = load { i32, [ 0 x i32 ] }** %a_slot2276
  store { i32, [ 0 x i32 ] }* %_lhs2295, { i32, [ 0 x i32 ] }** %a_slot2276
  %_lhs2296 = load i32* %i_slot2274
  %bop2297 = ashr i32 %_lhs2296, 1
  store i32 %bop2297, i32* %i_slot2274
  br label %__cond579

__fresh582:
  br label %__post577

__post577:
  %_lhs2298 = load i32* %i_slot2274
  %index_ptr2299 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2276, i32 %_lhs2298
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2298 )
  %_lhs2300 = load i32* %v2280
  store i32 %_lhs2300, { i32, [ 0 x i32 ] }** %a_slot2276
  ret void
}


define i32 @program (i32 %argc2206, { i32, [ 0 x i8* ] }* %argv2204){

__fresh565:
  %argc_slot2207 = alloca i32
  store i32 %argc2206, i32* %argc_slot2207
  %argv_slot2205 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2204, { i32, [ 0 x i8* ] }** %argv_slot2205
  %array_ptr2208 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2209 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2208 to { i32, [ 0 x i32 ] }* 
  %index_ptr2210 = getelementptr { i32, [ 0 x i32 ] }* %array2209, i32 0, i32 1, i32 0
  store i32 9, i32* %index_ptr2210
  store i32 0, i32* %index_ptr2211
  br label %__compare550

__fresh566:
  br label %__compare550

__compare550:
  %comparison_result2212 = icmp slt i32* %index_ptr2211, 9
  br i1 %comparison_result2212, label %__body551, label %__end552

__fresh567:
  br label %__body551

__body551:
  store i32* %index_ptr2211, i32 %i2213
  %index_ptr2211 = add i32* %index_ptr2211, 1
  br label %__compare550

__fresh568:
  br label %__end552

__end552:
  %a2214 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2209, { i32, [ 0 x i32 ] }** %a2214
  %i2215 = alloca i32
  store i32 0, i32* %i2215
  %j2216 = alloca i32
  store i32 0, i32* %j2216
  %k2217 = alloca i32
  store i32 0, i32* %k2217
  %r2218 = alloca i32
  store i32 0, i32* %r2218
  %index_ptr2219 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2220 = load { i32, [ 0 x i32 ] }** %a2214
  %check2221 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs2220, i32* %check2221
  %index_ptr2222 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %index_ptr2223 = getelementptr { i32, [ 0 x i32 ] }** @b2202, i32 0
  call void @oat_array_bounds_check( i32 0, i32 0 )
  %_lhs2224 = load { i32, [ 0 x i32 ] }** @b2202
  store { i32, [ 0 x i32 ] }* %_lhs2224, { i32, [ 0 x i32 ] }** %a2214
  store i32 1, i32* %i2215
  br label %__cond555

__cond555:
  %_lhs2225 = load i32* %i2215
  %_lhs2226 = load i32* @n2203
  %bop2227 = icmp sle i32 %_lhs2225, %_lhs2226
  br i1 %bop2227, label %__body554, label %__post553

__fresh569:
  br label %__body554

__body554:
  %_lhs2228 = load i32* %i2215
  %index_ptr2229 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 %_lhs2228
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2228 )
  %_lhs2230 = load i32* %i2215
  %index_ptr2231 = getelementptr { i32, [ 0 x i32 ] }** @b2202, i32 %_lhs2230
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2230 )
  %_lhs2232 = load { i32, [ 0 x i32 ] }** @b2202
  %unop2233 = sub i32 0, %_lhs2232
  store i32 %unop2233, { i32, [ 0 x i32 ] }** %a2214
  %_lhs2235 = load i32* %i2215
  %_lhs2234 = load { i32, [ 0 x i32 ] }** %a2214
  call void @restoreHup( { i32, [ 0 x i32 ] }* %_lhs2234, i32 %_lhs2235 )
  %_lhs2236 = load i32* %i2215
  %bop2237 = add i32 %_lhs2236, 1
  store i32 %bop2237, i32* %i2215
  br label %__cond555

__fresh570:
  br label %__post553

__post553:
  %_lhs2238 = load i32* @n2203
  store i32 %_lhs2238, i32* %j2216
  store i32 1, i32* %i2215
  br label %__cond558

__cond558:
  %_lhs2239 = load i32* %i2215
  %_lhs2240 = load i32* %j2216
  %bop2241 = icmp sle i32 %_lhs2239, %_lhs2240
  br i1 %bop2241, label %__body557, label %__post556

__fresh571:
  br label %__body557

__body557:
  %temp2242 = alloca i32
  store i32 0, i32* %temp2242
  %index_ptr2243 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2244 = load { i32, [ 0 x i32 ] }** %a2214
  store { i32, [ 0 x i32 ] }* %_lhs2244, i32* %temp2242
  %index_ptr2245 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 1
  call void @oat_array_bounds_check( i32 0, i32 1 )
  %_lhs2246 = load i32* @n2203
  %index_ptr2247 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 %_lhs2246
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2246 )
  %_lhs2248 = load { i32, [ 0 x i32 ] }** %a2214
  store { i32, [ 0 x i32 ] }* %_lhs2248, { i32, [ 0 x i32 ] }** %a2214
  %_lhs2249 = load i32* @n2203
  %index_ptr2250 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 %_lhs2249
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2249 )
  %_lhs2251 = load i32* %temp2242
  store i32 %_lhs2251, { i32, [ 0 x i32 ] }** %a2214
  %_lhs2252 = load i32* @n2203
  %bop2253 = sub i32 %_lhs2252, 1
  store i32 %bop2253, i32* @n2203
  %_lhs2255 = load i32* @n2203
  %_lhs2254 = load { i32, [ 0 x i32 ] }** %a2214
  call void @restoreHdown( { i32, [ 0 x i32 ] }* %_lhs2254, i32 1, i32 %_lhs2255 )
  %_lhs2256 = load i32* %i2215
  %bop2257 = add i32 %_lhs2256, 1
  store i32 %bop2257, i32* %i2215
  br label %__cond558

__fresh572:
  br label %__post556

__post556:
  %_lhs2258 = load i32* %j2216
  store i32 %_lhs2258, i32* @n2203
  store i32 1, i32* %i2215
  br label %__cond561

__cond561:
  %_lhs2259 = load i32* %i2215
  %_lhs2260 = load i32* @n2203
  %bop2261 = icmp sle i32 %_lhs2259, %_lhs2260
  br i1 %bop2261, label %__body560, label %__post559

__fresh573:
  br label %__body560

__body560:
  %_lhs2262 = load i32* %i2215
  %index_ptr2263 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 %_lhs2262
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2262 )
  %_lhs2264 = load { i32, [ 0 x i32 ] }** %a2214
  %_lhs2265 = load i32* %check2221
  %bop2266 = icmp sge { i32, [ 0 x i32 ] }* %_lhs2264, %_lhs2265
  br i1 %bop2266, label %__then564, label %__else563

__fresh574:
  br label %__then564

__then564:
  %_lhs2267 = load i32* %i2215
  %index_ptr2268 = getelementptr { i32, [ 0 x i32 ] }** %a2214, i32 %_lhs2267
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2267 )
  %_lhs2269 = load { i32, [ 0 x i32 ] }** %a2214
  store { i32, [ 0 x i32 ] }* %_lhs2269, i32* %check2221
  br label %__merge562

__fresh575:
  br label %__else563

__else563:
  store i32 1, i32* %r2218
  br label %__merge562

__merge562:
  %_lhs2270 = load i32* %i2215
  %bop2271 = add i32 %_lhs2270, 1
  store i32 %bop2271, i32* %i2215
  br label %__cond561

__fresh576:
  br label %__post559

__post559:
  %_lhs2272 = load i32* %r2218
  ret i32 %_lhs2272
}


define void @b2202.init (){

__fresh549:
  %array_ptr2183 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array2184 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2183 to { i32, [ 0 x i32 ] }* 
  %index_ptr2185 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 0
  store i32 108, i32* %index_ptr2185
  %unop2186 = sub i32 0, 110
  %index_ptr2187 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 1
  store i32 %unop2186, i32* %index_ptr2187
  %unop2188 = sub i32 0, 111
  %index_ptr2189 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 2
  store i32 %unop2188, i32* %index_ptr2189
  %unop2190 = sub i32 0, 109
  %index_ptr2191 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 3
  store i32 %unop2190, i32* %index_ptr2191
  %unop2192 = sub i32 0, 117
  %index_ptr2193 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 4
  store i32 %unop2192, i32* %index_ptr2193
  %unop2194 = sub i32 0, 119
  %index_ptr2195 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 5
  store i32 %unop2194, i32* %index_ptr2195
  %unop2196 = sub i32 0, 113
  %index_ptr2197 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 6
  store i32 %unop2196, i32* %index_ptr2197
  %unop2198 = sub i32 0, 120
  %index_ptr2199 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 7
  store i32 %unop2198, i32* %index_ptr2199
  %unop2200 = sub i32 0, 108
  %index_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %array2184, i32 0, i32 1, i32 8
  store i32 %unop2200, i32* %index_ptr2201
  store { i32, [ 0 x i32 ] }* %array2184, { i32, [ 0 x i32 ] }** @b2202
  ret void
}


