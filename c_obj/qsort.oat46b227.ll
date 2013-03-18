declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1543.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1543 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1543.str., i32 0, i32 0), align 4
@_oat_string1538.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1538 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1538.str., i32 0, i32 0), align 4
@_oat_string1534.str. = private unnamed_addr constant [ 2 x i8 ] c "
\00", align 4
@_oat_string1534 = global i8* getelementptr inbounds ([ 2 x i8 ]* @_oat_string1534.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh269:
  ret void
}


define i32 @program (i32 %argc1520, { i32, [ 0 x i8* ] }* %argv1518){

__fresh268:
  %argc_slot1521 = alloca i32
  store i32 %argc1520, i32* %argc_slot1521
  %argv_slot1519 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1518, { i32, [ 0 x i8* ] }** %argv_slot1519
  %array_ptr1522 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 9 )
  %array1523 = bitcast { i32, [ 0 x i32 ] }* %array_ptr1522 to { i32, [ 0 x i32 ] }* 
  %index_ptr1524 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 0
  store i32 107, i32* %index_ptr1524
  %index_ptr1525 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 1
  store i32 112, i32* %index_ptr1525
  %index_ptr1526 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 2
  store i32 121, i32* %index_ptr1526
  %index_ptr1527 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 3
  store i32 102, i32* %index_ptr1527
  %index_ptr1528 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 4
  store i32 123, i32* %index_ptr1528
  %index_ptr1529 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 5
  store i32 115, i32* %index_ptr1529
  %index_ptr1530 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 6
  store i32 104, i32* %index_ptr1530
  %index_ptr1531 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 7
  store i32 111, i32* %index_ptr1531
  %index_ptr1532 = getelementptr { i32, [ 0 x i32 ] }* %array1523, i32 0, i32 1, i32 8
  store i32 109, i32* %index_ptr1532
  %a1533 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %array1523, { i32, [ 0 x i32 ] }** %a1533
  %strval1535 = load i8** @_oat_string1534
  call void @print_string( i8* %strval1535 )
  %_lhs1536 = load { i32, [ 0 x i32 ] }** %a1533
  %ret1537 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1536 )
  call void @print_string( i8* %ret1537 )
  %strval1539 = load i8** @_oat_string1538
  call void @print_string( i8* %strval1539 )
  %_lhs1540 = load { i32, [ 0 x i32 ] }** %a1533
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1540, i32 0, i32 8 )
  %_lhs1541 = load { i32, [ 0 x i32 ] }** %a1533
  %ret1542 = call i8* @string_of_array ( { i32, [ 0 x i32 ] }* %_lhs1541 )
  call void @print_string( i8* %ret1542 )
  %strval1544 = load i8** @_oat_string1543
  call void @print_string( i8* %strval1544 )
  ret i32 255
}


define i32 @partition ({ i32, [ 0 x i32 ] }* %a1453, i32 %l1451, i32 %r1449){

__fresh257:
  %a_slot1454 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1453, { i32, [ 0 x i32 ] }** %a_slot1454
  %l_slot1452 = alloca i32
  store i32 %l1451, i32* %l_slot1452
  %r_slot1450 = alloca i32
  store i32 %r1449, i32* %r_slot1450
  %_lhs1455 = load i32* %l_slot1452
  %index_ptr1456 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1455
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1455 )
  %_lhs1457 = load { i32, [ 0 x i32 ] }** %a_slot1454
  %pivot1458 = alloca i32
  store { i32, [ 0 x i32 ] }* %_lhs1457, i32* %pivot1458
  %_lhs1459 = load i32* %l_slot1452
  %i1460 = alloca i32
  store i32 %_lhs1459, i32* %i1460
  %_lhs1461 = load i32* %r_slot1450
  %bop1462 = add i32 %_lhs1461, 1
  %j1463 = alloca i32
  store i32 %bop1462, i32* %j1463
  %t1464 = alloca i32
  store i32 0, i32* %t1464
  %done1465 = alloca i32
  store i32 0, i32* %done1465
  br label %__cond244

__cond244:
  %_lhs1466 = load i32* %done1465
  %bop1467 = icmp eq i32 %_lhs1466, 0
  br i1 %bop1467, label %__body243, label %__post242

__fresh258:
  br label %__body243

__body243:
  %_lhs1468 = load i32* %i1460
  %bop1469 = add i32 %_lhs1468, 1
  store i32 %bop1469, i32* %i1460
  br label %__cond247

__cond247:
  %_lhs1470 = load i32* %i1460
  %index_ptr1471 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1470
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1470 )
  %_lhs1472 = load { i32, [ 0 x i32 ] }** %a_slot1454
  %_lhs1473 = load i32* %pivot1458
  %bop1474 = icmp sle { i32, [ 0 x i32 ] }* %_lhs1472, %_lhs1473
  %_lhs1475 = load i32* %i1460
  %_lhs1476 = load i32* %r_slot1450
  %bop1477 = icmp sle i32 %_lhs1475, %_lhs1476
  %bop1478 = and i1 %bop1474, %bop1477
  br i1 %bop1478, label %__body246, label %__post245

__fresh259:
  br label %__body246

__body246:
  %_lhs1479 = load i32* %i1460
  %bop1480 = add i32 %_lhs1479, 1
  store i32 %bop1480, i32* %i1460
  br label %__cond247

__fresh260:
  br label %__post245

__post245:
  %_lhs1481 = load i32* %j1463
  %bop1482 = sub i32 %_lhs1481, 1
  store i32 %bop1482, i32* %j1463
  br label %__cond250

__cond250:
  %_lhs1483 = load i32* %j1463
  %index_ptr1484 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1483
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1483 )
  %_lhs1485 = load { i32, [ 0 x i32 ] }** %a_slot1454
  %_lhs1486 = load i32* %pivot1458
  %bop1487 = icmp sgt { i32, [ 0 x i32 ] }* %_lhs1485, %_lhs1486
  br i1 %bop1487, label %__body249, label %__post248

__fresh261:
  br label %__body249

__body249:
  %_lhs1488 = load i32* %j1463
  %bop1489 = sub i32 %_lhs1488, 1
  store i32 %bop1489, i32* %j1463
  br label %__cond250

__fresh262:
  br label %__post248

__post248:
  %_lhs1490 = load i32* %i1460
  %_lhs1491 = load i32* %j1463
  %bop1492 = icmp sge i32 %_lhs1490, %_lhs1491
  br i1 %bop1492, label %__then253, label %__else252

__fresh263:
  br label %__then253

__then253:
  store i32 1, i32* %done1465
  br label %__merge251

__fresh264:
  br label %__else252

__else252:
  br label %__merge251

__merge251:
  %_lhs1493 = load i32* %done1465
  %bop1494 = icmp eq i32 %_lhs1493, 0
  br i1 %bop1494, label %__then256, label %__else255

__fresh265:
  br label %__then256

__then256:
  %_lhs1495 = load i32* %i1460
  %index_ptr1496 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1495
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1495 )
  %_lhs1497 = load { i32, [ 0 x i32 ] }** %a_slot1454
  store { i32, [ 0 x i32 ] }* %_lhs1497, i32* %t1464
  %_lhs1498 = load i32* %i1460
  %index_ptr1499 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1498
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1498 )
  %_lhs1500 = load i32* %j1463
  %index_ptr1501 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1500
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1500 )
  %_lhs1502 = load { i32, [ 0 x i32 ] }** %a_slot1454
  store { i32, [ 0 x i32 ] }* %_lhs1502, { i32, [ 0 x i32 ] }** %a_slot1454
  %_lhs1503 = load i32* %j1463
  %index_ptr1504 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1503
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1503 )
  %_lhs1505 = load i32* %t1464
  store i32 %_lhs1505, { i32, [ 0 x i32 ] }** %a_slot1454
  br label %__merge254

__fresh266:
  br label %__else255

__else255:
  br label %__merge254

__merge254:
  br label %__cond244

__fresh267:
  br label %__post242

__post242:
  %_lhs1506 = load i32* %l_slot1452
  %index_ptr1507 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1506
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1506 )
  %_lhs1508 = load { i32, [ 0 x i32 ] }** %a_slot1454
  store { i32, [ 0 x i32 ] }* %_lhs1508, i32* %t1464
  %_lhs1509 = load i32* %l_slot1452
  %index_ptr1510 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1509
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1509 )
  %_lhs1511 = load i32* %j1463
  %index_ptr1512 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1511
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1511 )
  %_lhs1513 = load { i32, [ 0 x i32 ] }** %a_slot1454
  store { i32, [ 0 x i32 ] }* %_lhs1513, { i32, [ 0 x i32 ] }** %a_slot1454
  %_lhs1514 = load i32* %j1463
  %index_ptr1515 = getelementptr { i32, [ 0 x i32 ] }** %a_slot1454, i32 %_lhs1514
  call void @oat_array_bounds_check( i32 0, i32 %_lhs1514 )
  %_lhs1516 = load i32* %t1464
  store i32 %_lhs1516, { i32, [ 0 x i32 ] }** %a_slot1454
  %_lhs1517 = load i32* %j1463
  ret i32 %_lhs1517
}


define void @quick_sort ({ i32, [ 0 x i32 ] }* %a1431, i32 %l1429, i32 %r1427){

__fresh239:
  %a_slot1432 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %a1431, { i32, [ 0 x i32 ] }** %a_slot1432
  %l_slot1430 = alloca i32
  store i32 %l1429, i32* %l_slot1430
  %r_slot1428 = alloca i32
  store i32 %r1427, i32* %r_slot1428
  %j1433 = alloca i32
  store i32 0, i32* %j1433
  %_lhs1434 = load i32* %l_slot1430
  %_lhs1435 = load i32* %r_slot1428
  %bop1436 = icmp slt i32 %_lhs1434, %_lhs1435
  br i1 %bop1436, label %__then238, label %__else237

__fresh240:
  br label %__then238

__then238:
  %_lhs1439 = load i32* %r_slot1428
  %_lhs1438 = load i32* %l_slot1430
  %_lhs1437 = load { i32, [ 0 x i32 ] }** %a_slot1432
  %ret1440 = call i32 @partition ( { i32, [ 0 x i32 ] }* %_lhs1437, i32 %_lhs1438, i32 %_lhs1439 )
  store i32 %ret1440, i32* %j1433
  %_lhs1443 = load i32* %j1433
  %bop1444 = sub i32 %_lhs1443, 1
  %_lhs1442 = load i32* %l_slot1430
  %_lhs1441 = load { i32, [ 0 x i32 ] }** %a_slot1432
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1441, i32 %_lhs1442, i32 %bop1444 )
  %_lhs1448 = load i32* %r_slot1428
  %_lhs1446 = load i32* %j1433
  %bop1447 = add i32 %_lhs1446, 1
  %_lhs1445 = load { i32, [ 0 x i32 ] }** %a_slot1432
  call void @quick_sort( { i32, [ 0 x i32 ] }* %_lhs1445, i32 %bop1447, i32 %_lhs1448 )
  br label %__merge236

__fresh241:
  br label %__else237

__else237:
  br label %__merge236

__merge236:
  ret void
}


