declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh91:
  ret void
}


define i32 @program (i32 %argc261, { i32, [ 0 x i8* ] }* %argv259){

__fresh90:
  %argc_slot262 = alloca i32
  store i32 %argc261, i32* %argc_slot262
  %argv_slot260 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv259, { i32, [ 0 x i8* ] }** %argv_slot260
  %ret263 = call i32 @f1 (  )
  ret i32 %ret263
}


define i32 @f9 (){

__fresh89:
  ret i32 31
}


define i32 @f8 (){

__fresh88:
  %ret258 = call i32 @f9 (  )
  ret i32 %ret258
}


define i32 @f7 (){

__fresh87:
  %ret257 = call i32 @f8 (  )
  ret i32 %ret257
}


define i32 @f6 (){

__fresh86:
  %ret256 = call i32 @f7 (  )
  ret i32 %ret256
}


define i32 @f5 (){

__fresh85:
  %ret255 = call i32 @f6 (  )
  ret i32 %ret255
}


define i32 @f4 (){

__fresh84:
  %ret254 = call i32 @f5 (  )
  ret i32 %ret254
}


define i32 @f3 (){

__fresh83:
  %ret253 = call i32 @f4 (  )
  ret i32 %ret253
}


define i32 @f2 (){

__fresh82:
  %ret252 = call i32 @f3 (  )
  ret i32 %ret252
}


define i32 @f1 (){

__fresh81:
  %ret251 = call i32 @f2 (  )
  ret i32 %ret251
}


