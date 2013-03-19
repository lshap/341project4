declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2162.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2162 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2162.str., i32 0, i32 0), align 4
@_oat_string2158.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2158 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2158.str., i32 0, i32 0), align 4
@a2149 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2149.init
define void @oat_init (){

__fresh842:
  call void @a2149.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2198, i32 %low2196, i32 %high2194, i32 %mid2192){

__fresh828:
  %a_slot2199 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2198, { i32, [ 0 x i32 ] }** %a_slot2199
  %low_slot2197 = alloca i32
  store i32 %low2196, i32* %low_slot2197
  %high_slot2195 = alloca i32
  store i32 %high2194, i32* %high_slot2195
  %mid_slot2193 = alloca i32
  store i32 %mid2192, i32* %mid_slot2193
  %i2200 = alloca i32
  store i32 0, i32* %i2200
  %j2201 = alloca i32
  store i32 0, i32* %j2201
  %k2202 = alloca i32
  store i32 0, i32* %k2202
  %array_ptr2203 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2204 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2203 to { i32, [ 0 x i32 ] }* 
  %index_ptr2205 = getelementptr { i32, [ 0 x i32 ] }* %array2204, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2205
  store i32 0, i32* %index_ptr2206
  br label %__compare810

__fresh829:
  br label %__compare810

__compare810:
  %comparison_result2207 = icmp slt i32* %index_ptr2206, 50
  br i1 %comparison_result2207, label %__body811, label %__end812

__fresh830:
  br label %__body811

__body811:
  store i32* %index_ptr2206, i32* %i2208
  %index_ptr2206 = add i32* %index_ptr2206, 1
  br label %__compare810

__fresh831:
  br label %__end812

__end812:
  %c2209 = alloca { i32, [ 0 x i32 ] }*
  store i32* %array2204, { i32, [ 0 x i32 ] }** %c2209
  %_lhs2210 = load i32* %low_slot2197
  store i32 %_lhs2210, i32* %i2200
  %_lhs2211 = load i32* %mid_slot2193
  %bop2212 = add i32 %_lhs2211, 1
  store i32 %bop2212, i32* %j2201
  %_lhs2213 = load i32* %low_slot2197
  store i32 %_lhs2213, i32* %k2202
  br label %__cond815

__cond815:
  %_lhs2214 = load i32* %i2200
  %_lhs2215 = load i32* %mid_slot2193
  %bop2216 = icmp sle i32 %_lhs2214, %_lhs2215
  %_lhs2217 = load i32* %j2201
  %_lhs2218 = load i32* %high_slot2195
  %bop2219 = icmp sle i32 %_lhs2217, %_lhs2218
  %bop2220 = and i1 %bop2216, %bop2219
  br i1 %bop2220, label %__body814, label %__post813

__fresh832:
  br label %__body814

__body814:
  %_lhs2221 = load i32* %i2200
  %index_ptr2222 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2221
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2221 )
  %_lhs2223 = load { i32, [ 0 x i32 ] }** %a_slot2199
  %_lhs2224 = load i32* %j2201
  %index_ptr2225 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2224
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2224 )
  %_lhs2226 = load { i32, [ 0 x i32 ] }** %a_slot2199
  %bop2227 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2223, %_lhs2226
  br i1 %bop2227, label %__then818, label %__else817

__fresh833:
  br label %__then818

__then818:
  %_lhs2228 = load i32* %k2202
  %index_ptr2229 = getelementptr { i32, [ 0 x i32 ] }** %c2209, i32 %_lhs2228
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2228 )
  %_lhs2230 = load i32* %i2200
  %index_ptr2231 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2230
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2230 )
  %_lhs2232 = load { i32, [ 0 x i32 ] }** %a_slot2199
  store { i32, [ 0 x i32 ] }* %_lhs2232, { i32, [ 0 x i32 ] }** %c2209
  %_lhs2233 = load i32* %k2202
  %bop2234 = add i32 %_lhs2233, 1
  store i32 %bop2234, i32* %k2202
  %_lhs2235 = load i32* %i2200
  %bop2236 = add i32 %_lhs2235, 1
  store i32 %bop2236, i32* %i2200
  br label %__merge816

__fresh834:
  br label %__else817

__else817:
  %_lhs2237 = load i32* %k2202
  %index_ptr2238 = getelementptr { i32, [ 0 x i32 ] }** %c2209, i32 %_lhs2237
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2237 )
  %_lhs2239 = load i32* %j2201
  %index_ptr2240 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2239
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2239 )
  %_lhs2241 = load { i32, [ 0 x i32 ] }** %a_slot2199
  store { i32, [ 0 x i32 ] }* %_lhs2241, { i32, [ 0 x i32 ] }** %c2209
  %_lhs2242 = load i32* %k2202
  %bop2243 = add i32 %_lhs2242, 1
  store i32 %bop2243, i32* %k2202
  %_lhs2244 = load i32* %j2201
  %bop2245 = add i32 %_lhs2244, 1
  store i32 %bop2245, i32* %j2201
  br label %__merge816

__merge816:
  br label %__cond815

__fresh835:
  br label %__post813

__post813:
  br label %__cond821

__cond821:
  %_lhs2246 = load i32* %i2200
  %_lhs2247 = load i32* %mid_slot2193
  %bop2248 = icmp sle i32 %_lhs2246, %_lhs2247
  br i1 %bop2248, label %__body820, label %__post819

__fresh836:
  br label %__body820

__body820:
  %_lhs2249 = load i32* %k2202
  %index_ptr2250 = getelementptr { i32, [ 0 x i32 ] }** %c2209, i32 %_lhs2249
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2249 )
  %_lhs2251 = load i32* %i2200
  %index_ptr2252 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2251
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2251 )
  %_lhs2253 = load { i32, [ 0 x i32 ] }** %a_slot2199
  store { i32, [ 0 x i32 ] }* %_lhs2253, { i32, [ 0 x i32 ] }** %c2209
  %_lhs2254 = load i32* %k2202
  %bop2255 = add i32 %_lhs2254, 1
  store i32 %bop2255, i32* %k2202
  %_lhs2256 = load i32* %i2200
  %bop2257 = add i32 %_lhs2256, 1
  store i32 %bop2257, i32* %i2200
  br label %__cond821

__fresh837:
  br label %__post819

__post819:
  br label %__cond824

__cond824:
  %_lhs2258 = load i32* %j2201
  %_lhs2259 = load i32* %high_slot2195
  %bop2260 = icmp sle i32 %_lhs2258, %_lhs2259
  br i1 %bop2260, label %__body823, label %__post822

__fresh838:
  br label %__body823

__body823:
  %_lhs2261 = load i32* %k2202
  %index_ptr2262 = getelementptr { i32, [ 0 x i32 ] }** %c2209, i32 %_lhs2261
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2261 )
  %_lhs2263 = load i32* %j2201
  %index_ptr2264 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2263
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2263 )
  %_lhs2265 = load { i32, [ 0 x i32 ] }** %a_slot2199
  store { i32, [ 0 x i32 ] }* %_lhs2265, { i32, [ 0 x i32 ] }** %c2209
  %_lhs2266 = load i32* %k2202
  %bop2267 = add i32 %_lhs2266, 1
  store i32 %bop2267, i32* %k2202
  %_lhs2268 = load i32* %j2201
  %bop2269 = add i32 %_lhs2268, 1
  store i32 %bop2269, i32* %j2201
  br label %__cond824

__fresh839:
  br label %__post822

__post822:
  %_lhs2270 = load i32* %low_slot2197
  store i32 %_lhs2270, i32* %i2200
  br label %__cond827

__cond827:
  %_lhs2271 = load i32* %i2200
  %_lhs2272 = load i32* %k2202
  %bop2273 = icmp slt i32 %_lhs2271, %_lhs2272
  br i1 %bop2273, label %__body826, label %__post825

__fresh840:
  br label %__body826

__body826:
  %_lhs2274 = load i32* %i2200
  %index_ptr2275 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2199, i32 %_lhs2274
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2274 )
  %_lhs2276 = load i32* %i2200
  %index_ptr2277 = getelementptr { i32, [ 0 x i32 ] }** %c2209, i32 %_lhs2276
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2276 )
  %_lhs2278 = load { i32, [ 0 x i32 ] }** %c2209
  store { i32, [ 0 x i32 ] }* %_lhs2278, { i32, [ 0 x i32 ] }** %a_slot2199
  %_lhs2279 = load i32* %i2200
  %bop2280 = add i32 %_lhs2279, 1
  store i32 %bop2280, i32* %i2200
  br label %__cond827

__fresh841:
  br label %__post825

__post825:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2171, i32 %low2169, i32 %high2167){

__fresh807:
  %a_slot2172 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2171, { i32, [ 0 x i32 ] }** %a_slot2172
  %low_slot2170 = alloca i32
  store i32 %low2169, i32* %low_slot2170
  %high_slot2168 = alloca i32
  store i32 %high2167, i32* %high_slot2168
  %mid2173 = alloca i32
  store i32 0, i32* %mid2173
  %_lhs2174 = load i32* %low_slot2170
  %_lhs2175 = load i32* %high_slot2168
  %bop2176 = icmp slt i32 %_lhs2174, %_lhs2175
  br i1 %bop2176, label %__then806, label %__else805

__fresh808:
  br label %__then806

__then806:
  %_lhs2177 = load i32* %low_slot2170
  %_lhs2178 = load i32* %high_slot2168
  %bop2179 = add i32 %_lhs2177, %_lhs2178
  %bop2180 = ashr i32 %bop2179, 1
  store i32 %bop2180, i32* %mid2173
  %_lhs2183 = load i32* %mid2173
  %_lhs2182 = load i32* %low_slot2170
  %_lhs2181 = load { i32, [ 0 x i32 ] }** %a_slot2172
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2181, i32 %_lhs2182, i32 %_lhs2183 )
  %_lhs2187 = load i32* %high_slot2168
  %_lhs2185 = load i32* %mid2173
  %bop2186 = add i32 %_lhs2185, 1
  %_lhs2184 = load { i32, [ 0 x i32 ] }** %a_slot2172
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2184, i32 %bop2186, i32 %_lhs2187 )
  %_lhs2191 = load i32* %mid2173
  %_lhs2190 = load i32* %high_slot2168
  %_lhs2189 = load i32* %low_slot2170
  %_lhs2188 = load { i32, [ 0 x i32 ] }** %a_slot2172
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2188, i32 %_lhs2189, i32 %_lhs2190, i32 %_lhs2191 )
  br label %__merge804

__fresh809:
  br label %__else805

__else805:
  br label %__merge804

__merge804:
  ret void
}


define i32 @program (i32 %argc2152, { i32, [ 0 x i8* ] }* %argv2150){

__fresh803:
  %argc_slot2153 = alloca i32
  store i32 %argc2152, i32* %argc_slot2153
  %argv_slot2151 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2150, { i32, [ 0 x i8* ] }** %argv_slot2151
  %i2154 = alloca i32
  store i32 0, i32* %i2154
  %_lhs2155 = load { i32, [ 0 x i32 ] }** @a2149
  %ret2156 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2155 )
  call void @print_string( i8* %ret2156 )
  %_lhs2157 = load { i32, [ 0 x i32 ] }** @a2149
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2157, i32 0, i32 9 )
  %strval2159 = load i8** @_oat_string2158
  call void @print_string( i8* %strval2159 )
  %_lhs2160 = load { i32, [ 0 x i32 ] }** @a2149
  %ret2161 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2160 )
  call void @print_string( i8* %ret2161 )
  %strval2163 = load i8** @_oat_string2162
  call void @print_string( i8* %strval2163 )
  %_lhs2164 = load i32* %i2154
  ret i32 %_lhs2164
}


define void @a2149.init (){

__fresh802:
  %array_ptr2137 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2138 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2137 to { i32, [ 0 x i32 ] }* 
  %index_ptr2139 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2139
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2140
  %index_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2141
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2142
  %index_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2143
  %index_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2144
  %index_ptr2145 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2145
  %index_ptr2146 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2146
  %index_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2147
  %index_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %array2138, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2148
  store { i32, [ 0 x i32 ] }* %array2138, { i32, [ 0 x i32 ] }** @a2149
  ret void
}


