<div align="center">

# ⚙️ LLVM Compiler

### IR Generation · Optimization Passes · CFG Analysis

![LLVM](https://img.shields.io/badge/LLVM-15+-6c63ff?style=for-the-badge&logo=llvm&logoColor=white)
![Clang](https://img.shields.io/badge/Clang-Frontend-00d4aa?style=for-the-badge&logo=llvm&logoColor=white)
![Language](https://img.shields.io/badge/Language-C%2FC%2B%2B-f5a623?style=for-the-badge&logo=c&logoColor=white)
![Build](https://img.shields.io/badge/Build-CMake-4da6ff?style=for-the-badge&logo=cmake&logoColor=white)
![License](https://img.shields.io/badge/License-MIT-4caf88?style=for-the-badge)

A compiler built on LLVM infrastructure — from frontend parsing and IR generation through optimization passes and native code emission. Covers SSA transformation, control flow graphs, and the full LLVM pass manager pipeline.

</div>

---

## Prerequisites

> Requires **LLVM 15+**. Verify with `llvm-config --version` before building.

```bash
sudo apt update && sudo apt install llvm clang cmake ninja-build graphviz
```

---

## Build

```bash
# Configure
cmake -G Ninja -DCMAKE_BUILD_TYPE=Release -B build

# Compile
cmake --build build
```

---

## Usage

```bash
# Compile a source file
./compiler input.c -o output

# Emit LLVM IR (unoptimized)
./compiler input.c --emit-ir -o output.ll

# Emit LLVM IR (with O2)
./compiler input.c --emit-ir -O2 -o output.ll

# Emit assembly
./compiler input.c --emit-asm -o output.s
```

---



## Compiler Pipeline

```
┌─────────────┐     ┌─────────────┐     ┌─────────────┐     ┌─────────────┐
│   Frontend  │────▶│   IR Gen    │────▶│  Optimizer  │────▶│   Codegen   │
│             │     │             │     │             │     │             │
│ Lex · Parse │     │ AST → LLVM  │     │ Pass Manager│     │ IR → Native │
│    · AST    │     │  IR · SSA   │     │ DCE · Inline│     │    Code     │
└─────────────┘     └─────────────┘     └─────────────┘     └─────────────┘
```

---

## Key Optimization Passes

| Pass | Description |
|------|-------------|
| `mem2reg` | Promotes stack variables to SSA registers — eliminates alloca/load/store chains |
| `simplifycfg` | Removes unreachable blocks and merges redundant branches |
| `constprop` | Folds constant expressions at compile time |
| `dce` | Eliminates dead instructions with no side effects |
| `loop-unroll` | Expands loop bodies to reduce branch overhead |
| `licm` | Hoists loop-invariant computations out of the loop body |
| `gvn` | Removes redundant computations via global value numbering |
| `inline` | Replaces call sites with callee body to enable further optimization |

---

## Running Passes Manually

```bash
# Promote memory to registers
opt -passes=mem2reg input.ll -S -o out.ll

# Simplify control flow
opt -passes=simplifycfg input.ll -S -o out.ll

# Loop optimizations
opt -passes='loop-simplify,loop-unroll' input.ll -S -o out.ll

# Inspect the full O3 pipeline
clang -O3 -mllvm -print-pipeline-passes input.c -o /dev/null
```

---


## Running Tests

```bash
cmake --build build --target test

# Verbose output
cd build && ctest --output-on-failure
```

---

## Tools

| Tool | Role | Category |
|------|------|----------|
| `clang` | C/C++ source → LLVM IR | ![Frontend](https://img.shields.io/badge/Frontend-6c63ff?style=flat-square) |
| `opt` | Apply and inspect LLVM passes | ![Optimizer](https://img.shields.io/badge/Optimizer-00d4aa?style=flat-square) |
| `llc` | LLVM IR → target assembly / object code | ![Codegen](https://img.shields.io/badge/Codegen-ff6b6b?style=flat-square) |
| `graphviz` | Render DOT files into CFG images | ![Visualizer](https://img.shields.io/badge/Visualizer-f5a623?style=flat-square) |
| `cmake` | Build system configuration | ![Build](https://img.shields.io/badge/Build-4da6ff?style=flat-square) |
| `llvm-dis` | Disassemble bitcode to readable IR | ![Debug](https://img.shields.io/badge/Debug-4caf88?style=flat-square) |

---


<div align="center">

![MIT License](https://img.shields.io/badge/License-MIT-4caf88?style=for-the-badge)

</div>
