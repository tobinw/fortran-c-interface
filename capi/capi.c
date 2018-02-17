#include "capi.h"
#include <stdio.h>
#include <stdlib.h>
int pass_by_val(int one, double two)
{
  printf("%d,%f\n",one,two);
  return 0;
}
int pass_by_ptr(int * one, double * two)
{
  *one += 1;
  *two += 1;
  printf("%d,%f\n",*one,*two);
  return 0;
}
struct Node
{
  Node * l;
  Node * r;
  int val;
};
Node * create_node(double v, Node * l, Node * r)
{
  Node * rslt = malloc(sizeof(*rslt));
  rslt->l = l;
  rslt->r = r;
  rslt->val = v;
  printf("N @ %d: value %f, left %p, right %p, created\n",rslt,v,l,r);
  return rslt;
}
void destroy_node(Node * n)
{
  free(n);
}
void add_left(Node * n, Node * l)
{
  n->l = l;
  printf("N @ %d: add left @ %p\n",n,l);
}
void add_right(Node * n, Node * r)
{
  n->r = r;
  printf("N @ %d: add right @ %p\n",n,r);
}
Node * get_left(Node * n)
{
  printf("N @ %d: get left: %p\n",n,n->l);
  return n->l;
}
Node * get_right(Node * n)
{
  printf("N @ %d: get right: %p\n",n,n->r);
  return n->r;
}
int get_node_val(Node * n)
{
  printf("N @ %d: get val: %f\n",n,n->val);
  return n->val;
}
