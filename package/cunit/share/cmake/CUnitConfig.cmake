get_filename_component(_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
set(CUnit_INCLUDE_DIRS "${_PREFIX}/include")
set(CUnit_LIBRARIES "${_PREFIX}/lib/cunit.lib")

# Compatibility with nonstandard and legacy package variable expectations.
set(CUnit_INCLUDE_DIR "${CUnit_INCLUDE_DIRS}")
set(CUNIT_INCLUDE_DIRS "${CUnit_INCLUDE_DIRS}")
set(CUNIT_INCLUDE_DIR "${CUnit_INCLUDE_DIRS}")
set(CUnit_LIBRARY "${CUnit_LIBRARIES}")
set(CUNIT_LIBRARIES "${CUnit_LIBRARIES}")
set(CUNIT_LIBRARY "${CUnit_LIBRARIES}")
