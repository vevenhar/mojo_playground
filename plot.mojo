from python import Python


fn main() raises:
    var torch = Python.import_module("torch") # make sure the pytorch package is installed into the python environment you are using
    # var x = [1, 2, 3, 4]
    # var y = [30, 20, 50, 60]
    var x = torch.linspace(0, 10, 100)
    var y = torch.sin(x)
    print(x)
    print(y)
    plot(x, y)

def plot(x: PythonObject, y: PythonObject) -> None:
    var plt = Python.import_module("matplotlib.pyplot") # make sure the matplotlib package is installed into the python environment you are using
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("y = sin(x)")
    plt.grid(True)
    plt.show()