fn do_math(a: Int, b: Int) -> Int:
    return a + b

fn incerement(a: Int) -> Int:
    print(a)
    let b: Int = a + 1 # let is immutable, but can be assigned during declaration. FYI, 'let' removed in the future: https://github.com/modularml/mojo/blob/main/proposals/remove-let-decls.md
    var c: Int = b + 1 # var is mutable
    print(c)
    return c

fn main(): # main function is required as a entry point
    let a = 1
    let b = 2
    let c = do_math(a, b)
    # print(c)
    incerement(c)