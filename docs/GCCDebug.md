# GCC Debug Build Guide

This guide explains how to configure, build, and test Dirvex using the GCC Debug preset with CMake and Ninja.

## Prerequisites

- CMake 4.4.4+
- GCC 13+
- Ninja
- vcpkg
- GoogleTest

## 1. Configure Project

```bash
cmake -S . --preset gcc-debug
```

## 2. Build Project

```bash
cmake --build --preset gcc-debug
```

Build with parallel compilation:

```bash
cmake --build --preset gcc-debug --parallel
```

## 3. Run Tests

```bash
ctest --test-dir build/gcc-debug --output-on-failure
```

List discovered tests:

```bash
ctest --test-dir build/gcc-debug -N
```

Run tests with verbose output:

```bash
ctest --test-dir build/gcc-debug -V
```

Run tests in parallel:

```bash
ctest --test-dir build/gcc-debug --output-on-failure --parallel
```

## 4. Clean Build

```bash
rm -rf build/gcc-debug
```

Reconfigure and rebuild:

```bash
cmake -S . --preset gcc-debug
cmake --build --preset gcc-debug
```

## 5. Complete Workflow

```bash
# Configure
cmake -S . --preset gcc-debug

# Build
cmake --build --preset gcc-debug

# Test
ctest --test-dir build/gcc-debug --output-on-failure
```

## 6. Troubleshooting

Check GCC version:

```bash
g++ --version
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

**Build Configuration:** GCC Debug  
**Build System:** CMake + Ninja  
**Testing Framework:** GoogleTest + CTest
