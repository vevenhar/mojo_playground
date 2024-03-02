"""
https://docs.modular.com/mojo/manual/python/#python-environment
https://www.modular.com/blog/using-mojo-with-python

Use the MOJO_PYTHON_LIBRARY environment variable to configure Mojo to use a specific Python library (for example, for a specific conda environment).
Then activate your specific conda environment and install the missing packages using conda or pip.
For example,
conda install numpy
conda list | grep numpy
"""
from python import Python

fn use_np_array() raises:
    # This is equivalent to Python's `import numpy as np`
    var np = Python.import_module("numpy")
    # Now use numpy as if writing in Python
    var array = np.array([1, 2, 3, 4, 5])
    print("array:", array)
    print("shape:", array.shape)
    print(array.dtype)
    print(array.ndim)
    print(array.size)

fn main() raises:
    use_np_array()
