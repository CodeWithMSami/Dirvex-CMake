target_compile_options(
    Dirvex
    PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall;-Wextra;-Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)

target_compile_definitions(
    Dirvex
    PRIVATE 
    $<$<CONFIG:Debug>:DIRVEX_DEBUG>
    $<$<CONFIG:Release>:DIRVEX_RELEASE>
)

target_compile_options(
    Core
    PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall;-Wextra;-Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)

target_compile_definitions(
    Core
    PUBLIC
    $<$<CONFIG:Debug>:CORE_DEBUG>
    $<$<CONFIG:Release>:CORE_RELEASE>
)

target_compile_options(
    Filesystem
    PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall;-Wextra;-Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)

target_compile_definitions(
    Filesystem
    PUBLIC
    $<$<CONFIG:Debug>:FILESYSTEM_DEBUG>
    $<$<CONFIG:Release>:FILESYSTEM_RELEASE>
)

target_compile_options(
    Ui
    PRIVATE
    $<$<CXX_COMPILER_ID:GNU,Clang>:-Wall;-Wextra;-Wpedantic>
    $<$<CXX_COMPILER_ID:MSVC>:/W4>
)

target_compile_definitions(
    Ui
    PUBLIC
    $<$<CONFIG:Debug>:UI_DEBUG>
    $<$<CONFIG:Release>:UI_RELEASE>
)