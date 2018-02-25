# -*- mode: python -*-

# This could be part of the  hello.pyx file, but it could be useful to have a specific namespace (import hello_c)

cdef extern from "../src_cpp/hello.h":
    void printHello();

