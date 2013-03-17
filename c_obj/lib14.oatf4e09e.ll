declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@a1528 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by a1528.init
define void @oat_init (){

__fresh227:
  call void @a1528.init(  )
  ret void
}


define i32 @program (i32 %argc1531, { i32, [ 0 x i8* ] }* %argv1529){

__fresh226:
  %argc_slot1532 = alloca i32
  store i32 %argc1531, i32* %argc_slot1532
  %argv_slot1530 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1529, { i32, [ 0 x i8* ] }** %argv_slot1530
  %_lhs1533 = load { i32, [ 0 x i32 ] }** @a1528
  %ret1534 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1533 )
  call void @print_string( i8* %ret1534 )
  ret i32 0
}


define void @a1528.init (){

__fresh225:
  %array_ptr1516 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 10 )
  %array1517 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1516 to { i32, [ 0 x i32 ] }* 
  %index_ptr1518 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 0
  store i32 126, i32* %index_ptr1518
  %index_ptr1519 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 1
  store i32 125, i32* %index_ptr1519
  %index_ptr1520 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 2
  store i32 124, i32* %index_ptr1520
  %index_ptr1521 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 3
  store i32 123, i32* %index_ptr1521
  %index_ptr1522 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 4
  store i32 122, i32* %index_ptr1522
  %index_ptr1523 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 5
  store i32 121, i32* %index_ptr1523
  %index_ptr1524 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 6
  store i32 120, i32* %index_ptr1524
  %index_ptr1525 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 7
  store i32 119, i32* %index_ptr1525
  %index_ptr1526 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 8
  store i32 118, i32* %index_ptr1526
  %index_ptr1527 = getelementptr { i32, [ 0 x i32 ] }* %array1517, i32 0, i32 1, i32 9
  store i32 117, i32* %index_ptr1527
  store { i32, [ 0 x i32 ] }* %array1517, { i32, [ 0 x i32 ] }** @a1528
  ret void
}


