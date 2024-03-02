"""
ListLiteral is a heterogenous list type that can store multiple data types.
Issues:
https://github.com/modularml/mojo/issues/319
"""
from python import Python
from misc_utils import types

fn main() raises:
    var x = [1, 2, 3, 4, 5] # implicit
    var y = [1, 2, "kiwi"] # mixed data types, this makes it tricky to iterate over
    var z: ListLiteral[Int, Int, StringLiteral] = [1, 2, "kiwi"] 
    var fruits: ListLiteral[StringLiteral, StringLiteral, StringLiteral] = ListLiteral.__init__("apple", "banana", "kiwi")
    print(x)
    print(y)
    print(z)
    print(x.get[0, Int]())
    print("len:", len(z))

    print("x type:", Python.type(x))
    print("y type:", Python.type(y))
    print("z type:", Python.type(z))
    print("fruits type:", Python.type(fruits))

    # works
    for i in range(len(y)):
        print(i)

    # currently doesn't work due to: https://github.com/modularml/mojo/issues/319
    for i in range(len(y)):
        # print(x[i]) # will produce the following error: "is not subscriptable, it does not implement the `__getitem__`/`__setitem__` or `__refitem__` methods"
        pass

    for i in range(len(y)):
        # print(y.get[idx, AnyRegType]) # will produce the following error: "error: cannot use a dynamic value in call parameter"
        pass

    for i in range(len(x)):
        # print(x.get[1, AnyRegType]) # does not work
        # print(x.get[1, Int]) # does not work
        pass

    # workaround for the iteration issue: https://github.com/modularml/mojo/issues/319
    var fruits_as_py_list = PythonObject(fruits) # convert to python list to avoid the issue during iteration to get the actual values
    types.print_type(fruits)
    types.print_type(fruits_as_py_list)
    print("fruits type:", Python.type(fruits))
    print("fruits_as_py_list type:", Python.type(fruits_as_py_list))
    for i in range(len(fruits_as_py_list)):
        # var item = p.get[1, Int]
        # print(i)
        # print(p_py.get(i))
        print("idx:", i, "val:", fruits_as_py_list[i])
