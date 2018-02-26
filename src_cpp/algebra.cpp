#include "algebra.h"

void add(const double *a, const double *b, double *c, int N) {
    for(int i=0; i<N; i++) {
        c[i] = a[i] + b[i];
    }
}

void cadd(const complex<double> a, const complex<double> b, complex<double>& c, int N) {
    cout<<a<<" "<<b<<" "<<" "<<c<<endl;
    c = a + b;
    cout<<a<<" "<<b<<" "<<" "<<c<<endl;
/*    for(int i=0; i<N; i++) {
        c[i] = a[i] + b[i];
    }*/
}
