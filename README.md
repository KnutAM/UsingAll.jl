# UsingAll.jl

[![Build Status](https://github.com/KnutAM/UsingAll.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/KnutAM/UsingAll.jl/actions/workflows/CI.yml?query=branch%3Amain)
[![Coverage](https://codecov.io/gh/KnutAM/UsingAll.jl/branch/main/graph/badge.svg)](https://codecov.io/gh/KnutAM/UsingAll.jl)

A single-macro package, providing the macro `@useall PackageName` which is equivalent to Python's `from PackageName import *` for **debugging** and **development**. The goal is to have the REPL behave as if the code you write are part of the package code - the only exception is that to overload function, a qualified name must still be used.

> [!NOTE]  
> Please don't use in your package, it is **only** intended for developing and debugging purposes.

### Example
```julia
using LinearAlgebra
@useall LinearAlgebra
```

### Installation 
```julia
using Pkg
Pkg.add("https://github.com/KnutAM/UsingAll.jl.git")
```
