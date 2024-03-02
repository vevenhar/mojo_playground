"""
Mojo module is a single Mojo source file that includes code suitable for use by other files that import it,
no main function needed (but possible), to be imported by other files for its APIs

A Mojo package is just a collection of Mojo modules in a directory that includes an __init__.mojo file. 
By organizing modules together in a directory, you can then import all the modules together or individually. 
Optionally, you can also compile the package into a .mojopkg or .📦 file that's easier to share.
"""

# from mymodule import MyPair # option 1
# import mymodule # option 2
import mymodule as mm # option 3

from misc_utils import stats 

fn calc_area(l: Int, w: Int) -> Int:
    return l * w

fn main() raises:
    # option 1
    # let p1 = MyPair(10, 20)
    # p1.dump()
    
    # option 2
    # let p2 = mymodule.MyPair(10, 20)
    # p2.dump()

    # option 3
    var p3 = mm.MyPair(10, 20)
    p3.dump()

    # print(p1.first)
    # print(p1.second)
    # print(calc_area(p1.first, p1.second))

    var x = [1, 2, 3, 4, 5]
    var vec = DynamicVector[Int]()
    vec.append(1); vec.append(2); vec.append(3); vec.append(4); vec.append(5)
    var mean_pyo = stats.mean_pyo(x)
    print("mean using Python:", mean_pyo)
    var mean = stats.mean_dv(vec)
    print("mean using Mojo:", mean) # about 200 times faster than Python, see misc_utils/stats.py for benchmarks


