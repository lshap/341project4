declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2171.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2171 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2171.str., i32 0, i32 0), align 4
@_oat_string2167.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2167 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2167.str., i32 0, i32 0), align 4
@a2158 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2158.init
define void @oat_init (){

__fresh843:
  call void @a2158.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2207, i32 %low2205, i32 %high2203, i32 %mid2201){

__fresh829:
  %a_slot2208 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2207, { i32, [ 0 x i32 ] }** %a_slot2208
  %low_slot2206 = alloca i32
  store i32 %low2205, i32* %low_slot2206
  %high_slot2204 = alloca i32
  store i32 %high2203, i32* %high_slot2204
  %mid_slot2202 = alloca i32
  store i32 %mid2201, i32* %mid_slot2202
  %i2209 = alloca i32
  store i32 0, i32* %i2209
  %j2210 = alloca i32
  store i32 0, i32* %j2210
  %k2211 = alloca i32
  store i32 0, i32* %k2211
  %array_ptr2212 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2213 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2212 to { i32, [ 0 x i32 ] }* 
  %index_ptr2214 = getelementptr { i32, [ 0 x i32 ] }* %array2213, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2214
  store i32 0, i32* %index_ptr2215
  br label %__compare811

__fresh830:
  br label %__compare811

__compare811:
  %comparison_result2216 = icmp slt i32* %index_ptr2215, 50
  br i1 %comparison_result2216, label %__body812, label %__end813

__fresh831:
  br label %__body812

__body812:
  store i32* %index_ptr2215, i32* %i2217
  %index_ptr2215 = add i32* %index_ptr2215, 1
  br label %__compare811

__fresh832:
  br label %__end813

__end813:
  %c2218 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2213, { i32, [ 0 x i32 ] }** %c2218
  %_lhs2219 = load i32* %low_slot2206
  store i32 %_lhs2219, i32* %i2209
  %_lhs2220 = load i32* %mid_slot2202
  %bop2221 = add i32 %_lhs2220, 1
  store i32 %bop2221, i32* %j2210
  %_lhs2222 = load i32* %low_slot2206
  store i32 %_lhs2222, i32* %k2211
  br label %__cond816

__cond816:
  %_lhs2223 = load i32* %i2209
  %_lhs2224 = load i32* %mid_slot2202
  %bop2225 = icmp sle i32 %_lhs2223, %_lhs2224
  %_lhs2226 = load i32* %j2210
  %_lhs2227 = load i32* %high_slot2204
  %bop2228 = icmp sle i32 %_lhs2226, %_lhs2227
  %bop2229 = and i1 %bop2225, %bop2228
  br i1 %bop2229, label %__body815, label %__post814

__fresh833:
  br label %__body815

__body815:
  %_lhs2230 = load i32* %i2209
  %index_ptr2231 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2230
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2230 )
  %_lhs2232 = load { i32, [ 0 x i32 ] }** %a_slot2208
  %_lhs2233 = load i32* %j2210
  %index_ptr2234 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2233
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2233 )
  %_lhs2235 = load { i32, [ 0 x i32 ] }** %a_slot2208
  %bop2236 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2232, %_lhs2235
  br i1 %bop2236, label %__then819, label %__else818

__fresh834:
  br label %__then819

__then819:
  %_lhs2237 = load i32* %k2211
  %index_ptr2238 = getelementptr { i32, [ 0 x i32 ] }** %c2218, i32 %_lhs2237
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2237 )
  %_lhs2239 = load i32* %i2209
  %index_ptr2240 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2239
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2239 )
  %_lhs2241 = load { i32, [ 0 x i32 ] }** %a_slot2208
  store { i32, [ 0 x i32 ] }* %_lhs2241, { i32, [ 0 x i32 ] }** %c2218
  %_lhs2242 = load i32* %k2211
  %bop2243 = add i32 %_lhs2242, 1
  store i32 %bop2243, i32* %k2211
  %_lhs2244 = load i32* %i2209
  %bop2245 = add i32 %_lhs2244, 1
  store i32 %bop2245, i32* %i2209
  br label %__merge817

__fresh835:
  br label %__else818

__else818:
  %_lhs2246 = load i32* %k2211
  %index_ptr2247 = getelementptr { i32, [ 0 x i32 ] }** %c2218, i32 %_lhs2246
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2246 )
  %_lhs2248 = load i32* %j2210
  %index_ptr2249 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2248
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2248 )
  %_lhs2250 = load { i32, [ 0 x i32 ] }** %a_slot2208
  store { i32, [ 0 x i32 ] }* %_lhs2250, { i32, [ 0 x i32 ] }** %c2218
  %_lhs2251 = load i32* %k2211
  %bop2252 = add i32 %_lhs2251, 1
  store i32 %bop2252, i32* %k2211
  %_lhs2253 = load i32* %j2210
  %bop2254 = add i32 %_lhs2253, 1
  store i32 %bop2254, i32* %j2210
  br label %__merge817

__merge817:
  br label %__cond816

__fresh836:
  br label %__post814

__post814:
  br label %__cond822

__cond822:
  %_lhs2255 = load i32* %i2209
  %_lhs2256 = load i32* %mid_slot2202
  %bop2257 = icmp sle i32 %_lhs2255, %_lhs2256
  br i1 %bop2257, label %__body821, label %__post820

__fresh837:
  br label %__body821

__body821:
  %_lhs2258 = load i32* %k2211
  %index_ptr2259 = getelementptr { i32, [ 0 x i32 ] }** %c2218, i32 %_lhs2258
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2258 )
  %_lhs2260 = load i32* %i2209
  %index_ptr2261 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2260
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2260 )
  %_lhs2262 = load { i32, [ 0 x i32 ] }** %a_slot2208
  store { i32, [ 0 x i32 ] }* %_lhs2262, { i32, [ 0 x i32 ] }** %c2218
  %_lhs2263 = load i32* %k2211
  %bop2264 = add i32 %_lhs2263, 1
  store i32 %bop2264, i32* %k2211
  %_lhs2265 = load i32* %i2209
  %bop2266 = add i32 %_lhs2265, 1
  store i32 %bop2266, i32* %i2209
  br label %__cond822

__fresh838:
  br label %__post820

__post820:
  br label %__cond825

__cond825:
  %_lhs2267 = load i32* %j2210
  %_lhs2268 = load i32* %high_slot2204
  %bop2269 = icmp sle i32 %_lhs2267, %_lhs2268
  br i1 %bop2269, label %__body824, label %__post823

__fresh839:
  br label %__body824

__body824:
  %_lhs2270 = load i32* %k2211
  %index_ptr2271 = getelementptr { i32, [ 0 x i32 ] }** %c2218, i32 %_lhs2270
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2270 )
  %_lhs2272 = load i32* %j2210
  %index_ptr2273 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2272
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2272 )
  %_lhs2274 = load { i32, [ 0 x i32 ] }** %a_slot2208
  store { i32, [ 0 x i32 ] }* %_lhs2274, { i32, [ 0 x i32 ] }** %c2218
  %_lhs2275 = load i32* %k2211
  %bop2276 = add i32 %_lhs2275, 1
  store i32 %bop2276, i32* %k2211
  %_lhs2277 = load i32* %j2210
  %bop2278 = add i32 %_lhs2277, 1
  store i32 %bop2278, i32* %j2210
  br label %__cond825

__fresh840:
  br label %__post823

__post823:
  %_lhs2279 = load i32* %low_slot2206
  store i32 %_lhs2279, i32* %i2209
  br label %__cond828

__cond828:
  %_lhs2280 = load i32* %i2209
  %_lhs2281 = load i32* %k2211
  %bop2282 = icmp slt i32 %_lhs2280, %_lhs2281
  br i1 %bop2282, label %__body827, label %__post826

__fresh841:
  br label %__body827

__body827:
  %_lhs2283 = load i32* %i2209
  %index_ptr2284 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2208, i32 %_lhs2283
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2283 )
  %_lhs2285 = load i32* %i2209
  %index_ptr2286 = getelementptr { i32, [ 0 x i32 ] }** %c2218, i32 %_lhs2285
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2285 )
  %_lhs2287 = load { i32, [ 0 x i32 ] }** %c2218
  store { i32, [ 0 x i32 ] }* %_lhs2287, { i32, [ 0 x i32 ] }** %a_slot2208
  %_lhs2288 = load i32* %i2209
  %bop2289 = add i32 %_lhs2288, 1
  store i32 %bop2289, i32* %i2209
  br label %__cond828

__fresh842:
  br label %__post826

__post826:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2180, i32 %low2178, i32 %high2176){

__fresh808:
  %a_slot2181 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2180, { i32, [ 0 x i32 ] }** %a_slot2181
  %low_slot2179 = alloca i32
  store i32 %low2178, i32* %low_slot2179
  %high_slot2177 = alloca i32
  store i32 %high2176, i32* %high_slot2177
  %mid2182 = alloca i32
  store i32 0, i32* %mid2182
  %_lhs2183 = load i32* %low_slot2179
  %_lhs2184 = load i32* %high_slot2177
  %bop2185 = icmp slt i32 %_lhs2183, %_lhs2184
  br i1 %bop2185, label %__then807, label %__else806

__fresh809:
  br label %__then807

__then807:
  %_lhs2186 = load i32* %low_slot2179
  %_lhs2187 = load i32* %high_slot2177
  %bop2188 = add i32 %_lhs2186, %_lhs2187
  %bop2189 = ashr i32 %bop2188, 1
  store i32 %bop2189, i32* %mid2182
  %_lhs2192 = load i32* %mid2182
  %_lhs2191 = load i32* %low_slot2179
  %_lhs2190 = load { i32, [ 0 x i32 ] }** %a_slot2181
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2190, i32 %_lhs2191, i32 %_lhs2192 )
  %_lhs2196 = load i32* %high_slot2177
  %_lhs2194 = load i32* %mid2182
  %bop2195 = add i32 %_lhs2194, 1
  %_lhs2193 = load { i32, [ 0 x i32 ] }** %a_slot2181
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2193, i32 %bop2195, i32 %_lhs2196 )
  %_lhs2200 = load i32* %mid2182
  %_lhs2199 = load i32* %high_slot2177
  %_lhs2198 = load i32* %low_slot2179
  %_lhs2197 = load { i32, [ 0 x i32 ] }** %a_slot2181
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2197, i32 %_lhs2198, i32 %_lhs2199, i32 %_lhs2200 )
  br label %__merge805

__fresh810:
  br label %__else806

__else806:
  br label %__merge805

__merge805:
  ret void
}


define i32 @program (i32 %argc2161, { i32, [ 0 x i8* ] }* %argv2159){

__fresh804:
  %argc_slot2162 = alloca i32
  store i32 %argc2161, i32* %argc_slot2162
  %argv_slot2160 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2159, { i32, [ 0 x i8* ] }** %argv_slot2160
  %i2163 = alloca i32
  store i32 0, i32* %i2163
  %_lhs2164 = load { i32, [ 0 x i32 ] }** @a2158
  %ret2165 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2164 )
  call void @print_string( i8* %ret2165 )
  %_lhs2166 = load { i32, [ 0 x i32 ] }** @a2158
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2166, i32 0, i32 9 )
  %strval2168 = load i8** @_oat_string2167
  call void @print_string( i8* %strval2168 )
  %_lhs2169 = load { i32, [ 0 x i32 ] }** @a2158
  %ret2170 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2169 )
  call void @print_string( i8* %ret2170 )
  %strval2172 = load i8** @_oat_string2171
  call void @print_string( i8* %strval2172 )
  %_lhs2173 = load i32* %i2163
  ret i32 %_lhs2173
}


define void @a2158.init (){

__fresh803:
  %array_ptr2146 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2147 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2146 to { i32, [ 0 x i32 ] }* 
  %index_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2148
  %index_ptr2149 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2149
  %index_ptr2150 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2150
  %index_ptr2151 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2151
  %index_ptr2152 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2152
  %index_ptr2153 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2153
  %index_ptr2154 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2154
  %index_ptr2155 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2155
  %index_ptr2156 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2156
  %index_ptr2157 = getelementptr { i32, [ 0 x i32 ] }* %array2147, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2157
  store { i32, [ 0 x i32 ] }* %array2147, { i32, [ 0 x i32 ] }** @a2158
  ret void
}


