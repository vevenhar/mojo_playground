from python import Python

fn main() raises:
    lr_mj() # using Mojo syntax
    # lr_py() # using Python syntax

"""
Linear regression using Mojo syntax
"""
fn lr_mj() raises:
    print("Linear regression using Mojo syntax")
    let np = Python.import_module("numpy")
    let pd = Python.import_module("pandas")
    let plt = Python.import_module("matplotlib.pyplot")
    let skl = Python.import_module("sklearn.linear_model")

    let data = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,  10, 20, 30, 40, 50, 60, 70, 80, 90, 100]) # one row with twenty columns
    let reshaped_data = data.reshape(2,10) # two rows, ten columns
    let transposed_data = data.reshape(2,10).T # two columns, ten rows
    print("data:")
    print(data)
    print("reshaped_data:")
    print(reshaped_data)
    print("transposed_data:")
    print(transposed_data)
    let df = pd.DataFrame(transposed_data, np.arange(10), ['X', 'y']) # data, index labels, column labels
    print("df:")
    print(df)

    let X = df['X']
    print("X:")
    print(X)

    let y = df['y']
    print("y:")
    print(y)

    # Fit a line to the points
    let model = skl.LinearRegression().fit(np.array(X).reshape(1, -1), np.array(y).reshape(1, -1))

    # learned parameters
    let m = model.coef_.flatten()
    let b = model.intercept_.flatten()
    print("m:")
    print(m)
    print("b:")
    print(b)

    let y_pred = model.predict(np.array(X).reshape(1, -1))
    print("y_pred:")
    print(y_pred)

    plt.title("Linear regression using Mojo syntax")
    plt.xlabel("X")
    plt.ylabel("y")
    plt.xticks(np.arange(0, 11, 1))
    plt.yticks(np.arange(0, 110, 10))
    plt.scatter(X, y) # original data
    plt.plot(X, y_pred.flatten(), 'r') # linear regression predicted line
    # plt.plot(X, m*X+b) # calculated predicted y values based on the learned parameters
    plt.gca().legend(('Actual','Predicted'))
    plt.grid(True)
    plt.show()


"""
Linear regression using Python syntax
"""
def lr_py():
    print("Linear regression using Python syntax")
    np = Python.import_module("numpy")
    pd = Python.import_module("pandas")
    plt = Python.import_module("matplotlib.pyplot")
    skl = Python.import_module("sklearn.linear_model")

    data = np.array([1, 2, 3, 4, 5, 6, 7, 8, 9, 10,  10, 20, 30, 40, 50, 60, 70, 80, 90, 100]) # one row with twenty columns
    reshaped_data = data.reshape(2,10) # two rows, ten columns
    transposed_data = data.reshape(2,10).T # two columns, ten rows
    print("data:")
    print(data)
    print("reshaped_data:")
    print(reshaped_data)
    print("transposed_data:")
    print(transposed_data)
    df = pd.DataFrame(transposed_data, np.arange(10), ['X', 'y']) # data, index labels, column labels
    print("df:")
    print(df)

    X = df['X']
    print("X:")
    print(X)

    y = df['y']
    print("y:")
    print(y)

    # Fit a line to the points
    model = skl.LinearRegression().fit(np.array(X).reshape(1, -1), np.array(y).reshape(1, -1))    

    # learned parameters
    m = model.coef_.flatten()
    b = model.intercept_.flatten()
    print("m:")
    print(m)
    print("b:")
    print(b)

    y_pred = model.predict(np.array(X).reshape(1, -1))
    print("y_pred:")
    print(y_pred)  

    plt.title("Linear regression using Python syntax")
    plt.xlabel("X")
    plt.ylabel("y")
    plt.xticks(np.arange(0, 11, 1))
    plt.yticks(np.arange(0, 110, 10))
    plt.scatter(X, y) # original data
    plt.plot(X, y_pred.flatten(), 'r') # linear regression predicted line
    # plt.plot(X, m*X+b) # calculated predicted y values based on the learned parameters
    plt.gca().legend(('Actual','Predicted'))
    plt.grid(True)
    plt.show()
