import timeit

timeit.timeit('ps.MieQ(1.77+0.63j,375,300,asDict=True)',number=10,setup='import PyMieScatt as ps')
timeit.timeit('cs.cMie(375.,300.,1.77+0.63j)',number=10,setup='from pyWrap import cScattnlay as cs;')
