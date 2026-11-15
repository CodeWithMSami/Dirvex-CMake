# Clang Release Build Guide

This guide explains how to configure, build, and test Dirvex using the Clang Release preset with CMake and Ninja.

## Prerequisites

- CMake 4.4.4+
- Clang 23+
- Ninja
- vcpkg
- GoogleTest

## 1. Configure Project

```bash
cmake -S . --preset clang-release
```

## 2. Build Project

```bash
cmake --build --preset clang-release
```

Build with parallel compilation:

```bash
cmake --build --preset clang-release --parallel
```

## 3. Run Tests

```bash
ctest --test-dir build/clang-release --output-on-failure
```

List discovered tests:

```bash
ctest --test-dir build/clang-release -N
```

Run tests with verbose output:

```bash
ctest --test-dir build/clang-release -V
```

Run tests in parallel:

```bash
ctest --test-dir build/clang-release --output-on-failure --parallel
```

## 4. Clean Build

```bash
rm -rf build/clang-release
```

Reconfigure and rebuild:

```bash
cmake -S . --preset clang-release
cmake --build --preset clang-release
```

## 5. Complete Workflow

```bash
# Configure
cmake -S . --preset clang-release

# Build
cmake --build --preset clang-release

# Test
ctest --test-dir build/clang-release --output-on-failure
```

## 6. Troubleshooting

Check Clang version:

```bash
clang++-23 --version
```

Check CMake version:

```bash
cmake --version
```

Check Ninja:

```bash
ninja --version
```

List available presets:

```bash
cmake --list-presets
```

Install Ninja if missing:

```bash
sudo apt install ninja-build
```

Install GoogleTest through vcpkg:

```bash
cd ~/Developer/tools/vcpkg
./vcpkg install gtest
```

---

**Build Configuration:** Clang Release  
**Build System:** CMake + Ninja  
**Testing Framework:** GoogleTest + CTest
