import ctypes

hello_lib = ctypes.cdll.LoadLibrary("./hello.so")
hello = hello_lib.main

print(hello())

somma = hello_lib.sum

a = 1
b = 2


c = somma(a,b)

print(a,b,c)

somma2 = hello_lib.sum_args

a = 3
b = 4
d = ctypes.c_int()
somma2(a,b,ctypes.byref(d))

print(a,b,d)
