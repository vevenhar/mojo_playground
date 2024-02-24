
# def say_hello(nbr=5) -> None:
def say_hello(nbrs=5) -> NoneType: # must use NoneType to match the return type of the python function, will fail if trying to call using Mojo syntax
    for i in range(nbrs):
        print("Hello, world!", i)


fn say_hello_mojo(nbrs: Int) -> None:
    for i in range(nbrs):
        print("Hello, world!", i)        


fn main():
    let x = 5
    let y = 6
    var z = x + y
    print("z: ", z)
    say_hello_mojo(5)
    print("----------------")
    try: # must surround with try/except to call the pythonic function say_hello
        say_hello()
    except:
        print("Error")
    

