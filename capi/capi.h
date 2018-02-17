#ifndef CAPI_H_
#define CAPI_H_
int pass_by_val(int one, double two);
int pass_by_ptr(int * one, double * two);
typedef struct Node Node;
Node * create_node(double v, Node * l, Node * r);
void destroy_node(Node * n);
void add_left(Node * n, Node * l);
void add_right(Node * n, Node * r);
Node * get_left(Node * n);
Node * get_right(Node * n);
int get_node_val(Node * n);
#endif
