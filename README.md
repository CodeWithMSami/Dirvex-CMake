# Dirvex — CMake Showcase

Dirvex is a C++ project for demonstrating a professional CMake workflow. The repository focuses on modular library targets, dependency management with vcpkg, Ninja build presets, CTest, packaging, and continuous integration.

> This repository is a CMake learning and portfolio project. The application entry point and UI, core, and filesystem implementations are intentionally minimal.

## Build stack

- C++23
- CMake and Ninja
- SDL3 and GoogleTest through vcpkg
- CTest for test discovery and execution
- CPack for DEB and ZIP packages
- GitHub Actions for CI

## Project layout

```text
Dirvex/
├── CMakeLists.txt
├── CMakePresets.json
├── vcpkg.json
├── cmake/                 # Build, compiler, package, and CPack settings
├── include/               # Public headers
├── src/                   # Core, Filesystem, UI, and application sources
├── tests/                 # Test targets
├── docs/                  # Compiler and configuration build guides
└── images/                # README artwork
```

## Requirements

- CMake 3.25 or newer for the version 6 preset schema (the project requests policies through 4.4)
- Ninja
- GCC or Clang matching the selected preset
- vcpkg
- ccache

The presets refer to `VCPKG_ROOT` for the vcpkg toolchain. Set it to your vcpkg checkout before configuring. The compiler and Ninja paths in `CMakePresets.json` should also match the tools installed on your machine.

## Configure, build, and test

Choose one of the available presets: `clang-debug`, `clang-release`, `gcc-debug`, or `gcc-release`.

```bash
export VCPKG_ROOT=/path/to/vcpkg
cmake --preset gcc-debug
cmake --build --preset gcc-debug
ctest --test-dir build/gcc-debug --output-on-failure
```

See the [documentation index](docs/README.md) for the full GCC and Clang workflows.

## License

Dirvex is available under the MIT License. See [LICENSE](LICENSE).
