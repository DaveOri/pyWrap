# -*- mode: python -*-

# This could be part of the  hello.pyx file, but it could be useful to have a specific namespace (import hello_c)

cdef extern from "../src_cpp/algebra.h":
    void add(const double *a, const double *b, double *c, int N);
    
cdef extern from "../src_cpp/algebra.h":
    void cadd(const complex a, const complex b, complex c, int N);
