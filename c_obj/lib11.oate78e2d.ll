declare i8* @string_of_array({ i32, [ 0 x i32 ] }*)
declare { i32, [ 0 x i32 ] }* @array_of_string(i8*)
declare void @print_string(i8*)
declare void @print_int(i32)
declare void @print_bool(i1)
declare i32* @oat_malloc(i32)
declare { i32, [ 0 x i32 ] }* @oat_alloc_array(i32)
declare void @oat_array_bounds_check(i32, i32)
@_oat_string1882.str. = private unnamed_addr constant [ 11 x i8 ] c "1234967890\00", align 4
@_oat_string1882 = global i8* getelementptr inbounds ([ 11 x i8 ]* @_oat_string1882.str., i32 0, i32 0), align 4
define void @oat_init (){

__fresh850:
  ret void
}


define i32 @program (i32 %argc1880, { i32, [ 0 x i8* ] }* %argv1878){

__fresh845:
  %argc_slot1881 = alloca i32
  store i32 %argc1880, i32* %argc_slot1881
  %argv_slot1879 = alloca { i32, [ 0 x i8* ] }*
  store { i32, [ 0 x i8* ] }* %argv1878, { i32, [ 0 x i8* ] }** %argv_slot1879
  %strval1883 = load i8** @_oat_string1882
  %ret1884 = call { i32, [ 0 x i32 ] }* @array_of_string ( i8* %strval1883 )
  %arr1885 = alloca { i32, [ 0 x i32 ] }*
  store { i32, [ 0 x i32 ] }* %ret1884, { i32, [ 0 x i32 ] }** %arr1885
  %sum1886 = alloca i32
  store i32 0, i32* %sum1886
  %i1887 = alloca i32
  store i32 0, i32* %i1887
  br label %__cond841

__cond841:
  %_lhs1888 = load i32* %i1887
  %bop1889 = icmp slt i32 %_lhs1888, 10
  br i1 %bop1889, label %__body840, label %__post839

__fresh846:
  br label %__body840

__body840:
  %_lhs1890 = load i32* %i1887
  %size_ptr1892 = getelementptr { i32, [ 0 x i32 ] }* %arr1885, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1892, i32 %_lhs1890 )
  %index_ptr1891 = getelementptr { i32, [ 0 x i32 ] }* %arr1885, i32 0, i32 1, i32 %_lhs1890
  %_lhs1893 = load i32* %i1887
  store i32 %_lhs1893, { i32, [ 0 x i32 ] }** %arr1885
  %_lhs1894 = load i32* %i1887
  %bop1895 = add i32 %_lhs1894, 1
  store i32 %bop1895, i32* %i1887
  br label %__cond841

__fresh847:
  br label %__post839

__post839:
  %i1896 = alloca i32
  store i32 0, i32* %i1896
  br label %__cond844

__cond844:
  %_lhs1897 = load i32* %i1896
  %bop1898 = icmp slt i32 %_lhs1897, 10
  br i1 %bop1898, label %__body843, label %__post842

__fresh848:
  br label %__body843

__body843:
  %_lhs1899 = load i32* %sum1886
  %_lhs1900 = load i32* %i1896
  %size_ptr1902 = getelementptr { i32, [ 0 x i32 ] }* %arr1885, i32 0, i32 0
  call void @oat_array_bounds_check( i32 %size_ptr1902, i32 %_lhs1900 )
  %index_ptr1901 = getelementptr { i32, [ 0 x i32 ] }* %arr1885, i32 0, i32 1, i32 %_lhs1900
  %_lhs1903 = load { i32, [ 0 x i32 ] }** %arr1885
  %bop1904 = add i32 %_lhs1899, %_lhs1903
  store i32 %bop1904, i32* %sum1886
  %_lhs1905 = load i32* %i1896
  %bop1906 = add i32 %_lhs1905, 1
  store i32 %bop1906, i32* %i1896
  br label %__cond844

__fresh849:
  br label %__post842

__post842:
  %_lhs1907 = load i32* %sum1886
  ret i32 %_lhs1907
}


