Chocolatey Package for Log4cxx.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Git, Visual Studio 2017 Command line tools, CMake, Chocolatey, and a text editor.

# building on Windows Server 2016

## refs

* https://github.com/aescande/log4cxxWin32

## APR

https://apr.apache.org/download.cgi
http://archive.apache.org/dist/apr/

* apr 1.5.2
* apt-util 1.5.4

## log4cxx

https://archive.apache.org/dist/logging/log4cxx/0.10.0/

* apache-log4cxx 0.10.0

## steps

### install Visual Studio 2017

https://visualstudio.microsoft.com/downloads/

![](VisualStudio2017.png)

### install Cygwin

https://cygwin.com/setup-x86_64.exe

consider selecting:
* python
* shells
* gcc
* gnumake


### follow apache build steps
Follow steps to build log4cxx https://logging.apache.org/log4cxx/latest_stable/building/vstudio.html

### create nupack
- Copy log4cxxd.lib and log4cxx.dll to the package lib/ directory.
- Find the debug symbols (a .pdb file) in the build directory and copy it to the package lib/ directory. I have to use File Explorer's search to find it.
- Copy *.h from the log4cxx source directory to the package include/ directory.
- Verify the information in the package share/cmake/ directory and nuspec.
- Run `choco pack`.
- Test the package and if it's good upload it somewhere your end users can reach it.
