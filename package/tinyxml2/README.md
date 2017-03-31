Chocolatey Package for TinyXML2.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Git, Visual Studio 2015 Command line tools, CMake, Chocolatey, and a text editor.

- Clone or download https://github.com/leethomason/tinxml2
- Create a CMake build directory and run `cmake -G "Visual Studio 14 2015 Win64" PATH_TO_TINYXML_VENDOR`.
- Run `msbuild ALL_BUILD.sln /p:Configuration=Release`
- Copy the tinyxml.lib file to the package lib/ directory.
- Run `msbuild ALL_BUILD.sln /p:Configuration=Debug`
- Rename the tinyxml.lib file to tinyxmld.lib and copy it to the package lib/ directory.
- Find the debug symbols (a .pdb file) in the build directory. I have to use File Explorer's search to find it.
- Copy *.h from the tinyxml source directory to the package include/ directory.
- Verify the information in the package share/cmake/ directory and nuspec.
- Run `choco pack`.
- Test the package and if it's good upload it somewhere your end users can reach it.