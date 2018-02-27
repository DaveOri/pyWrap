# -*- mode: python -*-

# This could be part of the  nMie.pyx file, but it could be useful to have a specific namespace (import c_nMie)

cdef extern from "../src_c/nmie.h":
    int nMie(int L, double x[], complex m[], int nTheta, double Theta[], double *Qext, double *Qsca, double *Qabs, double *Qbk, double *Qpr, double *g, double *Albedo, complex S1[], complex S2[]);
    
