add_library(
    Ui
    STATIC
    ${CMAKE_SOURCE_DIR}/include/Ui/ui.hpp
    ${CMAKE_SOURCE_DIR}/src/Ui/ui.cpp
)

target_include_directories(
    Ui
    PUBLIC
    ${CMAKE_SOURCE_DIR}/include
)

target_link_libraries(
    Ui
    PUBLIC SDL3::SDL3
)

add_library(Dirvex::Ui ALIAS Ui)