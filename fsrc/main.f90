program fortran_c_api
  use iso_c_binding
  use capi_mod
  type(c_ptr) top
  type(c_ptr) left
  type(c_ptr) right
  type(c_ptr) left_get
  type(c_ptr) right_get
  integer one
  real two
  integer result
  real lval
  real rval
  result = pass_by_val(one,two)
  result = pass_by_ptr(one,two)
  left = create_node(1.,C_NULL_PTR,C_NULL_PTR)
  print *,'N @ ', left, ': value ', 1.0, ', left (nil), right (nil), created'
  right = create_node(2.,C_NULL_PTR,C_NULL_PTR)
  print *,'N @ ', right, ': value ', 2.0, ', left (nil), right (nil), created'
  top = create_node(0.0,left,right)
  print *,'N @ ', top, ': value ', 0.0, ', left ', left, ', right ', right, ' created'
  left_get = get_left(top)
  print *,'N @ ', top, ': get left: ', left_get
  right_get = get_right(top)
  print *,'N @ ', top, ': get right: ', right_get
  lval = get_node_val(left_get)
  print *,'N @ ', left_get, ': get val: ', lval
  rval = get_node_val(right_get)
  print *,'N @ ', right_get, ': get val: ', rval
  result = pass_by_val(2,lval)
  result = pass_by_val(3,rval)
  call destroy_node(left)
  call destroy_node(right)
  call destroy_node(top)
end program fortran_c_api
