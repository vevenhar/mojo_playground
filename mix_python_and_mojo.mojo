def say_hello():
    print("Hello, world!")


def say_hello_python(nbrs=5) -> None:
    for i in range(nbrs):
        print("Hello, world!", i)


fn say_hello_mojo(nbrs: Int) -> None:
    for i in range(nbrs):
        print("Hello, world!", i)        


# fn main():
#     let x = 5
#     let y = 6
#     var z = x + y
#     print("z: ", z)
#     # say_hello() # cannot call function that may raise in a context that cannot raise mojo
#     say_hello_mojo(5)
#     print("----------------")
#     try: # must surround with try/except or raises: to call the say_hello_python function using the Python syntax
#         say_hello_python()
#     except:
#         print("Error")

fn main() raises:
    let x = 5
    let y = 6
    var z = x + y
    print("z: ", z)
    say_hello() # will generate a warning
    print("----------------")
    let ret = say_hello() #
    print("----------------")
    say_hello_mojo(5)
    print("----------------")
    say_hello_python()
    

