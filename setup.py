#from distutils.core import setup
#from Cython.Build import cythonize

#setup(
#  name = 'Hello world app',
#  ext_modules = cythonize("hello.pyx"),
#)

"""Setup file to compile the sources and install the package on your system
"""
from distutils.core import setup
#import versioneer

# Build the main package, with script etc...
# ==========================================
setup(name = 'pyWrap',
      description       = "example python package using c++",
      author            = "Davide Ori",
      packages = ["pyWrap"]#,
      #scripts = ["scripts/myscript.py"],
      #version = versioneer.get_version(),
      #cmdclass = versioneer.get_cmdclass()
      )


# Build the extensions
# --------------------

# Build the cython extension
# --------------------------
from distutils.extension import Extension
from Cython.Distutils import build_ext

# AFAIU Create extension objects to be passed to the setup() function
cpphellolib = Extension("pyWrap.cpphellolib",  # indicate where it should be available this will be the name of the module to be imported
                      sources=["cython/hello.pyx",
                               "src_cpp/hello.cpp",
                               ],
                      extra_compile_args=["-O3", "--std=c++11", "-ffast-math", "-Wall", "-fPIC"],
                      language="c++")

cppalgebralib = Extension("pyWrap.cppalgebralib",
                      sources=["cython/algebra.pyx",
                               "src_cpp/algebra.cpp",
                               ],
                      extra_compile_args=["-O3", "--std=c++11", "-ffast-math", "-Wall", "-fPIC"],
                      language="c++")

cScattnlay = Extension("pyWrap.cScattnlay",
                      sources=["cython/cScattnlay.pyx",
                               "src_c/scattnlay.c",
                               "src_c/nmie.c",
                               "src_c/ucomplex.c"
                               ],
                      extra_compile_args=["-O3", "-ffast-math", "-Wall", "-lm", "-fPIC", "-std=c99"], # might be a problem for non gcc compilers (macosx)
                      language="c")

cMie = Extension("pyWrap.cMie",
                sources=["cython/cMie.pyx",
                         "src_c/cMie.c"],
                extra_compile_args=["-O3", "-ffast-math", "-Wall", "-lm", "-fPIC", "-std=c99"],
                language='c')

setup(
    cmdclass = {'build_ext': build_ext},
    ext_modules = [cpphellolib,cppalgebralib,cScattnlay,cMie]
    )
