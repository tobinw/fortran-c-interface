cmake_minimum_required(VERSION 3.1)
project(fortran-c-api LANGUAGES C Fortran)

set(CMAKE_BUILD_TYPE Debug)

add_library(capi capi/capi.c capi/fapi.c)
set(headers capi/capi.h capi/fapi.h)
install(TARGETS capi DESTINATION lib)
install(FILES ${headers} DESTINATION include)

set(CMAKE_Fortran_FLAGS "${CMAKE_Fortran_FLAGS} -fdefault-real-8")
add_executable(fcapi fsrc/main.f90 fsrc/capi.f90)
target_link_libraries(fcapi capi)
