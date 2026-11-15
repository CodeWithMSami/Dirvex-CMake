enable_testing()

include(GoogleTest)

add_executable(CoreTest ${CMAKE_CURRENT_SOURCE_DIR}/core.cpp)
add_executable(FilesystemTest ${CMAKE_CURRENT_SOURCE_DIR}/filesystem.cpp)
add_executable(UiTest ${CMAKE_CURRENT_SOURCE_DIR}/ui.cpp)

target_link_libraries(
    CoreTest
    PRIVATE
    GTest::gtest_main
    Dirvex::Core
)

target_link_libraries(
    FilesystemTest
    PRIVATE
    Dirvex::Filesystem
)

target_link_libraries(
    UiTest
    PRIVATE
    Dirvex::Ui
)

add_test(
    NAME FilesystemTest
    COMMAND FilesystemTest
)

add_test(
    NAME UiTest
    COMMAND UiTest
)

gtest_discover_tests(CoreTest)