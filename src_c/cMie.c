#include "cMie.h"
#include <stdio.h>

#define max(a,b) \
({ __typeof__ (a) _a = (a); \
   __typeof__ (b) _b = (b); \
   _a > _b ? _a : _b; })

#define min(a,b) \
({ __typeof__ (a) _a = (a); \
   __typeof__ (b) _b = (b); \
   _a < _b ? _a : _b; })

void Mie(double x, double complex m) {
    printf("I am C implemented Mie function ");
    printf("and I will rule the world\n");
    printf("And you passed %.1f%+.1fi\n", creal(m), cimag(m));
    printf("And x is %.1f\n",x);
    int N = Nmax(x,m);
    printf("I computed Nmax %d\n",N);
    
}

int Nmax(double x, double complex m) {
// Simpler (conservative) version respect to what proposed by Pena(2009)
    int Nstop = round(x + 4.0*pow(x,1.0/3.0)+2);
    int xml = round(cabs(x*m));
    return max(xml,Nstop) + 15;
}


