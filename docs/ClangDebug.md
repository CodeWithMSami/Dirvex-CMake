# Clang Debug Build Guide

This guide explains how to configure, build, and run tests for **Dirvex** using the Clang Debug preset with CMake and Ninja.

## Prerequisites

- CMake 4.4.4+
- Clang 23+
- Ninja
- vcpkg
- GoogleTest

## 1. Configure Project

Configure the project using the `clang-debug` preset:

```bash
cmake -S . --preset clang-debug
```

## 2. Build Project

Build all configured targets:

```bash
cmake --build --preset clang-debug
```

Build with parallel compilation:

```bash
cmake --build --preset clang-debug --parallel
```

## 3. Run Tests

Run all registered tests:

```bash
ctest --test-dir build/clang-debug --output-on-failure
```

Show all discovered tests without executing them:

```bash
ctest --test-dir build/clang-debug -N
```

Run tests with verbose output:

```bash
ctest --test-dir build/clang-debug -V
```

Run tests in parallel:

```bash
ctest --test-dir build/clang-debug --output-on-failure --parallel
```

## 4. Clean Build

Remove the existing build directory:

```bash
rm -rf build/clang-debug
```

Reconfigure and rebuild:

```bash
cmake -S . --preset clang-debug
cmake --build --preset clang-debug
```

## 5. Complete Workflow

Use these commands for the complete development workflow:

```bash
# Configure
cmake -S . --preset clang-debug

# Build
cmake --build --preset clang-debug

# Test
ctest --test-dir build/clang-debug --output-on-failure
```

## 6. Troubleshooting

**CMake cannot find Ninja:**

```bash
sudo apt install ninja-build
```

**CMake cannot find GoogleTest:**

```bash
cd ~/Developer/tools/vcpkg
./vcpkg install gtest
```

**List available CMake presets:**

```bash
cmake --list-presets
```

**Check Clang version:**

```bash
clang++-23 --version
```

**Check CMake version:**

```bash
cmake --version
```

---

**Build Configuration:** Clang Debug  
**Build System:** CMake + Ninja  
**Testing Framework:** GoogleTest + CTest
