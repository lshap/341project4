declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2218.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2218 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2218.str., i32 0, i32 0), align 4
@_oat_string2214.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2214 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2214.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh815:
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2254, i32 %low2252, i32 %high2250, i32 %mid2248){

__fresh801:
  %a_slot2255 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2254, { i32, [ 0 x i32 ] }** %a_slot2255
  %low_slot2253 = alloca i32
  store i32 %low2252, i32* %low_slot2253
  %high_slot2251 = alloca i32
  store i32 %high2250, i32* %high_slot2251
  %mid_slot2249 = alloca i32
  store i32 %mid2248, i32* %mid_slot2249
  %i2256 = alloca i32
  store i32 0, i32* %i2256
  %j2257 = alloca i32
  store i32 0, i32* %j2257
  %k2258 = alloca i32
  store i32 0, i32* %k2258
  %array_ptr2259 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2260 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2259 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2262
  br label %__compare783

__fresh802:
  br label %__compare783

__compare783:
  %comparison_result2263 = icmp slt i32* %index_ptr2262, 50
  br i1 %comparison_result2263, label %__body784, label %__end785

__fresh803:
  br label %__body784

__body784:
  store i32* %index_ptr2262, i32* %i2264
  %index_ptr2262 = add i32* %index_ptr2262, 1
  br label %__compare783

__fresh804:
  br label %__end785

__end785:
  %c2265 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2260, { i32, [ 0 x i32 ] }** %c2265
  %_lhs2266 = load i32* %low_slot2253
  store i32 %_lhs2266, i32* %i2256
  %_lhs2267 = load i32* %mid_slot2249
  %bop2268 = add i32 %_lhs2267, 1
  store i32 %bop2268, i32* %j2257
  %_lhs2269 = load i32* %low_slot2253
  store i32 %_lhs2269, i32* %k2258
  br label %__cond788

__cond788:
  %_lhs2270 = load i32* %i2256
  %_lhs2271 = load i32* %mid_slot2249
  %bop2272 = icmp sle i32 %_lhs2270, %_lhs2271
  %_lhs2273 = load i32* %j2257
  %_lhs2274 = load i32* %high_slot2251
  %bop2275 = icmp sle i32 %_lhs2273, %_lhs2274
  %bop2276 = and i1 %bop2272, %bop2275
  br i1 %bop2276, label %__body787, label %__post786

__fresh805:
  br label %__body787

__body787:
  %_lhs2277 = load i32* %i2256
  %size_ptr2279 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2279, i32 %_lhs2277 )
  %index_ptr2278 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2277
  %_lhs2280 = load { i32, [ 0 x i32 ] }** %a_slot2255
  %_lhs2281 = load i32* %j2257
  %size_ptr2283 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2283, i32 %_lhs2281 )
  %index_ptr2282 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2281
  %_lhs2284 = load { i32, [ 0 x i32 ] }** %a_slot2255
  %bop2285 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2280, %_lhs2284
  br i1 %bop2285, label %__then791, label %__else790

__fresh806:
  br label %__then791

__then791:
  %_lhs2286 = load i32* %k2258
  %size_ptr2288 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2288, i32 %_lhs2286 )
  %index_ptr2287 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 1, i32 %_lhs2286
  %_lhs2289 = load i32* %i2256
  %size_ptr2291 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2291, i32 %_lhs2289 )
  %index_ptr2290 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2289
  %_lhs2292 = load { i32, [ 0 x i32 ] }** %a_slot2255
  store { i32, [ 0 x i32 ] }* %_lhs2292, { i32, [ 0 x i32 ] }** %c2265
  %_lhs2293 = load i32* %k2258
  %bop2294 = add i32 %_lhs2293, 1
  store i32 %bop2294, i32* %k2258
  %_lhs2295 = load i32* %i2256
  %bop2296 = add i32 %_lhs2295, 1
  store i32 %bop2296, i32* %i2256
  br label %__merge789

__fresh807:
  br label %__else790

__else790:
  %_lhs2297 = load i32* %k2258
  %size_ptr2299 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2299, i32 %_lhs2297 )
  %index_ptr2298 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 1, i32 %_lhs2297
  %_lhs2300 = load i32* %j2257
  %size_ptr2302 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2302, i32 %_lhs2300 )
  %index_ptr2301 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2300
  %_lhs2303 = load { i32, [ 0 x i32 ] }** %a_slot2255
  store { i32, [ 0 x i32 ] }* %_lhs2303, { i32, [ 0 x i32 ] }** %c2265
  %_lhs2304 = load i32* %k2258
  %bop2305 = add i32 %_lhs2304, 1
  store i32 %bop2305, i32* %k2258
  %_lhs2306 = load i32* %j2257
  %bop2307 = add i32 %_lhs2306, 1
  store i32 %bop2307, i32* %j2257
  br label %__merge789

__merge789:
  br label %__cond788

__fresh808:
  br label %__post786

__post786:
  br label %__cond794

__cond794:
  %_lhs2308 = load i32* %i2256
  %_lhs2309 = load i32* %mid_slot2249
  %bop2310 = icmp sle i32 %_lhs2308, %_lhs2309
  br i1 %bop2310, label %__body793, label %__post792

__fresh809:
  br label %__body793

__body793:
  %_lhs2311 = load i32* %k2258
  %size_ptr2313 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2313, i32 %_lhs2311 )
  %index_ptr2312 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 1, i32 %_lhs2311
  %_lhs2314 = load i32* %i2256
  %size_ptr2316 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2316, i32 %_lhs2314 )
  %index_ptr2315 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2314
  %_lhs2317 = load { i32, [ 0 x i32 ] }** %a_slot2255
  store { i32, [ 0 x i32 ] }* %_lhs2317, { i32, [ 0 x i32 ] }** %c2265
  %_lhs2318 = load i32* %k2258
  %bop2319 = add i32 %_lhs2318, 1
  store i32 %bop2319, i32* %k2258
  %_lhs2320 = load i32* %i2256
  %bop2321 = add i32 %_lhs2320, 1
  store i32 %bop2321, i32* %i2256
  br label %__cond794

__fresh810:
  br label %__post792

__post792:
  br label %__cond797

__cond797:
  %_lhs2322 = load i32* %j2257
  %_lhs2323 = load i32* %high_slot2251
  %bop2324 = icmp sle i32 %_lhs2322, %_lhs2323
  br i1 %bop2324, label %__body796, label %__post795

__fresh811:
  br label %__body796

__body796:
  %_lhs2325 = load i32* %k2258
  %size_ptr2327 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2327, i32 %_lhs2325 )
  %index_ptr2326 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 1, i32 %_lhs2325
  %_lhs2328 = load i32* %j2257
  %size_ptr2330 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2330, i32 %_lhs2328 )
  %index_ptr2329 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2328
  %_lhs2331 = load { i32, [ 0 x i32 ] }** %a_slot2255
  store { i32, [ 0 x i32 ] }* %_lhs2331, { i32, [ 0 x i32 ] }** %c2265
  %_lhs2332 = load i32* %k2258
  %bop2333 = add i32 %_lhs2332, 1
  store i32 %bop2333, i32* %k2258
  %_lhs2334 = load i32* %j2257
  %bop2335 = add i32 %_lhs2334, 1
  store i32 %bop2335, i32* %j2257
  br label %__cond797

__fresh812:
  br label %__post795

__post795:
  %_lhs2336 = load i32* %low_slot2253
  store i32 %_lhs2336, i32* %i2256
  br label %__cond800

__cond800:
  %_lhs2337 = load i32* %i2256
  %_lhs2338 = load i32* %k2258
  %bop2339 = icmp slt i32 %_lhs2337, %_lhs2338
  br i1 %bop2339, label %__body799, label %__post798

__fresh813:
  br label %__body799

__body799:
  %_lhs2340 = load i32* %i2256
  %size_ptr2342 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2342, i32 %_lhs2340 )
  %index_ptr2341 = getelementptr { i32, [ 0 x i32 ] }* %a_slot2255, i32 0, i32 1, i32 %_lhs2340
  %_lhs2343 = load i32* %i2256
  %size_ptr2345 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2345, i32 %_lhs2343 )
  %index_ptr2344 = getelementptr { i32, [ 0 x i32 ] }* %c2265, i32 0, i32 1, i32 %_lhs2343
  %_lhs2346 = load { i32, [ 0 x i32 ] }** %c2265
  store { i32, [ 0 x i32 ] }* %_lhs2346, { i32, [ 0 x i32 ] }** %a_slot2255
  %_lhs2347 = load i32* %i2256
  %bop2348 = add i32 %_lhs2347, 1
  store i32 %bop2348, i32* %i2256
  br label %__cond800

__fresh814:
  br label %__post798

__post798:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2227, i32 %low2225, i32 %high2223){

__fresh780:
  %a_slot2228 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2227, { i32, [ 0 x i32 ] }** %a_slot2228
  %low_slot2226 = alloca i32
  store i32 %low2225, i32* %low_slot2226
  %high_slot2224 = alloca i32
  store i32 %high2223, i32* %high_slot2224
  %mid2229 = alloca i32
  store i32 0, i32* %mid2229
  %_lhs2230 = load i32* %low_slot2226
  %_lhs2231 = load i32* %high_slot2224
  %bop2232 = icmp slt i32 %_lhs2230, %_lhs2231
  br i1 %bop2232, label %__then779, label %__else778

__fresh781:
  br label %__then779

__then779:
  %_lhs2233 = load i32* %low_slot2226
  %_lhs2234 = load i32* %high_slot2224
  %bop2235 = add i32 %_lhs2233, %_lhs2234
  %bop2236 = ashr i32 %bop2235, 1
  store i32 %bop2236, i32* %mid2229
  %_lhs2239 = load i32* %mid2229
  %_lhs2238 = load i32* %low_slot2226
  %_lhs2237 = load { i32, [ 0 x i32 ] }** %a_slot2228
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2237, i32 %_lhs2238, i32 %_lhs2239 )
  %_lhs2243 = load i32* %high_slot2224
  %_lhs2241 = load i32* %mid2229
  %bop2242 = add i32 %_lhs2241, 1
  %_lhs2240 = load { i32, [ 0 x i32 ] }** %a_slot2228
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2240, i32 %bop2242, i32 %_lhs2243 )
  %_lhs2247 = load i32* %mid2229
  %_lhs2246 = load i32* %high_slot2224
  %_lhs2245 = load i32* %low_slot2226
  %_lhs2244 = load { i32, [ 0 x i32 ] }** %a_slot2228
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2244, i32 %_lhs2245, i32 %_lhs2246, i32 %_lhs2247 )
  br label %__merge777

__fresh782:
  br label %__else778

__else778:
  br label %__merge777

__merge777:
  ret void
}


define i32 @program (i32 %argc2195, { i32, [ 0 x i8* ] }* %argv2193){

__fresh776:
  %argc_slot2196 = alloca i32
  store i32 %argc2195, i32* %argc_slot2196
  %argv_slot2194 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2193, { i32, [ 0 x i8* ] }** %argv_slot2194
  %i2197 = alloca i32
  store i32 0, i32* %i2197
  %array_ptr2198 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2199 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2198 to { i32, [ 0 x i32 ] }* 
  %index_ptr2200 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2200
  %index_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2201
  %index_ptr2202 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2202
  %index_ptr2203 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2203
  %index_ptr2204 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2204
  %index_ptr2205 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2205
  %index_ptr2206 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2206
  %index_ptr2207 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2207
  %index_ptr2208 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2208
  %index_ptr2209 = getelementptr { i32, [ 0 x i32 ] }* %array2199, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2209
  %a2210 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2199, { i32, [ 0 x i32 ] }** %a2210
  %_lhs2211 = load { i32, [ 0 x i32 ] }** %a2210
  %ret2212 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2211 )
  call void @print_string( i8* %ret2212 )
  %_lhs2213 = load { i32, [ 0 x i32 ] }** %a2210
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2213, i32 0, i32 9 )
  %strval2215 = load i8** @_oat_string2214
  call void @print_string( i8* %strval2215 )
  %_lhs2216 = load { i32, [ 0 x i32 ] }** %a2210
  %ret2217 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2216 )
  call void @print_string( i8* %ret2217 )
  %strval2219 = load i8** @_oat_string2218
  call void @print_string( i8* %strval2219 )
  %_lhs2220 = load i32* %i2197
  ret i32 %_lhs2220
}


