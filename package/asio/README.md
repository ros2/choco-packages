Chocolatey Package for asio.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Chocolatey, and a text editor.

- Download asio (without boost) from https://think-async.com
- Copy the include/asio subdirectory and include/asio.hpp file to the package include directory.
- Verify the information in the package share/cmake/ directory and nuspec.
- Run `choco pack`.
- Test the package and if it's good upload it somewhere your end users can reach it.