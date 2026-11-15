add_library(
    Filesystem
    STATIC
    ${CMAKE_SOURCE_DIR}/include/Filesystem/filesystem.hpp
    ${CMAKE_SOURCE_DIR}/src/Filesystem/filesystem.cpp
)

target_include_directories(
    Filesystem
    PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

add_library(Dirvex::Filesystem ALIAS Filesystem)
