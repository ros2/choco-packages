Chocolatey Package for TinyXML.

This package is beta quality and designed for a specific application.
At this time it is not recommended to distribute this package outside of the
tutorial application which requires it.

To build the package, follow these steps.

You need Visual Studio 2015, Chocolatey, and a text editor.
Download TinyXML.
Open the TinyXMLSTL solution / visual studio project file in Visual Studio.
Build the TinyXMLSTL project with the Release/Win32 project configuration.
Copy tinyxmlSTL.lib to the package lib/ directory.
Copy *.h from the tinyxml source directory to the package include/ directory.
Verify the information in the package share/cmake/ directory and nuspec.
Run `choco pack`.
Test the package and if it's good upload it somewhere your end users can reach it.