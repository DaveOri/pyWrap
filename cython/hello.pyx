# -*- mode: python -*-
#cython: boundscheck=False
#cython: wraparound=False
# Comments above are special. Please do not remove.
cimport numpy as np  # needed for function arguments
import numpy as np # needed for np.empty_like

#cimport printHello
# This could be part of the  hello.pyx file, but it could be useful to have a specific namespace (import hello_c)
cdef extern from "../src_cpp/hello.h":
    void printHello();


ctypedef np.float32_t float_t
ctypedef np.float64_t double_t
ctypedef np.int32_t int_t

def cpp_printHello():
    print('I am python3')
    printHello()
