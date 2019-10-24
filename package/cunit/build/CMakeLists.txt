cmake_minimum_required(VERSION 3.0.2)
project(CUnit LANGUAGES C)

# Export all symbols when building a DLL on MSVC
if(WIN32 AND MSVC AND BUILD_SHARED_LIBS)
  set(CMAKE_WINDOWS_EXPORT_ALL_SYMBOLS ON)
endif()

# Build target
set(SOURCES_DIR "CUnit/Sources")
set(HEADERS_DIR "CUnit/Headers")

set(VERSION "${MAJOR}.${MINOR}")
set(RELEASE "${PATCH}")
configure_file("${HEADERS_DIR}/CUnit.h.in" "CUnit.h" @ONLY)

set(BASIC_HEADERS "${HEADERS_DIR}/Basic.h")
set(BASIC_SOURCES "${SOURCES_DIR}/Basic/Basic.c")
set(AUTOMATED_HEADERS "${HEADERS_DIR}/Automated.h")
set(AUTOMATED_SOURCES "${SOURCES_DIR}/Automated/Automated.c")
set(CONSOLE_HEADERS "${HEADERS_DIR}/Console.h")
set(CONSOLE_SOURCES "${SOURCES_DIR}/Console/Console.c")

set(FRAMEWORK_DIR "${SOURCES_DIR}/Framework")
set(FRAMEWORK_HEADERS "${HEADERS_DIR}/CUError.h"
                      "${HEADERS_DIR}/MyMem.h"
                      "${HEADERS_DIR}/TestDB.h"
                      "${HEADERS_DIR}/TestRun.h"
                      "${HEADERS_DIR}/Util.h"
                      "${HEADERS_DIR}/CUnit_intl.h"
                      "${CMAKE_CURRENT_BINARY_DIR}/CUnit.h")
set(FRAMEWORK_SOURCES "${FRAMEWORK_DIR}/CUError.c"
                      "${FRAMEWORK_DIR}/MyMem.c"
                      "${FRAMEWORK_DIR}/TestDB.c"
                      "${FRAMEWORK_DIR}/TestRun.c"
                      "${FRAMEWORK_DIR}/Util.c")

add_library(
  cunit
    ${BASIC_HEADERS}
    ${BASIC_SOURCES}
    ${AUTOMATED_HEADERS}
    ${AUTOMATED_SOURCES}
    ${CONSOLE_HEADERS}
    ${CONSOLE_SOURCES}
    ${FRAMEWORK_HEADERS}
    ${FRAMEWORK_SOURCES})

target_include_directories(
  cunit
  PRIVATE
    "${HEADERS_DIR}"
    "${CMAKE_CURRENT_BINARY_DIR}")

# Install target
install(
  TARGETS
    cunit
  ARCHIVE DESTINATION
    lib
  LIBRARY DESTINATION
    lib
  RUNTIME DESTINATION
    lib
  PERMISSIONS
    OWNER_READ OWNER_WRITE
    GROUP_READ GROUP_WRITE
    WORLD_READ)

install(
  FILES
    $<TARGET_PDB_FILE:cunit>
  DESTINATION
    bin
  OPTIONAL)

install(
  FILES
    ${BASIC_HEADERS}
    ${AUTOMATED_HEADERS}
    ${CONSOLE_HEADERS}
    ${FRAMEWORK_HEADERS}
  DESTINATION
    include/CUnit)

