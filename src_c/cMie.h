#include <complex.h>

void Mie(double x, double complex m);

int Nmax(double x, double complex m);

double complex calc_an(int n, double XL, double complex Ha, double complex mL, double complex PsiXL, double complex ZetaXL, double complex PsiXLM1, double complex ZetaXLM1);

double complex calc_bn(int n, double XL, double complex Hb, double complex mL, double complex PsiXL, double complex ZetaXL, double complex PsiXLM1, double complex ZetaXLM1);

double complex calc_S1_n(int n, double complex an, double complex bn, double Pin, double Taun);

double complex calc_S2_n(int n, double complex an, double complex bn, double Pin, double Taun);

int calc_Mie(double x, double complex m, int nTheta, double Theta[], double *Qext, double *Qsca, double *Qabs, double *Qbk, double complex S1[], double complex S2[]);
