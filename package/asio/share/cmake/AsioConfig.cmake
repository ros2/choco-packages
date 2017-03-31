get_filename_component (_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
set (Asio_INCLUDE_DIRS "${_PREFIX}/include")
# Compatibility with nonstandard and legacy package variable expectations.
set (Asio_INCLUDE_DIR "${Asio_INCLUDE_DIRS}")
set (ASIO_INCLUDE_DIRS "${Asio_INCLUDE_DIRS}")
set (ASIO_INCLUDE_DIR "${Asio_INCLUDE_DIRS}")
