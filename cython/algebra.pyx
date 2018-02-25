# -*- mode: python -*-
#cython: boundscheck=False
#cython: wraparound=False
# Comments above are special. Please do not remove.
cimport numpy as np  # needed for function arguments
import numpy as np # needed for np.empty_like

cimport cppAlgebraLib

ctypedef np.float32_t float_t
ctypedef np.float64_t double_t
ctypedef np.int32_t int_t

def cpp_vadd(np.ndarray[dtype=double_t, ndim=1, mode="c"] a, 
          np.ndarray[dtype=double_t, ndim=1, mode="c"] b):
    print('I am python3 c++ add')

    cdef np.ndarray[dtype=double_t, ndim=1, mode="c"] c
    output = np.empty_like(a, dtype='d')

    if not (a.shape[0] == b.shape[0]):
        raise ValueError("a and b shapes are not consistent")

    cppAlgebraLib.add(<double*>a.data, <double*>b.data, <double*>c.data, a.shape[0])

    return c
