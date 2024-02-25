from python import Python


fn main() raises:
    # let plt = Python.import_module("matplotlib.pyplot")
    let torch = Python.import_module("torch")
    # let x = [1, 2, 3, 4]
    # let y = [30, 20, 50, 60]
    let x = torch.linspace(0, 10, 100)
    let y = torch.sin(x)
    print(x)
    print(y)
    plot(x, y)

def plot(x: PythonObject, y: PythonObject) -> None:
    let plt = Python.import_module("matplotlib.pyplot")
    plt.plot(x.numpy(), y.numpy())
    plt.xlabel("x")
    plt.ylabel("y")
    plt.title("y = sin(x)")
    plt.grid(True)
    plt.show()