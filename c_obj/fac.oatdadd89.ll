declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh883:
  ret void
}


define i32 @program (i32 %argc1974, { i32, [ 0 x i8* ] }* %argv1972){

__fresh882:
  %argc_slot1975 = alloca i32
  store i32 %argc1974, i32* %argc_slot1975
  %argv_slot1973 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1972, { i32, [ 0 x i8* ] }** %argv_slot1973
  %ret1976 = call i32 @f ( i32 5 )
  ret i32 %ret1976
}


define i32 @f (i32 %i1961){

__fresh879:
  %i_slot1962 = alloca i32
  store i32 %i1961, i32* %i_slot1962
  %r1963 = alloca i32
  store i32 0, i32* %r1963
  %_lhs1964 = load i32* %i_slot1962
  %bop1965 = icmp eq i32 %_lhs1964, 0
  br i1 %bop1965, label %__then878, label %__else877

__fresh880:
  br label %__then878

__then878:
  store i32 1, i32* %r1963
  br label %__merge876

__fresh881:
  br label %__else877

__else877:
  %_lhs1966 = load i32* %i_slot1962
  %_lhs1967 = load i32* %i_slot1962
  %bop1968 = sub i32 %_lhs1967, 1
  %ret1969 = call i32 @f ( i32 %bop1968 )
  %bop1970 = mul i32 %_lhs1966, %ret1969
  store i32 %bop1970, i32* %r1963
  br label %__merge876

__merge876:
  %_lhs1971 = load i32* %r1963
  ret i32 %_lhs1971
}


