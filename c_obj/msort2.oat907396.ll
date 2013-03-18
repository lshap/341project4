declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2158.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2158 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2158.str., i32 0, i32 0), align 4
@_oat_string2154.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2154 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2154.str., i32 0, i32 0), align 4
@a2145 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a2145.init
define void @oat_init (){

__fresh637:
  call void @a2145.init(  )
  ret void
}


define void @merge ({ i32, [ 0 x i32 ] }* %a2194, i32 %low2192, i32 %high2190, i32 %mid2188){

__fresh623:
  %a_slot2195 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2194, { i32, [ 0 x i32 ] }** %a_slot2195
  %low_slot2193 = alloca i32
  store i32 %low2192, i32* %low_slot2193
  %high_slot2191 = alloca i32
  store i32 %high2190, i32* %high_slot2191
  %mid_slot2189 = alloca i32
  store i32 %mid2188, i32* %mid_slot2189
  %i2196 = alloca i32
  store i32 0, i32* %i2196
  %j2197 = alloca i32
  store i32 0, i32* %j2197
  %k2198 = alloca i32
  store i32 0, i32* %k2198
  %array_ptr2199 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 50 )
  %array2200 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2199 to { i32, [ 0 x i32 ] }* 
  %index_ptr2201 = getelementptr { i32, [ 0 x i32 ] }* %array2200, i32 0, i32 1, i32 0
  store i32 50, i32* %index_ptr2201
  store i32 0, i32* %index_ptr2202
  br label %__compare605

__fresh624:
  br label %__compare605

__compare605:
  %comparison_result2203 = icmp slt i32* %index_ptr2202, 50
  br i1 %comparison_result2203, label %__body606, label %__end607

__fresh625:
  br label %__body606

__body606:
  store i32* %index_ptr2202, i32 %i2204
  %index_ptr2202 = add i32* %index_ptr2202, 1
  br label %__compare605

__fresh626:
  br label %__end607

__end607:
  %c2205 = alloca { i32, [ 0 x i32 ] }*
  store i32** %array2200, { i32, [ 0 x i32 ] }** %c2205
  %_lhs2206 = load i32* %low_slot2193
  store i32 %_lhs2206, i32* %i2196
  %_lhs2207 = load i32* %mid_slot2189
  %bop2208 = add i32 %_lhs2207, 1
  store i32 %bop2208, i32* %j2197
  %_lhs2209 = load i32* %low_slot2193
  store i32 %_lhs2209, i32* %k2198
  br label %__cond610

__cond610:
  %_lhs2210 = load i32* %i2196
  %_lhs2211 = load i32* %mid_slot2189
  %bop2212 = icmp sle i32 %_lhs2210, %_lhs2211
  %_lhs2213 = load i32* %j2197
  %_lhs2214 = load i32* %high_slot2191
  %bop2215 = icmp sle i32 %_lhs2213, %_lhs2214
  %bop2216 = and i1 %bop2212, %bop2215
  br i1 %bop2216, label %__body609, label %__post608

__fresh627:
  br label %__body609

__body609:
  %_lhs2217 = load i32* %i2196
  %index_ptr2218 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2217
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2217 )
  %_lhs2219 = load { i32, [ 0 x i32 ] }** %a_slot2195
  %_lhs2220 = load i32* %j2197
  %index_ptr2221 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2220
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2220 )
  %_lhs2222 = load { i32, [ 0 x i32 ] }** %a_slot2195
  %bop2223 = icmp slt { i32, [ 0 x i32 ] }* %_lhs2219, %_lhs2222
  br i1 %bop2223, label %__then613, label %__else612

__fresh628:
  br label %__then613

__then613:
  %_lhs2224 = load i32* %k2198
  %index_ptr2225 = getelementptr { i32, [ 0 x i32 ] }** %c2205, i32 %_lhs2224
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2224 )
  %_lhs2226 = load i32* %i2196
  %index_ptr2227 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2226
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2226 )
  %_lhs2228 = load { i32, [ 0 x i32 ] }** %a_slot2195
  store { i32, [ 0 x i32 ] }* %_lhs2228, { i32, [ 0 x i32 ] }** %c2205
  %_lhs2229 = load i32* %k2198
  %bop2230 = add i32 %_lhs2229, 1
  store i32 %bop2230, i32* %k2198
  %_lhs2231 = load i32* %i2196
  %bop2232 = add i32 %_lhs2231, 1
  store i32 %bop2232, i32* %i2196
  br label %__merge611

__fresh629:
  br label %__else612

__else612:
  %_lhs2233 = load i32* %k2198
  %index_ptr2234 = getelementptr { i32, [ 0 x i32 ] }** %c2205, i32 %_lhs2233
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2233 )
  %_lhs2235 = load i32* %j2197
  %index_ptr2236 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2235
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2235 )
  %_lhs2237 = load { i32, [ 0 x i32 ] }** %a_slot2195
  store { i32, [ 0 x i32 ] }* %_lhs2237, { i32, [ 0 x i32 ] }** %c2205
  %_lhs2238 = load i32* %k2198
  %bop2239 = add i32 %_lhs2238, 1
  store i32 %bop2239, i32* %k2198
  %_lhs2240 = load i32* %j2197
  %bop2241 = add i32 %_lhs2240, 1
  store i32 %bop2241, i32* %j2197
  br label %__merge611

__merge611:
  br label %__cond610

__fresh630:
  br label %__post608

__post608:
  br label %__cond616

__cond616:
  %_lhs2242 = load i32* %i2196
  %_lhs2243 = load i32* %mid_slot2189
  %bop2244 = icmp sle i32 %_lhs2242, %_lhs2243
  br i1 %bop2244, label %__body615, label %__post614

__fresh631:
  br label %__body615

__body615:
  %_lhs2245 = load i32* %k2198
  %index_ptr2246 = getelementptr { i32, [ 0 x i32 ] }** %c2205, i32 %_lhs2245
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2245 )
  %_lhs2247 = load i32* %i2196
  %index_ptr2248 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2247
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2247 )
  %_lhs2249 = load { i32, [ 0 x i32 ] }** %a_slot2195
  store { i32, [ 0 x i32 ] }* %_lhs2249, { i32, [ 0 x i32 ] }** %c2205
  %_lhs2250 = load i32* %k2198
  %bop2251 = add i32 %_lhs2250, 1
  store i32 %bop2251, i32* %k2198
  %_lhs2252 = load i32* %i2196
  %bop2253 = add i32 %_lhs2252, 1
  store i32 %bop2253, i32* %i2196
  br label %__cond616

__fresh632:
  br label %__post614

__post614:
  br label %__cond619

__cond619:
  %_lhs2254 = load i32* %j2197
  %_lhs2255 = load i32* %high_slot2191
  %bop2256 = icmp sle i32 %_lhs2254, %_lhs2255
  br i1 %bop2256, label %__body618, label %__post617

__fresh633:
  br label %__body618

__body618:
  %_lhs2257 = load i32* %k2198
  %index_ptr2258 = getelementptr { i32, [ 0 x i32 ] }** %c2205, i32 %_lhs2257
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2257 )
  %_lhs2259 = load i32* %j2197
  %index_ptr2260 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2259
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2259 )
  %_lhs2261 = load { i32, [ 0 x i32 ] }** %a_slot2195
  store { i32, [ 0 x i32 ] }* %_lhs2261, { i32, [ 0 x i32 ] }** %c2205
  %_lhs2262 = load i32* %k2198
  %bop2263 = add i32 %_lhs2262, 1
  store i32 %bop2263, i32* %k2198
  %_lhs2264 = load i32* %j2197
  %bop2265 = add i32 %_lhs2264, 1
  store i32 %bop2265, i32* %j2197
  br label %__cond619

__fresh634:
  br label %__post617

__post617:
  %_lhs2266 = load i32* %low_slot2193
  store i32 %_lhs2266, i32* %i2196
  br label %__cond622

__cond622:
  %_lhs2267 = load i32* %i2196
  %_lhs2268 = load i32* %k2198
  %bop2269 = icmp slt i32 %_lhs2267, %_lhs2268
  br i1 %bop2269, label %__body621, label %__post620

__fresh635:
  br label %__body621

__body621:
  %_lhs2270 = load i32* %i2196
  %index_ptr2271 = getelementptr { i32, [ 0 x i32 ] }** %a_slot2195, i32 %_lhs2270
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2270 )
  %_lhs2272 = load i32* %i2196
  %index_ptr2273 = getelementptr { i32, [ 0 x i32 ] }** %c2205, i32 %_lhs2272
  call void @oat_array_bounds_check( i32 0, i32 %_lhs2272 )
  %_lhs2274 = load { i32, [ 0 x i32 ] }** %c2205
  store { i32, [ 0 x i32 ] }* %_lhs2274, { i32, [ 0 x i32 ] }** %a_slot2195
  %_lhs2275 = load i32* %i2196
  %bop2276 = add i32 %_lhs2275, 1
  store i32 %bop2276, i32* %i2196
  br label %__cond622

__fresh636:
  br label %__post620

__post620:
  ret void
}


define void @oat_mergesort ({ i32, [ 0 x i32 ] }* %a2167, i32 %low2165, i32 %high2163){

__fresh602:
  %a_slot2168 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a2167, { i32, [ 0 x i32 ] }** %a_slot2168
  %low_slot2166 = alloca i32
  store i32 %low2165, i32* %low_slot2166
  %high_slot2164 = alloca i32
  store i32 %high2163, i32* %high_slot2164
  %mid2169 = alloca i32
  store i32 0, i32* %mid2169
  %_lhs2170 = load i32* %low_slot2166
  %_lhs2171 = load i32* %high_slot2164
  %bop2172 = icmp slt i32 %_lhs2170, %_lhs2171
  br i1 %bop2172, label %__then601, label %__else600

__fresh603:
  br label %__then601

__then601:
  %_lhs2173 = load i32* %low_slot2166
  %_lhs2174 = load i32* %high_slot2164
  %bop2175 = add i32 %_lhs2173, %_lhs2174
  %bop2176 = ashr i32 %bop2175, 1
  store i32 %bop2176, i32* %mid2169
  %_lhs2179 = load i32* %mid2169
  %_lhs2178 = load i32* %low_slot2166
  %_lhs2177 = load { i32, [ 0 x i32 ] }** %a_slot2168
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2177, i32 %_lhs2178, i32 %_lhs2179 )
  %_lhs2183 = load i32* %high_slot2164
  %_lhs2181 = load i32* %mid2169
  %bop2182 = add i32 %_lhs2181, 1
  %_lhs2180 = load { i32, [ 0 x i32 ] }** %a_slot2168
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2180, i32 %bop2182, i32 %_lhs2183 )
  %_lhs2187 = load i32* %mid2169
  %_lhs2186 = load i32* %high_slot2164
  %_lhs2185 = load i32* %low_slot2166
  %_lhs2184 = load { i32, [ 0 x i32 ] }** %a_slot2168
  call void @merge( { i32, [ 0 x i32 ] }* %_lhs2184, i32 %_lhs2185, i32 %_lhs2186, i32 %_lhs2187 )
  br label %__merge599

__fresh604:
  br label %__else600

__else600:
  br label %__merge599

__merge599:
  ret void
}


define i32 @program (i32 %argc2148, { i32, [ 0 x i8* ] }* %argv2146){

__fresh598:
  %argc_slot2149 = alloca i32
  store i32 %argc2148, i32* %argc_slot2149
  %argv_slot2147 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2146, { i32, [ 0 x i8* ] }** %argv_slot2147
  %i2150 = alloca i32
  store i32 0, i32* %i2150
  %_lhs2151 = load { i32, [ 0 x i32 ] }** @a2145
  %ret2152 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2151 )
  call void @print_string( i8* %ret2152 )
  %_lhs2153 = load { i32, [ 0 x i32 ] }** @a2145
  call void @oat_mergesort( { i32, [ 0 x i32 ] }* %_lhs2153, i32 0, i32 9 )
  %strval2155 = load i8** @_oat_string2154
  call void @print_string( i8* %strval2155 )
  %_lhs2156 = load { i32, [ 0 x i32 ] }** @a2145
  %ret2157 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2156 )
  call void @print_string( i8* %ret2157 )
  %strval2159 = load i8** @_oat_string2158
  call void @print_string( i8* %strval2159 )
  %_lhs2160 = load i32* %i2150
  ret i32 %_lhs2160
}


define void @a2145.init (){

__fresh597:
  %array_ptr2133 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array2134 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2133 to { i32, [ 0 x i32 ] }* 
  %index_ptr2135 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr2135
  %index_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr2136
  %index_ptr2137 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr2137
  %index_ptr2138 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr2138
  %index_ptr2139 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr2139
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr2140
  %index_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr2141
  %index_ptr2142 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr2142
  %index_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr2143
  %index_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %array2134, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr2144
  store { i32, [ 0 x i32 ] }* %array2134, { i32, [ 0 x i32 ] }** @a2145
  ret void
}


