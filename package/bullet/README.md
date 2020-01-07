Chocolatey Package for Bullet.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Git, Visual Studio 2017 Command line tools, CMake, Chocolatey, and a text editor.

- Clone or download https://github.com/bulletphysics/bullet3
- Create a CMake build directory and run `cmake -G "Visual Studio 15 2017 Win64" PATH_TO_BULLET_SOURCE -DBUILD_SHARED_LIBS=ON -DUSE_DOUBLE_PRECISION=ON -DBUILD_CPU_DEMOS=OFF -DBUILD_BULLET2_DEMOS=OFF -DBUILD_OPENGL3_DEMOS=OFF -DBUILD_UNIT_TESTS=OFF -DBUILD_EXTRAS=OFF`.
- Run `msbuild ALL_BUILD.sln /p:Configuration=Release`
- Copy `Bullet*.lib` and `Bullet*.dll` located under `lib/Release` files to the package `lib/` directory.
- Run `msbuild ALL_BUILD.sln /p:Configuration=Debug`
- Copy `Bullet*_Debug.lib`, `Bullet*_Debug.dll` and `Bullet*_Debug.pdb` located under `lib/Debug` files to the package `lib/` directory.
- Run `choco pack`.
- Test the package and if it's good upload it somewhere your end users can reach it.
