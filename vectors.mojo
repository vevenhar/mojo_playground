"""
Vectors
- The DynamicVector type is a dynamically-allocated vector

Example:
    https://docs.modular.com/mojo/stdlib/collections/vector
    https://docs.modular.com/mojo/manual/traits#generic-structs-with-traits

"""

fn main():
    var vec = DynamicVector[Int]()
    vec.append(10)
    vec.append(20)
    vec.append(30)
    vec.push_back(40) # push_back is an alias for append
    vec.push_back(50) # push_back is an alias for append
    vec.push_back(60) # push_back is an alias for append
    var removed = vec.pop_back() # remove last
    print("vector size:", vec.size)
    print("vector capcity:", vec.capacity)
    # print(vec.__len__())

    for i in range(vec.size):
        # print("idx:", i, "val:", vec[i])
        print_no_newline(vec[i], ", ") # print values without newline and separate by comma

    var fruits = DynamicVector[String]()
    fruits.append("apple")
    fruits.append("banana")
    fruits.append("orange")
    fruits.append("grape")
    fruits.append("mango")

    for i in range(fruits.size):
        print(fruits[i])


