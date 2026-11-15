cmake_minimum_required(VERSION 3.8...4.4)

project(
    Dirvex
    VERSION 1.0
    DESCRIPTION "Dirvex is a terminal like App."
    LANGUAGES CXX
)

include(${CMAKE_SOURCE_DIR}/cmake/build.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/packages.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/compilation.cmake)

add_executable(
    Dirvex
    ${CMAKE_CURRENT_SOURCE_DIR}/src/main.cpp
)

target_include_directories(
    Dirvex
    PRIVATE 
    ${CMAKE_CURRENT_SOURCE_DIR}/include
)

add_subdirectory(${CMAKE_SOURCE_DIR}/src/Filesystem)
add_subdirectory(${CMAKE_SOURCE_DIR}/src/Ui)
add_subdirectory(${CMAKE_SOURCE_DIR}/src/Core)

target_link_libraries(
    Dirvex
    PRIVATE Dirvex::Core
)

include(${CMAKE_SOURCE_DIR}/cmake/target_property.cmake)
include(${CMAKE_SOURCE_DIR}/cmake/cpack.cmake)

add_subdirectory(${CMAKE_SOURCE_DIR}/tests)
