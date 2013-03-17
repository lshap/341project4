declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2284.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string2284 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2284.str., i32 0, i32 0), align 4
@_oat_string2280.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2280 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2280.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh389:
  ret void
}


define void @prnNx4 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2264, i32 %n2262){

__fresh384:
  %ar_slot2265 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %ar2264, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2265
  %n_slot2263 = alloca i32
  store i32 %n2262, i32* %n_slot2263
  %i2266 = alloca i32
  store i32 0, i32* %i2266
  br label %__cond380

__cond380:
  %_lhs2267 = load i32* %i2266
  %_lhs2268 = load i32* %n_slot2263
  %bop2269 = icmp slt i32 %_lhs2267, %_lhs2268
  br i1 %bop2269, label %__body379, label %__post378

__fresh385:
  br label %__body379

__body379:
  %j2270 = alloca i32
  store i32 0, i32* %j2270
  br label %__cond383

__cond383:
  %_lhs2271 = load i32* %j2270
  %bop2272 = icmp slt i32 %_lhs2271, 4
  br i1 %bop2272, label %__body382, label %__post381

__fresh386:
  br label %__body382

__body382:
  %_lhs2273 = load i32* %j2270
  %_lhs2274 = load i32* %i2266
  %index_ptr2275 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2265, i32 %_lhs2274
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2274 )
  %index_ptr2277 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2265, i32 %_lhs2273
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2273 )
  %_lhs2279 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %ar_slot2265
  call void @print_int( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2279 )
  %strval2281 = load i8** @_oat_string2280
  call void @print_string( i8* %strval2281 )
  %_lhs2282 = load i32* %j2270
  %bop2283 = add i32 %_lhs2282, 1
  store i32 %bop2283, i32* %j2270
  br label %__cond383

__fresh387:
  br label %__post381

__post381:
  %strval2285 = load i8** @_oat_string2284
  call void @print_string( i8* %strval2285 )
  %_lhs2286 = load i32* %i2266
  %bop2287 = add i32 %_lhs2286, 1
  store i32 %bop2287, i32* %i2266
  br label %__cond380

__fresh388:
  br label %__post378

__post378:
  ret void
}


define i32 @dot3 ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12236, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22234, i32 %row2232, i32 %col2230){

__fresh375:
  %a1_slot2237 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12236, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2237
  %a2_slot2235 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22234, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2235
  %row_slot2233 = alloca i32
  store i32 %row2232, i32* %row_slot2233
  %col_slot2231 = alloca i32
  store i32 %col2230, i32* %col_slot2231
  %sum2238 = alloca i32
  store i32 0, i32* %sum2238
  %k2239 = alloca i32
  store i32 0, i32* %k2239
  br label %__cond374

__cond374:
  %_lhs2240 = load i32* %k2239
  %bop2241 = icmp slt i32 %_lhs2240, 3
  br i1 %bop2241, label %__body373, label %__post372

__fresh376:
  br label %__body373

__body373:
  %_lhs2242 = load i32* %sum2238
  %_lhs2243 = load i32* %k2239
  %_lhs2244 = load i32* %row_slot2233
  %index_ptr2245 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2237, i32 %_lhs2244
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2244 )
  %index_ptr2247 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2237, i32 %_lhs2243
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2243 )
  %_lhs2249 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2237
  %_lhs2250 = load i32* %col_slot2231
  %_lhs2251 = load i32* %k2239
  %index_ptr2252 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2235, i32 %_lhs2251
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2251 )
  %index_ptr2254 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2235, i32 %_lhs2250
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2250 )
  %_lhs2256 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2235
  %bop2257 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2249, %_lhs2256
  %bop2258 = add i32 %_lhs2242, %bop2257
  store i32 %bop2258, i32* %sum2238
  %_lhs2259 = load i32* %k2239
  %bop2260 = add i32 %_lhs2259, 1
  store i32 %bop2260, i32* %k2239
  br label %__cond374

__fresh377:
  br label %__post372

__post372:
  %_lhs2261 = load i32* %sum2238
  ret i32 %_lhs2261
}


define void @matrix_MultAlt ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22205, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32203){

__fresh367:
  %a1_slot2208 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12207, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2208
  %a2_slot2206 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22205, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2206
  %a3_slot2204 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32203, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2204
  %i2209 = alloca i32
  store i32 0, i32* %i2209
  br label %__cond363

__cond363:
  %_lhs2210 = load i32* %i2209
  %bop2211 = icmp slt i32 %_lhs2210, 2
  br i1 %bop2211, label %__body362, label %__post361

__fresh368:
  br label %__body362

__body362:
  %j2212 = alloca i32
  store i32 0, i32* %j2212
  br label %__cond366

__cond366:
  %_lhs2213 = load i32* %j2212
  %bop2214 = icmp slt i32 %_lhs2213, 4
  br i1 %bop2214, label %__body365, label %__post364

__fresh369:
  br label %__body365

__body365:
  %_lhs2215 = load i32* %j2212
  %_lhs2216 = load i32* %i2209
  %index_ptr2217 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2204, i32 %_lhs2216
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2216 )
  %index_ptr2219 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2204, i32 %_lhs2215
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2215 )
  %_lhs2224 = load i32* %j2212
  %_lhs2223 = load i32* %i2209
  %_lhs2222 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2206
  %_lhs2221 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2208
  %ret2225 = call i32 @dot3 ( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2221, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2222, i32 %_lhs2223, i32 %_lhs2224 )
  store i32 %ret2225, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2204
  %_lhs2226 = load i32* %j2212
  %bop2227 = add i32 %_lhs2226, 1
  store i32 %bop2227, i32* %j2212
  br label %__cond366

__fresh370:
  br label %__post364

__post364:
  %_lhs2228 = load i32* %i2209
  %bop2229 = add i32 %_lhs2228, 1
  store i32 %bop2229, i32* %i2209
  br label %__cond363

__fresh371:
  br label %__post361

__post361:
  ret void
}


define void @matrix_Mult ({ i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12157, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22155, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32153){

__fresh354:
  %a1_slot2158 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a12157, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2158
  %a2_slot2156 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a22155, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2156
  %a3_slot2154 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a32153, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154
  %i2159 = alloca i32
  store i32 0, i32* %i2159
  br label %__cond347

__cond347:
  %_lhs2160 = load i32* %i2159
  %bop2161 = icmp slt i32 %_lhs2160, 2
  br i1 %bop2161, label %__body346, label %__post345

__fresh355:
  br label %__body346

__body346:
  %j2162 = alloca i32
  store i32 0, i32* %j2162
  br label %__cond350

__cond350:
  %_lhs2163 = load i32* %j2162
  %bop2164 = icmp slt i32 %_lhs2163, 4
  br i1 %bop2164, label %__body349, label %__post348

__fresh356:
  br label %__body349

__body349:
  %k2165 = alloca i32
  store i32 0, i32* %k2165
  br label %__cond353

__cond353:
  %_lhs2166 = load i32* %k2165
  %bop2167 = icmp slt i32 %_lhs2166, 3
  br i1 %bop2167, label %__body352, label %__post351

__fresh357:
  br label %__body352

__body352:
  %_lhs2168 = load i32* %j2162
  %_lhs2169 = load i32* %i2159
  %index_ptr2170 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154, i32 %_lhs2169
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2169 )
  %index_ptr2172 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154, i32 %_lhs2168
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2168 )
  %_lhs2174 = load i32* %j2162
  %_lhs2175 = load i32* %i2159
  %index_ptr2176 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154, i32 %_lhs2175
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2175 )
  %index_ptr2178 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154, i32 %_lhs2174
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2174 )
  %_lhs2180 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154
  %_lhs2181 = load i32* %k2165
  %_lhs2182 = load i32* %i2159
  %index_ptr2183 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2158, i32 %_lhs2182
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2182 )
  %index_ptr2185 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2158, i32 %_lhs2181
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2181 )
  %_lhs2187 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a1_slot2158
  %_lhs2188 = load i32* %j2162
  %_lhs2189 = load i32* %k2165
  %index_ptr2190 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2156, i32 %_lhs2189
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2189 )
  %index_ptr2192 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2156, i32 %_lhs2188
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2188 )
  %_lhs2194 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2_slot2156
  %bop2195 = mul { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2187, %_lhs2194
  %bop2196 = add { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2180, %bop2195
  store i32 %bop2196, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a3_slot2154
  %_lhs2197 = load i32* %k2165
  %bop2198 = add i32 %_lhs2197, 1
  store i32 %bop2198, i32* %k2165
  br label %__cond353

__fresh358:
  br label %__post351

__post351:
  %_lhs2199 = load i32* %j2162
  %bop2200 = add i32 %_lhs2199, 1
  store i32 %bop2200, i32* %j2162
  br label %__cond350

__fresh359:
  br label %__post348

__post348:
  %_lhs2201 = load i32* %i2159
  %bop2202 = add i32 %_lhs2201, 1
  store i32 %bop2202, i32* %i2159
  br label %__cond347

__fresh360:
  br label %__post345

__post345:
  ret void
}


define i32 @program (i32 %argc2087, { i32, [ 0 x i8* ] }* %argv2085){

__fresh344:
  %argc_slot2088 = alloca i32
  store i32 %argc2087, i32* %argc_slot2088
  %argv_slot2086 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2085, { i32, [ 0 x i8* ] }** %argv_slot2086
  %array_ptr2089 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2090 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2089 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2091 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2092 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2091 to { i32, [ 0 x i32 ] }* 
  %index_ptr2093 = getelementptr { i32, [ 0 x i32 ] }* %array2092, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2093
  %index_ptr2094 = getelementptr { i32, [ 0 x i32 ] }* %array2092, i32 0, i32 1, i32 1
  store i32 3, i32* %index_ptr2094
  %index_ptr2095 = getelementptr { i32, [ 0 x i32 ] }* %array2092, i32 0, i32 1, i32 2
  store i32 4, i32* %index_ptr2095
  %index_ptr2096 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2090, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2092, { i32, [ 0 x i32 ] }** %index_ptr2096
  %array_ptr2097 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2098 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2097 to { i32, [ 0 x i32 ] }* 
  %index_ptr2099 = getelementptr { i32, [ 0 x i32 ] }* %array2098, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2099
  %index_ptr2100 = getelementptr { i32, [ 0 x i32 ] }* %array2098, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2100
  %index_ptr2101 = getelementptr { i32, [ 0 x i32 ] }* %array2098, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2101
  %index_ptr2102 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2090, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2098, { i32, [ 0 x i32 ] }** %index_ptr2102
  %a2103 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2090, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2103
  %array_ptr2104 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array2105 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2104 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2106 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2107 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2106 to { i32, [ 0 x i32 ] }* 
  %index_ptr2108 = getelementptr { i32, [ 0 x i32 ] }* %array2107, i32 0, i32 1, i32 0
  store i32 1, i32* %index_ptr2108
  %index_ptr2109 = getelementptr { i32, [ 0 x i32 ] }* %array2107, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2109
  %index_ptr2110 = getelementptr { i32, [ 0 x i32 ] }* %array2107, i32 0, i32 1, i32 2
  store i32 3, i32* %index_ptr2110
  %index_ptr2111 = getelementptr { i32, [ 0 x i32 ] }* %array2107, i32 0, i32 1, i32 3
  store i32 1, i32* %index_ptr2111
  %index_ptr2112 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2105, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2107, { i32, [ 0 x i32 ] }** %index_ptr2112
  %array_ptr2113 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2114 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2113 to { i32, [ 0 x i32 ] }* 
  %index_ptr2115 = getelementptr { i32, [ 0 x i32 ] }* %array2114, i32 0, i32 1, i32 0
  store i32 2, i32* %index_ptr2115
  %index_ptr2116 = getelementptr { i32, [ 0 x i32 ] }* %array2114, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2116
  %index_ptr2117 = getelementptr { i32, [ 0 x i32 ] }* %array2114, i32 0, i32 1, i32 2
  store i32 2, i32* %index_ptr2117
  %index_ptr2118 = getelementptr { i32, [ 0 x i32 ] }* %array2114, i32 0, i32 1, i32 3
  store i32 2, i32* %index_ptr2118
  %index_ptr2119 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2105, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2114, { i32, [ 0 x i32 ] }** %index_ptr2119
  %array_ptr2120 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2121 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2120 to { i32, [ 0 x i32 ] }* 
  %index_ptr2122 = getelementptr { i32, [ 0 x i32 ] }* %array2121, i32 0, i32 1, i32 0
  store i32 3, i32* %index_ptr2122
  %index_ptr2123 = getelementptr { i32, [ 0 x i32 ] }* %array2121, i32 0, i32 1, i32 1
  store i32 2, i32* %index_ptr2123
  %index_ptr2124 = getelementptr { i32, [ 0 x i32 ] }* %array2121, i32 0, i32 1, i32 2
  store i32 1, i32* %index_ptr2124
  %index_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %array2121, i32 0, i32 1, i32 3
  store i32 4, i32* %index_ptr2125
  %index_ptr2126 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2105, i32 0, i32 1, i32 2
  store { i32, [ 0 x i32 ] }* %array2121, { i32, [ 0 x i32 ] }** %index_ptr2126
  %b2127 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2105, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2127
  %array_ptr2128 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 2 )
  %array2129 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2128 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  %array_ptr2130 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2131 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2130 to { i32, [ 0 x i32 ] }* 
  %index_ptr2132 = getelementptr { i32, [ 0 x i32 ] }* %array2131, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2132
  %index_ptr2133 = getelementptr { i32, [ 0 x i32 ] }* %array2131, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2133
  %index_ptr2134 = getelementptr { i32, [ 0 x i32 ] }* %array2131, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2134
  %index_ptr2135 = getelementptr { i32, [ 0 x i32 ] }* %array2131, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2135
  %index_ptr2136 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2129, i32 0, i32 1, i32 0
  store { i32, [ 0 x i32 ] }* %array2131, { i32, [ 0 x i32 ] }** %index_ptr2136
  %array_ptr2137 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 4 )
  %array2138 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2137 to { i32, [ 0 x i32 ] }* 
  %index_ptr2139 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 0
  store i32 0, i32* %index_ptr2139
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 1
  store i32 0, i32* %index_ptr2140
  %index_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 2
  store i32 0, i32* %index_ptr2141
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 3
  store i32 0, i32* %index_ptr2142
  %index_ptr2143 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2129, i32 0, i32 1, i32 1
  store { i32, [ 0 x i32 ] }* %array2138, { i32, [ 0 x i32 ] }** %index_ptr2143
  %c2144 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array2129, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2144
  %_lhs2147 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2144
  %_lhs2146 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2127
  %_lhs2145 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2103
  call void @matrix_Mult( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2145, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2146, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2147 )
  %_lhs2148 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2144
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2148, i32 2 )
  %_lhs2151 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2144
  %_lhs2150 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %b2127
  %_lhs2149 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a2103
  call void @matrix_MultAlt( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2149, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2150, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2151 )
  %_lhs2152 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %c2144
  call void @prnNx4( { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs2152, i32 2 )
  ret i32 0
}


