import os

fn main():
    print("Get environment variables:")
    print("HOME:", os.getenv("HOME", ""))
    print("PATH:", os.getenv("PATH", ""))
    print("MODULAR_HOME:", os.getenv("MODULAR_HOME", ""))
    print("MOJO_PYTHON_LIBRARY:", os.getenv("MOJO_PYTHON_LIBRARY", ""))