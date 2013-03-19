declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
define void @oat_init (){

__fresh49:
  ret void
}


define i32 @program (i32 %argc3, { i32, [ 0 x i8* ] }* %argv1){

__fresh24:
  %argc_slot4 = alloca i32
  store i32 %argc3, i32* %argc_slot4
  %argv_slot2 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1, { i32, [ 0 x i8* ] }** %argv_slot2
  %array_ptr5 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array6 = bitcast { i32, [ 0 x i32 ] }* %array_ptr5 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr8
  br label %__compare3

__fresh25:
  br label %__compare3

__compare3:
  %comparison_result9 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr8, 3
  br i1 %comparison_result9, label %__body4, label %__end5

__fresh26:
  br label %__body4

__body4:
  store { i32, [ 0 x i32 ] }** %index_ptr8, i32* %i10
  %array_ptr11 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array12 = bitcast { i32, [ 0 x i32 ] }* %array_ptr11 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr14
  br label %__compare0

__fresh27:
  br label %__compare0

__compare0:
  %comparison_result15 = icmp slt i32* %index_ptr14, 3
  br i1 %comparison_result15, label %__body1, label %__end2

__fresh28:
  br label %__body1

__body1:
  store i32* %index_ptr14, i32* %i16
  %index_ptr14 = add i32* %index_ptr14, 1
  br label %__compare0

__fresh29:
  br label %__end2

__end2:
  %index_ptr8 = add { i32, [ 0 x i32 ] }** %index_ptr8, 1
  br label %__compare3

__fresh30:
  br label %__end5

__end5:
  %a117 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array6, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a117
  %array_ptr18 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array19 = bitcast { i32, [ 0 x i32 ] }* %array_ptr18 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr21
  br label %__compare9

__fresh31:
  br label %__compare9

__compare9:
  %comparison_result22 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr21, 3
  br i1 %comparison_result22, label %__body10, label %__end11

__fresh32:
  br label %__body10

__body10:
  store { i32, [ 0 x i32 ] }** %index_ptr21, i32* %i23
  %array_ptr24 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array25 = bitcast { i32, [ 0 x i32 ] }* %array_ptr24 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr27
  br label %__compare6

__fresh33:
  br label %__compare6

__compare6:
  %comparison_result28 = icmp slt i32* %index_ptr27, 3
  br i1 %comparison_result28, label %__body7, label %__end8

__fresh34:
  br label %__body7

__body7:
  store i32* %index_ptr27, i32* %i29
  %index_ptr27 = add i32* %index_ptr27, 1
  br label %__compare6

__fresh35:
  br label %__end8

__end8:
  %index_ptr21 = add { i32, [ 0 x i32 ] }** %index_ptr21, 1
  br label %__compare9

__fresh36:
  br label %__end11

__end11:
  %a230 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array19, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a230
  %array_ptr31 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array32 = bitcast { i32, [ 0 x i32 ] }* %array_ptr31 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr34
  br label %__compare15

__fresh37:
  br label %__compare15

__compare15:
  %comparison_result35 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr34, 3
  br i1 %comparison_result35, label %__body16, label %__end17

__fresh38:
  br label %__body16

__body16:
  store { i32, [ 0 x i32 ] }** %index_ptr34, i32* %i36
  %array_ptr37 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array38 = bitcast { i32, [ 0 x i32 ] }* %array_ptr37 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr40
  br label %__compare12

__fresh39:
  br label %__compare12

__compare12:
  %comparison_result41 = icmp slt i32* %index_ptr40, 3
  br i1 %comparison_result41, label %__body13, label %__end14

__fresh40:
  br label %__body13

__body13:
  store i32* %index_ptr40, i32* %i42
  %index_ptr40 = add i32* %index_ptr40, 1
  br label %__compare12

__fresh41:
  br label %__end14

__end14:
  %index_ptr34 = add { i32, [ 0 x i32 ] }** %index_ptr34, 1
  br label %__compare15

__fresh42:
  br label %__end17

__end17:
  %a343 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array32, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a343
  %array_ptr44 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array45 = bitcast { i32, [ 0 x i32 ] }* %array_ptr44 to { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* 
  store i32 1, { i32, [ 0 x i32 ] }** %index_ptr47
  br label %__compare21

__fresh43:
  br label %__compare21

__compare21:
  %comparison_result48 = icmp slt { i32, [ 0 x i32 ] }** %index_ptr47, 3
  br i1 %comparison_result48, label %__body22, label %__end23

__fresh44:
  br label %__body22

__body22:
  store { i32, [ 0 x i32 ] }** %index_ptr47, i32* %i49
  %array_ptr50 = call { i32, [ 0 x i32 ] }* @oat_alloc_array ( i32 3 )
  %array51 = bitcast { i32, [ 0 x i32 ] }* %array_ptr50 to { i32, [ 0 x i32 ] }* 
  store i32 1, i32* %index_ptr53
  br label %__compare18

__fresh45:
  br label %__compare18

__compare18:
  %comparison_result54 = icmp slt i32* %index_ptr53, 3
  br i1 %comparison_result54, label %__body19, label %__end20

__fresh46:
  br label %__body19

__body19:
  store i32* %index_ptr53, i32* %i55
  %index_ptr53 = add i32* %index_ptr53, 1
  br label %__compare18

__fresh47:
  br label %__end20

__end20:
  %index_ptr47 = add { i32, [ 0 x i32 ] }** %index_ptr47, 1
  br label %__compare21

__fresh48:
  br label %__end23

__end23:
  %a456 = alloca { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }*
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %array45, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a456
  %_lhs57 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a230
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs57, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a117
  %_lhs58 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a117
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs58, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a343
  %_lhs59 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a456
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs59, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a117
  %_lhs60 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a343
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs60, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a230
  %_lhs61 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a230
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs61, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a456
  %_lhs62 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a456
  store { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs62, { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a343
  %size_ptr64 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a343, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr64, i32 0 )
  %index_ptr63 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a343, i32 0, i32 1, i32 0
  %size_ptr66 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a343, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr66, i32 0 )
  %index_ptr65 = getelementptr { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %a343, i32 0, i32 1, i32 0
  %_lhs67 = load { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }** %a343
  ret { i32, [ 0 x { i32, [ 0 x i32 ] }* ] }* %_lhs67
}


