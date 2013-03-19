declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string2183.str. = private unnamed_addr constant [ 2 x i8 ] c " \00", align 4
@_oat_string2183 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string2183.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh966:
  ret void
}


define i32 @program (i32 %argc2156, { i32, [ 0 x i8* ] }* %argv2154){

__fresh962:
  %argc_slot2157 = alloca i32
  store i32 %argc2156, i32* %argc_slot2157
  %argv_slot2155 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv2154, { i32, [ 0 x i8* ] }** %argv_slot2155
  %array_ptr2158 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 8 )
  %array2159 = bitcast { i32, [ 0 x i32 ] }* %array_ptr2158 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr2161
  br label %__compare959

__fresh963:
  br label %__compare959

__compare959:
  %comparison_result2162 = icmp slt i32* %index_ptr2161, 8
  br i1 %comparison_result2162, label %__body960, label %__end961

__fresh964:
  br label %__body960

__body960:
  store i32* %index_ptr2161, i32* %i2163
  %index_ptr2161 = add i32* %index_ptr2161, 1
  br label %__compare959

__fresh965:
  br label %__end961

__end961:
  %a2164 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array2159, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2166 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2166, i32 0 )
  %index_ptr2165 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 0
  store i32 121, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2168 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2168, i32 1 )
  %index_ptr2167 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 1
  store i32 125, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2170 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2170, i32 2 )
  %index_ptr2169 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 2
  store i32 120, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2172 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2172, i32 3 )
  %index_ptr2171 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 3
  store i32 111, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2174 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2174, i32 4 )
  %index_ptr2173 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 4
  store i32 116, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2176 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2176, i32 5 )
  %index_ptr2175 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 5
  store i32 110, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2178 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2178, i32 6 )
  %index_ptr2177 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 6
  store i32 117, { i32, [ 0 x i32 ] }** %a2164
  %size_ptr2180 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2180, i32 7 )
  %index_ptr2179 = getelementptr { i32, [ 0 x i32 ] }* %a2164, i32 0, i32 1, i32 7
  store i32 119, { i32, [ 0 x i32 ] }** %a2164
  %_lhs2181 = load { i32, [ 0 x i32 ] }** %a2164
  %ret2182 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2181 )
  call void @print_string( i8* %ret2182 )
  %strval2184 = load i8** @_oat_string2183
  call void @print_string( i8* %strval2184 )
  %_lhs2186 = load { i32, [ 0 x i32 ] }** %a2164
  %len_ptr2187 = getelementptr { i32, [ 0 x i32 ] }* %_lhs2186, i32 0, i32 0
  %len2188 = load i32* %len_ptr2187
  %_lhs2185 = load { i32, [ 0 x i32 ] }** %a2164
  call void @bubble_sort( { i32, [ 0 x i32 ] }* %_lhs2185, i32 %len2188 )
  %_lhs2189 = load { i32, [ 0 x i32 ] }** %a2164
  %ret2190 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs2189 )
  call void @print_string( i8* %ret2190 )
  %unop2191 = sub i32 0, 1
  ret i32 %unop2191
}


define void @bubble_sort ({ i32, [ 0 x i32 ] }* %numbers2111, i32 %array_size2109){

__fresh952:
  %numbers_slot2112 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %numbers2111, { i32, [ 0 x i32 ] }** %numbers_slot2112
  %array_size_slot2110 = alloca i32
  store i32 %array_size2109, i32* %array_size_slot2110
  %temp2113 = alloca i32
  store i32 0, i32* %temp2113
  %_lhs2114 = load i32* %array_size_slot2110
  %bop2115 = sub i32 %_lhs2114, 1
  %i2116 = alloca i32
  store i32 %bop2115, i32* %i2116
  br label %__cond945

__cond945:
  %_lhs2117 = load i32* %i2116
  %bop2118 = icmp sgt i32 %_lhs2117, 0
  br i1 %bop2118, label %__body944, label %__post943

__fresh953:
  br label %__body944

__body944:
  %j2119 = alloca i32
  store i32 1, i32* %j2119
  br label %__cond948

__cond948:
  %_lhs2120 = load i32* %j2119
  %_lhs2121 = load i32* %i2116
  %bop2122 = icmp sle i32 %_lhs2120, %_lhs2121
  br i1 %bop2122, label %__body947, label %__post946

__fresh954:
  br label %__body947

__body947:
  %_lhs2123 = load i32* %j2119
  %bop2124 = sub i32 %_lhs2123, 1
  %size_ptr2126 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2126, i32 %bop2124 )
  %index_ptr2125 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %bop2124
  %_lhs2127 = load { i32, [ 0 x i32 ] }** %numbers_slot2112
  %_lhs2128 = load i32* %j2119
  %size_ptr2130 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2130, i32 %_lhs2128 )
  %index_ptr2129 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %_lhs2128
  %_lhs2131 = load { i32, [ 0 x i32 ] }** %numbers_slot2112
  %bop2132 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs2127, %_lhs2131
  br i1 %bop2132, label %__then951, label %__else950

__fresh955:
  br label %__then951

__then951:
  %_lhs2133 = load i32* %j2119
  %bop2134 = sub i32 %_lhs2133, 1
  %size_ptr2136 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2136, i32 %bop2134 )
  %index_ptr2135 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %bop2134
  %_lhs2137 = load { i32, [ 0 x i32 ] }** %numbers_slot2112
  store { i32, [ 0 x i32 ] }* %_lhs2137, i32* %temp2113
  %_lhs2138 = load i32* %j2119
  %bop2139 = sub i32 %_lhs2138, 1
  %size_ptr2141 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2141, i32 %bop2139 )
  %index_ptr2140 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %bop2139
  %_lhs2142 = load i32* %j2119
  %size_ptr2144 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2144, i32 %_lhs2142 )
  %index_ptr2143 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %_lhs2142
  %_lhs2145 = load { i32, [ 0 x i32 ] }** %numbers_slot2112
  store { i32, [ 0 x i32 ] }* %_lhs2145, { i32, [ 0 x i32 ] }** %numbers_slot2112
  %_lhs2146 = load i32* %j2119
  %size_ptr2148 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr2148, i32 %_lhs2146 )
  %index_ptr2147 = getelementptr { i32, [ 0 x i32 ] }* %numbers_slot2112, i32 0, i32 1, i32 %_lhs2146
  %_lhs2149 = load i32* %temp2113
  store i32 %_lhs2149, { i32, [ 0 x i32 ] }** %numbers_slot2112
  br label %__merge949

__fresh956:
  br label %__else950

__else950:
  br label %__merge949

__merge949:
  %_lhs2150 = load i32* %j2119
  %bop2151 = add i32 %_lhs2150, 1
  store i32 %bop2151, i32* %j2119
  br label %__cond948

__fresh957:
  br label %__post946

__post946:
  %_lhs2152 = load i32* %i2116
  %bop2153 = sub i32 %_lhs2152, 1
  store i32 %bop2153, i32* %i2116
  br label %__cond945

__fresh958:
  br label %__post943

__post943:
  ret void
}


