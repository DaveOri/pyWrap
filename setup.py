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

cpplib = Extension("pyWrap.cpplib",  # indicate where it should be available !
                      sources=["cython/hello.pyx",
                               "src_cpp/hello.cpp",
                               ],
                      extra_compile_args=["-O3", "--std=c++11", "-ffast-math", "-Wall"],
                      language="c++")

setup(
    cmdclass = {'build_ext': build_ext},
    ext_modules = [cpplib]
    )
