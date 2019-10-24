Chocolatey package for CUnit

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Git, Visual Studio 2019 Command line tools and CMake.

- Download and extract CUnit from https://svwh.dl.sourceforge.net/project/cunit/CUnit/2.1-3/CUnit-2.1-3.tar.bz2
- Copy the contents of the `build/` subdirectory into the root of the CUnit sources
- Apply the patch using your favorite patching application: `git apply snprintf.patch`
- Create a CMake build directory and run `cmake -G "NMake Makefiles" -DBUILD_SHARED_LIBS=ON -DCMAKE_BUILD_TYPE=RelWithDebInfo -DCMAKE_INSTALL_PREFIX=PATH_TO_THIS_DIRECTORY PATH_TO_CUNIT_SOURCES`.
- Run `nmake install`.
- Run `choco pack`.
- Test the package and if it's good upload it somewhere your end users can reach it.
