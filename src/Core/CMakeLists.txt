add_library(
    Core
    STATIC
    ${CMAKE_SOURCE_DIR}/include/Core/core.hpp
    ${CMAKE_SOURCE_DIR}/src/Core/core.cpp
)

target_include_directories(
    Core
    PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

add_library(Dirvex::Core ALIAS Core)

target_link_libraries(
    Core
    PUBLIC Dirvex::Ui
    PUBLIC Dirvex::Filesystem
)