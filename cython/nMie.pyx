# -*- mode: python -*-
#cython: boundscheck=False
#cython: wraparound=False
# Comments above are special. Please do not remove.
cimport numpy as np  # needed for function arguments
import numpy as np # needed for np.empty_like

cimport c_nMie

ctypedef np.float32_t float_t
ctypedef np.float64_t double_t
ctypedef np.int32_t int_t
ctypedef np.complex128_t complex_t

def CnMie():
    print('I am python3 c++ cnMie')
    
#    cdef np.ndarray[dtype=double_t, ndim=1, mode="c"] c # USE "cdef TYPE variable_name" to specify variable type, do it a t top indentation level of a function
#    c = np.empty_like(a, dtype='d')
#    
#    if not (a.shape[0] == b.shape[0]):
#        raise ValueError("a and b shapes are not consistent")
#    
#    cppAlgebraLib.add(<double*>a.data, <double*>b.data, <double*>c.data, a.shape[0])
#    
#    return c

#def cpp_cadd(np.ndarray[dtype=complex_t, ndim=1, mode="c"] a):
#    print("I am python3 c++ cadd",a[0])
#    print("I am python3 c++ cadd",a[1])
#    cdef complex_t r
#    r = np.complex(5.0,5.0)
#    cppAlgebraLib.cadd(a[0],a[1],r,10)
#    print("add",a[0],a[1],r) 
