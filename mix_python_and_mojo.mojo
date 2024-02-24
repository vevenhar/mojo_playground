
# def say_hello(nbr=5) -> None:
def say_hello(nbr=5) -> NoneType: # must use NoneType to match the return type of the python function, will fail if trying to call from 
    for i in range(nbr):
        print("Hello, world!")

fn main():
    let x = 5
    let y = 6
    var z = x + y
    print("z: ", z)
    try: # must surround with try/except to call the pytonic function
        say_hello()
    except:
        print("Error")
    

