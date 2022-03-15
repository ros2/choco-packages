Chocolatey Package for Bullet.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Git, Visual Studio 2019 Command line tools, CMake, Chocolatey, and a text editor.

Building bullet from source on windows is difficult.
The vcpkg team has already done it, so run these commands to get vcpkg and make it build bullet.

```
git clone https://github.com/Microsoft/vcpkg.git --depth 1 -b 2022.02.23
cd vcpkg
call bootstrap-vcpkg.bat
vcpkg install bullet3
```

Copy all files from these directories to the directories of the same name in this repository `packages/bullet`.

* `vcpkg\packages\bullet3_x86-windows\debug`
* `vcpkg\packages\bullet3_x86-windows\include`
* `vcpkg\packages\bullet3_x86-windows\lib`
* `vcpkg\packages\bullet3_x86-windows\share`

Make the chocolately package

```
choco pack
```

There should now be a file called `bullet.3.17.nupkg` in the same directory.
Test the package and if it's good upload it somewhere your end users can reach it.
