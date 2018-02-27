# -*- mode: python -*-
#cython: boundscheck=False
#cython: wraparound=False
# Comments above are special. Please do not remove.
cimport numpy as np  # needed for function arguments
import numpy as np # needed for np.empty_like

cimport c_Scattnlay

ctypedef np.float32_t float_t
ctypedef np.float64_t double_t
ctypedef np.int32_t int_t
ctypedef np.complex128_t complex_t

def cMie(double_t wl,double_t size,complex_t m, th=None):
#    print('I am python3 c++ cMie, and for some reason I want everything in nanometers')
#    print('./scattnlay -l Layers x1 m1.r m1.i [x2 m2.r m2.i ...] [-t ti tf nt] [-c comment]')
    #c=299792458.0
    cdef double_t x
    x=np.pi*size/wl
#    print(x,m.real,m.imag)
    #c_Scattnlay.smain(5,"./scattnlay -l 1 "+str(x)+" "+str(m.real)+" "+str(m.imag))
    cdef int_t Nl
    Nl=1
    c_Scattnlay.smain(Nl,x,m.real,m.imag)
    
    
