# -*- mode: python -*-
#cython: boundscheck=False
#cython: wraparound=False
# Comments above are special. Please do not remove.
cimport numpy as np  # needed for function arguments
import numpy as np # needed for np.empty_like

cimport c_Mie

ctypedef np.float32_t float_t
ctypedef np.float64_t double_t
ctypedef np.int32_t int_t
ctypedef np.complex128_t complex_t

#def mie(double_t x, complex_t m):#double_t wl,double_t size,complex_t m, th=None):
def mie(double_t wavelength, double_t size, complex_t m):
    print('I am python3 c cmie and refractive index is ',m,' and wl is ',wavelength,' and size is ', size)
    cdef double_t x
    x=np.pi*size/wavelength
    print('I am python3 c cmie and refractive index is ',m,' and x is ',x)   
    c_Mie.Mie(x,m)

def mie_coated(np.ndarray[dtype= double_t,ndim=1,mode='c'] x,
               np.ndarray[dtype=complex_t,ndim=1,mode='c'] m):
    raise NotImplementedError('mie_coated does nothing at the moment except receiving arguments')
    print('I am python3 c cmie and refractive index is ',m)
    c_Mie.Mie(m)
    
