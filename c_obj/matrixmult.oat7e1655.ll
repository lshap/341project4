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
