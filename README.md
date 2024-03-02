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
export MODULAR_HOME="/Users/<user>/.modular"
export PATH="/Users/<user>/.modular/pkg/packages.modular.com_mojo/bin:$PATH"
export MOJO_PYTHON_LIBRARY=/Users/<user>/miniconda3/envs/<your_conda_env>/lib/libpython3.11.dylib

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
- Execute
```
./first
```

# Resources
- https://docs.modular.com/mojo/
- https://docs.modular.com/mojo/manual/
- https://docs.modular.com/mojo/notebooks/
- https://docs.modular.com/mojo/playground
- https://docs.modular.com/mojo/lib
- https://github.com/mojicians/awesome-mojo
- https://mojodojo.dev/
