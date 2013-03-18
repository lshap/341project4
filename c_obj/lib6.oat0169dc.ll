declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@arr11534 = global { i32, [ 0 x i32 ] }* zeroinitializer, align 4		; initialized by arr11534.init
define void @oat_init (){

__fresh367:
  call void @arr11534.init(  )
  ret void
}


define i32 @program (i32 %argc1537, { i32, [ 0 x i8* ] }* %argv1535){

__fresh364:
  %argc_slot1538 = alloca i32
  store i32 %argc1537, i32* %argc_slot1538
  %argv_slot1536 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1535, { i32, [ 0 x i8* ] }** %argv_slot1536
  %_lhs1539 = load { i32, [ 0 x i32 ] }** @arr11534
  %ret1540 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1539 )
  %str1541 = alloca i8*
  store i8* %ret1540, i8** %str1541
  %_lhs1542 = load i8** %str1541
  %ret1543 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %_lhs1542 )
  %arr21544 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1543, { i32, [ 0 x i32 ] }** %arr21544
  %s1545 = alloca i32
  store i32 0, i32* %s1545
  %i1546 = alloca i32
  store i32 0, i32* %i1546
  br label %__cond363

__cond363:
  %_lhs1547 = load i32* %i1546
  %bop1548 = icmp slt i32 %_lhs1547, 5
  br i1 %bop1548, label %__body362, label %__post361

__fresh365:
  br label %__body362

__body362:
  %_lhs1549 = load i32* %s1545
  %_lhs1550 = load i32* %i1546
  %index_ptr1551 = getelementptr { i32, [ 0 x i32 ] }** %arr21544, i32 %_lhs1550
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1550 )
  %_lhs1552 = load { i32, [ 0 x i32 ] }** %arr21544
  %bop1553 = add i32 %_lhs1549, %_lhs1552
  store i32 %bop1553, i32* %s1545
  %_lhs1554 = load i32* %i1546
  %bop1555 = add i32 %_lhs1554, 1
  store i32 %bop1555, i32* %i1546
  br label %__cond363

__fresh366:
  br label %__post361

__post361:
  %_lhs1556 = load i32* %s1545
  ret i32 %_lhs1556
}


define void @arr11534.init (){

__fresh360:
  %array_ptr1527 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 5 )
  %array1528 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1527 to { i32, [ 0 x i32 ] }* 
  %index_ptr1529 = getelementptr { i32, [ 0 x i32 ] }* %array1528, i32 0, i32 1, i32 0
  store i32 111, i32* %index_ptr1529
  %index_ptr1530 = getelementptr { i32, [ 0 x i32 ] }* %array1528, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1530
  %index_ptr1531 = getelementptr { i32, [ 0 x i32 ] }* %array1528, i32 0, i32 1, i32 2
  store i32 113, i32* %index_ptr1531
  %index_ptr1532 = getelementptr { i32, [ 0 x i32 ] }* %array1528, i32 0, i32 1, i32 3
  store i32 114, i32* %index_ptr1532
  %index_ptr1533 = getelementptr { i32, [ 0 x i32 ] }* %array1528, i32 0, i32 1, i32 4
  store i32 115, i32* %index_ptr1533
  store { i32, [ 0 x i32 ] }* %array1528, { i32, [ 0 x i32 ] }** @arr11534
  ret void
}


