"""
Mojo primitive types implicitly convert into Python objects. Today we support lists, tuples, integers, floats, booleans, and strings.
https://docs.modular.com/mojo/manual/python/types
"""
from python import Python
from python.object import PythonObject


fn print_type(value: PythonObject) raises -> None:
    var builtins = Python.import_module("builtins")
    print(builtins.type(value))


fn print_mojo_type(value: PythonObject) raises -> None:
    # var builtins = Python.import_module("builtins")
    # print(builtins.type(value))
    # or use Python.type which is equivalent to the Python type() builtin
    print(Python.type(value))
    

# def print_mojo_type(value):
#     # from python import Python
#     # from python.object import PythonObject
#     # var builtins = Python.import_module("builtins")
#     # print(builtins.type(value))
#     print(Python.type(value))
#     # print(Python.evaluate(value))
#     # pass

fn use_dict() raises:
    var dictionary = Python.dict()
    dictionary["fruit"] = "apple"
    dictionary["starch"] = "potato"
    print("Fruit: ", dictionary["fruit"])


fn use_py_set() raises:
    var py_set = Python.evaluate('set([2, 3, 5, 7, 11])')
    var num_items = int(py_set.__len__())
    print(num_items, " items in set.") # prints "5 items in set"
    print(py_set.__contains__(6))      # prints "False"


fn python_types() raises:
    from python import Python
    from python.object import PythonObject

    var value1: PythonObject = 3.7
    var value2 = Python.evaluate("10/3")
    var float_type = Python.evaluate("float")

    print(Python.is_type(Python.type(value1), Python.type(value2))) # True
    print(Python.is_type(Python.type(value1), float_type))          # True
    print(Python.is_type(Python.type(value1), Python.none()))       # False


fn main() raises:
    print_type(1)
    print_type("hello")
    print_type(1.0)
    print_type([1, 2, 3])
    # print_type({"a": 1, "b": 2})
    print_type(True)
    print_type(None)
    # print_type(print_type)
    print("--------------------")
    print_mojo_type(1)
    print_mojo_type(1.8)
    print_mojo_type(1.8)
    var my_set = Python.evaluate('set([2, 3, 5, 7, 11])')
    print_type(my_set)
    print_mojo_type(Python.evaluate('set([2, 3, 5, 7, 11])'))
    print("--------------------")

    use_dict()
    use_py_set()
    python_types()

    # var i: Int = int(py_int)
    # var s: String = str(py_string)
    # var b: Bool = py_bool.__bool__()
    # var f: Float64 = py_float.to_float64()
