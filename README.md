# mojo_playground
Mojo programming language playground

# Installation
https://www.modular.com/
- Need to sign up with your email address first
- Need to click on the link in your email to be able to download
- Then you'll be redirected to the following site to install Modular CLI and Mojo SDK: https://developer.modular.com/download

# Getting started
https://docs.modular.com/mojo/manual/get-started/hello-world.html


# Docs
https://docs.modular.com/mojo/

# Support
Python: 3.8 - 3.11
Only Ubuntu and Mac Apple hardware for now

# Shell profile (for example, .zshrc or .bash_profile) setup to use a specific conda environment (assuming you've created one previously)
- `export MODULAR_HOME="/Users/<user>/.modular"`
- `export PATH="/Users/<user>/.modular/pkg/packages.modular.com_mojo/bin:$PATH"`
- `export MOJO_PYTHON_LIBRARY=/Users/<user>/miniconda3/envs/<your_conda_env>/lib/libpython3.11.dylib`

# To commit a file with an emoji (mojo) extension to Git, run the following command first
`git config core.quotePath false`

# Visual Code extension
- Install the Mojo extension from Modular

# Examples
- `first.mojo` code
```
fn main():
    print("Hello, world!")
```

- Run from the terminal
```
mojo first.mojo
```

- Build an executable
```
mojo build first.mojo
```
- Build and run an executable
```
mojo run first.mojo
```
- Execute
```
./first
```

# To check the current Mojo configuration
```
cat ~/.modular/modular.cfg
```

# Notes
- Mojo is not production ready yet (v0.7), by the Modular AI engine is
- Part of the MAX platform by Modular which unifies, extends, and superpowers your AI
- Modular originally launched Mojo on May 2, 2023
- Mojo is a member of the Python family
- Mojo is a superset of Python (not fully yet)
- Mojo is compiled, Python is interpreted
- Marriage of Python (high level) and Rust (type safety and performance)
- Uses indentation instead of braces, begin/end, etc. to indicate a block of code
- Brings all you need for AI into one platform, including GPU support
- Mojo scales boths for CPU and GPU
- Goal: faster AI world
- Attempts to solve the efiiciency problem for AI stacks:
  - Python
  - Rust/C++
  - CUDA
  Mojo and Max combined these levels into one unified
- Mojo gives AI superpowers to existing Python teams (no need to hire Rust or C++ developers to make your model run faster in production)
- Mojo uses MLIR (Multi-Level Intermediate Representation): https://mlir.llvm.org
- MLIR is an evolution of LLVM
- MLIR is being utilized for AI accelarators
- Mojo solves 3 world problem (Python, Frameworks, C++)
  - When you deploy a model you have a lot of challenges.
   - Python is great for research and experimenting, but for prod deployments, developers often rewrite it in C++ for efficiency
  - Mojo solves it this from research to prod using the same language
  - Also, Modular is building an AI engine written in one language
- Mojo could be much faster than Python because it is at the limit of what hardware can achieve, it was created by   working backwards from hardware accelartors
- Mojo is about unlocking full hardware potential and giving programmers access to it
- It may have the ability to surpass Python in ML and AI applications where high performance is crucial

# FYI
- 'let' is being removed, please use 'var' instead (currently a warning) - https://github.com/modularml/mojo/blob/main/proposals/remove-let-decls.md 


# Resources
- https://docs.modular.com/mojo/
- https://docs.modular.com/mojo/manual/
- https://docs.modular.com/mojo/notebooks/
- https://docs.modular.com/mojo/playground
- https://docs.modular.com/mojo/lib
- https://github.com/mojicians/awesome-mojo
- https://mojodojo.dev/
