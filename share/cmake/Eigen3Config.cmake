get_filename_component (_PREFIX "${CMAKE_CURRENT_LIST_DIR}/../.." ABSOLUTE)
set (Eigen3_INCLUDE_DIRS "${_PREFIX}/include")
# Compatibility with nonstandard and legacy package variable expectations.
set (Eigen3_INCLUDE_DIR "${Eigen3_INCLUDE_DIRS}")
set (EIGEN3_INCLUDE_DIRS "${Eigen3_INCLUDE_DIRS}")
set (EIGEN3_INCLUDE_DIR "${Eigen3_INCLUDE_DIRS}")
