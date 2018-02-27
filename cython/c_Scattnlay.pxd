# -*- mode: python -*-

# This could be part of the  nMie.pyx file, but it could be useful to have a specific namespace (import c_nMie)

cdef extern from "../src_c/scattnlay.h":
    void smain(int L, double x0, double mr0, double mi0);
    #int smain(int argc, char* argv[]);
    
