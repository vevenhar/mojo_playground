from python import Python
import time
from math import round_half_down

# https://mojodojo.dev/guides/builtins/BuiltinList.html#init

# fn mean(x: ListLiteral[Int, Int, Int, Int, Int]) -> Float64:
# fn mean(x: PythonObject) -> Float64:

#     # var e1 = x.get[0, AnyRegType]()
#     # var e1 = x.get[0, Int]()
#     # var e2 = x.get[1, Int]()
#     # var e3 = x.get[2, Int]()
#     # var e4 = x.get[3, Int]()
#     # var e5 = x.get[4, Int]()

#     var sum = 0
#     # for i in range(len(x)):
#     #     print(i)
#     #     sum += x.get[i, Int]()

#     # return sum / len(x) 
#     # return (e1 + e2 + e3 + e4 + e5) / len(x)


fn mean_pyo(nbrs: PythonObject) raises -> PythonObject:
    # print("nbrs type:", Python.type(nbrs))
    var sum: PythonObject = 0
    for i in range(len(nbrs)):
        sum += nbrs[i]
        # print("idx:", i, "val:", nbrs[i])
    # print("sum:", sum)
    var result: PythonObject = sum / len(nbrs)   
    # print("result:", result)
    
    return result

# TODO mean using ListLiteral or DynamicVector
fn mean_ll():
    pass


fn mean_dv(x: DynamicVector[Int]) -> SIMD[DType.float64, 1]:
    # print(x) # this fails
    var sum = 0
    for i in range(x.size):
        print("idx:", i, "val:", x[i])
        # print_no_newline(x[i], ", ") 
        sum += x[i]
    print("sum:", sum)
    var result = sum / x.size
    print("result:", result)

    return result


fn main() raises:
    # var builtins = Python.import_module("builtins") 
    var x = [1, 2, 3]
    var start_pyo = time.now()
    var average_pyo = mean_pyo(x)
    var end_pyo = time.now()
    print("average time using PythonObject:", end_pyo - start_pyo)
    print("average_pyo:", average_pyo)
    var vec = DynamicVector[Int]()
    vec.append(1)
    vec.append(2)
    vec.append(3)
    # print("vector size:", vec.size)
    # print("vector capcity:", vec.capacity)
    # for i in range(vec.size):
    #     # print("idx:", i, "val:", vec[i])
    #     print_no_newline(vec[i], ", ") # print values without newline and separate by comma
    var start = time.now()
    var average = mean_dv(vec)
    var end = time.now()
    print("average:", average)
    print("average time using DynamicVector:", end - start)
    var factor = (end_pyo - start_pyo) / (end - start)
    var rounded: Float64 = round_half_down[DType.float64, 1](factor)
    var times: Int = rounded.to_int()
    # print("rounded:", rounded)
    # print("times:", times)
    print("Mojo mean() is faster than Python by", times, "times")

    