# -*- mode: python -*-

# This could be part of the  nMie.pyx file, but it could be useful to have a specific namespace (import c_nMie)

cdef extern from "../src_c/cMie.h":
    void Mie(double x, double complex m);
    
