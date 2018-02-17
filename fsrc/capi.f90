module capi_mod
  interface
     integer(c_int) function pass_by_val(one,two) bind(c)
       use iso_c_binding
       implicit none
       integer(c_int), value :: one
       real(c_double), value :: two
     end function pass_by_val
     integer(c_int) function pass_by_ptr(one,two) bind(c)
       use iso_c_binding
       implicit none
       integer(c_int) :: one
       real(c_double) :: two
     end function pass_by_ptr
     type(c_ptr) function create_node(v,l,r) bind(c)
       use iso_c_binding
       implicit none
       real(c_double), value :: v
       type(c_ptr), value    :: l
       type(c_ptr), value    :: r
     end function create_node
     subroutine destroy_node(n) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
     end subroutine destroy_node
     subroutine add_left(n,l) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
       type(c_ptr), value :: l
     end subroutine add_left
     subroutine add_right(n,r) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
       type(c_ptr), value :: r
     end subroutine add_right
     type(c_ptr) function get_left(n) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
     end function get_left
     type(c_ptr) function get_right(n) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
     end function get_right
     integer(c_int) function get_node_val(n) bind(c)
       use iso_c_binding
       implicit none
       type(c_ptr), value :: n
     end function get_node_val
  end interface
contains
end module capi_mod
