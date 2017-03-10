set ( _PREFIX "$ENV{ChocolateyInstall}/lib/tinyxml-usestl")
set (TinyXML_ROOT_DIR "${_PREFIX}")
set (TinyXML_INCLUDE_DIRS "${_PREFIX}/include")
set (TinyXML_LIBRARIES debug "${_PREFIX}/lib.tinyxmld.lib" optimized "${_PREFIX}/lib/tinyxml.lib")
